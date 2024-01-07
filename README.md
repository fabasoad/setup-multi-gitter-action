# Setup multi-gitter action

[![Stand With Ukraine](https://raw.githubusercontent.com/vshymanskyy/StandWithUkraine/main/badges/StandWithUkraine.svg)](https://stand-with-ukraine.pp.ua)
![Release](https://img.shields.io/github/v/release/fabasoad/setup-multi-gitter-action?include_prereleases)
![functional-tests](https://github.com/fabasoad/setup-multi-gitter-action/actions/workflows/functional-tests.yml/badge.svg)
![security](https://github.com/fabasoad/setup-multi-gitter-action/actions/workflows/security.yml/badge.svg)
![linting](https://github.com/fabasoad/setup-multi-gitter-action/actions/workflows/linting.yml/badge.svg)

This action installs [multi-gitter](https://github.com/lindell/multi-gitter)
CLI tool.

## Prerequisites

The following tools have to be installed for successful work of this GitHub action:
[curl](https://curl.se).

## Inputs

<!-- prettier-ignore-start -->
| Name    | Required | Description                                                                                               | Default  | Possible values |
|---------|----------|-----------------------------------------------------------------------------------------------------------|----------|-----------------|
| version | No       | Version of `multi-gitter` tool that can be found [here](https://github.com/lindell/multi-gitter/releases) | `latest` | &lt;String&gt;  |
<!-- prettier-ignore-end -->

## Example usage

### Workflow configuration

```yaml
name: Test

on: push

jobs:
  setup:
    name: multi-gitter
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@main
      - uses: fabasoad/setup-multi-gitter-action@main
        with:
          # (Optional) Specific version of multi-gitter CLI. Defaults to "latest".
          version: "0.44.1"
      - name: Print version
        run: multi-gitter version
```

### Result

```shell
Run multi-gitter version
multi-gitter version: 0.44.1
Release-Date: 2022-11-10
Go version: go1.19.2
Commit: 3436db3c806343d2d83f58e65b35c30c906ef5d8
```
