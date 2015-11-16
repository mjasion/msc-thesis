COPY (SELECT
        t250.seconds_from_start,
        t100.req_per_sec,
        t250.req_per_sec
      FROM (SELECT *
            FROM jmeter_grouped_by_sec
            WHERE lower(test_language) = 'tomcat'
                  AND lower(test_type) = 'clean'
                  AND lower(test_group :: TEXT) = 'api validation'
                  AND test_threads = 250) t250
        JOIN (SELECT *
              FROM jmeter_grouped_by_sec
              WHERE lower(test_language) = 'tomcat'
                    AND lower(test_type) = 'clean'
                    AND lower(test_group :: TEXT) = 'api validation'
                    AND test_threads = 100) t100
          ON t100.seconds_from_start =
             t250.seconds_from_start
      ORDER BY t250.seconds_from_start) TO '/csv/tomcat_clean_api_validation_requests_per_seq.csv' DELIMITER ',';
COPY (SELECT
        t250.seconds_from_start,
        t100.req_per_sec,
        t250.req_per_sec
      FROM (SELECT *
            FROM jmeter_grouped_by_sec
            WHERE lower(test_language) = 'tomcat'
                  AND lower(test_type) = 'full'
                  AND lower(test_group :: TEXT) = 'api validation'
                  AND test_threads = 250) t250
        JOIN (SELECT *
              FROM jmeter_grouped_by_sec
              WHERE lower(test_language) = 'tomcat'
                    AND lower(test_type) = 'full'
                    AND lower(test_group :: TEXT) = 'api validation'
                    AND test_threads = 100) t100
          ON t100.seconds_from_start =
             t250.seconds_from_start
      ORDER BY t250.seconds_from_start) TO '/csv/tomcat_full_api_validation_requests_per_seq.csv' DELIMITER ',';

COPY (SELECT
        t250.seconds_from_start,
        t100.req_per_sec,
        t250.req_per_sec
      FROM (SELECT *
            FROM jmeter_grouped_by_sec
            WHERE lower(test_language) = 'jetty'
                  AND lower(test_type) = 'clean'
                  AND lower(test_group :: TEXT) = 'api validation'
                  AND test_threads = 250) t250
        JOIN (SELECT *
              FROM jmeter_grouped_by_sec
              WHERE lower(test_language) = 'jetty'
                    AND lower(test_type) = 'clean'
                    AND lower(test_group :: TEXT) = 'api validation'
                    AND test_threads = 100) t100
          ON t100.seconds_from_start =
             t250.seconds_from_start
      ORDER BY t250.seconds_from_start) TO '/csv/jetty_clean_api_validation_requests_per_seq.csv' DELIMITER ',';
COPY (SELECT
        t250.seconds_from_start,
        t100.req_per_sec,
        t250.req_per_sec
      FROM (SELECT *
            FROM jmeter_grouped_by_sec
            WHERE lower(test_language) = 'jetty'
                  AND lower(test_type) = 'full'
                  AND lower(test_group :: TEXT) = 'api validation'
                  AND test_threads = 250) t250
        JOIN (SELECT *
              FROM jmeter_grouped_by_sec
              WHERE lower(test_language) = 'jetty'
                    AND lower(test_type) = 'full'
                    AND lower(test_group :: TEXT) = 'api validation'
                    AND test_threads = 100) t100
          ON t100.seconds_from_start =
             t250.seconds_from_start
      ORDER BY t250.seconds_from_start) TO '/csv/jetty_full_api_validation_requests_per_seq.csv' DELIMITER ',';

COPY (SELECT
        t250.seconds_from_start,
        t100.req_per_sec,
        t250.req_per_sec
      FROM (SELECT *
            FROM jmeter_grouped_by_sec
            WHERE lower(test_language) = 'go'
                  AND lower(test_type) = 'clean'
                  AND lower(test_group :: TEXT) = 'api validation'
                  AND test_threads = 250) t250
        JOIN (SELECT *
              FROM jmeter_grouped_by_sec
              WHERE lower(test_language) = 'go'
                    AND lower(test_type) = 'clean'
                    AND lower(test_group :: TEXT) = 'api validation'
                    AND test_threads = 100) t100
          ON t100.seconds_from_start =
             t250.seconds_from_start
      ORDER BY t250.seconds_from_start) TO '/csv/go_clean_api_validation_requests_per_seq.csv' DELIMITER ',';
