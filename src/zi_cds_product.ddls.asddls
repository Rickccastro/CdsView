@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Basic - Produto'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_CDS_PRODUCT
  as select from zrickt_product
{
  key product             as Product,
      product_type        as ProductType,
      description         as Description,
      authorization_group as AuthorizationGroup,
      creation_date_time  as CreationDateTime
}
