DROP TABLE IF EXISTS jmeter_grouped_by_sec CASCADE;
CREATE TABLE jmeter_grouped_by_sec (
  test_language      TEXT,
  test_type          TEXT,
  seconds_from_start BIGINT,
  test_group         TEST_GROUP,
  test_threads       INTEGER,
  req_per_sec        BIGINT,
  round              NUMERIC,
  PRIMARY KEY (test_language, test_type, seconds_from_start, test_group, test_threads)
);


INSERT INTO jmeter_grouped_by_sec (test_language, test_type, seconds_from_start, test_group, test_threads, req_per_sec, round)
  SELECT
    'TOMCAT' AS test_language,
    'CLEAN'  AS test_type,
    seconds_from_start,
    test_group,
    test_threads,
    count(*) AS req_per_sec,
    round(avg(response_time), 4)
  FROM jmeter_result_tomcat_clean
  WHERE seconds_from_start < 900
  GROUP BY seconds_from_start, test_group, test_threads
  ORDER BY seconds_from_start, test_group, test_threads;

INSERT INTO jmeter_grouped_by_sec (test_language, test_type, seconds_from_start, test_group, test_threads, req_per_sec, round)
  SELECT
    'JETTY' AS test_language,
    'CLEAN'  AS test_type,
    seconds_from_start,
    test_group,
    test_threads,
    count(*) AS req_per_sec,
    round(avg(response_time), 4)
  FROM jmeter_result_jetty_clean
  WHERE seconds_from_start < 900
  GROUP BY seconds_from_start, test_group, test_threads
  ORDER BY seconds_from_start, test_group, test_threads;

INSERT INTO jmeter_grouped_by_sec (test_language, test_type, seconds_from_start, test_group, test_threads, req_per_sec, round)
  SELECT
    'GO' AS test_language,
    'CLEAN'  AS test_type,
    seconds_from_start,
    test_group,
    test_threads,
    count(*) AS req_per_sec,
    round(avg(response_time), 4)
  FROM jmeter_result_go_clean
  WHERE seconds_from_start < 900
  GROUP BY seconds_from_start, test_group, test_threads
  ORDER BY seconds_from_start, test_group, test_threads;

INSERT INTO jmeter_grouped_by_sec (test_language, test_type, seconds_from_start, test_group, test_threads, req_per_sec, round)
  SELECT
    'TOMCAT' AS test_language,
    'FULL'  AS test_type,
    seconds_from_start,
    test_group,
    test_threads,
    count(*) AS req_per_sec,
    round(avg(response_time), 4)
  FROM jmeter_result_tomcat_full
  WHERE seconds_from_start < 900
  GROUP BY seconds_from_start, test_group, test_threads
  ORDER BY seconds_from_start, test_group, test_threads;

INSERT INTO jmeter_grouped_by_sec (test_language, test_type, seconds_from_start, test_group, test_threads, req_per_sec, round)
  SELECT
    'JETTY' AS test_language,
    'FULL'  AS test_type,
    seconds_from_start,
    test_group,
    test_threads,
    count(*) AS req_per_sec,
    round(avg(response_time), 4)
  FROM jmeter_result_jetty_full
  WHERE seconds_from_start < 900
  GROUP BY seconds_from_start, test_group, test_threads
  ORDER BY seconds_from_start, test_group, test_threads;

INSERT INTO jmeter_grouped_by_sec (test_language, test_type, seconds_from_start, test_group, test_threads, req_per_sec, round)
  SELECT
    'GO' AS test_language,
    'FULL'  AS test_type,
    seconds_from_start,
    test_group,
    test_threads,
    count(*) AS req_per_sec,
    round(avg(response_time), 4)
  FROM jmeter_result_go_full
  WHERE seconds_from_start < 900
  GROUP BY seconds_from_start, test_group, test_threads
  ORDER BY seconds_from_start, test_group, test_threads;

