# Guance Cloud Resources Specification

![banner](./artwork/banner.jpeg)

This is the Guance specification written by [Iacker](https://github.com/GuanceCloud/iacker). It describe all the resources that Guance provides.

## Distribution

| Registry | State | Import |
| --- | --- | --- |
| [![Static Badge](https://img.shields.io/badge/Godoc-gray?style=flat-square&logo=go)](https://pkg.go.dev/github.com/GuanceCloud/guance) | Active | `go get github.com/GuanceCloud/iacker-guance` |
| [![Static Badge](https://img.shields.io/badge/Protobuf-gray?style=flat-square&logo=go)](https://buf.build/guancecloud/iacker-guance) | Active | Edit buf.yaml & Run `buf mod update` |

## Managed Providers

| Target | State | Documentation |
| --- | --- | --- |
| [Terraform](./targets/go) | Active | [![Static Badge](https://img.shields.io/badge/Terraform-gray?style=flat-square&logo=terraform)](https://registry.terraform.io/providers/GuanceCloud/guance/latest) |
| [KubeVela](./targets/kubevela) | Prototype |  |
| [Crossplane](./targets/kubevela) | Prototype |  |

## Contributing

**Install Iacker**

```bash
go install github.com/GuanceCloud/iacker/cmd/iacker
```

**Modify the specification**

Change the resource specification at [resources](./spec/resources/).

**Generate the target code**

```bash
iacker generate
```

Commit all the code.

## License

[MIT License](./LICENSE)
