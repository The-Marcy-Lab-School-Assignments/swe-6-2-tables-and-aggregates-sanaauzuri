# swe-6-2-tables-and-aggregates

This assignment covers **Creating Tables** and **Aggregates and Seeding**. In Part 1 you'll design and seed your own table from scratch. In Part 2 you'll write aggregate queries against a provided `products_db` database.

- [Setup](#setup)
- [Part 1: Schema Design and Seeding](#part-1-schema-design-and-seeding)
  - [Grading: Schema Design (11 pts)](#grading-schema-design-11-pts)
- [Part 2: Aggregate Queries](#part-2-aggregate-queries)
  - [Rounding decimals with `ROUND`](#rounding-decimals-with-round)
  - [Grading: Queries (18 pts)](#grading-queries-18-pts)
- [Expected Output](#expected-output)

## Setup

**1. Make a draft branch:**

```sh
git checkout -b draft
```

**2. Run the products seed file to create `products_db` for Part 2:**

**Mac:**
```sh
psql -f products_seed.sql
```

**Windows/WSL:**
```sh
sudo -u postgres psql -f products_seed.sql
```

**3. Connect to `products_db` to work on Part 2 queries:**

**Mac:**
```sh
psql products_db
```

**Windows/WSL:**
```sh
sudo -u postgres psql products_db
```

**4. Work on Part 1** by writing your table design in `create-and-seed.sql`. When you're done, run it to verify it works:

**Mac:**
```sh
psql -f create-and-seed.sql
```

**Windows/WSL:**
```sh
sudo -u postgres psql -f create-and-seed.sql
```

---

## Part 1: Schema Design and Seeding

Open `create-and-seed.sql`. Choose one of the five scenarios listed in the file comments and design a table for it. Then seed it with at least 8 rows of data.

Your file must run without errors from top to bottom using `psql -f create-and-seed.sql`.

### Grading: Schema Design (11 pts)

Your `create-and-seed.sql` seed file must satisfy the following requirements

- [ ] Creates a new database with an appropriate name
- [ ] Connects to the database after creating it
- [ ] Creates a new table with an appropriate name
- [ ] The seed file can be executed multiple times without causing errors related to the database and/or table already existing
- [ ] The table has a primary key column with unique, auto-generated, and sequential values
- [ ] The table has at least 5 additional columns beyond the primary key
- [ ] The table has at least 3 different data types used
- [ ] The table has at least one `NOT NULL` constraint
- [ ] The table has at least one `DEFAULT` value
- [ ] The table has at least one `UNIQUE` constraint
- [ ] The table has at least 8 rows of seed data inserted

---

## Part 2: Aggregate Queries

Open `queries.sql` and write your answers below each prompt. All queries run against `products_db`.

### Rounding decimals with `ROUND`

Some queries ask you to round a result to 2 decimal places. Use `ROUND(value, decimal_places)` to do this.

For example, to calculate the average stock for every product, we could write:

```sql
SELECT AVG(stock) AS avg_stock FROM products;
```

But this produces the value `39.5625000000000000`. Instead, we can round the result to 2 decimal places using `ROUND(value, decimal_places)`:

```sql
SELECT ROUND(AVG(stock), 2) AS avg_stock FROM products;
```

Which gives us `39.56`!

`ROUND` wraps the aggregate function and takes two arguments: the value to round and the number of decimal places to keep.

### Grading: Queries (18 pts)

**Part 2A: Aggregate Functions**
- [ ] 1. Total number of products
- [ ] 2. Number of products in the `'electronics'` category
- [ ] 3. Total units in stock across all products
- [ ] 4. Average price across all products (rounded to 2 decimal places)
- [ ] 5. Lowest and highest prices (in a single query)
- [ ] 6. Lowest and highest ratings (in a single query)
- [ ] 7. Total stock for the `'sports'` category

**Part 2B: GROUP BY**
- [ ] 8. Product count per category
- [ ] 9. Average price per category, rounded to 2 decimal places, ordered most to least expensive
- [ ] 10. Total stock per category, ordered most to least
- [ ] 11. Highest product price per category, ordered alphabetically
- [ ] 12. Average rating per brand, rounded to 2 decimal places, ordered highest to lowest
- [ ] 13. Product count per brand, ordered highest to lowest

**Part 2C: HAVING**
- [ ] 14. Categories with more than 3 products
- [ ] 15. Categories with an average price above $80, rounded to 2 decimal places
- [ ] 16. Brands with an average rating above 4.5, rounded to 2 decimal places
- [ ] 17. Among products under $150, categories with an average rating above 4.4, rounded to 2 decimal places
- [ ] 18. Brands that carry more than one product

---

## Expected Output

**<details><summary>1. Total number of products</summary>**

| total_products |
| -------------- |
| 16             |

</details>

**<details><summary>2. Number of electronics products</summary>**

| electronics_count |
| ----------------- |
| 5                 |

</details>

**<details><summary>3. Total units in stock</summary>**

| total_stock |
| ----------- |
| 633         |

</details>

**<details><summary>4. Average price (rounded to 2 decimal places)</summary>**

| avg_price |
| --------- |
| 123.93    |

</details>

**<details><summary>5. Lowest and highest prices</summary>**

| min_price | max_price |
| --------- | --------- |
| 29.99     | 399.99    |

</details>

**<details><summary>6. Lowest and highest ratings</summary>**

| min_rating | max_rating |
| ---------- | ---------- |
| 4.1        | 4.9        |

</details>

**<details><summary>7. Total sports stock</summary>**

| sports_stock |
| ------------ |
| 205          |

</details>

**<details><summary>8. Product count per category</summary>**

Note: order may vary.

| category    | product_count |
| ----------- | ------------- |
| clothing    | 4             |
| electronics | 5             |
| home        | 4             |
| sports      | 3             |

</details>

**<details><summary>9. Average price per category, most to least expensive</summary>**

| category    | avg_price |
| ----------- | --------- |
| home        | 282.49    |
| clothing    | 92.49     |
| electronics | 65.99     |
| sports      | 50.99     |

</details>

**<details><summary>10. Total stock per category, most to least</summary>**

| category    | total_stock |
| ----------- | ----------- |
| electronics | 255         |
| sports      | 205         |
| clothing    | 120         |
| home        | 53          |

</details>

**<details><summary>11. Most expensive price per category, alphabetical order</summary>**

| category    | max_price |
| ----------- | --------- |
| clothing    | 119.99    |
| electronics | 129.99    |
| home        | 399.99    |
| sports      | 68.00     |

</details>

**<details><summary>12. Average rating per brand, highest to lowest</summary>**

Note: brands with the same average rating may appear in a different order — that's okay.

| brand             | avg_rating |
| ----------------- | ---------- |
| KitchenAid        | 4.90       |
| Breville          | 4.80       |
| Dyson             | 4.75       |
| Nike              | 4.70       |
| JBL               | 4.60       |
| Lululemon         | 4.60       |
| Patagonia         | 4.60       |
| Merrell           | 4.50       |
| Sony              | 4.50       |
| Logitech          | 4.40       |
| Optimum Nutrition | 4.30       |
| Rain Design       | 4.30       |
| Anker             | 4.20       |
| Levi's            | 4.20       |
| TRX               | 4.10       |

</details>

**<details><summary>13. Product count per brand, highest to lowest</summary>**

Note: brands with a count of 1 may appear in any order.

| brand             | product_count |
| ----------------- | ------------- |
| Dyson             | 2             |
| Sony              | 1             |
| Nike              | 1             |
| Breville          | 1             |
| Lululemon         | 1             |
| Logitech          | 1             |
| Levi's            | 1             |
| Optimum Nutrition | 1             |
| JBL               | 1             |
| Merrell           | 1             |
| KitchenAid        | 1             |
| TRX               | 1             |
| Rain Design       | 1             |
| Patagonia         | 1             |
| Anker             | 1             |

</details>

**<details><summary>14. Categories with more than 3 products</summary>**

Note: order may vary.

| category    | product_count |
| ----------- | ------------- |
| electronics | 5             |
| clothing    | 4             |
| home        | 4             |

</details>

**<details><summary>15. Categories with an average price above $80</summary>**

Note: order may vary.

| category | avg_price |
| -------- | --------- |
| home     | 282.49    |
| clothing | 92.49     |

</details>

**<details><summary>16. Brands with an average rating above 4.5</summary>**

Note: order may vary.

| brand      | avg_rating |
| ---------- | ---------- |
| KitchenAid | 4.90       |
| Breville   | 4.80       |
| Dyson      | 4.75       |
| Nike       | 4.70       |
| JBL        | 4.60       |
| Lululemon  | 4.60       |
| Patagonia  | 4.60       |

</details>

**<details><summary>17. Among products under $150, categories with an average rating above 4.4</summary>**

Note: order may vary.

| category | avg_rating |
| -------- | ---------- |
| home     | 4.80       |
| clothing | 4.50       |

</details>

**<details><summary>18. Brands with more than one product</summary>**

| brand | product_count |
| ----- | ------------- |
| Dyson | 2             |

</details>
