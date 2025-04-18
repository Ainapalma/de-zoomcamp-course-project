# Streaming Services Content Analysis

This project analyzes content from major streaming services (Netflix, Amazon Prime, and Disney+) using a modern data engineering stack. The analysis includes data loading, transformation, and visualization to gain insights into content trends and patterns.

## Project Overview

The project follows a complete data pipeline:
1. Data Extraction: Loading streaming service data from GitHub
2. Data Loading: Using Kestra to load data into Google Cloud Platform
3. Data Transformation: Using dbt to transform and model the data
4. Data Visualization: Creating dashboards in Metabase

## Project Structure

```
07-course-project/
├── datasets/                  # Source data files
├── dbt_transformations/       # dbt models and transformations
├── kestra_pipelines/         # Kestra workflows for data loading
└── data_exploration_notebook.ipynb  # Initial data exploration
```

## Prerequisites

Before running this project, ensure you have:

1. Google Cloud Platform account with:
   - BigQuery enabled
   - Cloud Storage bucket created
   - Service account with appropriate permissions

2. Software Requirements:
   - Kestra installed and running
   - dbt installed
   - Metabase installed and running
   - Python 3.8+ with required packages

## Setup Instructions

### 1. Google Cloud Setup

1. Create a BigQuery dataset:
   ```bash
   bq mk --dataset --location=europe-west2 white-site-353019:movies_and_shows_all
   ```

2. Create a Cloud Storage bucket:
   ```bash
   gsutil mb -l europe-west2 gs://de-zoomcamp-project-movies
   ```

### 2. Kestra Setup

1. Set up key-value pairs in Kestra:
   ```bash
   kestra flow execute zoomcamp 00_gcp_kv
   ```

2. Verify the key-value pairs are set correctly:
   - GCP_PROJECT_ID: white-site-353019
   - GCP_DATASET: movies_and_shows_all
   - GCP_LOCATION: europe-west2
   - GCP_BUCKET_NAME: de-zoomcamp-project-movies

### 3. dbt Setup

1. Navigate to the dbt project:
   ```bash
   cd dbt_transformations
   ```

2. Set up dbt profiles:
   ```bash
   dbt debug
   ```

3. Run dbt models:
   ```bash
   dbt run
   ```

## Running the Pipeline

### 1. Load Data with Kestra

Execute the Kestra flow to load data for a specific streaming service:
```bash
kestra flow execute zoomcamp 02_gcp_movies --inputs '{"streaming_service": "netflix"}'
```

Available streaming services:
- netflix
- amazon_prime
- disney_plus

### 2. Transform Data with dbt

After loading the data, run the dbt transformations:
```bash
cd dbt_transformations
dbt run
```

### 3. Visualize in Metabase

1. Connect Metabase to your BigQuery dataset
2. Import the provided dashboard JSON
3. Explore the visualizations

## Data Models

The project includes the following dbt models:
- Staging models for each streaming service
- Intermediate models for common transformations
- Final models for analysis and reporting

## Dashboard

The Metabase dashboard includes:
- Content distribution by type (Movies vs TV Shows)
- Release year trends
- Rating distribution
- Country of origin analysis
- Director and cast statistics

## Troubleshooting

Common issues and solutions:

1. Kestra Flow Errors:
   - Verify key-value pairs are set correctly
   - Check GCP credentials and permissions
   - Ensure bucket and dataset exist

2. dbt Errors:
   - Verify profiles.yml configuration
   - Check BigQuery permissions
   - Ensure tables exist in the correct dataset

3. Metabase Connection Issues:
   - Verify BigQuery connection settings
   - Check service account permissions
   - Ensure dataset is accessible

## Contributing

Feel free to submit issues and enhancement requests!

## License

This project is licensed under the MIT License - see the LICENSE file for details. 