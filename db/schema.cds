using { ZEAM_OBJPG_TECHNICALOBJECT_SRV } from '../srv/external/ZEAM_OBJPG_TECHNICALOBJECT_SRV.cds'; 
namespace Hackathon;
using { cuid } from '@sap/cds/common';

@assert.unique: { technicalObjectNumber: [technicalObjectNumber] }
entity ChangeRequests : cuid {
  technicalObjectNumber: String(50) @mandatory;
  technicalObjectDescription: String(200);
  location: String(100);
  room: String(50);
  requestedForId: String(50);
  requestedForName: String(100);
  changeControlProcedure: String(100);
  otherDocuments: String(200);
  desiredDateOfCompletion: Date;
  regulation: String(20);
  freeText: String(500);
  fileDragAndDrop: String(200);
}

