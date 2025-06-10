# Performance Diagnostics for SQL Server

This repository contains a set of focused diagnostic and tuning scripts for Microsoft SQL Server. These scripts are part of a hands-on capstone project to help develop and demonstrate foundational database administration (DBA) skills, especially in the area of performance troubleshooting and optimization.

The goal of this project is to simulate real-world scenarios where a junior DBA may be required to assess, analyze, and take corrective action on slow queries and other performance bottlenecks in SQL Server environments.

---

## 📁 Folder Structure

performance_diagnostics/
├── sql/
│ ├── detect_slow_queries.sql
│ ├── query_execution_stats.sql
│ ├── missing_index_report.sql
│ ├── top_cpu_queries.sql
│ └── optimize_query_example.sql



---

## 🔧 Scripts Overview

### 1. `detect_slow_queries.sql`
Identifies the slowest-running queries based on average execution time. This is useful for initial triage when users report slowness or when regular audits are needed.

- Uses dynamic management views (DMVs) to identify poor performers.
- Focuses on average duration for better context on recurring issues.

---

### 2. `query_execution_stats.sql`
It provides metrics like execution count, average CPU usage, and logical reads per query, helping to prioritize which queries to investigate or optimize.

---

### 3. `missing_index_report.sql`
Reports potential missing indexes by analyzing SQL Server's internal recommendations. Can be used to enhance query performance and reduce scan costs.

- Outputs suggested columns, included columns, and expected improvement.
- A practical tool for guiding indexing decisions without guesswork.

---

### 4. `top_cpu_queries.sql`
Lists queries that consume the most CPU resources over time. This helps narrow down high-impact queries that may be degrading overall system performance.

---

### 5. `optimize_query_example.sql`
A practical example showing how a slow query was restructured for improved performance. Includes:

- Before and after versions of the query
- Commentary on the performance impact
- Concepts applied, such as index usage and filtering

---

## 🧠 Learning Objectives

This capstone strengthens the following core DBA competencies:

- Query performance diagnosis and triage
- Index analysis and missing index detection
- Understanding DMVs and system metadata
- CPU-bound query detection
- Basic query tuning practices and rewriting techniques

---

## ✅ Usage

Each script is standalone and can be executed against a SQL Server instance with proper permissions. The environment should allow access to:

- `sys.dm_exec_*` views
- `sys.dm_db_index_*` views
- `sys.indexes`, `sys.objects`, and related catalog views

> ⚠️ Note: These scripts are designed for learning and simulation purposes. Always test in non-production environments before applying changes such as index creation or query rewriting.

---

## 📌 Author Notes

This project was created as part of a self-directed DBA learning journey. It is not intended to replace enterprise-grade monitoring tools, but rather to reinforce and showcase practical diagnostic skills in real-world-like scenarios.

Future updates will include:
- Execution plan walkthroughs
- Statistics updates
- Use of extended events or Query Store

---

## 📫 Feedback

If you're also on a learning path or have ideas to improve these scripts, feel free to reach out or fork the project!

