COPY (SELECT
        tomcat.seconds_from_start,
        jetty.req_per_sec,
        tomcat.req_per_sec,
        go.req_per_sec
      FROM (SELECT *
            FROM jmeter_grouped_by_sec
            WHERE lower(test_language) = 'tomcat'
                  AND lower(test_type) = 'clean'
                  AND lower(test_group :: TEXT) = 'api validation'
                  AND test_threads = 100) tomcat
        JOIN (SELECT *
              FROM jmeter_grouped_by_sec
              WHERE lower(test_language) = 'jetty'
                    AND lower(test_type) = 'clean'
                    AND lower(test_group :: TEXT) = 'api validation'
                    AND test_threads = 100) jetty
          ON jetty.seconds_from_start =
             tomcat.seconds_from_start
        JOIN (SELECT *
              FROM jmeter_grouped_by_sec
              WHERE lower(test_language) = 'go'
                    AND lower(test_type) = 'clean'
                    AND lower(test_group :: TEXT) = 'api validation'
                    AND test_threads = 100) go
          ON jetty.seconds_from_start =
             go.seconds_from_start
      ORDER BY tomcat.seconds_from_start) TO '/csv/test_requests_per_seq.csv' DELIMITER ',';

COPY (SELECT
        coalesce(tomcat.response_time, jetty.response_time, go.response_time),
        tomcat.count,
        jetty.count,
        go.count
      FROM (SELECT
              goi.response_time,
              count(*) AS count
            FROM (SELECT
                    response_time,
                    ntile(20)
                    OVER (
                      ORDER BY response_time) AS bucket
                  FROM jmeter_result_go_clean
                  WHERE lower(test_group :: TEXT) = 'api validation' AND test_threads = 100) goi
            WHERE goi.bucket <= 19
            GROUP BY goi.response_time) AS go
        FULL OUTER JOIN (SELECT
                           ti.response_time,
                           count(*) AS count
                         FROM (SELECT
                                 response_time,
                                 ntile(20)
                                 OVER (
                                   ORDER BY response_time) AS bucket
                               FROM jmeter_result_tomcat_clean
                               WHERE lower(test_group :: TEXT) = 'api validation' AND test_threads = 100) ti
                         WHERE ti.bucket <= 19
                         GROUP BY ti.response_time) AS tomcat ON tomcat.response_time = go.response_time
        FULL OUTER JOIN (SELECT
                           ji.response_time,
                           count(*) AS count
                         FROM (SELECT
                                 response_time,
                                 ntile(20)
                                 OVER (
                                   ORDER BY response_time) AS bucket
                               FROM jmeter_result_jetty_clean
                               WHERE lower(test_group :: TEXT) = 'api validation' AND test_threads = 100) ji
                         WHERE ji.bucket <= 19
                         GROUP BY ji.response_time) AS jetty ON jetty.response_time = go.response_time
      ORDER BY coalesce(tomcat.response_time, jetty.response_time, go.response_time) asc) TO '/csv/test_response_time_distribution.csv' DELIMITER ',';
---------------------------------------


SELECT
  coalesce(tomcat.response_time, jetty.response_time, go.response_time),
  tomcat.count,
  jetty.count,
  go.count
FROM (SELECT
        goi.response_time,
        count(*) AS count
      FROM (SELECT
              response_time,
              ntile(20)
              OVER (
                ORDER BY response_time) AS bucket
            FROM jmeter_result_go_clean
            WHERE lower(test_group :: TEXT) = 'api validation' AND test_threads = 100) goi
      WHERE goi.bucket <= 19
      GROUP BY goi.response_time) AS go
  FULL OUTER JOIN (SELECT
                     ti.response_time,
                     count(*) AS count
                   FROM (SELECT
                           response_time,
                           ntile(20)
                           OVER (
                             ORDER BY response_time) AS bucket
                         FROM jmeter_result_tomcat_clean
                         WHERE lower(test_group :: TEXT) = 'api validation' AND test_threads = 100) ti
                   WHERE ti.bucket <= 19
                   GROUP BY ti.response_time) AS tomcat ON tomcat.response_time = go.response_time
  FULL OUTER JOIN (SELECT
                     ji.response_time,
                     count(*) AS count
                   FROM (SELECT
                           response_time,
                           ntile(20)
                           OVER (
                             ORDER BY response_time) AS bucket
                         FROM jmeter_result_jetty_clean
                         WHERE lower(test_group :: TEXT) = 'api validation' AND test_threads = 100) ji
                   WHERE ji.bucket <= 19
                   GROUP BY ji.response_time) AS jetty ON jetty.response_time = go.response_time
ORDER BY coalesce(tomcat.response_time, jetty.response_time, go.response_time) asc