# Customer Accounting Automation Intake Sample (Retail POS)

## How To Use This Sample

This example is for a retail business using POS, inventory, and card payments.
Replace all values with actual client details.

## Section 1: Business Basics

- Business name: UrbanCart Retail (Pty) Ltd
- Country: South Africa
- Currency: ZAR
- Financial year start month: March
- Tax type used (VAT/GST/Sales tax/Other): VAT
- Do you already have an accountant? Yes/No: Yes
- Main contact person: Thabo Dlamini (Finance Manager)

## Section 2: People and Access

- Who will enter daily transactions? POS system and store admin
- Who will approve payments? Finance manager (up to ZAR 50,000), owner above limit
- Who needs view-only access? External accountant and store manager
- Who can create reports? Finance manager and owner
- Any data that only the owner can see? Yes/No: Yes
- If yes, what data? Payroll and margin by supplier contract

## Section 3: Current Process (Today)

For each activity, describe how you do it now.

- Sales invoices: Mostly POS receipts; manual invoices for wholesale customers
- Purchase bills: Supplier invoices received by email and captured in spreadsheet
- Expense claims: Branch managers submit monthly claims by email
- Payroll: Processed in external payroll system
- Bank reconciliation: Manual reconciliation against POS settlement reports
- Tax filing: Accountant compiles VAT from spreadsheets and POS exports
- Month-end closing: Finance manager combines POS, bank, and supplier files manually

## Section 4: Pain Points

- What takes too much time? Matching POS settlements to bank deposits
- What causes mistakes often? Stock adjustments not posted and VAT category errors
- What is most stressful at month-end? Margin reporting and supplier payable checks
- What work do you want to stop doing manually? Spreadsheet consolidation

## Section 5: Desired Automation (Future)

Use this sentence format for each item:

`Today we ___, we want the system to ___, so that ___, and we accept it when ___.`

Requirement 1: Today POS sales are exported manually, we want automatic daily
import, so that sales data is current, and we accept it when sales post
automatically by end of day.
Requirement 2: Today stock changes are tracked in separate sheets, we want
inventory movements integrated with accounting, so that COGS is accurate, and
we accept it when month-end stock variance is below 1.5 percent.
Requirement 3: Today bank settlements are reconciled manually, we want
auto-matching using POS references, so that close is faster, and we accept it
when at least 95 percent of settlements auto-match.
Requirement 4: Today VAT is reviewed by hand, we want tax rules by item
category, so that filing errors drop, and we accept it when VAT adjustment
journals reduce by 80 percent.
Requirement 5: Today branch performance reports are delayed, we want automated
store-level P&L, so that managers act quickly, and we accept it when reports are
available by 10:00 next business day.

## Section 6: Inputs (What Goes In)

- Source of sales data (manual/POS/e-commerce/other): POS plus e-commerce
- Source of bank data (manual upload/bank feed/other): Bank feed and CSV backup
- Source of supplier bills (email/paper/portal/other): Email and supplier portals
- Source of payroll data: Payroll provider export
- Current files used (Excel/CSV/PDF/other): CSV, XLSX, PDF

## Section 7: Outputs (What Must Come Out)

- Reports needed weekly: Sales by store, gross margin, stock-out alert summary
- Reports needed monthly: P&L by store, inventory valuation, VAT summary
- Reports needed yearly: Audit-ready trial balance and tax pack
- Required tax reports: VAT output/input by product category
- Required management dashboard items: Daily sales, margin trend, stock turns
- Invoice format requirements: Wholesale invoice with customer VAT and delivery note link

## Section 8: Integrations

- Bank name(s): Standard Bank Business
- Payment gateway(s): Yoco and Ozow
- E-commerce platform(s): Shopify
- Payroll tool: Sage Payroll
- Any other system to connect: POSPro and barcode scanner backend

## Section 9: Rules and Controls

- Approval limit for payments: ZAR 50,000
- Who can edit posted entries? Finance manager only
- Do you need audit trail for all changes? Yes/No: Yes
- Data retention requirement (years): 7 years
- Any legal/compliance requirement: POPIA and VAT Act record retention

## Section 10: Exceptions

How should system handle:

- Refunds: Reverse sale and restock item where applicable
- Partial payments: Keep receivable open with aging alerts
- Credit notes: Link to original sale and adjust VAT output
- Bad debt write-off: Requires owner approval and monthly review
- Duplicate transactions: System blocks duplicate POS batch imports
- Reversed entries: Must store user, timestamp, and reason

## Section 11: Data Migration

- Current system name (if any): POSPro + Excel accounting workbook
- Years of historical data to import: 3 years
- Data quality concerns: Supplier naming duplicates and missing SKU mapping
- Must-keep documents: VAT returns, inventory counts, supplier statements

## Section 12: Priorities

Mark each requested feature:

- Must have: POS import, settlement reconciliation, inventory-COGS link, VAT compliance
- Should have: Store-level dashboard, supplier aging alerts, OCR for invoices
- Nice to have: Mobile branch manager dashboard, demand forecast widget

## Section 13: Constraints

- Target go-live date: 2026-06-30
- Budget range: ZAR 120,000 to ZAR 250,000 implementation
- Training needed (hours): 16 hours across finance and store managers
- Preferred support hours: Mon-Sat 07:00 to 19:00
- Preferred language: English

## Section 14: Acceptance Scenarios

Write 5 practical tests.

Test 1:

- Given: Daily POS batch is available
- When: Import job runs
- Then: Sales and tax entries post automatically to correct accounts

Test 2:

- Given: Bank settlement file is synced
- When: Reconciliation runs
- Then: At least 95 percent of settlements auto-match by reference and amount

Test 3:

- Given: Inventory receiving note is captured
- When: Supplier invoice is posted
- Then: Stock and payable update in one transaction flow

Test 4:

- Given: Month-end close is initiated
- When: Financial pack is generated
- Then: Store-level P&L and inventory valuation are available within 30 minutes

Test 5:

- Given: Duplicate POS file is uploaded
- When: Validation checks run
- Then: System blocks posting and returns duplicate warning details

## Section 15: Document Checklist To Attach

- 5 sample POS daily exports
- 5 supplier invoices
- 2 bank settlement reports
- 1 month-end inventory valuation sample
- Tax filing sample (if available)
- Chart of accounts and SKU mapping sheet

## Section 16: Sign-Off

- Prepared by: Thabo Dlamini
- Date: 2026-03-14
- Reviewed by business owner: Lerato Nkosi
- Owner approval date: 2026-03-15
- Accountant review completed: Yes/No: Yes
- Accountant review date: 2026-03-15
