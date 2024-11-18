  /**
 * 
 * @On(event = { "READ" }, entity = "sapbtp_aws_starter_appService.MaintenanceOrderDetails")
 * @param {Object} request - User information, tenant-specific CDS model, headers and query parameters
*/
module.exports = async function(request, entities) {
	// Your code here
	const {MaintenanceOrderDetails} = entities;

	let query = SELECT.from(MaintenanceOrderDetails, MO => {
		MO.MaintenanceOrder, MO.MaintenanceOrderDesc, MO.TechnicalObject, MO.MaintOrdBasicStartDate,
			MO.to_MaintenanceOrderLongText(MOL => { MOL.MaintenanceOrderLongText })
	}).where({ Equipment: request.params[0].Equipment });

	const apiMaintenanceOrder = await cds.connect.to('MaintenanceOrder');
	let response = await apiMaintenanceOrder.run(query);

	let rData = [];
	response.forEach(function (item) {
		rData.push({
			MaintenanceOrder: item.MaintenanceOrder,
			MaintenanceOrderDesc: item.MaintenanceOrderDesc,
			MaintOrdBasicStartDate: item.MaintOrdBasicStartDate,
			TechnicalObject: item.TechnicalObject,
			SuperiorProjectNetwork: item?.to_MaintenanceOrderLongText[0]?.MaintenanceOrderLongText,
			MaintOrdBasicEndDate: item.MaintOrdBasicEndDate,
			MaintenanceOrderType: item.MaintenanceOrderType,
		});
	})
	rData['$count'] = rData.length;
	return rData;
}
