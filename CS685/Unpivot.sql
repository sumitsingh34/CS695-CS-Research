use   bt1ewgierjmj2kljrpcj;
drop view if exists responsesTBL;
create view responsesTBL as
select t.ResponseNumber, t.Timestamp, t.Course_ID, c.question,
case c.question
  when 'Q1' then Q1
  when 'Q2' then Q2
  when 'Q3' then Q3
  when 'Q4' then Q4
  when 'Q5' then Q5
  when 'Q6' then Q6
  when 'Q7' then Q7
  when 'Q8' then Q8
  when 'Q9' then Q9
  when 'Q10' then Q10
  when 'Q11' then Q11
  when 'Q12' then Q12
  when 'Q13' then Q13
  when 'Q14' then Q14
  when 'Q15' then Q15
  when 'Q16' then Q16
  when 'Q17' then Q17
  when 'Q18' then Q18
end as response
from Responses t
cross join
(
 select 'Q1' as question
 union all select 'Q2'
 union all select 'Q3'
 union all select 'Q4'
 union all select 'Q5'
 union all select 'Q6'
 union all select 'Q7'
 union all select 'Q8'
 union all select 'Q9'
 union all select 'Q10'
 union all select 'Q11'
 union all select 'Q12'
 union all select 'Q13'
 union all select 'Q14'
 union all select 'Q15'
 union all select 'Q16'
 union all select 'Q17'
 union all select 'Q18'
)c;