COPY (SELECT
        t250.seconds_from_start,
        t100.req_per_sec,
        t250.req_per_sec
      FROM (SELECT *
            FROM jmeter_grouped_by_sec
            WHERE lower(test_language) = 'go'
                  AND lower(test_type) = 'full'
                  AND lower(test_group :: TEXT) = 'api validation'
                  AND test_threads = 250) t250
        JOIN (SELECT *
              FROM jmeter_grouped_by_sec
              WHERE lower(test_language) = 'go'
                    AND lower(test_type) = 'full'
                    AND lower(test_group :: TEXT) = 'api validation'
                    AND test_threads = 100) t100
          ON t100.seconds_from_start =
             t250.seconds_from_start
      ORDER BY t250.seconds_from_start) TO '/csv/go_full_api_validation_requests_per_seq.csv' DELIMITER ',';

-- ----------------------------------------------------------------------------------------
COPY (SELECT
        t250.seconds_from_start,
        t100.req_per_sec,
        t250.req_per_sec
      FROM (SELECT *
            FROM jmeter_grouped_by_sec
            WHERE lower(test_language) = 'tomcat'
                  AND lower(test_type) = 'clean'
                  AND lower(test_group :: TEXT) = 'key validation'
                  AND test_threads = 250) t250
        JOIN (SELECT *
              FROM jmeter_grouped_by_sec
              WHERE lower(test_language) = 'tomcat'
                    AND lower(test_type) = 'clean'
                    AND lower(test_group :: TEXT) = 'key validation'
                    AND test_threads = 100) t100
          ON t100.seconds_from_start =
             t250.seconds_from_start
      ORDER BY t250.seconds_from_start) TO '/csv/tomcat_clean_key_validation_requests_per_seq.csv' DELIMITER ',';
COPY (SELECT
        t250.seconds_from_start,
        t100.req_per_sec,
        t250.req_per_sec
      FROM (SELECT *
            FROM jmeter_grouped_by_sec
            WHERE lower(test_language) = 'tomcat'
                  AND lower(test_type) = 'full'
                  AND lower(test_group :: TEXT) = 'key validation'
                  AND test_threads = 250) t250
        JOIN (SELECT *
              FROM jmeter_grouped_by_sec
              WHERE lower(test_language) = 'tomcat'
                    AND lower(test_type) = 'full'
                    AND lower(test_group :: TEXT) = 'key validation'
                    AND test_threads = 100) t100
          ON t100.seconds_from_start =
             t250.seconds_from_start
      ORDER BY t250.seconds_from_start) TO '/csv/tomcat_full_key_validation_requests_per_seq.csv' DELIMITER ',';

COPY (SELECT
        t250.seconds_from_start,
        t100.req_per_sec,
        t250.req_per_sec
      FROM (SELECT *
            FROM jmeter_grouped_by_sec
            WHERE lower(test_language) = 'jetty'
                  AND lower(test_type) = 'clean'
                  AND lower(test_group :: TEXT) = 'key validation'
                  AND test_threads = 250) t250
        JOIN (SELECT *
              FROM jmeter_grouped_by_sec
              WHERE lower(test_language) = 'jetty'
                    AND lower(test_type) = 'clean'
                    AND lower(test_group :: TEXT) = 'key validation'
                    AND test_threads = 100) t100
          ON t100.seconds_from_start =
             t250.seconds_from_start
      ORDER BY t250.seconds_from_start) TO '/csv/jetty_clean_key_validation_requests_per_seq.csv' DELIMITER ',';
