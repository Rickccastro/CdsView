@EndUserText.label: 'Projection View for Order Item entity'
@AccessControl.authorizationCheck: #NOT_REQUIRED

@OData.hierarchy.recursiveHierarchy: [{entity.name: 'ZDH_I_OrderItemHierarchy'}]

define root view entity ZDH_C_OrderItemTP
  provider contract transactional_query
  as projection on ZDH_R_OrderItemTP
{
  key OrderId,
  key ItemNo,

      @UI.lineItem: [{ position: 10, label: 'Hier. Item No' }]
      FormattedItemNo,
      ParentItemNo,

      /* Associations */
      _Parent: redirected to ZDH_C_OrderItemTP
}
