@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Produto - Texto'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZC_CDS_PRODUCT_TEXT as select from ZI_CDS_PRODUCT
{
    key Product,
    key Description
}
