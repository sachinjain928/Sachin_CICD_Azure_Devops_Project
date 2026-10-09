resource "azurerm_resource_group" "sachin-rg" {

  for_each = var.rg


  name     = each.value.name
  location = each.value.location


}

resource "azurerm_storage_account" "sachinfirststorageaccount" {
  name                     = "sj2firststorageaccount"
  resource_group_name      = "sachin-rg1"
  location                 = "central india"
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

resource "azurerm_storage_container" "sachincontainer" {
  name = "sachin-container-1"
  # resource_group_name   = azurerm_resource_group" "sachin-RG-STA-2.name
  storage_account_id    = azurerm_storage_account.sachinfirststorageaccount.id
  container_access_type = "private"

}