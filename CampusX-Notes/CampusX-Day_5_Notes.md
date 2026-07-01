# CampusX SQL - Day 5 Notes
# DATE : 1/7/2026

## Topics Covered

### Aggregate Functions

Aggregate functions perform calculations on multiple rows and return a single value.

#### MAX()

Returns the highest value in a column.

```sql
SELECT MAX(marks)
FROM students;
```

#### MIN()

Returns the smallest value in a column.

```sql
SELECT MIN(marks)
FROM students;
```

#### SUM()

Returns the total of all values.

```sql
SELECT SUM(marks)
FROM students;
```

#### AVG()

Returns the average value.

```sql
SELECT AVG(marks)
FROM students;
```

#### COUNT()

Returns the total number of rows.

```sql
SELECT COUNT(*)
FROM students;
```

#### VARIANCE()

Returns the variance of numeric values in a column.

```sql
SELECT VARIANCE(marks)
FROM students;
```

---

## Scalar Functions

Scalar functions operate on a single value and return a single value.

### ABS()

Returns the absolute (positive) value.

```sql
SELECT ABS(-45);
```

### ROUND()

Rounds a decimal value.

```sql
SELECT ROUND(15.6789,2);
```

### CEIL()

Returns the smallest integer greater than or equal to the given number.

```sql
SELECT CEIL(5.1);
```

---

## Key Takeaways

* Aggregate functions summarize data from multiple rows.
* Scalar functions operate on individual values.
* Aggregate functions are widely used in reporting and data analysis.
* SQL functions simplify calculations and improve query efficiency.

---

## Practice Completed

* Practiced MAX(), MIN(), SUM(), AVG(), COUNT(), and VARIANCE().
* Practiced ABS(), ROUND(), and CEIL().
* Solved multiple SQL function-based queries.
