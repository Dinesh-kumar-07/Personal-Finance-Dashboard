# Personal Finance Dashboard 💰📊

Personal Finance Dashboard is a web-based financial analytics application that helps users analyze bank statements, categorize transactions, and visualize spending behavior through interactive charts and dashboards.

This project simplifies personal expense tracking by automatically processing transaction records and converting raw financial data into meaningful insights for better budgeting and financial planning.

---

## 📌 Problem Statement

Managing personal finances manually using bank statements is difficult and time-consuming. Most users struggle to:

- Track where money is being spent
- Identify unnecessary expenses
- Analyze monthly spending trends
- Compare income vs expenses
- Make informed budgeting decisions

Traditional spreadsheets require manual categorization and analysis, which can take a lot of time.

This project solves that problem by automating expense analysis.

---

## 🎯 Objective

The goal of this project is to build an intelligent dashboard that can:

- Parse raw bank statement files
- Clean and preprocess transaction data
- Categorize expenses automatically
- Generate visual reports
- Help users understand spending patterns

---

## ✨ Features

### 📂 Bank Statement Upload
- Upload transaction data using CSV / Excel files
- Supports structured bank statement format

### 🧹 Data Cleaning & Preprocessing
- Handles missing values
- Date formatting and normalization
- Removes inconsistent transaction entries

### 🏷 Smart Transaction Categorization
Automatically groups transactions into categories such as:

- Food
- Travel
- Shopping
- Bills
- Healthcare
- Entertainment
- Salary
- Others

### 📊 Interactive Dashboard
Visual representation of expenses using:

- Bar Charts
- Pie Charts
- Line Graphs
- Trend Analysis

### 📅 Monthly Spending Analysis
Track:
- Monthly expenses
- Income trends
- Savings trends
- Spending spikes

### 💸 Expense Breakdown
Understand:
- Which category consumes most money
- Which months had highest expenses
- How spending changes over time

### ⚡ Fast Analysis
Processes large transaction datasets quickly using optimized data operations.

---

## 🧠 How It Works

### Step 1: Upload Data
User uploads bank statement file.

### Step 2: Data Parsing
Application reads:
- Date
- Transaction description
- Debit/Credit amount
- Balance

### Step 3: Preprocessing
Using:
- Regex
- Data cleaning
- Date parsing
- Currency normalization

### Step 4: Categorization
Transactions are categorized using:
- Rule-based classification  
or
- Machine Learning model (if enabled)

### Step 5: Visualization
Dashboard generates insights using charts and graphs.

---

## 🛠 Tech Stack

### Backend
- Python
- :contentReference[oaicite:1]{index=1}
- NumPy

### Frontend / UI
- :contentReference[oaicite:2]{index=2} / Flask (based on implementation)
- HTML
- CSS
- JavaScript

### Visualization
- :contentReference[oaicite:3]{index=3}
- Chart libraries

### Database (Optional)
- MySQL
- SQLite

### ML (Optional)
- Scikit-learn
- Logistic Regression
- Transaction Classification

---

## 📂 Project Structure

```bash
Personal-Finance-Dashboard/
│
├── app.py
├── index.html
├── parser.py
├── ml_engine.py
├── requirements.txt
├── mysql_schema.sql
├── script.js
├── view_tables.sql
└── README.md
```

---

## 🚀 Installation

### 1. Clone Repository
```bash
git clone https://github.com/YOUR_USERNAME/Personal-Finance-Dashboard.git
```

### 2. Move to Project Directory
```bash
cd Personal-Finance-Dashboard
```

### 3. Install Dependencies
```bash
pip install -r requirements.txt
```

### 4. Run Application

If using Python:
```bash
python app.py
```

If using Streamlit:
```bash
streamlit run app.py
```

---

## 📈 Dashboard Metrics

The dashboard provides insights such as:

- Total Income
- Total Expenses
- Savings
- Expense Ratio
- Monthly Growth
- Category-wise Spending
- Highest Expense Category
- Spending Trend

---

## 📊 Sample Insights

Example findings from dashboard:

- 35% expenses spent on Food
- Travel expenses increased by 18%
- Shopping peaked in December
- Monthly savings improved by 12%

These insights help users make smarter financial decisions.

---

## 💡 Use Cases

This project can be useful for:

### Individuals
- Track personal spending
- Budget planning
- Savings analysis

### Families
- Household expense management
- Monthly budget planning

### Students
- Monitor daily expenses
- Improve financial discipline

---

## Future Improvements

Planned enhancements:

- AI-powered spending prediction
- Budget recommendations
- Expense anomaly detection
- Savings goal tracker
- SMS transaction parsing
- PDF report export
- Cloud deployment
- Mobile version

---

## Challenges Faced

Some challenges during development:

- Handling inconsistent bank statement formats
- Cleaning noisy transaction descriptions
- Categorizing ambiguous transactions
- Generating accurate visual insights

These were solved using:
- Regex pattern matching
- Data preprocessing
- Efficient categorization logic

---

## Learning Outcomes

Through this project, I improved my knowledge in:

- Data Cleaning
- Exploratory Data Analysis
- Data Visualization
- Financial Analytics
- Python Project Development
- Real-world Problem Solving

---

## Author

**Dinesh Kumar**  
Computer Science Engineer  
Python | AI | Machine Learning | Data Analytics
