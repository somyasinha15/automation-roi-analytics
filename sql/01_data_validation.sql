SELECT 'test_cases' AS table_name, COUNT(*) AS "rows" FROM test_roi.test_cases
UNION ALL
SELECT 'test_runs', COUNT(*) FROM test_roi.test_runs
UNION ALL
SELECT 'qa_cost', COUNT(*) FROM test_roi.qa_cost;

-- Check missing automation timings
SELECT *
FROM test_roi.test_cases
WHERE test_type = 'Automation'
AND automated_time_min IS NULL;

-- Check orphan test runs
SELECT tr.*
FROM test_roi.test_runs tr
LEFT JOIN test_cases tc ON tr.test_id = tc.test_id
WHERE tc.test_id IS NULL;
