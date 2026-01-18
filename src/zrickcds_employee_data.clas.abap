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

DELETE FROM zrickt_employee.
    "Inserir Funcionario
    TYPES tt_employee TYPE TABLE OF  zrickt_employee  WITH DEFAULT KEY.
    DATA(lt_employee) = VALUE tt_employee(
  (   employee = 1 name ='Ricardo' gender = 'M' part_time_percent = 100 )
  (   employee = 2 name ='Amana' gender = 'F' part_time_percent = 80 )
  (   employee = 3 name ='Diogo' gender = 'M' part_time_percent = 50 )
  (   employee = 4 name ='Arsenio' gender = 'M' part_time_percent = 100 )
  (   employee = 5 name ='João' gender = 'M' part_time_percent = 50 )
  (   employee = 6 name ='Rafael' gender = 'M' part_time_percent = 70 )
  (   employee = 7 name ='Matheus' gender = 'M' part_time_percent = 100 )
  (   employee = 8 name ='Arthur' gender = 'M' part_time_percent = 100 )
  (   employee = 9 name ='Pedro' gender = 'M' part_time_percent = 60 )
  (   employee = 10 name ='Vitor' gender = 'M' part_time_percent = 80 )
  (   employee = 11 name ='Ana' gender = 'F' part_time_percent = 100 )


         ).
    MODIFY zrickt_employee FROM TABLE @lt_employee.

    DELETE FROM zrickt_managers.
        "Inserir Gerentes
    TYPES tt_manager TYPE TABLE OF  zrickt_managers  WITH DEFAULT KEY.
    DATA(lt_managers) = VALUE tt_manager(
  (   employee = 1 manager = 0 )
  (   employee = 2 manager = 1 )
  (   employee = 3 manager = 1 )
  (   employee = 4 manager = 3 )
  (   employee = 5 manager = 1 )
  (   employee = 6 manager = 5 )
  (   employee = 7 manager = 5 )
  (   employee = 8 manager = 7 )
  (   employee = 9 manager = 0 )
  (   employee = 10 manager = 9 )
  (   employee = 11 manager = 9 )

         ).
    MODIFY zrickt_managers FROM TABLE @lt_managers.


  ENDMETHOD.
ENDCLASS.
