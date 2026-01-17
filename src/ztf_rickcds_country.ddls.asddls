@EndUserText.label: 'Table Function - Países'
@ClientHandling.type: #CLIENT_DEPENDENT
@ClientHandling.algorithm: #SESSION_VARIABLE
define table function ZTF_RICKCDS_COUNTRY
with parameters 
@Environment.systemField: #CLIENT
p_sapclient : abap.clnt
returns {
  mandt: abap.clnt;
  Country: char3;
  
}
implemented by method zcl_rickcds_tf_country=>get_countries;
