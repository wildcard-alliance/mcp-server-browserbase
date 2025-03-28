#!/bin/bash
cd "$(dirname "$0")"
cd browserbase
BROWSERBASE_API_KEY="bb_live_Ow4nkFBxch9nMcwnXc9KCEjlQCE" \
BROWSERBASE_PROJECT_ID="a259b0c0-32f8-480b-a41c-88847d2203a8" \
node dist/index.js