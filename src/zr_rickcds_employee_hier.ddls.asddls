@AccessControl.authorizationCheck: #NOT_REQUIRED
define hierarchy ZR_RICKCDS_EMPLOYEE_HIER
  as parent child hierarchy(
    source ZR_RICKCDS_EMPLOYEE_RELATION
    child to parent association _Managers
    start where
      Manager = 0
    siblings order by
      Employee
  )
{
  Employee,
  Manager,
  _Employee,
  _Managers

}
