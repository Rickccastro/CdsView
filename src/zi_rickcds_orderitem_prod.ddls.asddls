@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cubo - Visão Itens Pedido'
@Metadata.ignorePropagatedAnnotations: false
@Analytics.dataCategory: #CUBE
define view entity ZI_RICKCDS_ORDERITEM_PROD as select from ZI_CDS_ORDERITITEM_PRODUCT
{
    @EndUserText.label: 'Ordem Venda'
    key SalesOrder,
    @EndUserText.label: 'Item Venda'
    key SalesOrderItem,
    @EndUserText.label: 'ID Produto'
    Product,
    @EndUserText.label: 'QTD Produto'
    @Aggregation.default: #SUM
    ProductQuantity,
    @EndUserText.label: 'Unid Med'
    ProductUnity,
    @EndUserText.label: 'Valor Total'
    @Aggregation.default: #SUM
    TotalValue,
    @EndUserText.label: 'Ordem Venda'
    Currency,
    /* Associations */
    _Product
}