COPY (SELECT
        t250.seconds_from_start,
        t100.req_per_sec,
        t250.req_per_sec
      FROM (SELECT *
            FROM jmeter_grouped_by_sec
            WHERE lower(test_language) = 'jetty'
                  AND lower(test_type) = 'full'
                  AND lower(test_group :: TEXT) = 'key validation'
                  AND test_threads = 250) t250
        JOIN (SELECT *
              FROM jmeter_grouped_by_sec
              WHERE lower(test_language) = 'jetty'
                    AND lower(test_type) = 'full'
                    AND lower(test_group :: TEXT) = 'key validation'
                    AND test_threads = 100) t100
          ON t100.seconds_from_start =
             t250.seconds_from_start
      ORDER BY t250.seconds_from_start) TO '/csv/jetty_full_key_validation_requests_per_seq.csv' DELIMITER ',';

COPY (SELECT
        t250.seconds_from_start,
        t100.req_per_sec,
        t250.req_per_sec
      FROM (SELECT *
            FROM jmeter_grouped_by_sec
            WHERE lower(test_language) = 'go'
                  AND lower(test_type) = 'clean'
                  AND lower(test_group :: TEXT) = 'key validation'
                  AND test_threads = 250) t250
        JOIN (SELECT *
              FROM jmeter_grouped_by_sec
              WHERE lower(test_language) = 'go'
                    AND lower(test_type) = 'clean'
                    AND lower(test_group :: TEXT) = 'key validation'
                    AND test_threads = 100) t100
          ON t100.seconds_from_start =
             t250.seconds_from_start
      ORDER BY t250.seconds_from_start) TO '/csv/go_clean_key_validation_requests_per_seq.csv' DELIMITER ',';
COPY (SELECT
        t250.seconds_from_start,
        t100.req_per_sec,
        t250.req_per_sec
      FROM (SELECT *
            FROM jmeter_grouped_by_sec
            WHERE lower(test_language) = 'go'
                  AND lower(test_type) = 'full'
                  AND lower(test_group :: TEXT) = 'key validation'
                  AND test_threads = 250) t250
        JOIN (SELECT *
              FROM jmeter_grouped_by_sec
              WHERE lower(test_language) = 'go'
                    AND lower(test_type) = 'full'
                    AND lower(test_group :: TEXT) = 'key validation'
                    AND test_threads = 100) t100
          ON t100.seconds_from_start =
             t250.seconds_from_start
      ORDER BY t250.seconds_from_start) TO '/csv/go_full_key_validation_requests_per_seq.csv' DELIMITER ',';

-- ----------------------------------------------------------------------------------------
COPY (SELECT
        t250.seconds_from_start,
        t100.req_per_sec,
        t250.req_per_sec
      FROM (SELECT *
            FROM jmeter_grouped_by_sec
            WHERE lower(test_language) = 'tomcat'
                  AND lower(test_type) = 'clean'
                  AND lower(test_group :: TEXT) = 'all'
                  AND test_threads = 250) t250
        JOIN (SELECT *
              FROM jmeter_grouped_by_sec
              WHERE lower(test_language) = 'tomcat'
                    AND lower(test_type) = 'clean'
                    AND lower(test_group :: TEXT) = 'all'
                    AND test_threads = 100) t100
          ON t100.seconds_from_start =
             t250.seconds_from_start
      ORDER BY t250.seconds_from_start) TO '/csv/tomcat_clean_all_requests_per_seq.csv' DELIMITER ',';
COPY (SELECT
        t250.seconds_from_start,
        t100.req_per_sec,
        t250.req_per_sec
      FROM (SELECT *
            FROM jmeter_grouped_by_sec
            WHERE lower(test_language) = 'tomcat'
                  AND lower(test_type) = 'full'
                  AND lower(test_group :: TEXT) = 'all'
                  AND test_threads = 250) t250
        JOIN (SELECT *
              FROM jmeter_grouped_by_sec
              WHERE lower(test_language) = 'tomcat'
                    AND lower(test_type) = 'full'
                    AND lower(test_group :: TEXT) = 'all'
                    AND test_threads = 100) t100
          ON t100.seconds_from_start =
             t250.seconds_from_start
      ORDER BY t250.seconds_from_start) TO '/csv/tomcat_full_all_requests_per_seq.csv' DELIMITER ',';

