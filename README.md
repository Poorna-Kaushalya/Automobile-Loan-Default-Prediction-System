# Automobile-Loan-Default-Prediction-System

![Car Image](https://raw.githubusercontent.com/Poorna-Kaushalya-Gamage/Automobile-Loan-Default-Prediction-System/4fe47bc87d2b478c8274f644023536b43b18af76/static/Car1.png)
### Project Overview

This project focuses on predicting loan defaults for a Non-Banking Financial Institution (NBFI), specifically targeting vehicle loans. The aim is to help NBFIs enhance their risk assessment models to better understand the financial strength of borrowers and reduce the likelihood of loan defaults. By implementing predictive analytics, the system evaluates key factors like income, loan amount, and credit history to predict whether a client will default on their loan. This will enable NBFIs to make more informed lending decisions, reducing financial risks and improving profitability.

### Problem Statement

With rising economic challenges such as inflation, financial crises, and increased interest rates, NBFIs are under immense pressure due to rising loan defaults, particularly in the automobile loan sector. This project aims to address these challenges by developing a predictive model that can forecast the probability of a client defaulting on their car loan, helping NBFIs maintain financial stability during volatile times.

### Dataset Description

- Train Dataset: Contains 121,856 records of historical loan data with 40 features, including demographic, financial, and loan-specific details of clients.
- Test Dataset: Used for model evaluation and predicting the loan default status for clients.

### Key Features

1. Income: Client's income level.
2. Loan Amount: Amount borrowed for the vehicle loan.
3. Credit History: Previous loan repayment behavior.
4. Employment Status: Employment details of the borrower.
5. Loan Duration: Term length of the loan.
6. Vehicle Type: Type of vehicle purchased.

### Project Workflow

1. Data Preprocessing:
   - Handling missing values.
   - Encoding categorical variables.
   - Normalizing numerical features.
   - Removing outliers and cleaning the dataset.

2. Exploratory Data Analysis (EDA):
   - Analyzing loan default trends based on key features such as income, credit history, and loan amount.
   - Identifying patterns and correlations between features and default status.

3. Model Development:
   - Using machine learning algorithms such as Logistic Regression, Decision Trees, Random Forest, and XGBoost to predict default status.
   - Evaluating models based on accuracy, precision, recall, and F1-score.
   - Hyperparameter tuning to improve model performance.

4. Risk Assessment System:
   - Implementing a predictive model to assess a client's likelihood of defaulting on a loan.
   - Providing actionable insights for loan officers to make informed lending decisions.

### Goals and Objectives

- Predictive Accuracy: Build a model with high accuracy in predicting whether a client will default on their car loan.
- Risk Management: Provide a system that helps NBFIs mitigate financial risks by proactively identifying high-risk clients.
- Improved Decision-Making: Enable more informed lending decisions by analyzing key financial and demographic factors.

### Installation and Setup

1. Clone the repository:
   ```
   https://github.com/Poorna-Kaushalya-Gamage/Automobile-Loan-Default-Prediction-System.git
   ```
2. Install the required dependencies:
   ```
   pip install -r requirements.txt
   ```
3. Run the model:
   ```
   python 12.py
   ```

### Demo
```
https://automobile-loan-default-prediction-system-xujqfzrxxmbapkvhz3hu.streamlit.app/
```

### Ui Designs
![UI 1](https://github.com/Poorna-Kaushalya-Gamage/Automobile-Loan-Default-Prediction-System/blob/f2373d445e90ddef5480b3767bef9bff7542b19e/static/UI%201.png)
![UI 2](https://github.com/Poorna-Kaushalya-Gamage/Automobile-Loan-Default-Prediction-System/blob/f2373d445e90ddef5480b3767bef9bff7542b19e/static/UI%202.png)

Let me know if you need any further modifications or additional help!
