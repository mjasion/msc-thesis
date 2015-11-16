COPY (SELECT
        response_time,
        count(*)
      FROM (SELECT
              response_time,
              ntile(20)
              OVER (
                ORDER BY response_time) AS bucket
            FROM jmeter_result_go_clean
            WHERE lower(test_group :: TEXT) = 'api validation' AND test_threads = 100) AS t
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
            WHERE lower(test_group::TEXT) = 'api validation' AND test_threads = 250) AS t
      WHERE bucket <= 19
      GROUP BY response_time
      ORDER BY response_time ASC) TO '/csv/response_time_distribution_go_clean_api_validation_250.csv' DELIMITER ',';
COPY (SELECT
        response_time,
        count(*)
      FROM (SELECT
              response_time,
              ntile(20)
              OVER (
                ORDER BY response_time) AS bucket
            FROM jmeter_result_go_full
            WHERE lower(test_group::TEXT) = 'api validation' AND test_threads = 100) AS t
      WHERE bucket <= 19
      GROUP BY response_time
      ORDER BY response_time ASC) TO '/csv/response_time_distribution_go_full_api_validation_100.csv' DELIMITER ',';
COPY (SELECT
        response_time,
        count(*)
      FROM (SELECT
              response_time,
              ntile(20)
              OVER (
                ORDER BY response_time) AS bucket
            FROM jmeter_result_go_full
            WHERE lower(test_group::TEXT) = 'api validation' AND test_threads = 250) AS t
      WHERE bucket <= 19
      GROUP BY response_time
      ORDER BY response_time ASC) TO '/csv/response_time_distribution_go_full_api_validation_250.csv' DELIMITER ',';
-------------------------------------------------------
COPY (SELECT
        response_time,
        count(*)
      FROM (SELECT
              response_time,
              ntile(20)
              OVER (
                ORDER BY response_time) AS bucket
            FROM jmeter_result_tomcat_clean
            WHERE lower(test_group::TEXT) = 'api validation' AND test_threads = 100) AS t
      WHERE bucket <= 19
      GROUP BY response_time
      ORDER BY
        response_time ASC) TO '/csv/response_time_distribution_tomcat_clean_api_validation_100.csv' DELIMITER ',';
COPY (SELECT
        response_time,
        count(*)
      FROM (SELECT
              response_time,
              ntile(20)
              OVER (
                ORDER BY response_time) AS bucket
            FROM jmeter_result_tomcat_clean
            WHERE lower(test_group::TEXT) = 'api validation' AND test_threads = 250) AS t
      WHERE bucket <= 19
      GROUP BY response_time
      ORDER BY
        response_time ASC) TO '/csv/response_time_distribution_tomcat_clean_api_validation_250.csv' DELIMITER ',';
COPY (SELECT
        response_time,
        count(*)
      FROM (SELECT
              response_time,
              ntile(20)
              OVER (
                ORDER BY response_time) AS bucket
            FROM jmeter_result_tomcat_full
            WHERE lower(test_group::TEXT) = 'api validation' AND test_threads = 100) AS t
      WHERE bucket <= 19
      GROUP BY response_time
      ORDER BY response_time ASC) TO '/csv/response_time_distribution_tomcat_full_api_validation_100.csv' DELIMITER ',';
COPY (SELECT
        response_time,
        count(*)
      FROM (SELECT
              response_time,
              ntile(20)
              OVER (
                ORDER BY response_time) AS bucket
            FROM jmeter_result_tomcat_full
            WHERE lower(test_group::TEXT) = 'api validation' AND test_threads = 250) AS t
      WHERE bucket <= 19
      GROUP BY response_time
      ORDER BY response_time ASC) TO '/csv/response_time_distribution_tomcat_full_api_validation_250.csv' DELIMITER ',';
