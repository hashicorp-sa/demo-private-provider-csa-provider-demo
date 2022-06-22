## Description

This is the companion demo repository to show a custom provider in the private registry for Terraform Cloud and Enterprise. The example provider and deployment code can be found here:[https://github.com/HashiCorp-CSA/demo-private-provider-csa-provider](https://github.com/HashiCorp-CSA/demo-private-provider-csa-provider)

## Getting Started & Documentation

To use this demo code, follow these steps:

1. Create a Terraform Cloud or Enterprise organization.
2. Deploy your custom provider to the organization private registry from the [https://github.com/HashiCorp-CSA/demo-private-provider-csa-provider](demo provider repository).
3. Clone this repository.
3. Run `terraform login mytfe.com`, replacing myfe.com with your Terraform Enterprise instance.
4. Run `terraform init` to pull down the provider.
5. Run `terraform apply` to plan and apply the changes.

## Contributing

Please create a fork and raise a pull request.

## Disclaimer
“By using the software in this repository (the “Software”), you acknowledge that: (1) the Software is still in development, may change, and has not been released as a commercial product by HashiCorp and is not currently supported in any way by HashiCorp; (2) the Software is provided on an “as-is” basis, and may include bugs, errors, or other issues; (3) the Software is NOT INTENDED FOR PRODUCTION USE, use of the Software may result in unexpected results, loss of data, or other unexpected results, and HashiCorp disclaims any and all liability resulting from use of the Software; and (4) HashiCorp reserves all rights to make all decisions about the features, functionality and commercial release (or non-release) of the Software, at any time and without any obligation or liability whatsoever.”
