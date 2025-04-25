sap.ui.define([
    "sap/ui/core/mvc/Controller",
    "sap/m/MessageBox",
    "sap/m/SelectDialog",
    "sap/m/StandardListItem"
], (Controller, MessageBox, SelectDialog, StandardListItem) => {
    "use strict";
    return Controller.extend("changereq.controller.Main", {
        onInit() {
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
                    title: "{TechnicalObjectLabel}"
                })
            });

            oSelectDialog.open();
        },
        onSubmit() {
            MessageBox.success("Form submitted successfully!");
        }
    });
});