-------------------------------------------------------
COPY (SELECT
        response_time,
        count(*)
      FROM (SELECT
              response_time,
              ntile(20)
              OVER (
                ORDER BY response_time) AS bucket
            FROM jmeter_result_jetty_clean
            WHERE lower(test_group::TEXT) = 'api validation' AND test_threads = 100) AS t
      WHERE bucket <= 19
      GROUP BY response_time
      ORDER BY response_time ASC) TO '/csv/response_time_distribution_jetty_clean_api_validation_100.csv' DELIMITER ',';
COPY (SELECT
        response_time,
        count(*)
      FROM (SELECT
              response_time,
              ntile(20)
              OVER (
                ORDER BY response_time) AS bucket
            FROM jmeter_result_jetty_clean
            WHERE lower(test_group::TEXT) = 'api validation' AND test_threads = 250) AS t
      WHERE bucket <= 19
      GROUP BY response_time
      ORDER BY response_time ASC) TO '/csv/response_time_distribution_jetty_clean_api_validation_250.csv' DELIMITER ',';
COPY (SELECT
        response_time,
        count(*)
      FROM (SELECT
              response_time,
              ntile(20)
              OVER (
                ORDER BY response_time) AS bucket
            FROM jmeter_result_jetty_full
            WHERE lower(test_group::TEXT) = 'api validation' AND test_threads = 100) AS t
      WHERE bucket <= 19
      GROUP BY response_time
      ORDER BY response_time ASC) TO '/csv/response_time_distribution_jetty_full_api_validation_100.csv' DELIMITER ',';
COPY (SELECT
        response_time,
        count(*)
      FROM (SELECT
              response_time,
              ntile(20)
              OVER (
                ORDER BY response_time) AS bucket
            FROM jmeter_result_jetty_full
            WHERE lower(test_group::TEXT) = 'api validation' AND test_threads = 250) AS t
      WHERE bucket <= 19
      GROUP BY response_time
      ORDER BY response_time ASC) TO '/csv/response_time_distribution_jetty_full_api_validation_250.csv' DELIMITER ',';
-------------------------------------------------------
COPY (SELECT
        response_time,
        count(*)
      FROM (SELECT
              response_time,
              ntile(20)
              OVER (
                ORDER BY response_time) AS bucket
            FROM jmeter_result_go_clean
            WHERE lower(test_group :: TEXT) = 'crud' AND test_threads = 100) AS t
      WHERE bucket <= 19
      GROUP BY response_time
      ORDER BY response_time ASC) TO '/csv/response_time_distribution_go_clean_crud_100.csv' DELIMITER ',';
COPY (SELECT
        response_time,
        count(*)
      FROM (SELECT
              response_time,
              ntile(20)
              OVER (
                ORDER BY response_time) AS bucket
            FROM jmeter_result_go_clean
            WHERE lower(test_group::TEXT) = 'crud' AND test_threads = 250) AS t
      WHERE bucket <= 19
      GROUP BY response_time
      ORDER BY response_time ASC) TO '/csv/response_time_distribution_go_clean_crud_250.csv' DELIMITER ',';
COPY (SELECT
        response_time,
        count(*)
      FROM (SELECT
              response_time,
              ntile(20)
              OVER (
                ORDER BY response_time) AS bucket
            FROM jmeter_result_go_full
            WHERE lower(test_group::TEXT) = 'crud' AND test_threads = 100) AS t
      WHERE bucket <= 19
      GROUP BY response_time
      ORDER BY response_time ASC) TO '/csv/response_time_distribution_go_full_crud_100.csv' DELIMITER ',';
COPY (SELECT
        response_time,
        count(*)
      FROM (SELECT
              response_time,
              ntile(20)
              OVER (
                ORDER BY response_time) AS bucket
            FROM jmeter_result_go_full
            WHERE lower(test_group::TEXT) = 'crud' AND test_threads = 250) AS t
      WHERE bucket <= 19
      GROUP BY response_time
      ORDER BY response_time ASC) TO '/csv/response_time_distribution_go_full_crud_250.csv' DELIMITER ',';
