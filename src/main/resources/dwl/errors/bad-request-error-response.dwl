%dw 2.0
output application/json
---
{
	"errorDescription": Mule::p('error.errorDescription'),
	"errorMessage": Mule::p('errorMessage.BAD_REQUEST'),
	"errorCode": Mule::p('errorCode.BAD_REQUEST')
}