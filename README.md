# Equipment Maintenance Summary using SAP BTP and AWS services

This repository contains a sample SAP CAP (Cloud Application Programming Model) application that displays a list of equipments and their respective maintenance orders. This application demonstrates the integration of SAP BTP services with AWS services. It leverages SAP's Generative AI Hub, SAP Cloud Application Programming Model, SAP HANA Cloud, and AWS SNS and Generative AI models to provide a comprehensive solution.

## Features

- **Equipment List Page**: Displays a list of equipment from SAP S/4HANA
- **Maintenance Orders**: Shows maintenance orders for the selected equipment on the object page from SAP S/4HANA
- **Summary Generation**: Option to generate and receive a summary of maintenance orders using SAP's Generative AI Hub orchestrating the Anthropoc Claude 3.5 Sonnet model and save to SAP HANA Cloud DB.
- **SNS Notification**: Generated summary is sent as an SNS notification.

## Architecture

1. **SAP Cloud Application Programming Model**:
    - Backend logic and services.
    - Integration with SAP HANA Cloud for data persistence.

2. **SAP Generative AI Hub**:
    - Orchestrates requests to generative AI models.
    - Uses the Anthropoc Claude 3.5 Sonnet model to generate summaries.

3. **AWS Services**:
    - **SNS (Simple Notification Service)**: Facilitates sending notifications.

4. **SAP S/4HANA system**
    - Connectivity to SAP S/4HANA Cloud system

## Prerequisites

- Skills - Node.js/Javascript 
- SAP BTP - Cloud Foundry & Space
- SAP Build Code - [Booster](https://developers.sap.com/tutorials/build-code-setup..html)
- SAP HANA Cloud (Optional for running locally)
- AWS account with SNS setup
- Access to SAP Generative AI Hub


## Setup

1. **Clone the repository**:
    -   Open SAP Build Code and clone this repository.

1. **Install dependencies**:

    ```sh
    npm install
    ```

2. **Setup environment variable for Generative AI Hub - Local Testing**:

    - Setup of Generative AI hub: [Setup](https://developers.sap.com/tutorials/ai-core-generative-ai.html)
    - Create a `.env` file in the root directory
    - This is used by SAP Cloud SDK for AI to connect to the SAP Generative AI Hub and use the orchestration capability to consume the LLM models.
    - Add the below property to connect to the SAP Generative AI Hub for testing locally

        ```env
        AICORE_SERVICE_KEY='<ServiceKey>'
        ```
    Learn more about it here - [Local Testing](https://github.com/SAP/ai-sdk-js/blob/main/README.md#local-testing)



3. **Create Destination Service Instance for local testing**:

    - Create the destination service instance:

        ```sh
        cf create-service destination lite destination
        ```
    - Bind the service instance to the project:

        ```sh
        cds bind -2 destination
        ```
    - This will be used to fetch AWS & SAP S/4HANA Cloud destination for testing locally

4. **Deploy DB artifacts to sqlite db**

    Run the below command in the application root terminal.

    ```sh
    cds deploy
    ```

5. **(Optional)Connect and Deploy to SAP HANA Cloud**:
    
    As setting up the SAP HANA Cloud instance takes time, you can skip this step. However, if you have a ready to use SAP HANA Cloud instance you can follow the below steps, else the previous step uses the sqlite db to store the generated summary.
    
    1. (Optional Setup) Follow this tutorial for the SAP HANA Cloud trial accoun setup: [Set Up Your SAP HANA Cloud, SAP HANA Database (free tier or trial) and Understand the Basics](https://developers.sap.com/group.hana-cloud-get-started-1-trial.html)

    2. Update the db to hana in the root package.json file

        ```sh
        "db": "hana"
        ```

    2. Deploy the CAP application's database schema to the SAP HANA Cloud instance. (for local testing)

        ```sh
        cds deploy -2 hana
        ```

5. **Create Destinations**:

    You can setup the SNS topic by following this tutorial (Section 1): [Integrate the SAP CAP Application with Amazon SNS Service](https://github.com/anbazhagan-uma/opensap-btp-aws/tree/main/Week%203/Unit%203.4#section-1-setup-amazon-simple-notification-service-sns)
    
    ### AWS SNS Destination

    | Property             | Value                                             |
    |----------------------|---------------------------------------------------|
    | Name                 | AWS_SNS                                           |
    | Type                 | HTTP                                              |
    | Description          | AWS SNS                                           |
    | URL                  | https://www.dummy.com                             |
    | Authentication       | NoAuthentication                                  |
    | ProxyType            | Internet                                          |
    | region               | `<region>`                                     |
    | topicArn             | `<topic arn>`                                     |
    | accessKeyId          | `<Your_AccessKeyId>`                              |
    | secretAccessKey      | `<Your_SecretAccessKey>`                          |

    ### (Optional) SAP S/4HANA Cloud Destination - For Live Connectivity

    Repository is already configured to use the mock server. If you have access to SAP S/4HANA Cloud system, you can create the below destination. For productive use Pricipal Propogation instead of Basic Authentication.

    | Property                    | Value                                             |
    |-----------------------------|---------------------------------------------------|
    | Name                        | SAPS4HANACloud                                    |
    | Type                        | HTTP                                              |
    | Description                 | SAP S/4HANA Cloud                                 |
    | URL                         | https://<yoursaps/4hana>-api.s4hana.ondemand.com/ |
    | Authentication              | BasicAuthentication                               |
    | User                        | `<Your_User>`                                     |
    | Password                    | `<Your_Password>`                                 |
    | ProxyType                   | Internet                                          |
    | HTML5.DynamicDestination    | true                                              |
    | WebIDEEnabled               | true                                              |
    | WebIDEUsage                 | odata_gen                                         |

## Usage

1. **Start the application**:

    ```sh
    cds watch --profile hybrid
    ```

2. **Access the application**:

    Open a web browser and go to `http://localhost:<port>`

3. **Generate Summary**:

    - Select an equipment to view its maintenance orders.
    - Click the "Generate Summary" button to trigger the summary generation.
    - Check your configured SNS notification endpoint for the summary.

4. **Generative AI Hub Access**:

    - [Generative AI Hub](https://tfe-india-genai-9gqs3m10.ai-launchpad.prod.eu-central-1.aws.apps.ml.hana.ondemand.com/aic/index.html#/generativeaihub?workspace=ai-core-tfeindia-genai&resourceGroup=aws&/g/orchestration)
    - Credentials:
        -   User ID: user01@saptfe-demo.com 
        -   Password will be shared separately

---

This application is a reference implementation showcasing how SAP BTP services can be integrated with AWS services to create a comprehensive enterprise solution. Our goal is to provide our customers and partners with a clear understanding of leveraging these services together.

---