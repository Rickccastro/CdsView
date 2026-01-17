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

    "Inserir Produto
    TYPES tt_product TYPE TABLE OF  zrickt_product   WITH DEFAULT KEY.
    DATA(lt_product) = VALUE tt_product(
  (   product = 1 description = 'Caderno' product_type = 1 authorization_group = 1 )
  (   product = 2 description = 'Lápis' product_type = 1 authorization_group = 1 )
  (   product = 3 description = 'Caneta' product_type = 1 authorization_group = 1 )
  (   product = 4 description = 'Celular' product_type = 1 authorization_group = 1 )
         ).
    MODIFY zrickt_product FROM TABLE @lt_product.


    "Pedido
    TYPES tt_order TYPE TABLE OF zrickt_order  WITH DEFAULT KEY.
    DATA(lt_order) = VALUE tt_order(
  (   sales_order = 1  creation_date = sy-datum creation_user = sy-uname )
  (   sales_order = 2  creation_date = sy-datum creation_user = sy-uname )
         ).
    MODIFY zrickt_order FROM TABLE @lt_order.

    out->write(  'Dados inseridos na zrickt_order com sucesso! ' ).




    "Inserir itens Pedido
    TYPES tt_order_it TYPE TABLE OF zrickt_order_it  WITH DEFAULT KEY.
    DATA(lt_order_it) = VALUE tt_order_it(
  (   sales_order = 1 sales_order_item =  1 product = 1 product_quantity = 1  product_unity = 'KI' total_value = 10   currency = 'EUR' creation_date = sy-datum creation_user = sy-uname )
  (   sales_order = 1 sales_order_item =  2 product = 1 product_quantity = 2  product_unity = 'KI' total_value = 20   currency = 'EUR' creation_date = sy-datum creation_user = sy-uname )
  (   sales_order = 1 sales_order_item =  3 product = 1 product_quantity = 10 product_unity = 'KI' total_value = 30   currency = 'EUR' creation_date = sy-datum creation_user = sy-uname )
  (   sales_order = 2 sales_order_item =  1 product = 1 product_quantity = 15 product_unity = 'KI' total_value = 1000 currency = 'EUR' creation_date = sy-datum creation_user = sy-uname )
         ).
    MODIFY zrickt_order_it FROM TABLE @lt_order_it.

    out->write(  'Dados inseridos com sucesso! ' ).

  ENDMETHOD.

ENDCLASS.
