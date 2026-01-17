@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Basic - Pedido'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_RICKCDS_ORDER as select from zrickt_order
{
    key sales_order as SalesOrder,
    creation_date as CreationDate,
    creation_user as CreationUser
}
