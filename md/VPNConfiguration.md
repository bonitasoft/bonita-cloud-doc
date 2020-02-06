# Connecting Bonita Cloud to your VPN

To connect your private network to Bonita Cloud, you can request for a site-to-site VPN connection.

It will secure the access to your applications in Bonita Cloud (only the users connected to VPN will be able to access them) and it will also allow Bonita to interact with your other systems.

![VPNCloud](images/DiagVPN.png)

Bonita Cloud supports Internet Protocol security (IPsec) VPN connections.

## Failover
Two tunnels between VPN gateways can be configured to guarantee the secure connection between your network and Bonita Cloud.

## Incoming Traffic
By default, Bonita Cloud will allow connections from the public internet and the VPN. 

If needed, only the traffic coming from the VPN can be allowed. In this case, only the users connected to the VPN will be able to access your applications

## Impacts on the availability
Bonitasoft will guarantee the availability of the VPN gateway on the Bonita Cloud side. However, Bonitasoft is not responsible for issues on the customer side of the VPN (unreachable data for Bonita or impossibility for the customer’s user to connect to the VPN).

## Requesting a VPN Integration
Create a new support case to request a VPN connection with Bonita Cloud. Make sure to provide the following information in your case:
* VPN gateway type
* Gateway public IP address
* Encryption algorithms(AES-128, AES-256)
* Integrity Algorithms(SHA1, SHA2-256)
* Authentification modes (pre-shared key/digital signature)
* Diffie-Hellman group (2, 5, 14...)
* Addressing plan/Netcode
