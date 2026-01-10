-- Aggregated savings per release
CREATE VIEW v_time_savings AS
SELECT
  tr.release_version,
  SUM(tc.manual_time_min - tc.automated_time_min) AS time_saved_min
FROM test_roi.test_runs tr
JOIN test_cases tc ON tr.test_id = tc.test_id
WHERE tc.test_type='Automation'
GROUP BY tr.release_version;

-- Time saved per execution
CREATE VIEW v_execution_time_saved AS
SELECT
    tr.execution_date,
    tr.release_version,
    tr.environment,
    (tc.manual_time_min - tc.automated_time_min) AS time_saved_min
FROM test_roi.test_runs tr
JOIN test_roi.test_cases tc ON tr.test_id = tc.test_id
WHERE tc.test_type = 'Automation';
