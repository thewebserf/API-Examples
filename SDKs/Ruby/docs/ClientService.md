# SwaggerClient::ClientService

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active_date** | **DateTime** | The date that this pricing option became active and could be used to pay for services. | [optional] 
**count** | **Integer** | The number of service sessions this pricing option contained when first purchased. | [optional] 
**current** | **BOOLEAN** | When &#x60;true&#x60;, there are service sessions remaining on the pricing option that can be used pay for the current session.&lt;br /&gt;  When &#x60;false&#x60;, the client cannot use this pricing option to pay for other services. | [optional] 
**expiration_date** | **DateTime** | The date when the pricing option expires and can no longer be used to pay for services, even if unused service sessions remain on the option; expressed as UTC. | [optional] 
**id** | **Integer** | The unique ID assigned to this pricing option. | [optional] 
**name** | **String** | The name of this pricing option. | [optional] 
**payment_date** | **DateTime** | The date on which the client paid for this pricing option. | [optional] 
**program** | [**Program**](Program.md) | Contains information about the service category this service falls under. | [optional] 
**remaining** | **Integer** | The number of service sessions remaining in the pricing option that can still be used. | [optional] 
**site_id** | **Integer** | The ID of the subscriber site associated with this pricing option. | [optional] 
**action** | **String** | The action taken. | [optional] 


