@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Basic - Funcionarios'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_RICKCDS_EMPLOYEE as select from zrickt_employee
{
    key employee as Employee,
    name as Name,
    gender as Gender,
    part_time_percent as PartTimePercent
}
