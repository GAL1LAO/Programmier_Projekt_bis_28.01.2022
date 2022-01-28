@AbapCatalog.sqlViewName: 'Z02BFLIGHT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Basic View: Flight_B'
@VDM.viewType: #BASIC
define view ZDS_B_Flight
  as select from sflight as Flight
{

  key Flight.carrid     as Carrid,
  key Flight.connid     as Connid,
  key Flight.fldate     as Fldate,
      Flight.price      as Price,
      Flight.currency   as Currency,
      Flight.planetype  as Planetype,
      Flight.seatsmax   as Seatsmax,
      Flight.seatsocc   as Seatsocc,
      Flight.paymentsum as Paymentsum,
      Flight.seatsmax_b as SeatsmaxB,
      Flight.seatsocc_b as SeatsoccB,
      Flight.seatsmax_f as SeatsmaxF,
      Flight.seatsocc_f as SeatsoccF
}
