#!/bin/bash
set -euo pipefail

url="${1:?usage: $0 <url>}"

uv run ReconSpider.py $url