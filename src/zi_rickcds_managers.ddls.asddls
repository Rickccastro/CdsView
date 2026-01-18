@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Basic - Gerentes'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_RICKCDS_MANAGERS as select from zrickt_managers
{
    key employee as Employee,
    manager as Manager
}
