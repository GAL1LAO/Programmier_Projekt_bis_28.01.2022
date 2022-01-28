@AbapCatalog.sqlViewName: 'ZI03BOOK'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Aufgabe_02_03'
define view zi_03_booking_flDate 
 as select from sbook
association [0..*] to sflights as _Flights on _Flights.carrid = sbook.carrid
and _Flights.connid = sbook.connid
association [0..1] to scustom as _Customer on _Customer.id = sbook.customid

{
  
  key carrid     as CarrierId,
  key connid     as ConnectionId,
  key fldate     as FlightDate,
  key bookid     as Bookingnumber,
      customid   as CustomerId,
      luggweight as LuggageWeight,
      wunit      as LuggageWeightUnit,
      class      as FlightClass,
      forcuram,
      forcurkey  as CurrencyCode,
      order_date as OrderDate,
      agencynum  as AgencyNumber,
      counter    as CounterId,  
      _Flights.cityto,
      _Flights.countryto,  
      _Flights.cityfrom,     
      _Flights,    
      _Customer.name,
      _Customer
      
               
}
where     
  fldate <= dats_add_days(cast($session.system_date as s_date), +15, 'NULL')      and   // Last minute definiere?   
  fldate > $session.system_date 
