using { Hackathon as my } from '../db/schema.cds';

using { EAM_OBJPG_TECHNICALOBJECT_SRV } from './external/EAM_OBJPG_TECHNICALOBJECT_SRV';

@path : '/service/hackathon'
service hackathonSrv
{
    @odata.draft.enabled
    entity ChangeRequests as
        projection on my.ChangeRequests;

    entity C_TechnicalObjectLabelVH as
        projection on EAM_OBJPG_TECHNICALOBJECT_SRV.C_TechnicalObjectLabelVH;

    entity C_ObjPgTechnicalObject as
        projection on EAM_OBJPG_TECHNICALOBJECT_SRV.C_ObjPgTechnicalObject;
}

annotate hackathonSrv with @requires :
[
    'authenticated-user'
];
