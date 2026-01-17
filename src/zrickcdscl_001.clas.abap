CLASS zrickcdscl_001 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
        INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zrickcdscl_001 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    types tt_product type TABLE of  zrickt_product   with DEFAULT KEY.
        data(lt_product) = VALUE tt_product(
      (   product = 1 description = 'Caderno' product_type = 1 authorization_group = 1 )
      (   product = 2 description = 'Lápis' product_type = 1 authorization_group = 1 )
      (   product = 3 description = 'Caneta' product_type = 1 authorization_group = 1 )
      (   product = 4 description = 'Celular' product_type = 1 authorization_group = 1 )
             ).
             MODIFY zrickt_product from TABLE @lt_product.


  types tt_order_it type TABLE of zrickt_order_it  with DEFAULT KEY.
        data(lt_order_it) = VALUE tt_order_it(
      (   sales_order = 1 sales_order_item =  1 product = 1 product_quantity = 1  product_unity = 'KI' total_value = 10   currency = 'EUR')
      (   sales_order = 1 sales_order_item =  2 product = 1 product_quantity = 2  product_unity = 'KI' total_value = 20   currency = 'EUR')
      (   sales_order = 1 sales_order_item =  3 product = 1 product_quantity = 10 product_unity = 'KI' total_value = 30   currency = 'EUR')
      (   sales_order = 2 sales_order_item =  1 product = 1 product_quantity = 15 product_unity = 'KI' total_value = 1000 currency = 'EUR')
             ).
             MODIFY zrickt_order_it from TABLE @lt_order_it.

             out->write(  'Dados inseridos com sucesso! ' ).

  ENDMETHOD.

ENDCLASS.
