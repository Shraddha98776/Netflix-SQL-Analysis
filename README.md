# 🎬 Netflix Content Analysis — SQL Project

## 📌 Project Overview

This project performs an in-depth analysis of Netflix's content library using **MySQL**. The dataset contains **8,088 records** across **12 columns** covering Movies and TV Shows available on Netflix globally. The goal is to solve **15 real-world business problems** that a data analyst might face in a streaming platform environment.

---

## 📂 Dataset

| Column | Description |
|---|---|
| show_id | Unique ID for each title |
| type | Movie or TV Show |
| title | Name of the content |
| director | Director of the content |
| cast | Actors involved |
| country | Country of production |
| date_added | Date added to Netflix |
| release_year | Year of original release |
| rating | Content rating (TV-MA, PG, etc.) |
| duration | Duration in minutes or seasons |
| listed_in | Genre/Category |
| description | Brief description of content |

- **Source:** Kaggle — Netflix Movies and TV Shows
- **Total Records:** 8,088
- **Total Columns:** 12

---

## 🛠️ Tools & Technologies

- **Database:** MySQL
- **IDE:** MySQL Workbench
- **Language:** SQL

---

## 📊 Business Problems Solved

| # | Business Question |
|---|---|
| 1 | Count the number of Movies vs TV Shows |
| 2 | Find the most common rating for Movies and TV Shows |
| 3 | List all movies released in a specific year |
| 4 | Find the top 5 countries with the most content on Netflix |
| 5 | Identify the longest movie |
| 6 | Find content added in the last 5 years |
| 7 | Find all movies/TV shows by director 'Rajiv Chilaka' |
| 8 | List all TV shows with more than 5 seasons |
| 9 | Count the number of content items in each genre |
| 10 | Find top 5 years with highest content release in India |
| 11 | List all movies that are documentaries |
| 12 | Find all content without a director |
| 13 | Find how many movies actor 'Salman Khan' appeared in last 10 years |
| 14 | Find top 10 actors in highest number of movies produced in India |
| 15 | Categorize content as 'Good' or 'Bad' based on keywords in description |

---

## 🔍 Key Insights

- **6,131 Movies** vs **2,676 TV Shows** available on Netflix
- **TV-MA** and **TV-14** are the most common ratings
- **USA, India, and UK** are the top content-producing countries
- Content categorized as **'Bad'** using CASE statements and keyword filtering
- Identified **Top 10 Indian actors** based on movie appearances

---

## 💡 SQL Concepts Used

- `GROUP BY`, `HAVING`, `ORDER BY`, `LIMIT`
- `WHERE`, `LIKE`, `IN`, `IS NULL`
- `CASE` statements
- Aggregate Functions
- String Functions
- Date Functions

---

## 📁 Project Structure

```text
netflix-sql-analysis/

├── netflix_titles.csv
├── netflix_analysis.sql
└── README.md
```

---

