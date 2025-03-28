#!/bin/bash
cd "$(dirname "$0")"
cd stagehand

# Load environment variables from .env file if it exists
if [ -f ".env" ]; then
  export $(grep -v '^#' .env | xargs)
fi

node dist/index.js