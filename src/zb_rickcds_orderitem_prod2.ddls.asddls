@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Query-Visão Itens Pedido com Calendario'
@Metadata.ignorePropagatedAnnotations: false

@Analytics.query: true
// Transação /nRSRT 2CZB_RICKCDS_ORDERITEM_PROD2
define view entity ZB_RICKCDS_ORDERITEM_PROD2
  with parameters
    @Consumption.hidden:true
    @Environment.systemField: #SYSTEM_DATE
    p_Today : abap.dats
  as select from ZI_RICKCDS_ORDERITEM_PROD2
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
      @EndUserText.label: 'Data Criação'
      CreationDate,
      @Consumption.filter:{
      selectionType: #INTERVAL, multipleSelections: true }
      @Consumption.derivation: {
        lookupEntity: 'I_CalendarDate',
        resultElement: 'CalendarYear',
        binding: [{ targetElement: 'CalendarDate', type: #PARAMETER, value: 'P_Today' }]
      }
      CreationYear,
      WeekDay,
      /* Associations */
      _Product
}
