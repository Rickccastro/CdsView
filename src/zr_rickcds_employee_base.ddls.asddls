@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Composite - Base Hierarquia Funcionario'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.representativeKey: 'Employee'
define view entity ZR_RICKCDS_EMPLOYEE_BASE as select from ZI_RICKCDS_EMPLOYEE
{
    @ObjectModel.text.element: [ 'Name' ]
    @EndUserText.label: 'Funcionario'
    key Employee,
    @Semantics.text:true
    @EndUserText.label: 'Nome'
    Name,
    @EndUserText.label: 'Gênero'
    Gender,
    @Aggregation.default: #SUM
    @EndUserText.label: 'Tempo Equivalente'
    division(PartTimePercent,100,2) as FullTimeEquivalend
}
