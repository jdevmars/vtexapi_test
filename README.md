From time to time, to help a developer with API testing, task in which I always needed to check API credentials against 3 Vtex endPoints, I needed to head to Vtex website and manually insert the same credentials on 3 different web pages, and also cleaning unnecessary form fields. These are the endPoints:

1) Scroll documents: https://developers.vtex.com/docs/api-reference/master-data-api-v2#get-/api/dataentities/-dataEntityName-/scroll
2) List all Sku ID's: https://developers.vtex.com/docs/api-reference/catalog-api#get-/api/catalog_system/pvt/sku/stockkeepingunitids
3) List orders: https://developers.vtex.com/docs/api-reference/orders-api#get-/api/oms/pvt/orders

In an bid to facilitate and speed up this process of credentials validation, I developed this web application to do the 3 tests at once, presenting the results on a single webpage, bringing the status code returned and a sample of the body response.

JSP/Servlets, Bootstrap (HTML & CSS), jQuery (JavaScript) and HttpClient for Rest API handling are used.

My colleagues at work could benefit from the application as well, but they don't remember it exists, unfortunately.
