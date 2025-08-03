# Healthcare Real-Time Data Lake with AWS

## Project Overview
This project demonstrates a **real-time data ingestion and analytics pipeline** for healthcare data using **AWS serverless services**.  
It simulates **streaming patient data** (such as vitals or device readings), stores it in an **S3-based data lake**, and processes it using **Lambda ETL** for **real-time analytics with Athena and QuickSight**.

**Key Goals:**
- Build a **secure and scalable data lake** for healthcare data
- Demonstrate **real-time data streaming** and **ETL processing**
- Enable **analytics dashboards** without manual data processing

---

## Architecture

**Workflow:**
1. **Data Ingestion:** Simulated healthcare device data is streamed via **Kinesis**  
2. **Raw Data Lake:** Data is stored in **S3 (raw layer)**  
3. **ETL Processing:** **Lambda** (or AWS Glue) transforms data into curated S3 layer  
4. **Analytics:** **Athena** queries the curated data  
5. **Visualization:** **QuickSight dashboards** provide real-time insights

**AWS Services Used:**
- **Amazon Kinesis** → Real-time data ingestion  
- **Amazon S3** → Data lake storage (raw + curated)  
- **AWS Lambda** → Serverless ETL processing  
- **AWS Athena** → Serverless querying of curated data  
- **Amazon QuickSight** → Analytics & visualization  

![Healthcare Data Lake Architecture](architecture.png)

---

## Project Structure
```
healthcare-realtime-datalake/
├── main.tf            # Core Terraform configuration
├── variables.tf       # Input variables
├── outputs.tf         # Outputs of Terraform deployment
├── providers.tf       # AWS provider configuration
├── lambda/
│   └── etl_function.py # Placeholder for ETL logic
├── README.md          # Project documentation
└── .gitignore         # Ignore Terraform state and cache files
```

---

## How to Use

**Note:** Deployment is optional to avoid AWS costs.  
Follow these steps only if you want to test the infrastructure:

1. **Initialize Terraform**
   ```bash
   terraform init
   ```

2. **Validate and Plan**
   ```bash
   terraform plan
   ```

3. **Deploy (Optional)**
   ```bash
   terraform apply
   ```

4. **Destroy Resources to Avoid Billing**
   ```bash
   terraform destroy
   ```

---

## Outputs
Terraform will display:
- S3 bucket name for the data lake
- Kinesis stream name for real-time ingestion
- Lambda function name for ETL processing

---

## Cost & Deployment Notes
- Project is **free-tier friendly** when simulated with minimal data  
- Always **destroy resources** after testing to avoid charges  
- Architecture is **scalable and secure** for real-world healthcare data scenarios

---

## Future Enhancements
- Implement **real-time streaming ETL with AWS Lambda**  
- Add **AWS Glue or EMR** for batch transformations  
- Configure **QuickSight dashboards** for patient monitoring analytics  
- Add **CloudWatch alarms** for anomaly detection

---


## Phase 2: Real-Time Data Simulation

- A **Python script** in `scripts/data_generator.py` simulates streaming patient vitals.
- Simulated data is shown in `sample-data/raw/` (example JSON files).
- The **Lambda ETL function** (`lambda/etl_function.py`) processes incoming records
  and writes curated data to S3 (simulated as `sample-data/curated/`).

### Sample Streaming Data
```json
{
  "patient_id": "P-1234",
  "heart_rate": 97,
  "temperature": 98.5,
  "timestamp": "2025-08-03T12:30:45.789Z"
}


### architecture of project

1. Architecture
(Healthcare.png)
