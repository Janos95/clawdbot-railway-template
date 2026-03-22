#!/usr/bin/env bash
set -euo pipefail

config_dir="${SIGNAL_CLI_CONFIG_DIR:-/data/signal-cli}"
bin_path="${SIGNAL_CLI_BIN:-/opt/signal-cli/bin/signal-cli}"

mkdir -p "$config_dir"

exec "$bin_path" --config "$config_dir" "$@"
