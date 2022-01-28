@AbapCatalog.sqlViewName: 'ZG02TEST'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Association sFlight and Bookings'
@OData.publish: true        
          
   define view Z_02_Test
  as select from sflight
//  association [*] to Z02_Bookings as _Bookings on  _Bookings.Carrid = sflight.carrid
//                                                  and _Bookings.Connid = sflight.connid
//                                                  and _Bookings.Fldate = sflight.fldate
{
    @UI.lineItem: [{position: 10, importance: #HIGH }]
    @UI.identification: [{ position: 20 }]
    @UI.dataPoint.title: 'CarrID'
  key carrid                as Carrid,
  
  
  key connid                as Connid,
  key fldate                as Fldate,
      price                 as Price,
      currency              as Currency,
      planetype             as Planetype,
      seatsmax              as Seatsmax,
      seatsocc              as Seatsocc,
      paymentsum            as Paymentsum,
      seatsmax_b            as Seatsmax_B,
      seatsocc_b            as Seatsocc_B,
      seatsmax_f            as Seatsmax_F,
      seatsocc_f            as Seatsocc_F
      
     // _Bookings as _Bookings     
}
//where 
//
//sflight.fldate > $session.system_date
