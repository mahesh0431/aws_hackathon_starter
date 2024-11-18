sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'sapbtpawsstarterapp.myequipmentsapp',
            componentId: 'MaintenanceOrderDetailsObjectPage',
            contextPath: '/EquipmentDetails/orders'
        },
        CustomPageDefinitions
    );
});