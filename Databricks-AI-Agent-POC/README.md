# POC 02 - Databricks AI Agent / Genie Customer Support Assistant

Small Databricks proof of concept demonstrating a governed Genie Agent and
AI Playground tool-calling agent over Unity Catalog customer-order data.

## Architecture
Customer Orders -> Unity Catalog -> Genie Agent -> AI Playground Agent -> Grounded Response

## Components
- Unity Catalog table: `databricks-customer-data-poc.data.customer_orders`
- Genie Agent: natural-language analytics over the curated table
- AI Playground: no-code tool-calling agent prototype
- Agent instructions and test cases

## Setup
1. Run `notebooks/00_setup_customer_orders.sql`.
2. Create a Genie Agent using `customer_orders`.
3. Add the instructions from `notebooks/agent_instructions.txt`.
4. Validate the Genie Agent with the questions in `notebooks/test_cases.md`.
5. In Databricks, open **AI/ML -> Playground**.
6. Select a tools-enabled model.
7. Use **Tools -> Add tool** and select the available Genie Agent option
   (or the Genie MCP/tool option exposed by the workspace).
8. Test the same questions through the AI Playground agent.
9. Capture screenshots for the portfolio.

## Expected results
- Order 1001: Shipped
- Order 1004: Delayed
- Total order value: 3200.00
- Highest-value customer/order: Sarah Jones / 1350.00
- Order 9999: Not found

## Portfolio evidence
Capture:
1. Genie Agent configuration
2. Successful Genie response
3. AI Playground with the Genie Agent configured as a tool
4. AI Playground response with tool/source evidence
5. Negative test for an unknown order

## Scope
This is intentionally a small POC. Production enhancements could include
evaluation datasets, MLflow tracing, monitoring, authentication, CI/CD,
additional tools, and deployment as a Databricks App.

## Technologies
Databricks | Unity Catalog | Genie Agent | AI Playground | SQL | Python/PySpark
