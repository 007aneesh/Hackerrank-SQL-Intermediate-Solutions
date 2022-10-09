SELECT u.id, u.first_name, u.last_name, cu.id, cu.customer_name, count(cu.id)
from customer cu, user_account u, contact c
where cu.id = c.customer_id and c.user_account_id = u.id
group by u.id, u.first_name, u.last_name, cu.id, cu.customer_name
having count(cu.id) > 1;