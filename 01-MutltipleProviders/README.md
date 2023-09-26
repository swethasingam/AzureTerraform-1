# Multiple Providers

- Terraform Block: This block sets the required version of Terraform and specifies the required providers. In this case, it requires version 0.15 or higher and uses the azurerm provider with a version constraint of ">= 2.0".

- (Default Provider): This block configures the first Azure provider, which is associated with the East US region. It specifies the required authentication details (subscription_id, client_id, client_secret, tenant_id) as variables (likely defined elsewhere in your Terraform project).

- Provider-2 for WestUS: This block configures the second Azure provider, which is associated with the West US region. It uses the same authentication details as Provider-1 but also specifies a feature configuration. Specifically, it sets the delete_os_disk_on_deletion feature to false, which means that when a virtual machine is destroyed, its associated disk will not be deleted (the default behavior is to delete the disk).

- Alias: The alias attribute is used to give the second provider configuration a unique name (provider2-westus). This alias is useful when you want to reference this specific provider configuration in resource blocks or data sources. For example, if you want to create resources in the West US region

- By using these two provider configurations, you can create and manage Azure resources in both the East US and West US regions within the same Terraform project. This is particularly useful when you need resources distributed across multiple regions or when you have specific region-based configurations and settings.