# [WIP] Spot Wave Operator Terraform Module

A Terraform module to install Wave Operator.

## Table of Contents

- [Usage](#usage)
- [Examples](#examples)
- [Resources](#resources)
- [Requirements](#requirements)
- [Providers](#providers)
- [Inputs](#inputs)
- [Outputs](#outputs)
- [Documentation](#documentation)
- [Getting Help](#getting-help)
- [Community](#community)
- [Contributing](#contributing)
- [License](#license)

## Usage

```hcl
module "wave-operator" {
  source = "spotinst/wave-operator/spotinst"
}
```

## Examples

- [Simple Installation](https://github.com/spotinst/terraform-spotinst-wave-operator/tree/master/examples/simple-installation)

## Resources

This module creates and manages the following resources:

- helm_release

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >=0.12.0 |
| helm | >= 2.0.1 |
| null | >= 3.0.0 |

## Providers

| Name | Version |
|------|---------|
| helm | >= 2.0.1 |
| null | >= 3.0.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| chart | Chart name to be deployed | `string` | `"wave-operator"` | no |
| chart\_repository | Repository URL where to locate the Wave Operator chart | `string` | `"https://charts.spot.io"` | no |
| chart\_version | Set the Chart version for the Wave Operator that should be deployed | `string` | `"0.1.8"` | no |
| create\_operator | Controls whether Wave Operator should be created (it affects all resources) | `bool` | `true` | no |
| module\_depends\_on | List of modules or resources this module depends on | `list` | `[]` | no |
| namespace | The namespace to install the Wave Operator into. | `string` | `"spot-system"` | no |

## Outputs

No output.

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Documentation

If you're new to [Spot](https://spot.io/) and want to get started, please checkout our [Getting Started](https://docs.spot.io/connect-your-cloud-provider/) guide, available on the [Spot Documentation](https://docs.spot.io/) website.

## Getting Help

We use GitHub issues for tracking bugs and feature requests. Please use these community resources for getting help:

- Ask a question on [Stack Overflow](https://stackoverflow.com/) and tag it with [terraform-spotinst](https://stackoverflow.com/questions/tagged/terraform-spotinst/).
- Join our [Spot](https://spot.io/) community on [Slack](http://slack.spot.io/).
- Open an issue.

## Community

- [Slack](http://slack.spot.io/)
- [Twitter](https://twitter.com/spot_hq/)

## Contributing

Please see the [contribution guidelines](CONTRIBUTING.md).

## License

Code is licensed under the [Apache License 2.0](LICENSE).
