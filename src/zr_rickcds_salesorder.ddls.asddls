@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Composite - Pedido'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZR_RICKCDS_SALESORDER
  as select from ZI_RICKCDS_ORDER
  composition [0..*] of ZR_RICKCDS_SALESORDER_IT as _Item
{
  key SalesOrder,
      CreationDate,
      CreationUser,
      
      _Item
}
