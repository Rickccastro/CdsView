@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'test for bug 2'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZDH_I_OrderItemNode as select from ZDH_I_OrderItemBasic
  association to ZDH_I_OrderItemNode as _Parent on  $projection.OrderId      = _Parent.OrderId
                                                and $projection.ParentItemNo = _Parent.ItemNo
{
  key OrderId,
  key ItemNo,
      ParentItemNo,
      Description,
      Status,
      _Parent
}
