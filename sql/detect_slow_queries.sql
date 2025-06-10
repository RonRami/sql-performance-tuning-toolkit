-- Detects top slow queries by average duration from query store

SELECT 
    qs.query_id,
    qt.query_sql_text,
    qs.avg_duration / 1000 AS avg_duration_ms,
    qs.execution_type_desc,
    qs.count_executions
FROM sys.query_store_query_text AS qt
JOIN sys.query_store_query AS q ON qt.query_text_id = q.query_text_id
JOIN sys.query_store_plan AS qp ON q.query_id = qp.query_id
JOIN sys.query_store_runtime_stats AS qs ON qp.plan_id = qs.plan_id
WHERE qs.avg_duration > 1000000  -- 1 second
ORDER BY avg_duration_ms DESC;
