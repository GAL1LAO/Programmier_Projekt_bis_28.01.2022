@AbapCatalog.sqlViewName: 'Z02PASSANGERS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Aufgabe_02_01'
define view Z02_Passangers 
//with parameters PassangerId: abap.char( 8 ),
//with parameters PassangerName: 
as select from sbook 
inner join sflight on sbook.carrid = sflight.carrid 
inner join spfli on spfli.carrid = sflight.carrid
{
    sbook.customid,
    sbook.passname,
    sbook.fldate,
    sbook.passbirth,
    sflight.fldate as FlightDate,
    sflight.planetype as PlaneType,
    spfli.deptime as DepartureTime,
    spfli.arrtime as ArrivalTime, 
    spfli.cityto as CityTo,
    sbook.class as Class,
    sbook.carrid as CarrierId
   
   }
//where sbook.customid = $parameters.PassangerId
