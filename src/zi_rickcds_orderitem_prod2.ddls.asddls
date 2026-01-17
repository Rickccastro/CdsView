@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cubo - Visão Itens Pedido com Calendario'
@Metadata.ignorePropagatedAnnotations: false
@Analytics.dataCategory: #CUBE
define view entity ZI_RICKCDS_ORDERITEM_PROD2 as select from ZI_CDS_ORDERITITEM_PRODUCT
association [0..1] to I_CalendarDate as _CreationDate on $projection.CreationDate = _CreationDate.CalendarDate
{
@EndUserText.label: 'Ordem Venda'
    key SalesOrder,
    @EndUserText.label: 'Item Venda'
    key SalesOrderItem,
    @EndUserText.label: 'ID Produto'
    Product,
    @EndUserText.label: 'Produto'
    _Product.Description,
    @EndUserText.label: 'QTD Produto'
    @Aggregation.default: #SUM
    ProductQuantity,
    @EndUserText.label: 'Unid Med'
    ProductUnity,
    @EndUserText.label: 'Valor Total'
    @Aggregation.default: #SUM
    TotalValue,
    @EndUserText.label: 'Moeda'
    Currency,
    @EndUserText.label: 'Data Criação'
    CreationDate,
    _CreationDate.CalendarYear as CreationYear,
    _CreationDate.WeekDay,    
    /* Associations */
    _Product,
    _CreationDate,
    _CreationDate._CalendarYear,
    _CreationDate._WeekDay
}
