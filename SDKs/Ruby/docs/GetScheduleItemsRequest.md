# SwaggerClient::GetScheduleItemsRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**location_ids** | **Array&lt;Integer&gt;** | A list of requested location IDs. | [optional] 
**staff_ids** | **Array&lt;Integer&gt;** | A list of requested staff IDs. | [optional] 
**start_date** | **DateTime** | The start date of the requested date range.   &lt;br /&gt;Default: **today’s date** | [optional] 
**end_date** | **DateTime** | The end date of the requested date range.   &lt;br /&gt;Default: **today’s date** | [optional] 
**ignore_prep_finish_times** | **BOOLEAN** | When &#x60;true&#x60;, appointment preparation and finish unavailabilities are not returned.   &lt;br /&gt;Default: **false** | [optional] 
**limit** | **Integer** | Number of results to include, defaults to 100 | [optional] 
**offset** | **Integer** | Page offset, defaults to 0. | [optional] 


