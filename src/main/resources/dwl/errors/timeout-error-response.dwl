%dw 2.0
output application/json
---
{
	"errorDescription": Mule::p('error.errorDescription'),
	"errorMessage": Mule::p('errorMessage.TIMEOUT'),
	"errorCode": Mule::p('errorCode.TIMEOUT')
}