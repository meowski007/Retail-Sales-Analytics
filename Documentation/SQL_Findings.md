# Executive360 – SQL Findings

---

# Query 1 – Executive KPI Summary

## Business Question

What is the overall health of the business?

## SQL Query

Stored in `SQL/queries.sql`

## Results

| KPI | Value |
|------|-------:|
| Total Revenue | 1,264,250.91 |
| Total Profit | 146,745.29 |
| Total Orders | 25,035 |
| Total Customers | 1,590 |
| Average Discount | 14.29% |

## Interpretation

- The business generated **$1.26M** in revenue.
- Overall profit is **$146.75K**, giving an approximate **11.6% profit margin**.
- The business serves **1,590 unique customers** across **25,035 orders**.
- The average discount of **14.29%** suggests pricing strategy may significantly affect profitability.

## Recommendation

Further investigate the relationship between discounts, product categories, and regional profitability to identify opportunities for margin improvement.

---

# Query 2 – Regional Performance

## Business Question

Which regions generate the highest overall profit?
## Key Findings

- Central is the largest contributor to overall profit.
- North and North Asia combine strong profitability with healthy profit margins.
- Canada has the highest profit margin but represents a relatively small market.
- Southeast Asia records substantial revenue but an unusually low profit margin, indicating potential pricing or cost issues.

## Interpretation

Revenue alone is not an indicator of success. Regions should be evaluated based on both revenue generation and profitability to guide strategic investments.

## Recommendation

- Continue investing in high-performing regions.
- Investigate pricing and operational efficiency in Southeast Asia.
- Study North Asia's business model as a benchmark for other regions.