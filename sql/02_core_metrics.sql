-- Automation Coverage
SELECT
  COUNT(CASE WHEN test_type='Automation' THEN 1 END)*100.0/COUNT(*) 
  AS automation_coverage_pct
FROM test_roi.test_cases;

-- Manual vs Automation Execution Time
SELECT
    test_type,
    AVG(manual_time_min) AS avg_manual_time,
    AVG(automated_time_min) AS avg_automation_time
FROM test_roi.test_cases
GROUP BY test_type;

-- Time Saved Per Test
SELECT
  test_id,
  manual_time_min - automated_time_min AS time_saved_min
FROM test_roi.test_cases
WHERE test_type='Automation';

-- Execution Volume by Release
SELECT
    release_version,
    COUNT(*) AS total_executions
FROM test_roi.test_runs
GROUP BY release_version;
