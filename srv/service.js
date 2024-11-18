const LCAPApplicationService = require('@sap/low-code-event-handler');
const equipments_Read = require('./code/equipments-read');
const maintenanceorders_Read = require('./code/maintenanceorders-read');
const summarize = require('./code/summarize');

class sapbtp_aws_starter_appService extends LCAPApplicationService {
    async init() {

        this.on('READ', 'EquipmentDetails', async (request, next) => {
            return await equipments_Read(request, this.entities);
        });

        this.on('READ', 'MaintenanceOrderDetails', async (request, next) => {
            return await maintenanceorders_Read(request, this.entities);
        });

        this.on("summarize", async (request) => {
            return await summarize(request, this.entities);
        });

        return super.init();
    }
}


module.exports = {
    sapbtp_aws_starter_appService
};