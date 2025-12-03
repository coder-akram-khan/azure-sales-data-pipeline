# ☁️ Hybrid Data Migration & Analytics Platform (Azure ETL/ELT)

A complete end-to-end cloud data solution demonstrating proficiency in Azure services, hybrid connectivity, PySpark-based transformations, and BI visualization.

---

## 🎯 Project Goal

To establish a scalable and reliable data platform on **Microsoft Azure** for migrating on-premises sales data, performing critical ETL/ELT cleansing, and generating actionable business intelligence reports.

---

## ⚙️ Solution Architecture

The platform follows a modern **Medallion Architecture** pattern, leveraging **Azure Data Lake Gen2 (Raw & Transformed layers)** as the central data store.

![Project Architecture Diagram](project%20architecture.PNG)

---

## 🛠️ Tech Stack & Services

| Category                  | Tools & Services                                               | Key Features Demonstrated                                                    |
| ------------------------- | -------------------------------------------------------------- | ---------------------------------------------------------------------------- |
| **Data Ingestion**        | Azure Data Factory (ADF), SHIR (Self-Hosted IR), Git/GitHub    | Hybrid data movement, CI/CD integration, Pipeline orchestration, Monitoring  |
| **Storage & Security**    | Azure Data Lake Gen2 (ADLS Gen2), Azure Key Vault (Conceptual) | HNS-enabled storage, Raw/Transformed zones, Secret management best practices |
| **Transformation**        | Azure Databricks, PySpark, Python                              | Cloud-scale processing, Cleansing, Validation, Schema enforcement            |
| **Analysis & BI**         | Azure Synapse Analytics (Serverless SQL), Power BI             | Lakehouse querying, Data modeling, KPI dashboards                            |
| **Monitoring & Alerting** | Azure Logic Apps, Azure Monitor                                | Automated email alerts, Operational monitoring & logging                     |

---

## 🚀 Data Pipeline Summary

### **Phase 1: Ingestion (ADF & SHIR)**

* Five on-premises CSV files (e.g., `accounts.csv`, `products.csv`) were securely copied to the **raw-data** container in ADLS Gen2.
* **Key Artifact:** `adf-blueprints/pipeline/OnPremtoCloudePipeline.json`
* **Reliability:** The pipeline contains conditional *success/failure* branches triggering an Azure Logic App email notification workflow.

---

### **Phase 2: Transformation (Databricks)**

* Azure Databricks processed raw data using PySpark.
* Steps included data quality checks, null handling, schema normalization, and enrichment.
* **Key Artifact:** PySpark notebooks in `databricks-notebooks/`
* Output written to the **transformed-data** container.

---

### **Phase 3: Analysis & Visualization**

#### 🔹 **Synapse Analytics**

Connected directly to the transformed layer using *Serverless SQL* to compute KPIs such as Win Rate, Total Sales, Agent performance, etc.

#### 🔹 **Power BI Dashboard**

Created a dynamic dashboard using the cleansed data from ADLS/Synapse.

---

## 📊 Key Business Insights

The final BI dashboard reveals critical sales performance indicators:

* **Total Close Value:** `$4.2M`
* **Win Rate:** `63%`
* **Top Segments:** Retail, Medical, Technology
* **Agent Performance:** Comparative win/loss performance per sales agent

---

## 📂 Repository Structure

```
.
├── adf-blueprints/             # Azure Data Factory blueprints (JSON)
│   ├── linkedService/
│   ├── pipeline/
│   └── dataset/
│
├── data/
│   └── raw/                    # Original CSV datasets
│
├── databricks-notebooks/       # PySpark transformation scripts
│
├── synapse-sql/                # Serverless SQL queries for analytics
│
├── project_report.md           # Formal project documentation
│
└── README.md                   # This file
```

---

## 🔔 Note on Deployment

All live Azure resources were decommissioned after the trial period.
This repository serves as the **complete blueprint and documentation** for the production-ready data platform.

---
