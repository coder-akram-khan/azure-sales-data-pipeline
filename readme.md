# ☁️ Hybrid Data Migration & Analytics Platform (Azure ETL/ELT) 
![Stars](https://img.shields.io/github/stars/coder-akram-khan/azure-sales-data-pipeline?style=social)
![Forks](https://img.shields.io/github/forks/coder-akram-khan/azure-sales-data-pipeline?style=social)
![Azure Data Factory](https://img.shields.io/badge/Azure_Data_Factory-0078D4?logo=microsoft-azure&logoColor=white)
![Azure Databricks](https://img.shields.io/badge/Azure_Databricks-FC4C02?logo=databricks&logoColor=white)
![Azure Synapse Analytics](https://img.shields.io/badge/Azure_Synapse_Analytics-0078D4?logo=microsoft-azure&logoColor=white)
![Power BI](https://img.shields.io/badge/Power_BI-F2C811?logo=power-bi&logoColor=black)
![Python](https://img.shields.io/badge/Python-3776AB?logo=python&logoColor=white)
![PySpark](https://img.shields.io/badge/PySpark-E25A1C?logo=apachespark&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-025E8C?logo=sqlite&logoColor=white)
![GitHub](https://img.shields.io/badge/GitHub-181717?logo=github&logoColor=white)


A complete end-to-end cloud data solution demonstrating proficiency in Azure services, hybrid connectivity, PySpark-based transformations, and BI visualization.

---

## 🎯 Project Goal

To establish a scalable and reliable data platform on **Microsoft Azure** for migrating on-premises sales data, performing critical ETL/ELT cleansing, and generating actionable business intelligence reports.

---

## ⚙️ Solution Architecture
![Lakehouse](https://img.shields.io/badge/Medallion_Architecture-00E5FF?logo=azure-devops&logoColor=white)
![ADLS](https://img.shields.io/badge/ADLS_Gen2-015C8B?logo=microsoft-azure&logoColor=white)

The platform follows a modern **Medallion Architecture** pattern, leveraging **Azure Data Lake Gen2 (Raw & Transformed layers)** as the central data store.

![Project Architecture Diagram](https://github.com/coder-akram-khan/azure-sales-data-pipeline/blob/main/project%20architecture.png)

---

## 🛠️ Tech Stack & Services


| Category | Tools & Services | Key Features Demonstrated |
|---------|------------------|---------------------------|
| **Data Ingestion** | ![ADF](https://img.shields.io/badge/Azure_Data_Factory-0078D4?logo=microsoft-azure&logoColor=white) ![SHIR](https://img.shields.io/badge/Self_Hosted_IR-6A1B9A?logo=microsoft-azure&logoColor=white) ![GitHub](https://img.shields.io/badge/GitHub-181717?logo=github&logoColor=white) | Hybrid data movement, CI/CD integration, Pipeline orchestration, Monitoring |
| **Storage & Security** | ![ADLS](https://img.shields.io/badge/Azure_Data_Lake_Gen2-015C8B?logo=microsoft-azure&logoColor=white) ![Key Vault](https://img.shields.io/badge/Azure_Key_Vault-0078D4?logo=microsoft-azure&logoColor=white) | HNS-enabled storage, Raw/Transformed zones, Secret management best practices |
| **Transformation** | ![Databricks](https://img.shields.io/badge/Azure_Databricks-FC4C02?logo=databricks&logoColor=white) ![PySpark](https://img.shields.io/badge/PySpark-E25A1C?logo=apachespark&logoColor=white) ![Python](https://img.shields.io/badge/Python-3776AB?logo=python&logoColor=white) | Cloud-scale processing, Cleansing, Validation, Schema enforcement |
| **Analysis & BI** | ![Synapse](https://img.shields.io/badge/Azure_Synapse_Analytics-0078D4?logo=microsoft-azure&logoColor=white) ![Power BI](https://img.shields.io/badge/Power_BI-F2C811?logo=power-bi&logoColor=black) | Lakehouse querying, Data modeling, KPI dashboards |
| **Monitoring & Alerting** | ![Logic Apps](https://img.shields.io/badge/Azure_Logic_Apps-0078D4?logo=microsoft-azure&logoColor=white) ![Azure Monitor](https://img.shields.io/badge/Azure_Monitor-0078D4?logo=microsoft-azure&logoColor=white) | Automated email alerts, Operational monitoring & logging |


---

## 🚀 Data Pipeline Summary

### **Phase 1: Ingestion (ADF & SHIR)**
![ADF](https://img.shields.io/badge/Azure_Data_Factory-0078D4?logo=microsoft-azure&logoColor=white)
![SHIR](https://img.shields.io/badge/Self_Hosted_IR-6A1B9A?logo=microsoft-azure&logoColor=white)

* Five on-premises CSV files (e.g., `accounts.csv`, `products.csv`) were securely copied to the **raw-data** container in ADLS Gen2.
* **Key Artifact:** `adf-blueprints/pipeline/OnPremtoCloudePipeline.json`
* **Reliability:** The pipeline contains conditional *success/failure* branches triggering an Azure Logic App email notification workflow.

---

### **Phase 2: Transformation (Databricks)**
![Databricks](https://img.shields.io/badge/Azure_Databricks-FC4C02?logo=databricks&logoColor=white)
![PySpark](https://img.shields.io/badge/PySpark-E25A1C?logo=apachespark&logoColor=white)

* Azure Databricks processed raw data using PySpark.
* Steps included data quality checks, null handling, schema normalization, and enrichment.
* **Key Artifact:** PySpark notebooks in `databricks-notebooks/`
* Output written to the **transformed-data** container.

---

### **Phase 3: Analysis & Visualization**
![Synapse](https://img.shields.io/badge/Azure_Synapse_Analytics-0078D4?logo=microsoft-azure&logoColor=white)
![Power BI](https://img.shields.io/badge/Power_BI-F2C811?logo=power-bi&logoColor=black)

#### 🔹 **Synapse Analytics**

Connected directly to the transformed layer using *Serverless SQL* to compute KPIs such as Win Rate, Total Sales, Agent performance, etc.

#### 🔹 **Power BI Dashboard**

Created a dynamic dashboard using the cleansed data from ADLS/Synapse.

---

## 📊 Key Business Insights
![Sales](https://img.shields.io/badge/Total_Sales-$4.2M-00C853)
![WinRate](https://img.shields.io/badge/Win_Rate-63%25-2962FF)

![Project Architecture Diagram](https://github.com/coder-akram-khan/azure-sales-data-pipeline/blob/main/BI_Dahboard_img.PNG)

The final BI dashboard reveals critical sales performance indicators:

* **Total Close Value:** `$4.2M`
* **Win Rate:** `63%`
* **Top Segments:** Retail, Medical, Technology
* **Agent Performance:** Comparative win/loss performance per sales agent

---

## 📂 Repository Structure
![ADF](https://img.shields.io/badge/ADF_Pipelines-0078D4?logo=microsoft-azure&logoColor=white)
![Databricks](https://img.shields.io/badge/Databricks_Notebooks-FC4C02?logo=databricks&logoColor=white)
![Synapse](https://img.shields.io/badge/Synapse_SQL-0078D4?logo=microsoft-azure&logoColor=white)

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
│   └── Sales Data Cleaning.ipynb
│
├── synapse-sql/                # Serverless SQL queries for analytics
│   └── SQL script 1.sql
│
├── project_report.md           # Formal project documentation
│
├── BI_Visualization/           # Dashboard
│    └── Azure Project report.pbix
│
└── README.md                   # This file


```

---


## 🔔 Note on Deployment
![Status](https://img.shields.io/badge/Status-Completed-success)
![Maintenance](https://img.shields.io/badge/Maintained-Yes-brightgreen)
![Azure](https://img.shields.io/badge/Hosted_on-Azure-0089D6?logo=microsoft-azure&logoColor=white)

All live Azure resources were decommissioned after the trial period.
This repository serves as the **complete blueprint and documentation** for the production-ready data platform.


---
