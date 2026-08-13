# Executive360 – SQL Findings

This document summarizes the strategic insights extracted from the database using the scripts in `SQL/queries.sql`.

## 1. Executive KPI Summary
The business generated **$1.26M** in revenue with an overall profit of **$146.75K** (approx. 11.6% profit margin) across 25,035 orders. The average discount of 14.29% suggests pricing strategy is heavily relied upon to drive sales volume.

## 2. Regional Performance
Central is the largest contributor to overall profit. North and North Asia combine strong profitability with healthy margins. Conversely, Southeast Asia records substantial revenue but an unusually low profit margin, indicating critical pricing or operational issues in that market.

## 3. Sub-Category Profitability (The Furniture Gap)
While the "Technology" category is highly profitable, a deep dive into sub-categories revealed a major risk: **Tables** and **Bookcases** are generating high sales volume but are operating at a significant net loss. 

## 4. The 20% Discount Cliff
Aggregating profit by discount levels revealed the most critical finding of this project: **Applying discounts greater than 20% severely degrades overall profitability.** The business actively loses money on transactions discounted beyond this threshold, offsetting gains from full-price sales.

## 5. Strategic Recommendations
* **Implement a Hard Cap on Discounts:** Restrict standard promotional discounts to a maximum of 20% to protect margins.
* **Restructure Furniture Pricing:** Investigate vendor costs and pricing strategies for Tables and Bookcases to stop margin bleeding.
* **Audit Southeast Asia:** Conduct a localized review of Southeast Asia's pricing structure to align its profit margins with regions like North Asia.
