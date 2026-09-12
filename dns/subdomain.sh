#!/usr/bin/env bash
set -euo pipefail

ip_addr="${1:?usage: $0 <ip> <port> <wordlist>}"
port="${2:?usage: $0 <ip> <port> <wordlist>}"
word_list="${3:?usage: $0 <ip> <port> <wordlist>}"

gobuster vhost \
  -u "http://${ip_addr}:${port}/" \
  -w "$word_list" \
  --append-domain
