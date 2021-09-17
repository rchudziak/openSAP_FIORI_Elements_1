@AbapCatalog.sqlViewName: 'ZIFESTAT000013'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Travel Status view entity'
@ObjectModel.resultSet.sizeCategory: #XS -- drop down menu for value help
define view ZI_FE_STAT_000013
  as select from zfe_astat_000013 as Status
{
  @UI.textArrangement: #TEXT_ONLY
  @ObjectModel.text.element: [ 'TravelStatusText' ]
  key Status.travel_status_id as TravelStatusId,
  
  @UI.hidden: true
  Status.travel_status_text as TravelStatusText
}