-------------------------------------------------------
COPY (SELECT
        response_time,
        count(*)
      FROM (SELECT
              response_time,
              ntile(20)
              OVER (
                ORDER BY response_time) AS bucket
            FROM jmeter_result_tomcat_clean
            WHERE lower(test_group::TEXT) = 'crud' AND test_threads = 100) AS t
      WHERE bucket <= 19
      GROUP BY response_time
      ORDER BY response_time ASC) TO '/csv/response_time_distribution_tomcat_clean_crud_100.csv' DELIMITER ',';
COPY (SELECT
        response_time,
        count(*)
      FROM (SELECT
              response_time,
              ntile(20)
              OVER (
                ORDER BY response_time) AS bucket
            FROM jmeter_result_tomcat_clean
            WHERE lower(test_group::TEXT) = 'crud' AND test_threads = 250) AS t
      WHERE bucket <= 19
      GROUP BY response_time
      ORDER BY response_time ASC) TO '/csv/response_time_distribution_tomcat_clean_crud_250.csv' DELIMITER ',';
COPY (SELECT
        response_time,
        count(*)
      FROM (SELECT
              response_time,
              ntile(20)
              OVER (
                ORDER BY response_time) AS bucket
            FROM jmeter_result_tomcat_full
            WHERE lower(test_group::TEXT) = 'crud' AND test_threads = 100) AS t
      WHERE bucket <= 19
      GROUP BY response_time
      ORDER BY response_time ASC) TO '/csv/response_time_distribution_tomcat_full_crud_100.csv' DELIMITER ',';
COPY (SELECT
        response_time,
        count(*)
      FROM (SELECT
              response_time,
              ntile(20)
              OVER (
                ORDER BY response_time) AS bucket
            FROM jmeter_result_tomcat_full
            WHERE lower(test_group::TEXT) = 'crud' AND test_threads = 250) AS t
      WHERE bucket <= 19
      GROUP BY response_time
      ORDER BY response_time ASC) TO '/csv/response_time_distribution_tomcat_full_crud_250.csv' DELIMITER ',';
-------------------------------------------------------
COPY (SELECT
        response_time,
        count(*)
      FROM (SELECT
              response_time,
              ntile(20)
              OVER (
                ORDER BY response_time) AS bucket
            FROM jmeter_result_jetty_clean
            WHERE lower(test_group::TEXT) = 'crud' AND test_threads = 100) AS t
      WHERE bucket <= 19
      GROUP BY response_time
      ORDER BY response_time ASC) TO '/csv/response_time_distribution_jetty_clean_crud_100.csv' DELIMITER ',';
COPY (SELECT
        response_time,
        count(*)
      FROM (SELECT
              response_time,
              ntile(20)
              OVER (
                ORDER BY response_time) AS bucket
            FROM jmeter_result_jetty_clean
            WHERE lower(test_group::TEXT) = 'crud' AND test_threads = 250) AS t
      WHERE bucket <= 19
      GROUP BY response_time
      ORDER BY response_time ASC) TO '/csv/response_time_distribution_jetty_clean_crud_250.csv' DELIMITER ',';
COPY (SELECT
        response_time,
        count(*)
      FROM (SELECT
              response_time,
              ntile(20)
              OVER (
                ORDER BY response_time) AS bucket
            FROM jmeter_result_jetty_full
            WHERE lower(test_group::TEXT) = 'crud' AND test_threads = 100) AS t
      WHERE bucket <= 19
      GROUP BY response_time
      ORDER BY response_time ASC) TO '/csv/response_time_distribution_jetty_full_crud_100.csv' DELIMITER ',';
COPY (SELECT
        response_time,
        count(*)
      FROM (SELECT
              response_time,
              ntile(20)
              OVER (
                ORDER BY response_time) AS bucket
            FROM jmeter_result_jetty_full
            WHERE lower(test_group::TEXT) = 'crud' AND test_threads = 250) AS t
      WHERE bucket <= 19
      GROUP BY response_time
      ORDER BY response_time ASC) TO '/csv/response_time_distribution_jetty_full_crud_250.csv' DELIMITER ',';
