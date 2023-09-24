# 1581. Customer Who Visited but Did Not Make Any Transactions
Problem Link:https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/?envType=study-plan-v2&envId=top-sql-50
## Solution

```sql
select Customer_id ,COUNT(visit_id) count_no_trans
FROM Visits
where visit_id not in (
  select visit_id
   from transactions
)
group by customer_id
