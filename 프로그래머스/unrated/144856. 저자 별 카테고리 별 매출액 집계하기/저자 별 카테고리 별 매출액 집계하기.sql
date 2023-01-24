SELECT a.author_id, a.author_name, b.category, SUM(s.sales * b.price) AS total_sales FROM book b 
INNER JOIN author a ON a.author_id = b.author_id 
INNER JOIN book_sales s ON b.book_id = s.book_id 
WHERE YEAR(s.sales_date) = 2022 AND MONTH(s.sales_date) = 01
GROUP BY a.author_id, b.category 
ORDER BY a.author_id ASC, b.category DESC