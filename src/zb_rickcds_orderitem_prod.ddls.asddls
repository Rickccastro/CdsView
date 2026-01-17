@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Query - Visão Itens Pedido'
@Metadata.ignorePropagatedAnnotations: false

@Analytics.query: true
// Transação /nRSRT 2CZB_RICKCDS_ORDERITEM_PROD
define view entity ZB_RICKCDS_ORDERITEM_PROD
  as select from ZI_RICKCDS_ORDERITEM_PROD
{
      @EndUserText.label: 'Ordem Venda'
      @AnalyticsDetails.query.sortDirection: #ASC
  key SalesOrder,
      @EndUserText.label: 'Item Venda'
  key SalesOrderItem,
      @EndUserText.label: 'ID Produto'
      @AnalyticsDetails.query.axis: #ROWS
      @AnalyticsDetails.query.display: #KEY_TEXT
      Product,
      @EndUserText.label: 'Produto'
      @AnalyticsDetails.query.axis: #COLUMNS
      Description,
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
      /* Associations */
      _Product
}