-------------------------------------------------------
COPY (SELECT
        response_time,
        count(*)
      FROM (SELECT
              response_time,
              ntile(20)
              OVER (
                ORDER BY response_time) AS bucket
            FROM jmeter_result_go_clean
            WHERE lower(test_group :: TEXT) = 'all' AND test_threads = 100) AS t
      WHERE bucket <= 19
      GROUP BY response_time
      ORDER BY response_time ASC) TO '/csv/response_time_distribution_go_clean_all_100.csv' DELIMITER ',';
COPY (SELECT
        response_time,
        count(*)
      FROM (SELECT
              response_time,
              ntile(20)
              OVER (
                ORDER BY response_time) AS bucket
            FROM jmeter_result_go_clean
            WHERE lower(test_group::TEXT) = 'all' AND test_threads = 250) AS t
      WHERE bucket <= 19
      GROUP BY response_time
      ORDER BY response_time ASC) TO '/csv/response_time_distribution_go_clean_all_250.csv' DELIMITER ',';
COPY (SELECT
        response_time,
        count(*)
      FROM (SELECT
              response_time,
              ntile(20)
              OVER (
                ORDER BY response_time) AS bucket
            FROM jmeter_result_go_full
            WHERE lower(test_group::TEXT) = 'all' AND test_threads = 100) AS t
      WHERE bucket <= 19
      GROUP BY response_time
      ORDER BY response_time ASC) TO '/csv/response_time_distribution_go_full_all_100.csv' DELIMITER ',';
COPY (SELECT
        response_time,
        count(*)
      FROM (SELECT
              response_time,
              ntile(20)
              OVER (
                ORDER BY response_time) AS bucket
            FROM jmeter_result_go_full
            WHERE lower(test_group::TEXT) = 'all' AND test_threads = 250) AS t
      WHERE bucket <= 19
      GROUP BY response_time
      ORDER BY response_time ASC) TO '/csv/response_time_distribution_go_full_all_250.csv' DELIMITER ',';
-------------------------------------------------------
COPY (SELECT
        response_time,
        count(*)
      FROM (SELECT
              response_time,
              ntile(20)
              OVER (
                ORDER BY response_time) AS bucket
            FROM jmeter_result_tomcat_clean
            WHERE lower(test_group::TEXT) = 'all' AND test_threads = 100) AS t
      WHERE bucket <= 19
      GROUP BY response_time
      ORDER BY response_time ASC) TO '/csv/response_time_distribution_tomcat_clean_all_100.csv' DELIMITER ',';
COPY (SELECT
        response_time,
        count(*)
      FROM (SELECT
              response_time,
              ntile(20)
              OVER (
                ORDER BY response_time) AS bucket
            FROM jmeter_result_tomcat_clean
            WHERE lower(test_group::TEXT) = 'all' AND test_threads = 250) AS t
      WHERE bucket <= 19
      GROUP BY response_time
      ORDER BY response_time ASC) TO '/csv/response_time_distribution_tomcat_clean_all_250.csv' DELIMITER ',';
COPY (SELECT
        response_time,
        count(*)
      FROM (SELECT
              response_time,
              ntile(20)
              OVER (
                ORDER BY response_time) AS bucket
            FROM jmeter_result_tomcat_full
            WHERE lower(test_group::TEXT) = 'all' AND test_threads = 100) AS t
      WHERE bucket <= 19
      GROUP BY response_time
      ORDER BY response_time ASC) TO '/csv/response_time_distribution_tomcat_full_all_100.csv' DELIMITER ',';
COPY (SELECT
        response_time,
        count(*)
      FROM (SELECT
              response_time,
              ntile(20)
              OVER (
                ORDER BY response_time) AS bucket
            FROM jmeter_result_tomcat_full
            WHERE lower(test_group::TEXT) = 'all' AND test_threads = 250) AS t
      WHERE bucket <= 19
      GROUP BY response_time
      ORDER BY response_time ASC) TO '/csv/response_time_distribution_tomcat_full_all_250.csv' DELIMITER ',';
