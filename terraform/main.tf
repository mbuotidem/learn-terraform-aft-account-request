module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "mail+sandboxacc@misaac.me"
    AccountName               = "sandbox-user1"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "mail+sandbox@misaac.me"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "User1"
  }

  account_tags = {
    "Account Type" = "Sandbox"
  }

  change_management_parameters = {
    change_requested_by = "Isaac Mbuotidem"
    change_reason       = "Add Sandbox User1"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
