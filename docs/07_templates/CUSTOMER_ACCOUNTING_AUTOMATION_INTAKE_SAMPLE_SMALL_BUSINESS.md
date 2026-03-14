# Customer Accounting Automation Intake Sample (Small Business)

## How To Use This Sample

This example shows the expected answer quality for a non-technical customer.
Replace all values with the actual client details.

## Section 1: Business Basics

- Business name: BrightFix Home Services Ltd
- Country: South Africa
- Currency: ZAR
- Financial year start month: March
- Tax type used (VAT/GST/Sales tax/Other): VAT
- Do you already have an accountant? Yes/No: Yes
- Main contact person: Naledi Mokoena (Owner)

## Section 2: People and Access

- Who will enter daily transactions? Admin clerk and office manager
- Who will approve payments? Owner
- Who needs view-only access? External accountant
- Who can create reports? Office manager and owner
- Any data that only the owner can see? Yes/No: Yes
- If yes, what data? Payroll summary and owner drawings

## Section 3: Current Process (Today)

For each activity, describe how you do it now.

- Sales invoices: Created manually in Excel and sent by email
- Purchase bills: Received by WhatsApp/email and stored in Google Drive
- Expense claims: Staff submit photos of slips on WhatsApp
- Payroll: Prepared monthly by accountant in a separate payroll tool
- Bank reconciliation: Owner matches transactions manually in spreadsheet
- Tax filing: Accountant files VAT using spreadsheet exports
- Month-end closing: Office manager compiles sales and expense files for accountant

## Section 4: Pain Points

- What takes too much time? Manual matching of bank transactions and receipts
- What causes mistakes often? Duplicate entries and wrong VAT coding
- What is most stressful at month-end? Missing supplier invoices and late bank matching
- What work do you want to stop doing manually? Manual reconciliation and report compilation

## Section 5: Desired Automation (Future)

Use this sentence format for each item:

`Today we ___, we want the system to ___, so that ___, and we accept it when ___.`

Requirement 1: Today we capture invoices in Excel, we want the system to
create and email invoices automatically, so that billing is faster, and we
accept it when invoices can be generated from saved customer profiles in under
2 minutes.
Requirement 2: Today we reconcile bank data manually, we want the system to
import bank transactions and suggest matches, so that month-end is quicker, and
we accept it when at least 90 percent of transactions are auto-matched.
Requirement 3: Today we code VAT manually, we want the system to apply default
VAT rules per category, so that tax errors drop, and we accept it when VAT
report variances are below 2 percent.
Requirement 4: Today we collect receipts by chat, we want mobile upload with
receipt image storage, so that records are complete, and we accept it when each
expense line can link to an image proof.
Requirement 5: Today reports are built in spreadsheet files, we want one-click
weekly and monthly reports, so that management sees status sooner, and we
accept it when standard reports are available within 5 minutes.

## Section 6: Inputs (What Goes In)

- Source of sales data (manual/POS/e-commerce/other): Manual and WhatsApp orders
- Source of bank data (manual upload/bank feed/other): CSV upload from bank portal
- Source of supplier bills (email/paper/portal/other): Email, WhatsApp, paper slips
- Source of payroll data: Payroll vendor export
- Current files used (Excel/CSV/PDF/other): Excel, CSV, PDF, JPG

## Section 7: Outputs (What Must Come Out)

- Reports needed weekly: Cash in/out summary, overdue invoices, unpaid bills
- Reports needed monthly: Profit and loss, VAT summary, expense by category
- Reports needed yearly: Year-end trial balance package for accountant
- Required tax reports: VAT report with input/output split
- Required management dashboard items: Sales trend, cash position, debtor aging
- Invoice format requirements: Company logo, VAT number, payment terms

## Section 8: Integrations

- Bank name(s): FNB Business Account
- Payment gateway(s): Yoco
- E-commerce platform(s): None
- Payroll tool: SimplePay
- Any other system to connect: Google Drive (receipt storage)

## Section 9: Rules and Controls

- Approval limit for payments: Above ZAR 10,000 requires owner approval
- Who can edit posted entries? Office manager and owner only
- Do you need audit trail for all changes? Yes/No: Yes
- Data retention requirement (years): 7 years
- Any legal/compliance requirement: POPIA data handling and VAT records

## Section 10: Exceptions

How should system handle:

- Refunds: Create credit note linked to original invoice
- Partial payments: Keep invoice open with remaining balance and due alerts
- Credit notes: Must reduce VAT output in same period
- Bad debt write-off: Owner approval required before write-off
- Duplicate transactions: Flag duplicates by amount/date/reference
- Reversed entries: Keep full reversal audit trail

## Section 11: Data Migration

- Current system name (if any): Excel bookkeeping workbook
- Years of historical data to import: 2 years
- Data quality concerns: Duplicate vendors and inconsistent category names
- Must-keep documents: VAT submissions and bank statements

## Section 12: Priorities

Mark each requested feature:

- Must have: Invoice automation, bank reconciliation, VAT report, audit trail
- Should have: Receipt OCR, debtor reminders, payment approval workflow
- Nice to have: Mobile dashboard, WhatsApp invoice notification

## Section 13: Constraints

- Target go-live date: 2026-05-31
- Budget range: ZAR 60,000 to ZAR 100,000 implementation
- Training needed (hours): 8 hours for admin and manager
- Preferred support hours: Weekdays 08:00 to 17:00
- Preferred language: English

## Section 14: Acceptance Scenarios

Write 5 practical tests.

Test 1:

- Given: Bank CSV is uploaded for the month
- When: Reconciliation runs
- Then: At least 90 percent of entries are auto-matched

Test 2:

- Given: Staff uploads an expense with receipt image
- When: Expense is submitted
- Then: Expense line stores image and requires approval above threshold

Test 3:

- Given: New invoice is created for existing customer
- When: Invoice is approved
- Then: PDF is emailed automatically with correct VAT and terms

Test 4:

- Given: Month-end close is triggered
- When: Reports are generated
- Then: Profit and loss plus VAT summary are ready in under 5 minutes

Test 5:

- Given: Duplicate transaction is detected
- When: User reviews warning
- Then: System blocks duplicate posting unless user confirms override reason

## Section 15: Document Checklist To Attach

- 5 sample sales invoices: Attached
- 5 sample purchase bills: Attached
- 2 bank statements: Attached
- 1 month-end report sample: Attached
- Tax filing sample (if available): Attached
- Chart of accounts (if available): Attached

## Section 16: Sign-Off

- Prepared by: Naledi Mokoena
- Date: 2026-03-14
- Reviewed by business owner: Naledi Mokoena
- Owner approval date: 2026-03-14
- Accountant review completed: Yes/No: Yes
- Accountant review date: 2026-03-15
