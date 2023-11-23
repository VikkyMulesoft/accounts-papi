%dw 2.0
output application/json
---
{
    "name": vars.payloadcopy.name,
    "email": vars.payloadcopy.email,
    "number": vars.payloadcopy.number,
    "phone": vars.payloadcopy.phone,
    "fax": vars.payloadcopy.fax,
    "billingAddress": {
      "street": vars.payloadcopy.billingAddress.street,
      "city": vars.payloadcopy.billingAddress.city,
      "state": vars.payloadcopy.billingAddress.state,
      "postalCode": vars.payloadcopy.billingAddress.postalCode,
      "country": if(((payload.data filterObject ($$ ~= vars.payloadcopy.billingAddress.country) mapObject ($)).country) != null)
              ((payload.data filterObject ($$ ~= vars.payloadcopy.billingAddress.country) mapObject ($)).country)
                 else vars.payloadcopy.billingAddress.country
         
      },                 
                 
    "shippingAddress": {
      "street": vars.payloadcopy.shippingAddress.street,
      "city": vars.payloadcopy.shippingAddress.city,
      "state": vars.payloadcopy.shippingAddress.state,
      "postalCode": vars.payloadcopy.shippingAddress.postalCode,
      "country": if( ((payload.data filterObject ($$ ~= vars.payloadcopy.shippingAddress.country) mapObject ($)).country) != null)
       ((payload.data filterObject ($$ ~= vars.payloadcopy.shippingAddress.country) mapObject ($)).country)
       else
        vars.payloadcopy.shippingAddress.country
    }
  }