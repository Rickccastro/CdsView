@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'test for bug 2'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZDH_I_OrderItemBasic as select from zdh_t_order_itm
{
    key order_id as OrderId,
    key item_no as ItemNo,
    parent_item_no as ParentItemNo,
    isoutline as Isoutline,
    description as Description,
    order_unit as OrderUnit,
    currency as Currency,
    status as Status,
    admin as Admin
}
