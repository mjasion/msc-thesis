SELECT
  response_time,
  count(*)
FROM (SELECT
        response_time,
        ntile(20)
        OVER (
          ORDER BY response_time) AS bucket
      FROM jmeter_result_go_clean
      WHERE test_group = 'API Validation' AND test_threads = 250) AS t
WHERE bucket <= 19
GROUP BY response_time
ORDER BY response_time ASC



COPY (SELECT
        response_time,
        count(*)
      FROM (SELECT
              response_time,
              ntile(20)
              OVER (
                ORDER BY response_time) AS bucket
            FROM jmeter_result_go_clean
            WHERE test_group = 'API Validation' AND test_threads = 100) AS t
      WHERE bucket <= 19
      GROUP BY response_time
      ORDER BY response_time ASC) TO '/csv/response_time_distribution_go_clean_api_validation_100.csv' DELIMITER ',';
COPY (SELECT
        response_time,
        count(*)
      FROM (SELECT
              response_time,
              ntile(20)
              OVER (
                ORDER BY response_time) AS bucket
            FROM jmeter_result_go_clean
            WHERE test_group = 'API Validation' AND test_threads = 250) AS t
      WHERE bucket <= 19
      GROUP BY response_time
      ORDER BY response_time ASC) TO '/csv/response_time_distribution_go_clean_api_validation_250.csv' DELIMITER ',';