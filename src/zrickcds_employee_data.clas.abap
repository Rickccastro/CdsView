CLASS zrickcds_employee_data DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
   INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zrickcds_employee_data IMPLEMENTATION.
 METHOD if_oo_adt_classrun~main.

    "Inserir Funcionario
    TYPES tt_employee TYPE TABLE OF  zrickt_employee  WITH DEFAULT KEY.
    DATA(lt_employee) = VALUE tt_employee(
  (   employee = 1 name ='Ricardo' gender = 'M' part_time_percent = 100 )
  (   employee = 2 name ='Amana' gender = 'F' part_time_percent = 80 )
  (   employee = 3 name ='Diogo' gender = 'M' part_time_percent = 50 )
  (   employee = 4 name ='Arsenio' gender = 'M' part_time_percent = 100 )
  (   employee = 5 name ='João' gender = 'M' part_time_percent = 50 )


         ).
    MODIFY zrickt_employee FROM TABLE @lt_employee.


  ENDMETHOD.
ENDCLASS.
