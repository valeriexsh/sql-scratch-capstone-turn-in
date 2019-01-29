 -- Quiz Funnel

SELECT *
FROM survey
LIMIT 10;

SELECT question,
   COUNT(DISTINCT user_id)
AS �count'
FROM survey
GROUP BY question;


-- Home Try-On Funnel

SELECT *
FROM quiz
LIMIT 5;

SELECT *
FROM home_try_on
LIMIT 5;

SELECT *
FROM purchase
LIMIT 5;

SELECT DISTINCT q.user_id,
   h.user_id IS NOT NULL AS 'is_home_try_on',
h.number_of_pairs,
   p.user_id IS NOT NULL AS 'is_purchase'
  FROM quiz AS 'q'
LEFT JOIN home_try_on 'h'
   ON q.user_id = h.user_id
LEFT JOIN purchase 'p'
   ON p.user_id = q.user_id
LIMIT 10;

