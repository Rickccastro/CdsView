@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Composite - Item Pedido'
@Metadata.ignorePropagatedAnnotations: false
define view entity ZR_RICKCDS_SALESORDER_IT as select from ZI_CDS_ORDER_IT
association to parent ZR_RICKCDS_SALESORDER as _Header on $projection.SalesOrder = _Header.SalesOrder
{
    key SalesOrder,
    key SalesOrderItem,
    Product,
    ProductQuantity,
    ProductUnity,
    TotalValue,
    Currency,
    CreationDate,
    CreationUser,
    LastChangedBy,
    LastChangedFrom,
    _Header
}
