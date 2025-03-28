# Browserbase MCP Server

This package contains two MCP servers for cloud browser automation:

1. **Browserbase MCP** - Located in `browserbase/`
   - Basic browser automation capabilities using Browserbase and Puppeteer
   - Control cloud browsers, extract data, capture screenshots, execute JavaScript

2. **Stagehand MCP** - Located in `stagehand/`
   - High-level AI-driven web automation
   - Uses natural language instructions to perform complex browser tasks
   - Supports multiple models, including OpenAI's GPT-4 and Anthropic's Claude

## Usage

### Browserbase MCP

```typescript
// Example of using Browserbase MCP
import { McpClient } from '@modelcontextprotocol/sdk';

const client = new McpClient({
  hostname: 'localhost',
  port: 8080,
  protocol: 'http'
});

// Navigate to a URL
await client.callFunction('browserbase_navigate', { url: 'https://example.com' });

// Take a screenshot
const result = await client.callFunction('browserbase_screenshot', { 
  name: 'example-screenshot',
  selector: '.main-content'
});
```

### Stagehand MCP

```typescript
// Example of using Stagehand MCP
import { McpClient } from '@modelcontextprotocol/sdk';

const client = new McpClient({
  hostname: 'localhost',
  port: 8081,
  protocol: 'http'
});

// Use Stagehand to perform a complex task with one instruction
const result = await client.callFunction('stagehand_act', {
  instruction: 'Find the latest article about AI on the homepage and click on it'
});
```

## Requirements

To use this MCP server, you need:

1. A Browserbase API key
2. Node.js v18+

## Configuration

Set the following environment variables:

```bash
# Required for both Browserbase and Stagehand
BROWSERBASE_API_KEY=your_api_key_here

# Required for Stagehand
OPENAI_API_KEY=your_openai_key_here  # If using OpenAI models
ANTHROPIC_API_KEY=your_anthropic_key_here  # If using Anthropic models
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