-------------------------------------------------------
COPY (SELECT
        response_time,
        count(*)
      FROM (SELECT
              response_time,
              ntile(20)
              OVER (
                ORDER BY response_time) AS bucket
            FROM jmeter_result_jetty_clean
            WHERE lower(test_group::TEXT) = 'all' AND test_threads = 100) AS t
      WHERE bucket <= 19
      GROUP BY response_time
      ORDER BY response_time ASC) TO '/csv/response_time_distribution_jetty_clean_all_100.csv' DELIMITER ',';
COPY (SELECT
        response_time,
        count(*)
      FROM (SELECT
              response_time,
              ntile(20)
              OVER (
                ORDER BY response_time) AS bucket
            FROM jmeter_result_jetty_clean
            WHERE lower(test_group::TEXT) = 'all' AND test_threads = 250) AS t
      WHERE bucket <= 19
      GROUP BY response_time
      ORDER BY response_time ASC) TO '/csv/response_time_distribution_jetty_clean_all_250.csv' DELIMITER ',';
COPY (SELECT
        response_time,
        count(*)
      FROM (SELECT
              response_time,
              ntile(20)
              OVER (
                ORDER BY response_time) AS bucket
            FROM jmeter_result_jetty_full
            WHERE lower(test_group::TEXT) = 'all' AND test_threads = 100) AS t
      WHERE bucket <= 19
      GROUP BY response_time
      ORDER BY response_time ASC) TO '/csv/response_time_distribution_jetty_full_all_100.csv' DELIMITER ',';
COPY (SELECT
        response_time,
        count(*)
      FROM (SELECT
              response_time,
              ntile(20)
              OVER (
                ORDER BY response_time) AS bucket
            FROM jmeter_result_jetty_full
            WHERE lower(test_group::TEXT) = 'all' AND test_threads = 250) AS t
      WHERE bucket <= 19
      GROUP BY response_time
      ORDER BY response_time ASC) TO '/csv/response_time_distribution_jetty_full_all_250.csv' DELIMITER ',';
-------------------------------------------------------
COPY (SELECT
        response_time,
        count(*)
      FROM (SELECT
              response_time,
              ntile(20)
              OVER (
                ORDER BY response_time) AS bucket
            FROM jmeter_result_go_clean
            WHERE lower(test_group :: TEXT) = 'key validation' AND test_threads = 100) AS t
      WHERE bucket <= 19
      GROUP BY response_time
      ORDER BY response_time ASC) TO '/csv/response_time_distribution_go_clean_key_validation_100.csv' DELIMITER ',';
COPY (SELECT
        response_time,
        count(*)
      FROM (SELECT
              response_time,
              ntile(20)
              OVER (
                ORDER BY response_time) AS bucket
            FROM jmeter_result_go_clean
            WHERE lower(test_group::TEXT) = 'key validation' AND test_threads = 250) AS t
      WHERE bucket <= 19
      GROUP BY response_time
      ORDER BY response_time ASC) TO '/csv/response_time_distribution_go_clean_key_validation_250.csv' DELIMITER ',';
COPY (SELECT
        response_time,
        count(*)
      FROM (SELECT
              response_time,
              ntile(20)
              OVER (
                ORDER BY response_time) AS bucket
            FROM jmeter_result_go_full
            WHERE lower(test_group::TEXT) = 'key validation' AND test_threads = 100) AS t
      WHERE bucket <= 19
      GROUP BY response_time
      ORDER BY response_time ASC) TO '/csv/response_time_distribution_go_full_key_validation_100.csv' DELIMITER ',';
COPY (SELECT
        response_time,
        count(*)
      FROM (SELECT
              response_time,
              ntile(20)
              OVER (
                ORDER BY response_time) AS bucket
            FROM jmeter_result_go_full
            WHERE lower(test_group::TEXT) = 'key validation' AND test_threads = 250) AS t
      WHERE bucket <= 19
      GROUP BY response_time
      ORDER BY response_time ASC) TO '/csv/response_time_distribution_go_full_key_validation_250.csv' DELIMITER ',';
