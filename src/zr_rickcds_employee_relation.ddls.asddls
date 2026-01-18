@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Composite-Hierarquia Funcionario/Gerente'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZR_RICKCDS_EMPLOYEE_RELATION as select from ZI_RICKCDS_MANAGERS
association[0..1] to ZR_RICKCDS_EMPLOYEE_RELATION as _Managers on $projection.Manager = _Managers.Employee
association[0..1] to ZI_RICKCDS_EMPLOYEE as _Employee on $projection.Employee = _Employee.Employee
{
    key Employee,
    Manager,
    _Managers,
    _Employee
}
