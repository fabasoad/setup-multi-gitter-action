# Setup multi-gitter action

[![Stand With Ukraine](https://raw.githubusercontent.com/vshymanskyy/StandWithUkraine/main/badges/StandWithUkraine.svg)](https://stand-with-ukraine.pp.ua)
![Release](https://img.shields.io/github/v/release/fabasoad/setup-multi-gitter-action?include_prereleases)
![functional-tests](https://github.com/fabasoad/setup-multi-gitter-action/actions/workflows/functional-tests.yml/badge.svg)
![security](https://github.com/fabasoad/setup-multi-gitter-action/actions/workflows/security.yml/badge.svg)
![linting](https://github.com/fabasoad/setup-multi-gitter-action/actions/workflows/linting.yml/badge.svg)

This action installs [multi-gitter](https://github.com/lindell/multi-gitter)
CLI tool.

## Prerequisites

The following tools have to be installed for successful work of this GitHub Action:
[curl](https://curl.se).

## Inputs

```yaml
- uses: fabasoad/setup-multi-gitter-action@v0
  with:
    # (Optional) multi-gitter version. Defaults to the latest version.
    version: "0.54.1"
    # (Optional) If "false" skips installation if multi-gitter is already installed.
    # If "true" installs multi-gitter in any case. Defaults to "false".
    force: "false"
```

## Outputs

<!-- prettier-ignore-start -->
| Name      | Description                               | Example |
|-----------|-------------------------------------------|---------|
| installed | Whether multi-gitter was installed or not | `true`  |
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
      - uses: fabasoad/setup-multi-gitter-action@v0
        with:
          version: "0.54.1"
      - name: Print version
        run: multi-gitter version
```

### Result

```shell
Run multi-gitter version
multi-gitter version: 0.54.1
Release-Date: 2024-11-21
Go version: go1.23.2
OS: linux
Arch: amd64
Commit: 5841986bcc7e4db734349878435e4ef33e70aa2c
```
