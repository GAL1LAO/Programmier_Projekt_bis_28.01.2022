@AbapCatalog.sqlViewName: 'Z02BOOKINGS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Bookings'
    
define view Z02_Bookings 
  as select from sbook 
  association [1] to Z_02_Test as _Flight on  _Flight.Carrid = sbook.carrid
                                               and _Flight.Connid = sbook.connid
                                              and _Flight.Fldate = sbook.fldate
  association[*] to Z_03_Customer as _Customer on _Customer.Id = sbook.customid
{

   @UI.facet: [
  { position: 10, type: #IDENTIFICATION_REFERENCE, label: 'Customer Information' }]
  
  key carrid     as Carrid,
  key connid     as Connid,
  @UI.lineItem: [{position: 40, importance: #HIGH }]
  key fldate     as Fldate,
  
       
      @UI.identification: [{ position: 10 }]
  key bookid     as Bookid,
  
      @UI.identification: [{ position: 20 }]
      customid   as Customid,
      
      @UI.identification: [{ position: 30 }]
      custtype   as Custtype,
      
      @UI.identification: [{ position: 40 }]  
      luggweight as Luggweight,
      
      @UI.identification: [{ position: 50 }]     
      wunit      as Wunit,
      
      @UI.identification: [{ position: 60 }]   
      @UI.lineItem: [{position: 30, importance: #HIGH }]
      class      as Class,
          
      @UI.identification: [{ position: 70 }]
      @UI.lineItem: [{position: 50, importance: #HIGH }]
      forcuram   as Forcuram,
      forcurkey  as Forcurkey,      
      
    //  @UI.lineItem: [{position: 60, importance: #HIGH }]
      @UI.identification: [{ position: 80 }]
      order_date as Order_Date,
      
     // @ObjectModel.association.type: [#TO_COMPOSITION_PARENT, #TO_COMPOSITION_ROOT]
      _Flight as _Flight,
      
       @UI.identification: [{ position: 90 }]
      _Customer.Form,
      
      @UI.identification: [{ position: 100 }]
      @UI.lineItem: [{position: 20, importance: #HIGH }]
      _Customer.Name,  
      
      @UI.identification: [{ position: 110 }]
      @UI.lineItem: [{position: 90, importance: #HIGH }]    
      _Customer.Street,
      
      @UI.identification: [{ position: 120 }]
      @UI.lineItem: [{position: 80, importance: #HIGH }]
      _Customer.Postcode,
      
       @UI.identification: [{ position: 130 }]
       @UI.lineItem: [{position: 70, importance: #HIGH }]
      _Customer.City,
      
      @UI.identification: [{ position: 140 }]
      @UI.lineItem: [{position: 100, importance: #HIGH }]
      _Customer.Country,      
      _Customer
}
where 
forcuram > 0.00

