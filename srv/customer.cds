using { cus } from '../db/customer';
service customerSrv @(requires: 'authenticated-user'){
    entity customers
    @(restrict: [
    { grant: '*', to: 'RiskManager'}
    ])
     as projection on cus.customer;
     annotate customers with @odata.draft.enabled;
     
}