# Streaming Video Services Content Analysis

This project is part of the Data Engineering Zoomcamp course, focusing on analyzing content from streaming video services using a modern data stack and best practices in data engineering.

## Project Overview

This data engineering project implements an end-to-end pipeline for streaming video services content analysis:
- Data is uploaded to Google Cloud Storage (GCS) using Kestra for orchestration
- Data is then loaded into BigQuery for storage and processing
- Transformations are handled with dbt, using defined schemas
- Final insights are visualized through Metabase dashboards

## Architecture

1. **Data Ingestion & Orchestration**: 
   - Tool: Kestra
   - Process: Automated data upload to GCS
   - Ensures reliable and scheduled data processing

2. **Cloud Storage & Warehousing**:
   - Google Cloud Storage (GCS) as data lake
   - BigQuery as data warehouse
   - Enables scalable data storage and processing

3. **Data Transformation**:
   - Tool: dbt
   - Implements clear, documented schemas
   - Creates analytics-ready datasets

4. **Data Visualization**:
   - Tool: Metabase
   - Interactive dashboards for content analysis
   - Easy-to-understand insights

## Project Structure

```
.
├── 00_datasets/                  # Raw and processed datasets
├── 01_kestra_pipelines/         # Kestra workflow definitions and configurations
├── 02_dbt_transformations/      # dbt models, schemas, and transformations
├── 03_metabase_dashboards/      # Metabase dashboard configurations and exports
├── data_exploration_notebook.ipynb  # Jupyter notebook for initial data exploration
├── .gitignore                   # Git ignore file
└── README.md                    # Project documentation
```

## Technologies Used

- **Orchestration**: Kestra
- **Storage**: Google Cloud Storage (GCS)
- **Warehouse**: BigQuery
- **Transformation**: dbt
- **Visualization**: Metabase

## Getting Started

1. **Prerequisites**:
   - Google Cloud Platform account
   - Python 3.8+
   - dbt installed
   - Kestra CLI

2. **Setup**:
   ```bash
   # Clone the repository
   git clone https://github.com/Ainapalma/de-zoomcamp-course-project.git
   cd de-zoomcamp-course-project

   # Set up virtual environment
   python -m venv venv
   source venv/bin/activate  # or `venv\Scripts\activate` on Windows
   
   # Install dependencies
   pip install -r requirements.txt
   ```

3. **Configuration**:
   - Set up GCP credentials
   - Configure Kestra workflows
   - Initialize dbt project
   - Connect Metabase to BigQuery

4. **Running the Pipeline**:
   - Execute Kestra workflows for data ingestion
   - Run dbt models for transformations
   - Access Metabase dashboard for visualization

## Data Models

The project uses dbt for transforming raw streaming content data into analytics-ready models. The schema is well-documented and focuses on:
- Content metadata analysis
- Viewing patterns
- Engagement metrics
- Trend analysis

## Dashboard

The Metabase dashboard provides insights into streaming content performance and user engagement patterns.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

[Your chosen license]

## Acknowledgments

- Data Engineering Zoomcamp course team
- Contributors and maintainers of the tools used in this project
