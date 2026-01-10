-- Automation Coverage
SELECT
  COUNT(CASE WHEN test_type='Automation' THEN 1 END)*100.0/COUNT(*) 
  AS automation_coverage_pct
FROM test_roi.test_cases;

-- Time Saved Per Test
SELECT
  test_id,
  manual_time_min - automated_time_min AS time_saved_min
FROM test_roi.test_cases
WHERE test_type='Automation';
