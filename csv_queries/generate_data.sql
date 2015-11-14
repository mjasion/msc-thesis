SELECT
  seconds_from_start,
  count(*) AS                  req_per_sec,
  round(avg(response_time), 4) avg_response_time
FROM jmeter_result_tomcat_clean
WHERE test_threads = 100
      AND test_group = 'API Validation'
      AND jmeter_result_tomcat_clean.seconds_from_start < 900
GROUP BY seconds_from_start
ORDER BY seconds_from_start;

SELECT
  seconds_from_start,
  count(*) AS                  req_per_sec,
  round(avg(response_time), 4) avg_response_time
FROM jmeter_result_tomcat_clean
WHERE test_threads = 250
      AND test_group = 'API Validation'
      AND jmeter_result_tomcat_clean.seconds_from_start < 900
GROUP BY seconds_from_start
ORDER BY seconds_from_start;