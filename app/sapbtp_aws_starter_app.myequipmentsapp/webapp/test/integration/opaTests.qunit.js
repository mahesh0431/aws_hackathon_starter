sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'sapbtpawsstarterapp/myequipmentsapp/test/integration/FirstJourney',
		'sapbtpawsstarterapp/myequipmentsapp/test/integration/pages/EquipmentDetailsList',
		'sapbtpawsstarterapp/myequipmentsapp/test/integration/pages/EquipmentDetailsObjectPage',
		'sapbtpawsstarterapp/myequipmentsapp/test/integration/pages/MaintenanceOrderDetailsObjectPage'
    ],
    function(JourneyRunner, opaJourney, EquipmentDetailsList, EquipmentDetailsObjectPage, MaintenanceOrderDetailsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('sapbtpawsstarterapp/myequipmentsapp') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheEquipmentDetailsList: EquipmentDetailsList,
					onTheEquipmentDetailsObjectPage: EquipmentDetailsObjectPage,
					onTheMaintenanceOrderDetailsObjectPage: MaintenanceOrderDetailsObjectPage
                }
            },
            opaJourney.run
        );
    }
);