@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption - Produto'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZC_CDS_PRODUCT as projection on ZI_CDS_PRODUCT
{
    @EndUserText.label: 'Produto'
    @UI.lineItem: [{ position: 10 }]
    @UI.selectionField: [{ position: 10 }]
    key Product,
    @EndUserText.label: 'Tipo Produto'
    @UI.lineItem: [{ position: 20 }]
    @UI.selectionField: [{ position: 20 }]
    ProductType,
    @EndUserText.label: 'Descrição'
    @UI.lineItem: [{ position: 30 }]
    @UI.selectionField: [{ position: 30 }]
    Description
}
