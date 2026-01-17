@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Composite - Item Pedido com Produto'
@Metadata.ignorePropagatedAnnotations: false
define view entity ZI_CDS_ORDERITITEM_PRODUCT as select from ZI_CDS_ORDER_IT
association[1..1] to ZI_CDS_PRODUCT as _Product on $projection.Product = _Product.Product
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
        
    _Product
}
