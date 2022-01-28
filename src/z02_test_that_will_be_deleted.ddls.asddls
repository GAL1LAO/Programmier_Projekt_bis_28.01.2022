@AbapCatalog.sqlViewName: 'Z02HELLO'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'hello'
define view Z02_Test_that_will_be_deleted as select from sbook {
    key customid
}
