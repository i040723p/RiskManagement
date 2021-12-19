
namespace riskmanagement;
using {managed} from '@sap/cds/common';
entity Risks : managed{
    Key ID : UUID @(Core.Computed : true);
    createdAt : Date;
    createdBy : String;
    title  : String(100);
    owner  : String;
    prio   : String(5);
    decr   : String;
    miti   : Association to Mitigations;
    impact : Integer;
    //bp   : Assoction to BusinessPartners;
    criticality  : Integer;
}

entity Mitigations : managed{
    Key ID  : UUID @(Core.Computed : true);
    decr   : String;
    owner   : String;
    timeline : String;
    risks  : Association to many Risks on risks.miti = $self;
}