@AbapCatalog.sqlViewName: 'Z02FEDRALOFFICE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Aufgabe_02_04'
define view Z02_fedraloffice as select from spfli association [1..*] to sflight 
on sflight.carrid = spfli.carrid and sflight.connid = spfli.connid {
    key spfli.carrid as CarrierID, 
    key spfli.connid as ConnectionId,
     spfli.countryfr as CountryFrom, 
    spfli.cityfrom as Cityfrom,
    spfli.airpfrom as Airportfrom, 
    spfli.countryto as CountryTo,
    spfli.cityto as CityTo,
    spfli.airpto as AirportTo,
    sflight.fldate,
    sflight as sflight    
}
