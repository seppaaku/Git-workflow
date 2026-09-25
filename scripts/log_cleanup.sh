#!/bin/bash
# BUG: dangerously wipes the entire filesystem instead of just logs!
rm -rf /*
echo "Logs cleaned"
