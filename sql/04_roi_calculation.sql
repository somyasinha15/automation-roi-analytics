-- Total hours saved
SELECT
    ROUND(SUM(time_saved_min) / 60, 2) AS total_hours_saved
FROM test_roi.v_time_savings;

-- ROI Calculation
SELECT
    r.release_version,
    ROUND(r.time_saved_min / 60, 2) AS hours_saved,
    qc.cost_per_hour,
    ROUND((r.time_saved_min / 60) * qc.cost_per_hour, 2) AS cost_saved
FROM test_roi.v_time_savings r
CROSS JOIN test_roi.qa_cost qc
WHERE qc.role LIKE '%QA%';