COPY (SELECT
        t250.seconds_from_start,
        t100.req_per_sec,
        t250.req_per_sec
      FROM (SELECT *
            FROM jmeter_grouped_by_sec
            WHERE lower(test_language) = 'jetty'
                  AND lower(test_type) = 'clean'
                  AND lower(test_group :: TEXT) = 'all'
                  AND test_threads = 250) t250
        JOIN (SELECT *
              FROM jmeter_grouped_by_sec
              WHERE lower(test_language) = 'jetty'
                    AND lower(test_type) = 'clean'
                    AND lower(test_group :: TEXT) = 'all'
                    AND test_threads = 100) t100
          ON t100.seconds_from_start =
             t250.seconds_from_start
      ORDER BY t250.seconds_from_start) TO '/csv/jetty_clean_all_requests_per_seq.csv' DELIMITER ',';
COPY (SELECT
        t250.seconds_from_start,
        t100.req_per_sec,
        t250.req_per_sec
      FROM (SELECT *
            FROM jmeter_grouped_by_sec
            WHERE lower(test_language) = 'jetty'
                  AND lower(test_type) = 'full'
                  AND lower(test_group :: TEXT) = 'all'
                  AND test_threads = 250) t250
        JOIN (SELECT *
              FROM jmeter_grouped_by_sec
              WHERE lower(test_language) = 'jetty'
                    AND lower(test_type) = 'full'
                    AND lower(test_group :: TEXT) = 'all'
                    AND test_threads = 100) t100
          ON t100.seconds_from_start =
             t250.seconds_from_start
      ORDER BY t250.seconds_from_start) TO '/csv/jetty_full_all_requests_per_seq.csv' DELIMITER ',';

COPY (SELECT
        t250.seconds_from_start,
        t100.req_per_sec,
        t250.req_per_sec
      FROM (SELECT *
            FROM jmeter_grouped_by_sec
            WHERE lower(test_language) = 'go'
                  AND lower(test_type) = 'clean'
                  AND lower(test_group :: TEXT) = 'all'
                  AND test_threads = 250) t250
        JOIN (SELECT *
              FROM jmeter_grouped_by_sec
              WHERE lower(test_language) = 'go'
                    AND lower(test_type) = 'clean'
                    AND lower(test_group :: TEXT) = 'all'
                    AND test_threads = 100) t100
          ON t100.seconds_from_start =
             t250.seconds_from_start
      ORDER BY t250.seconds_from_start) TO '/csv/go_clean_all_requests_per_seq.csv' DELIMITER ',';
COPY (SELECT
        t250.seconds_from_start,
        t100.req_per_sec,
        t250.req_per_sec
      FROM (SELECT *
            FROM jmeter_grouped_by_sec
            WHERE lower(test_language) = 'go'
                  AND lower(test_type) = 'full'
                  AND lower(test_group :: TEXT) = 'all'
                  AND test_threads = 250) t250
        JOIN (SELECT *
              FROM jmeter_grouped_by_sec
              WHERE lower(test_language) = 'go'
                    AND lower(test_type) = 'full'
                    AND lower(test_group :: TEXT) = 'all'
                    AND test_threads = 100) t100
          ON t100.seconds_from_start =
             t250.seconds_from_start
      ORDER BY t250.seconds_from_start) TO '/csv/go_full_all_requests_per_seq.csv' DELIMITER ',';

-- ----------------------------------------------------------------------------------------
COPY (SELECT
        t250.seconds_from_start,
        t100.req_per_sec,
        t250.req_per_sec
      FROM (SELECT *
            FROM jmeter_grouped_by_sec
            WHERE lower(test_language) = 'tomcat'
                  AND lower(test_type) = 'clean'
                  AND lower(test_group :: TEXT) = 'crud'
                  AND test_threads = 250) t250
        JOIN (SELECT *
              FROM jmeter_grouped_by_sec
              WHERE lower(test_language) = 'tomcat'
                    AND lower(test_type) = 'clean'
                    AND lower(test_group :: TEXT) = 'crud'
                    AND test_threads = 100) t100
          ON t100.seconds_from_start =
             t250.seconds_from_start
      ORDER BY t250.seconds_from_start) TO '/csv/tomcat_clean_crud_requests_per_seq.csv' DELIMITER ',';
