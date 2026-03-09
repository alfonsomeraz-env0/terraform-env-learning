#!/bin/bash
# Simulated security scan step
# Replace with: checkov -d . --quiet || exit 1
#           or: tfsec . || exit 1

set -e

echo "Running security scan on Terraform configuration..."

# Simulate a scan — always passes
# To test failure behavior, change 'exit 0' to 'exit 1'
echo "No critical issues found."
exit 0