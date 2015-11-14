COPY (SELECT
        t250.seconds_from_start,
        t100.req_per_sec,
        t250.req_per_sec
      FROM (SELECT *
            FROM jmeter_grouped_by_sec
            WHERE test_language = 'TOMCAT'
                  AND test_type = 'CLEAN'
                  AND test_group = 'API Validation' AND test_threads = 250) t250
        JOIN (SELECT *
              FROM jmeter_grouped_by_sec
              WHERE test_language = 'TOMCAT'
                    AND test_type = 'CLEAN'
                    AND test_group = 'API Validation' AND test_threads = 100) t100
          ON t100.seconds_from_start =
             t250.seconds_from_start) TO '/csv/tomcat_clean_api_validation_requests_per_seq.csv'DELIMITER ',' ;
COPY (SELECT
        t250.seconds_from_start,
        t100.req_per_sec,
        t250.req_per_sec
      FROM (SELECT *
            FROM jmeter_grouped_by_sec
            WHERE test_language = 'TOMCAT'
                  AND test_type = 'FULL'
                  AND test_group = 'API Validation' AND test_threads = 250) t250
        JOIN (SELECT *
              FROM jmeter_grouped_by_sec
              WHERE test_language = 'TOMCAT'
                    AND test_type = 'FULL'
                    AND test_group = 'API Validation' AND test_threads = 100) t100
          ON t100.seconds_from_start =
             t250.seconds_from_start) TO '/csv/tomcat_full_api_validation_requests_per_seq.csv' DELIMITER ',' ;