-------------------------------------------------------
COPY (SELECT
        response_time,
        count(*)
      FROM (SELECT
              response_time,
              ntile(20)
              OVER (
                ORDER BY response_time) AS bucket
            FROM jmeter_result_tomcat_clean
            WHERE lower(test_group::TEXT) = 'key validation' AND test_threads = 100) AS t
      WHERE bucket <= 19
      GROUP BY response_time
      ORDER BY
        response_time ASC) TO '/csv/response_time_distribution_tomcat_clean_key_validation_100.csv' DELIMITER ',';
COPY (SELECT
        response_time,
        count(*)
      FROM (SELECT
              response_time,
              ntile(20)
              OVER (
                ORDER BY response_time) AS bucket
            FROM jmeter_result_tomcat_clean
            WHERE lower(test_group::TEXT) = 'key validation' AND test_threads = 250) AS t
      WHERE bucket <= 19
      GROUP BY response_time
      ORDER BY
        response_time ASC) TO '/csv/response_time_distribution_tomcat_clean_key_validation_250.csv' DELIMITER ',';
COPY (SELECT
        response_time,
        count(*)
      FROM (SELECT
              response_time,
              ntile(20)
              OVER (
                ORDER BY response_time) AS bucket
            FROM jmeter_result_tomcat_full
            WHERE lower(test_group::TEXT) = 'key validation' AND test_threads = 100) AS t
      WHERE bucket <= 19
      GROUP BY response_time
      ORDER BY response_time ASC) TO '/csv/response_time_distribution_tomcat_full_key_validation_100.csv' DELIMITER ',';
COPY (SELECT
        response_time,
        count(*)
      FROM (SELECT
              response_time,
              ntile(20)
              OVER (
                ORDER BY response_time) AS bucket
            FROM jmeter_result_tomcat_full
            WHERE lower(test_group::TEXT) = 'key validation' AND test_threads = 250) AS t
      WHERE bucket <= 19
      GROUP BY response_time
      ORDER BY response_time ASC) TO '/csv/response_time_distribution_tomcat_full_key_validation_250.csv' DELIMITER ',';
-------------------------------------------------------
COPY (SELECT
        response_time,
        count(*)
      FROM (SELECT
              response_time,
              ntile(20)
              OVER (
                ORDER BY response_time) AS bucket
            FROM jmeter_result_jetty_clean
            WHERE lower(test_group::TEXT) = 'key validation' AND test_threads = 100) AS t
      WHERE bucket <= 19
      GROUP BY response_time
      ORDER BY response_time ASC) TO '/csv/response_time_distribution_jetty_clean_key_validation_100.csv' DELIMITER ',';
COPY (SELECT
        response_time,
        count(*)
      FROM (SELECT
              response_time,
              ntile(20)
              OVER (
                ORDER BY response_time) AS bucket
            FROM jmeter_result_jetty_clean
            WHERE lower(test_group::TEXT) = 'key validation' AND test_threads = 250) AS t
      WHERE bucket <= 19
      GROUP BY response_time
      ORDER BY response_time ASC) TO '/csv/response_time_distribution_jetty_clean_key_validation_250.csv' DELIMITER ',';
COPY (SELECT
        response_time,
        count(*)
      FROM (SELECT
              response_time,
              ntile(20)
              OVER (
                ORDER BY response_time) AS bucket
            FROM jmeter_result_jetty_full
            WHERE lower(test_group::TEXT) = 'key validation' AND test_threads = 100) AS t
      WHERE bucket <= 19
      GROUP BY response_time
      ORDER BY response_time ASC) TO '/csv/response_time_distribution_jetty_full_key_validation_100.csv' DELIMITER ',';
COPY (SELECT
        response_time,
        count(*)
      FROM (SELECT
              response_time,
              ntile(20)
              OVER (
                ORDER BY response_time) AS bucket
            FROM jmeter_result_jetty_full
            WHERE lower(test_group::TEXT) = 'key validation' AND test_threads = 250) AS t
      WHERE bucket <= 19
      GROUP BY response_time
      ORDER BY response_time ASC) TO '/csv/response_time_distribution_jetty_full_key_validation_250.csv' DELIMITER ',';
