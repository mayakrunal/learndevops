# Learn DevOps

## Azure

- [Create Azure Principal](https://learn.microsoft.com/en-us/entra/identity-platform/howto-create-service-principal-portal)

```sh
az ad sp create-for-rbac --name="<ServicePrincipal name>" --role="Contributor" --scopes="/subscriptions/<subscriptionId>"

```