COPY (SELECT
        t250.seconds_from_start,
        t100.req_per_sec,
        t250.req_per_sec
      FROM (SELECT *
            FROM jmeter_grouped_by_sec
            WHERE lower(test_language) = 'tomcat'
                  AND lower(test_type) = 'full'
                  AND lower(test_group :: TEXT) = 'crud'
                  AND test_threads = 250) t250
        JOIN (SELECT *
              FROM jmeter_grouped_by_sec
              WHERE lower(test_language) = 'tomcat'
                    AND lower(test_type) = 'full'
                    AND lower(test_group :: TEXT) = 'crud'
                    AND test_threads = 100) t100
          ON t100.seconds_from_start =
             t250.seconds_from_start
      ORDER BY t250.seconds_from_start) TO '/csv/tomcat_full_crud_requests_per_seq.csv' DELIMITER ',';

COPY (SELECT
        t250.seconds_from_start,
        t100.req_per_sec,
        t250.req_per_sec
      FROM (SELECT *
            FROM jmeter_grouped_by_sec
            WHERE lower(test_language) = 'jetty'
                  AND lower(test_type) = 'clean'
                  AND lower(test_group :: TEXT) = 'crud'
                  AND test_threads = 250) t250
        JOIN (SELECT *
              FROM jmeter_grouped_by_sec
              WHERE lower(test_language) = 'jetty'
                    AND lower(test_type) = 'clean'
                    AND lower(test_group :: TEXT) = 'crud'
                    AND test_threads = 100) t100
          ON t100.seconds_from_start =
             t250.seconds_from_start
      ORDER BY t250.seconds_from_start) TO '/csv/jetty_clean_crud_requests_per_seq.csv' DELIMITER ',';
COPY (SELECT
        t250.seconds_from_start,
        t100.req_per_sec,
        t250.req_per_sec
      FROM (SELECT *
            FROM jmeter_grouped_by_sec
            WHERE lower(test_language) = 'jetty'
                  AND lower(test_type) = 'full'
                  AND lower(test_group :: TEXT) = 'crud'
                  AND test_threads = 250) t250
        JOIN (SELECT *
              FROM jmeter_grouped_by_sec
              WHERE lower(test_language) = 'jetty'
                    AND lower(test_type) = 'full'
                    AND lower(test_group :: TEXT) = 'crud'
                    AND test_threads = 100) t100
          ON t100.seconds_from_start =
             t250.seconds_from_start
      ORDER BY t250.seconds_from_start) TO '/csv/jetty_full_crud_requests_per_seq.csv' DELIMITER ',';

COPY (SELECT
        t250.seconds_from_start,
        t100.req_per_sec,
        t250.req_per_sec
      FROM (SELECT *
            FROM jmeter_grouped_by_sec
            WHERE lower(test_language) = 'go'
                  AND lower(test_type) = 'clean'
                  AND lower(test_group :: TEXT) = 'crud'
                  AND test_threads = 250) t250
        JOIN (SELECT *
              FROM jmeter_grouped_by_sec
              WHERE lower(test_language) = 'go'
                    AND lower(test_type) = 'clean'
                    AND lower(test_group :: TEXT) = 'crud'
                    AND test_threads = 100) t100
          ON t100.seconds_from_start =
             t250.seconds_from_start
      ORDER BY t250.seconds_from_start) TO '/csv/go_clean_crud_requests_per_seq.csv' DELIMITER ',';
COPY (SELECT
        t250.seconds_from_start,
        t100.req_per_sec,
        t250.req_per_sec
      FROM (SELECT *
            FROM jmeter_grouped_by_sec
            WHERE lower(test_language) = 'go'
                  AND lower(test_type) = 'full'
                  AND lower(test_group :: TEXT) = 'crud'
                  AND test_threads = 250) t250
        JOIN (SELECT *
              FROM jmeter_grouped_by_sec
              WHERE lower(test_language) = 'go'
                    AND lower(test_type) = 'full'
                    AND lower(test_group :: TEXT) = 'crud'
                    AND test_threads = 100) t100
          ON t100.seconds_from_start =
             t250.seconds_from_start
      ORDER BY t250.seconds_from_start) TO '/csv/go_full_crud_requests_per_seq.csv' DELIMITER ',';

-- ----------------------------------------------------------------------------------------
