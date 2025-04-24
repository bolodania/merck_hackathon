sap.ui.define([
    "sap/ui/core/mvc/Controller"
], (Controller) => {
    "use strict";

    return Controller.extend("changereq.controller.App", {
        onInit() {
        }
        // onShowMessage() {
        //     MessageBox.show("Hello, this is a message!");
        // },
        // onValueHelpRequest(oEvent) {
        //     const oInput = oEvent.getSource();
        //     const oValueHelpDialog = new ValueHelpDialog({
        //         title: "Select Technical Object",
        //         supportMultiselect: false,
        //         ok: (oEvent) => {
        //             const aTokens = oEvent.getParameter("tokens");
        //             oInput.setValue(aTokens[0].getText());
        //             oValueHelpDialog.close();
        //         },
        //         cancel: () => {
        //             oValueHelpDialog.close();
        //         }
        //     });

        //     // Bind the dialog to the model
        //     oValueHelpDialog.setModel(this.getView().getModel());
        //     oValueHelpDialog.bindAggregation("items", {
        //         path: "/TechnicalObjects",
        //         template: new sap.m.StandardListItem({
        //             title: "{TechnicalObjectName}"
        //         })
        //     });

        //     oValueHelpDialog.open();
        // },
        // onSubmit() {
        //     MessageBox.success("Form submitted successfully!");
        // }
    });
});