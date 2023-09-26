# Azure Subscription ID.
variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
}

# Azure Service Principal Client ID.
variable "client_id" {
  description = "Azure Service Principal Client ID"
  type        = string
}

# Azure Service Principal Client Secret.
variable "client_secret" {
  description = "Azure Service Principal Client Secret"
  type        = string
}

# Azure Tenant ID.
variable "object_id" {
  description = "Azure object_id"
  type        = string
}

variable "tenant_id" {
  description = "Azure Tenant ID"
  type        = string
}