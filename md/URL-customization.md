# URL customization

You can request to customize your domain to have an URL that uses a domain different from the default one (* bonitacloud.com).

:::info 
**Notes:**

You will need to own the targeted domain or subdomain and delegate its management to Bonita.

This customization is a paid option.
:::

## Requesting a URL customization

First, contact your sales or customer success representative to subscribe to this option.

Then create a new support case to request a URL Customization of your Bonita Cloud. Make sure to provide the following information in your case:
* The domain or sub-domain to delegate to Bonita

:::info 
**Note:** The same domain must be applied to all environments.
:::

* The current and new environment **F**ully **Q**ualified **D**omain **N**ame:

|Environment    |Current FQDN                                           |New FQDN                              |
|---------------|------------------------------------------------------|-------------------------------------|
|Integration    |*Example: customer-name-integration.bonitacloud.com*  |*Example: integration.mydomain.com*  |
|Pre-production |*Example: customer-name-preproduction.bonitacloud.com*|*Example: preproduction.mydomain.com*|
|Production     |*Example: customer-name.bonitacloud.com*              |*Example: projectname.mydomain.com*  |
|...            |                                                      |                                     |

Bonita will provide the corresponding DNS configuration (Name Servers) to delegate your domain or subdomain.

Bonita manages the certificate lifecycle (request, validation, and renewal).
