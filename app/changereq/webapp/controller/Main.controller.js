sap.ui.define([
    "sap/ui/core/mvc/Controller",
    "sap/m/MessageBox",
    "sap/m/SelectDialog",
    "sap/m/StandardListItem",
    "sap/ui/model/odata/v4/ODataModel"
], (Controller, MessageBox, SelectDialog, StandardListItem, ODataModel) => {
    "use strict";
    return Controller.extend("changereq.controller.Main", {
        onInit() {
            // Create and set the OData V4 model
            const oModel = new ODataModel({
                serviceUrl: "/service/hackathon/",
                synchronizationMode: "None"
            });
            this.getView().setModel(oModel);
        },
        onValueHelpRequest(oEvent) {
            const oInput = oEvent.getSource();
            const oSelectDialog = new SelectDialog({
                title: "Select Technical Object",
                multiSelect: false,
                confirm: (oEvent) => {
                    const aSelectedItems = oEvent.getParameter("selectedItems");
                    if (aSelectedItems.length) {
                        oInput.setValue(aSelectedItems[0].getTitle());
                    }
                    oSelectDialog.close();
                },
                cancel: () => {
                    oSelectDialog.close();
                }
            });

            // Bind the dialog to the model
            oSelectDialog.setModel(this.getView().getModel());
            oSelectDialog.bindAggregation("items", {
                path: "/C_TechnicalObjectLabelVH",
                template: new StandardListItem({
                    title: "{TechnicalObjectName}"
                })
            });

            oSelectDialog.open();
        },
        onSubmit() {
            MessageBox.success("Form submitted successfully!");
        }
    });
});