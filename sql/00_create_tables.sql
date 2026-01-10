CREATE TABLE `test_cases` (
  `test_id` varchar(50) NOT NULL,
  `test_name` varchar(255) DEFAULT NULL,
  `module` varchar(100) DEFAULT NULL,
  `priority` varchar(20) DEFAULT NULL,
  `test_type` varchar(50) DEFAULT NULL,
  `manual_time_min` int DEFAULT NULL,
  `automated_time_min` int DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  PRIMARY KEY (`test_id`)
);

CREATE TABLE `test_runs` (
  `run_id` int DEFAULT NULL,
  `test_id` varchar(50) DEFAULT NULL,
  `execution_date` date DEFAULT NULL,
  `release_version` varchar(50) DEFAULT NULL,
  `environment` varchar(20) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `execution_time_min` int DEFAULT NULL,
  `triggered_by` varchar(20) DEFAULT NULL
);

CREATE TABLE `test_runs` (
  `run_id` int DEFAULT NULL,
  `test_id` varchar(50) DEFAULT NULL,
  `execution_date` date DEFAULT NULL,
  `release_version` varchar(50) DEFAULT NULL,
  `environment` varchar(20) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `execution_time_min` int DEFAULT NULL,
  `triggered_by` varchar(20) DEFAULT NULL
) ;



