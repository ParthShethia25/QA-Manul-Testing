# Test Plan – E-Commerce QA Project

## 1. Introduction
This test plan describes the strategy, scope, approach, and resources required to validate the e-commerce system across UI, API, and backend layers.

## 2. Scope
### In Scope
- Functional testing of core user flows (registration, login, product search, cart, checkout).
- API testing for user and product-related endpoints.
- Backend validation using sample SQL queries.

### Out of Scope
- Non-functional testing (performance, security in depth).
- Localization and accessibility testing.

## 3. Test Approach
- **UI Testing:** Manual test design and execution using test cases.
- **API Testing:** REST API validation using Postman.
- **Backend Testing:** Data validation using SQL queries on sample schema.

## 4. Test Levels
- Smoke Testing
- Sanity Testing
- Functional Testing
- Regression Testing
- Integration & End-to-End Testing

## 5. Entry Criteria
- Stable build available on test environment.
- Test data prepared.
- Access to APIs and DB (or simulated DB).

## 6. Exit Criteria
- All high and critical defects are closed or accepted.
- Test cases executed with agreed coverage.
- Test summary report prepared.

## 7. Risks & Assumptions
- Demo systems may have intermittent downtime.
- APIs and demo DB schemas may change slightly over time.


## 8. Test Data

- Backend database: `ecommerce_qa` with 100+ synthetic users, products, orders, and order_items.
- Test data will be reused across UI, API, and DB validation to simulate realistic user and order flows.
