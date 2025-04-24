using { hackathonSrv } from '../srv/service.cds';

annotate hackathonSrv.ChangeRequests with @UI.HeaderInfo: { TypeName: 'Change Request', TypeNamePlural: 'Change Requests', Title: { Value: technicalObjectNumber } };
annotate hackathonSrv.ChangeRequests with {
  ID @UI.Hidden @Common.Text: { $value: technicalObjectNumber, ![@UI.TextArrangement]: #TextOnly }
};
annotate hackathonSrv.ChangeRequests with @UI.Identification: [{ Value: technicalObjectNumber }];
annotate hackathonSrv.ChangeRequests with {
  technicalObjectNumber @title: 'Technical Object Number';
  technicalObjectDescription @title: 'Technical Object Description';
  location @title: 'Location';
  room @title: 'Room';
  requestedForId @title: 'Requested For ID';
  requestedForName @title: 'Requested For Name';
  changeControlProcedure @title: 'Change Control Procedure';
  otherDocuments @title: 'Other Documents';
  desiredDateOfCompletion @title: 'Desired Date of Completion';
  regulation @title: 'Regulation';
  freeText @title: 'Free Text';
  fileDragAndDrop @title: 'File Drag and Drop'
};

annotate hackathonSrv.ChangeRequests with @UI.LineItem: [
 { $Type: 'UI.DataField', Value: technicalObjectNumber },
 { $Type: 'UI.DataField', Value: technicalObjectDescription },
 { $Type: 'UI.DataField', Value: location },
 { $Type: 'UI.DataField', Value: room },
 { $Type: 'UI.DataField', Value: requestedForId },
 { $Type: 'UI.DataField', Value: requestedForName },
 { $Type: 'UI.DataField', Value: changeControlProcedure },
 { $Type: 'UI.DataField', Value: otherDocuments },
 { $Type: 'UI.DataField', Value: desiredDateOfCompletion },
 { $Type: 'UI.DataField', Value: regulation },
 { $Type: 'UI.DataField', Value: freeText },
 { $Type: 'UI.DataField', Value: fileDragAndDrop }
];

annotate hackathonSrv.ChangeRequests with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
 { $Type: 'UI.DataField', Value: technicalObjectNumber },
 { $Type: 'UI.DataField', Value: technicalObjectDescription },
 { $Type: 'UI.DataField', Value: location },
 { $Type: 'UI.DataField', Value: room },
 { $Type: 'UI.DataField', Value: requestedForId },
 { $Type: 'UI.DataField', Value: requestedForName },
 { $Type: 'UI.DataField', Value: changeControlProcedure },
 { $Type: 'UI.DataField', Value: otherDocuments },
 { $Type: 'UI.DataField', Value: desiredDateOfCompletion },
 { $Type: 'UI.DataField', Value: regulation },
 { $Type: 'UI.DataField', Value: freeText },
 { $Type: 'UI.DataField', Value: fileDragAndDrop }
  ]
};

annotate hackathonSrv.ChangeRequests with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate hackathonSrv.ChangeRequests with @UI.SelectionFields: [
  technicalObjectNumber
];

