@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption-Hierarchy Func/Gerente'
@Metadata.ignorePropagatedAnnotations: true
@OData.hierarchy.recursiveHierarchy: [{ entity.name: 'ZR_RICKCDS_EMPLOYEE_HIER' }]
define root view entity ZC_RICKCDS_EMPLOYEE provider contract
transactional_query as projection on ZR_RICKCDS_EMPLOYEE_RELATION
{
    @EndUserText.label: 'Funcionário'
    key Employee,
    Manager,

    /* Associations */
    _Employee,
    _Managers
}
