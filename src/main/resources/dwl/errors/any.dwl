%dw 2.0
output application/json
---
{
	"errorDescription": Mule::p('error.errorDescription'),
	"errorMessage": Mule::p('errorMessage.ANY'),
	"errorCode": Mule::p('errorCode.ANY')
}