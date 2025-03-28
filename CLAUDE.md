# Browserbase MCP Server

This package contains two MCP servers for cloud browser automation:

1. **Browserbase MCP** - Located in `browserbase/`
   - Basic browser automation capabilities using Browserbase and Puppeteer
   - Control cloud browsers, extract data, capture screenshots, execute JavaScript

2. **Stagehand MCP** - Located in `stagehand/`
   - High-level AI-driven web automation
   - Uses natural language instructions to perform complex browser tasks
   - Supports multiple models, including OpenAI's GPT-4 and Anthropic's Claude

## Setup Instructions

### Prerequisites
- Node.js 18 or higher
- A Browserbase account (get API key from https://www.browserbase.com/)

### Configuration

For either server, you need to add configuration to your Claude Desktop config:

#### Browserbase Server
```json
{
  "mcpServers": {
    "browserbase": {
      "command": "bash",
      "args": [
        "/path/to/smarty-pants/packages/modelcontextprotocol/mcp-server-browserbase/browserbase-wrapper.sh"
      ],
      "env": {
        "BROWSERBASE_API_KEY": "your-browserbase-api-key-here",
        "BROWSERBASE_PROJECT_ID": "your-browserbase-project-id-here"
      }
    }
  }
}
```

#### Stagehand Server
```json
{
  "mcpServers": {
    "stagehand": {
      "command": "bash",
      "args": [
        "/path/to/smarty-pants/packages/modelcontextprotocol/mcp-server-browserbase/stagehand-wrapper.sh"
      ],
      "env": {
        "BROWSERBASE_API_KEY": "your-browserbase-api-key-here",
        "BROWSERBASE_PROJECT_ID": "your-browserbase-project-id-here", 
        "OPENAI_API_KEY": "your-openai-api-key-here"
      }
    }
  }
}
```

## Tools

### Browserbase Tools
- `browserbase_create_session` - Create a new cloud browser session
- `browserbase_navigate` - Navigate to any URL in the browser
- `browserbase_screenshot` - Capture screenshots of the page or elements
- `browserbase_click` - Click elements on the page
- `browserbase_fill` - Fill out input fields
- `browserbase_evaluate` - Execute JavaScript in the browser console
- `browserbase_get_content` - Extract content from the current page
- `browserbase_parallel_sessions` - Create multiple browser sessions

### Stagehand Tools
- `stagehand_navigate` - Navigate to any URL in the browser
- `stagehand_act` - Perform an action on the web page (e.g., "click the login button")
- `stagehand_extract` - Extract data from the web page
- `stagehand_observe` - Observe actions that can be performed on the web page

## Example Usage

### Browserbase Example:
```
Help me search for "cloud browser automation" on Google and take a screenshot of the results.
```

### Stagehand Example:
```
Use Stagehand to search for the latest JavaScript frameworks on Google and extract the top 5 results.
```

## Running Locally

```bash
# For Browserbase MCP
cd browserbase
npm install
npm run build
node dist/index.js

# For Stagehand MCP
cd stagehand
npm install
npm run build
node dist/index.js
```

## Debugging
If you encounter any issues:
1. Check that all API keys are set correctly
2. Ensure the server wrappers have execute permissions (`chmod +x *.sh`)
3. Look for error messages in the server output

## Requirements

To use this MCP server, you need:

1. A Browserbase API key
2. Node.js v18+

## Configuration

Set the following environment variables:

```bash
# Required for both Browserbase and Stagehand
BROWSERBASE_API_KEY=your_api_key_here
BROWSERBASE_PROJECT_ID=your_project_id_here

# Required for Stagehand
OPENAI_API_KEY=your_openai_key_here  # If using OpenAI models
```