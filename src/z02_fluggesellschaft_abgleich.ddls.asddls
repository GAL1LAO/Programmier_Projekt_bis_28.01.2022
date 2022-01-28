@AbapCatalog.sqlViewName: 'Z02FLUGGESEL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Aufgabe_02_02'
define view Z02_Fluggesellschaft_Abgleich
// with parameters CarrierId: abap.char(2)
 as select from spfli 
 inner join sflight
on spfli.carrid = sflight.carrid

{
spfli.carrid as CarrierId,
sflight.fldate as FlightDate,
sflight.planetype as PlaneType,
spfli.deptime as DepartureTime,
spfli.arrtime as ArrivalTime,
spfli.cityfrom as CityFrom,
spfli.cityto as CityTo,
sflight.seatsocc as OccupaidSeats,
sflight.seatsocc_b as OccupaidSeatsInBussinessClass,
sflight.seatsocc_f as OccupaidSeatsInFirstClass

}
//where spfli.carrid = $parameters.CarrierId
