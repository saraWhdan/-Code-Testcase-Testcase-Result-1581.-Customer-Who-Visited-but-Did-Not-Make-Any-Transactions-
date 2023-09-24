select Customer_id ,COUNT(visit_id) count_no_trans
FROM Visits
where visit_id not in (
  select visit_id
   from transactions
)
group by customer_id
