#!/usr/bin/env sh

main() {
  input_version="${1}"
  bin_path="${2}"
  install_url="https://raw.githubusercontent.com/lindell/multi-gitter/master/install.sh"

  if [ "${input_version}" = "latest" ]; then
    curl -s "${install_url}" | sh
  else
    curl -s "${install_url}" | sh -s -- -d "v${input_version}"
  fi
  echo "${bin_path}" >> "$GITHUB_PATH"
}

main "$@"
