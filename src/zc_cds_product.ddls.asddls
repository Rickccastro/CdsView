@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption - Produto'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZC_CDS_PRODUCT as projection on ZI_CDS_PRODUCT
{
    @EndUserText.label: 'Produto'
    @UI.lineItem: [{ position: 10 }]
    @UI.selectionField: [{ position: 10 }]
    key Product,
    ProductType,
    Description,
    AuthorizationGroup,
    CreationDateTime
}
