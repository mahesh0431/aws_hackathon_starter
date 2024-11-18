/**
 * 
 * @On(event = { "READ" }, entity = "sapbtp_aws_starter_appService.EquipmentDetails")
 * @param {Object} req - User information, tenant-specific CDS model, headers and query parameters
*/
module.exports = async function(req, entities) {
	const {
        EquipmentSummary
    } = entities

	let summaryResponse, equipmentResponse;

	if (req._queryOptions && req._queryOptions["$expand"]?.includes('summary')) {
		// Fix this logic
		let selectColumns = [];
		req.query.SELECT.columns.forEach(element => {
			if(!element?.expand){
				selectColumns.push(element);
			}
		});
		req.query.SELECT.columns = selectColumns;
		summaryResponse = await SELECT.one.from(EquipmentSummary).where({ Equipment: req.params[0].Equipment });
	}
	const apiEquipmentDetails = await cds.connect.to('Equipment');
	const response = await apiEquipmentDetails.run(req.query);
	
	if (summaryResponse)
		response.summary = summaryResponse;

	return response;
}