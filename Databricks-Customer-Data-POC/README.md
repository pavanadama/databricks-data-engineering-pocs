# Databricks Customer Data Engineering POC

## Objective
A small, practical Databricks/PySpark proof of concept demonstrating:

- Python/PySpark data processing
- Bronze/Silver/Gold architecture
- Delta Lake tables
- Data cleansing and validation
- Deduplication using window functions
- Incremental processing
- Delta MERGE / upsert
- Basic performance optimization

## Architecture

CSV Source -> Bronze Delta -> Silver Delta -> Gold Delta

The incremental file is merged into Silver using `CustomerID` as the business key.

## Files

- `data/customers_initial.csv` - initial customer load
- `data/customers_incremental.csv` - update/new-customer load
- `notebooks/Customer_Data_Pipeline.py` - Databricks notebook source
- `architecture/architecture.png` - architecture diagram

## How to run

1. Create/upload a Databricks Volume or use an existing DBFS location.
2. Upload both CSV files.
3. Update `BASE_PATH` in the notebook.
4. Import `Customer_Data_Pipeline.py` as a Databricks notebook.
5. Run the notebook from top to bottom.
6. Review Bronze, Silver and Gold Delta tables.

## Expected incremental result

Customer 102 is updated with the new email.

Customers 106 and 107 are inserted.

Final customer count: 7.

## POC Scope

This is intentionally a small POC. It is designed to demonstrate the engineering approach without introducing unnecessary production complexity. A production implementation could add orchestration, metadata-driven configuration, audit/control tables, automated data-quality rules, retry handling, CI/CD and monitoring.
