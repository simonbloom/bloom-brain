# Architecture Mapping

Create a comprehensive map of the current system architecture in the context of: **$ARGUMENTS**

## Mapping Process

1. **System Overview**: High-level architecture diagram
2. **Data Flow**: How information moves through the system
3. **Component Relationships**: What talks to what
4. **External Dependencies**: Third-party services and APIs
5. **Security Boundaries**: Authentication and authorization layers

## Analysis Framework

### Phase 1: System Architecture Discovery
- **Application Layers**: Frontend, Backend, Database, External Services
- **Communication Patterns**: HTTP, WebSocket, Database queries, API calls
- **Data Storage**: Database tables, file storage, cache layers
- **Processing Logic**: Business rules, validation, transformations

### Phase 2: Component Relationship Mapping
- **Component Hierarchy**: Parent-child relationships
- **Data Dependencies**: What data flows between components
- **Event Flows**: How user actions trigger system responses
- **State Management**: How application state is maintained and shared

### Phase 3: Integration Points Analysis
- **External APIs**: Third-party service integrations
- **Database Connections**: How data is accessed and modified
- **Authentication Systems**: How users are verified and authorized
- **Monitoring & Logging**: How system health is tracked

## Visual Output Format

Always include ASCII diagrams showing:

### System Architecture Diagram
```
📊 SYSTEM ARCHITECTURE MAP: $ARGUMENTS

🏗️ HIGH-LEVEL ARCHITECTURE:
┌─────────────────────────────────────────────────────────────┐
│                        CLIENT TIER                          │
├─────────────────────────────────────────────────────────────┤
│  React App (localhost:6123)  │  Storybook (localhost:7123)  │
│  ├── Components              │  ├── Component Documentation  │
│  ├── Pages                   │  ├── Design System           │
│  ├── Hooks                   │  └── Testing Environment     │
│  └── Services                │                              │
└─────────────────────────────────────────────────────────────┘
                              │
                              ▼ HTTPS/WSS
┌─────────────────────────────────────────────────────────────┐
│                      BACKEND TIER                           │
├─────────────────────────────────────────────────────────────┤
│              Supabase (Backend as a Service)                │
│  ├── 🗃️ Database (PostgreSQL)                              │
│  ├── 🔐 Auth (Row Level Security)                          │
│  ├── ⚡ Edge Functions                                      │
│  ├── 📡 Real-time Subscriptions                           │
│  └── 🔧 API Gateway                                        │
└─────────────────────────────────────────────────────────────┘
                              │
                              ▼ API Calls
┌─────────────────────────────────────────────────────────────┐
│                   EXTERNAL SERVICES                         │
├─────────────────────────────────────────────────────────────┤
│  🌐 Webflow CMS API  │  💰 Stripe API  │  🤖 AI Webhooks   │
│  🔗 WordPress API    │  📧 Email Service │  🖼️ Image Gen   │
└─────────────────────────────────────────────────────────────┘
```

### Data Flow Diagram
```
📊 DATA FLOW: $ARGUMENTS

USER ACTION → COMPONENT → HOOK → SERVICE → DATABASE → RESPONSE

🔄 DETAILED DATA FLOW:
┌─────────────┐    ┌─────────────┐    ┌─────────────┐
│    User     │───▶│   React     │───▶│   Custom    │
│   Action    │    │ Component   │    │   Hooks     │
└─────────────┘    └─────────────┘    └─────────────┘
                                              │
                                              ▼
┌─────────────┐    ┌─────────────┐    ┌─────────────┐
│  Database   │◄───│  Supabase   │◄───│  Service    │
│   Update    │    │    API      │    │   Layer     │
└─────────────┘    └─────────────┘    └─────────────┘
                                              │
                                              ▼
┌─────────────┐    ┌─────────────┐    ┌─────────────┐
│   React     │◄───│   Query     │◄───│ Real-time   │
│    State    │    │   Cache     │    │   Updates   │
└─────────────┘    └─────────────┘    └─────────────┘
```

### Component Relationship Map
```
📊 COMPONENT RELATIONSHIPS: $ARGUMENTS

🎯 COMPONENT HIERARCHY:
App
├── 🔐 AuthProvider
│   ├── 🏠 HomePage
│   ├── 📝 ArticlePages
│   │   ├── ArticleList
│   │   ├── ArticleForm
│   │   └── ArticleDetail
│   ├── 📊 CampaignPages
│   │   ├── CampaignList
│   │   ├── CampaignForm
│   │   └── CampaignDetail
│   └── ⚙️ Settings
│       ├── CredentialManagement
│       └── UserProfile
└── 🎨 ThemeProvider
    └── 🍞 ToastProvider
```

### Security Boundary Map
```
📊 SECURITY BOUNDARIES: $ARGUMENTS

🔒 AUTHENTICATION & AUTHORIZATION:
┌─────────────────┐
│   Public Routes │ ← No auth required
├─────────────────┤
│ Authenticated   │ ← User must be logged in
│     Routes      │
├─────────────────┤
│   Admin Only    │ ← Role-based access
│     Routes      │
└─────────────────┘

🛡️ DATA SECURITY:
┌─────────────────┐
│ Row Level       │ ← User can only access own data
│   Security      │
├─────────────────┤
│ API Security    │ ← Rate limiting, validation
├─────────────────┤
│ External APIs   │ ← Encrypted credentials
└─────────────────┘
```

## MCP Integration

**Use available MCP tools for enhanced mapping:**

### Database Architecture
- **Supabase MCP**: Map database schema and relationships
- **Database MCP**: Analyze query patterns and performance
- **Schema MCP**: Document constraints and indexes

### Code Architecture
- **Search Tools**: Find architectural patterns in code
- **Dependency Analysis**: Map import/export relationships
- **Build Analysis**: Understand compilation and bundling

### External Dependencies
- **Context.7**: Research architectural best practices
- **Brave Search**: Find architectural documentation
- **Integration**: Map third-party service connections

## Output Sections

### 1. Executive Summary
- **Architecture Style**: (e.g., "React SPA with Supabase BaaS")
- **Key Patterns**: (e.g., "Custom hooks for data fetching")
- **Integration Points**: (e.g., "Webflow CMS, Stripe payments")
- **Security Model**: (e.g., "RLS with user-scoped data access")

### 2. Component Inventory
- **Frontend Components**: React components and their purposes
- **Backend Services**: Supabase functions and database objects
- **External Integrations**: Third-party APIs and webhooks
- **Infrastructure**: Deployment and hosting details

### 3. Data Architecture
- **Database Schema**: Tables, relationships, and constraints
- **Data Flow**: How data moves through the system
- **Caching Strategy**: Query caching and state management
- **Real-time Updates**: WebSocket and subscription patterns

### 4. Security Architecture
- **Authentication**: How users are verified
- **Authorization**: How permissions are enforced
- **Data Protection**: Encryption and access controls
- **API Security**: Rate limiting and validation

### 5. Integration Points
- **External APIs**: Third-party service connections
- **Webhooks**: Incoming and outgoing event handling
- **File Storage**: Asset management and CDN usage
- **Monitoring**: Logging and analytics integration

## Success Criteria

The architecture map should clearly show:
- How the system is organized and components relate
- Where data flows and how it's processed
- What external dependencies exist and their purposes
- How security is implemented throughout the system
- Where the requested feature/change would fit into the architecture

Focus on making the architecture understandable for planning new features, identifying impacts, and onboarding new team members.