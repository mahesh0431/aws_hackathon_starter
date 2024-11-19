module.exports = async function (req, entities) {
    const {
        MaintenanceOrderDetails,
        EquipmentSummary
    } = entities

    const { SNSClient, PublishCommand } = require('@aws-sdk/client-sns');

    let query = SELECT.from(MaintenanceOrderDetails, MO => {
        MO.MaintenanceOrder, MO.MaintenanceOrderDesc, MO.Equipment, MO.EquipmentName, MO.MaintOrdBasicStartDate,
            MO.to_MaintenanceOrderLongText(MOL => { MOL.MaintenanceOrderLongText }),
            MO.to_MaintenanceOrderOperation(MOL => { MOL.OperationDescription, MOL.to_MaintOrderOpLongText(OLT => { OLT.OrderOperationLongText }) })
    }).where({ Equipment: req.params[0].Equipment }).orderBy('MaintOrdBasicStartDate asc')

    const apiMaintenanceOrder = await cds.connect.to('MaintenanceOrder');
    let response = await apiMaintenanceOrder.run(query);

    let jsonData = [];

    response.forEach(element => {
        let obj = {
            "StartDate": element.MaintOrdBasicStartDate,
            "MaintenanceOrder": element.MaintenanceOrder,
            "MaintenanceOrderDescription": element.MaintenanceOrderDesc,
            "Equipment": element.Equipment,
            "MaintenanceOrderLongText": [],
            "OperationDescription": [],
            "MaintenanceOrderOpLongText": []
        };

        // Push Maintenance Order Long Text
        if (element.to_MaintenanceOrderLongText.length > 0) {
            element.to_MaintenanceOrderLongText.forEach(molt => {
                obj.MaintenanceOrderLongText.push(molt.MaintenanceOrderLongText);
            });
        }

        // Push Maintenance Order Operation Long Text
        if (element.to_MaintenanceOrderOperation.length > 0) {
            element.to_MaintenanceOrderOperation.forEach(operation => {
                obj.OperationDescription.push(operation.OperationDescription);
                if (operation.to_MaintOrderOpLongText.length > 0) {
                    operation.to_MaintOrderOpLongText.forEach(lt => {
                        obj.MaintenanceOrderOpLongText.push(lt.OrderOperationLongText);
                    });
                }
            });
        }

        jsonData.push(obj);
    });

    // console.log(jsonData);
    const prompt = JSON.stringify(jsonData)
    // const userPrompt = req.data.summary
    // let promptResponse = await utilMaintenaceOrder.doAIStuff(userPrompt, prompt);
    // console.log('Prompt Response ' + promptResponse);

    const gen_ai_hub = await cds.connect.to("aicore-destination");

    const system_prompt = `You are a Summarization agent for ERP Business System which helps in summarization of content. You will be supplied with some content of equipments containing many Maintenance Orders and their details in Json Format. The background of the json entities used is in S/4 HANA System we have many equipments and each equipment has many maintenance order with it's maintenanceOrderLongText where each maintenance order has many maintenance order operations related with  it and has a field MaintOrderOpLongText. So now, both maintenanceOrderLongText and MaintOrderOpLongText stores description of changes made in a specific equipment with respect to it's each maintenance orders and based on the maintenanceOrderLongText and MaintOrderOpLongText fields we need to summarize the maintenance order in order to find history of the changes done in each equipment.
    You need to work with all these json entities in order to summarize the maintenance order and maintenance order operations to find the history of changes done in each equipment.
    Always start the response with From the Given Equipment (by mentioning it's name) the history of the past maintenenace orders is as follows and also give summary in pointers.
    Always take a deep breath and answer the question.
     
    Following are the Json entities that you will be working with:
    Equipment: This field stores the equipment number.
    EquipmentName: This field stores the name of the equipment.
    MaintenanceOrder- This field stores the maintenance order number associated with it's respective equipment.
    MaintenanceOrderDesc- This field stores the description of each maintenance order in a specific equipment.
    MaintOrdBasicStartDate- This field stores the basic start date of each maintenance order in a specific equipment.
    MaintenanceOrderLongText- This field stores the detailed description of changes made in a specific equipment with respect to it's each maintenance orders.
    OperationDescription- This field stores the description of each maintenance order operation in a specific maintenance order.
    OrderOperationLongText- This field stores the detailed description of changes made in a specific equipment with respect to it's each maintenance order operations.`

    // Type 1:  Using Direct LLM API
    // const payload = {
    //     "anthropic_version": "bedrock-2023-05-31",
    //     "max_tokens": 1000,
    //     "messages": [
    //         { "role": "user", "content": `${system_prompt} -  ${prompt}` }
    //     ]
    // };

    // const headers = {
    //     "Content-Type": "application/json",
    //     "AI-Resource-Group": "default",
    // };

    // const llm_response = await gen_ai_hub.send({
    //     query: "POST /v2/inference/deployments/df226063db9d6686/invoke",
    //     data: payload,
    //     headers: headers
    // });

    // console.log(llm_response.content[0].text);

    //Type 2: Using Orchestration 

    const { OrchestrationClient } = await import('@sap-ai-sdk/orchestration');
    const orchestrationClient = new OrchestrationClient({
        // define the language model to be used
        llm: {
            "model_name": 'anthropic--claude-3.5-sonnet',
            "model_params": {
                "max_tokens": 512
            },
            "model_version": "1"
        },
        // define the prompt
        templating: {
            template: [
                { role: 'system', content: system_prompt },
                { role: 'user', content: prompt }
            ]
        }
    });

    // execute the request
    const result = await orchestrationClient.chatCompletion();

    // use getContent() to access the LLM response
    // console.log(result.getContent());
    const { getDestinationFromDestinationService } = require('@sap-cloud-sdk/connectivity');

    const destination = await getDestinationFromDestinationService({ destinationName: "AWS_SNS" });

    const snsClient = new SNSClient({
        region: destination.originalProperties.region,
        credentials: {
            accessKeyId: destination.originalProperties.accessKeyId,
            secretAccessKey: destination.originalProperties.secretAccessKey
        }
    });

    const snsResponse = await snsClient.send(
        new PublishCommand({
            Message: result.getContent(),
            Subject: `Maintenance Order Summary for the Equipment: ${req.params[0].Equipment}`,
            TopicArn: destination.originalProperties.topicArn
        }),
    );

    await DELETE.from(EquipmentSummary).where({ Equipment: req.params[0].Equipment });
    await INSERT.into(EquipmentSummary).entries({ Equipment: req.params[0].Equipment, History: result.getContent() });

    // promptResponse = promptResponse.replace("\n", "");
}