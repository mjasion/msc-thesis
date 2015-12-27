List dstatCsv = ['TOMCAT,100,50.63,1935.12,APP,Key Validation,CLEAN',
                 'TOMCAT,250,49.02,2009.8,APP,Key Validation,CLEAN',
                 'JETTY,100,50.61,1949.84,APP,Key Validation,CLEAN',
                 'JETTY,250,45.24,1851.88,APP,Key Validation,CLEAN',
                 'GO,100,39.28,214.6,APP,Key Validation,CLEAN',
                 'GO,250,45.59,234.03,APP,Key Validation,CLEAN',
                 'TOMCAT,100,44.74,167.05,MONGO,Key Validation,CLEAN',
                 'TOMCAT,250,39.64,277.01,MONGO,Key Validation,CLEAN',
                 'JETTY,100,58.65,260.65,MONGO,Key Validation,CLEAN',
                 'JETTY,250,43.34,268.43,MONGO,Key Validation,CLEAN',
                 'GO,100,42.72,302.94,MONGO,Key Validation,CLEAN',
                 'GO,250,41.54,365.98,MONGO,Key Validation,CLEAN',
                 'TOMCAT,100,56.12,1976.99,APP,ALL,CLEAN',
                 'TOMCAT,250,46.62,2063.85,APP,ALL,CLEAN',
                 'JETTY,100,51.55,1944.2,APP,ALL,CLEAN',
                 'JETTY,250,46.04,1600.48,APP,ALL,CLEAN',
                 'GO,100,40.59,223.55,APP,ALL,CLEAN',
                 'GO,250,46.66,244.16,APP,ALL,CLEAN',
                 'TOMCAT,100,55,175.78,MONGO,ALL,CLEAN',
                 'TOMCAT,250,42.89,275.74,MONGO,ALL,CLEAN',
                 'JETTY,100,61.82,248.13,MONGO,ALL,CLEAN',
                 'JETTY,250,48.07,269.2,MONGO,ALL,CLEAN',
                 'GO,100,41.66,305.38,MONGO,ALL,CLEAN',
                 'GO,250,39.77,359.53,MONGO,ALL,CLEAN',
                 'TOMCAT,100,77.5,1882.6,APP,API Validation,CLEAN',
                 'TOMCAT,250,65.73,1926.08,APP,API Validation,CLEAN',
                 'JETTY,100,70.13,2020.03,APP,API Validation,CLEAN',
                 'JETTY,250,59.31,2005.06,APP,API Validation,CLEAN',
                 'GO,100,29.93,211.65,APP,API Validation,CLEAN',
                 'GO,250,31.64,228.72,APP,API Validation,CLEAN',
                 'TOMCAT,100,29.4,151.1,MONGO,API Validation,CLEAN',
                 'TOMCAT,250,22.05,272.9,MONGO,API Validation,CLEAN',
                 'JETTY,100,30.29,301.42,MONGO,API Validation,CLEAN',
                 'JETTY,250,22.55,270.23,MONGO,API Validation,CLEAN',
                 'GO,100,18.92,302.67,MONGO,API Validation,CLEAN',
                 'GO,250,16.84,358.49,MONGO,API Validation,CLEAN',
                 'TOMCAT,100,42.38,1959.11,APP,CRUD,CLEAN',
                 'TOMCAT,250,40.25,2034.83,APP,CRUD,CLEAN',
                 'JETTY,100,36.32,1753.27,APP,CRUD,CLEAN',
                 'JETTY,250,39.6,1605.56,APP,CRUD,CLEAN',
                 'GO,100,33.31,222.13,APP,CRUD,CLEAN',
                 'GO,250,41.36,242.23,APP,CRUD,CLEAN',
                 'TOMCAT,100,59.35,174.04,MONGO,CRUD,CLEAN',
                 'TOMCAT,250,53.36,276.73,MONGO,CRUD,CLEAN',
                 'JETTY,100,59.18,247.87,MONGO,CRUD,CLEAN',
                 'JETTY,250,55.55,269.8,MONGO,CRUD,CLEAN',
                 'GO,100,40.46,303.32,MONGO,CRUD,CLEAN',
                 'GO,250,39.74,361.53,MONGO,CRUD,CLEAN',
                 'TOMCAT,100,44.94,1996.1,APP,Key Validation,FULL',
                 'TOMCAT,250,39.3,2040.71,APP,Key Validation,FULL',
                 'JETTY,100,51.93,2051.5,APP,Key Validation,FULL',
                 'JETTY,250,42.63,2049.01,APP,Key Validation,FULL',
                 'GO,100,29.86,244.53,APP,Key Validation,FULL',
                 'GO,250,34.68,251.53,APP,Key Validation,FULL',
                 'TOMCAT,100,42.32,435.73,MONGO,Key Validation,FULL',
                 'TOMCAT,250,43.57,458.27,MONGO,Key Validation,FULL',
                 'JETTY,100,60.13,437.91,MONGO,Key Validation,FULL',
                 'JETTY,250,40.57,436.32,MONGO,Key Validation,FULL',
                 'GO,100,38.89,181.49,MONGO,Key Validation,FULL',
                 'GO,250,41.61,189.06,MONGO,Key Validation,FULL',
                 'TOMCAT,100,43.92,1641,APP,ALL,FULL',
                 'TOMCAT,250,38.52,2064.93,APP,ALL,FULL',
                 'JETTY,100,37.57,1979.89,APP,ALL,FULL',
                 'JETTY,250,33.75,2031.93,APP,ALL,FULL',
                 'GO,100,28.85,253.25,APP,ALL,FULL',
                 'GO,250,30.64,260.94,APP,ALL,FULL',
                 'TOMCAT,100,57.45,463.62,MONGO,ALL,FULL',
                 'TOMCAT,250,49.17,466.37,MONGO,ALL,FULL',
                 'JETTY,100,58.51,472.62,MONGO,ALL,FULL',
                 'JETTY,250,49.68,469.12,MONGO,ALL,FULL',
                 'GO,100,40.57,309.93,MONGO,ALL,FULL',
                 'GO,250,41.41,314.7,MONGO,ALL,FULL',
                 'TOMCAT,100,74.01,1932.11,APP,API Validation,FULL',
                 'TOMCAT,250,47.96,1965.24,APP,API Validation,FULL',
                 'JETTY,100,81.33,1990.89,APP,API Validation,FULL',
                 'JETTY,250,59.42,1980.65,APP,API Validation,FULL',
                 'GO,100,31.35,241.75,APP,API Validation,FULL',
                 'GO,250,32.38,249.13,APP,API Validation,FULL',
                 'TOMCAT,100,24.54,464.09,MONGO,API Validation,FULL',
                 'TOMCAT,250,14.05,463.1,MONGO,API Validation,FULL',
                 'JETTY,100,33.73,488,MONGO,API Validation,FULL',
                 'JETTY,250,17.44,464.01,MONGO,API Validation,FULL',
                 'GO,100,18.66,141.83,MONGO,API Validation,FULL',
                 'GO,250,19.16,144.53,MONGO,API Validation,FULL',
                 'TOMCAT,100,28.86,1752.04,APP,CRUD,FULL',
                 'TOMCAT,250,27.06,2053.7,APP,CRUD,FULL',
                 'JETTY,100,27.3,1951.18,APP,CRUD,FULL',
                 'JETTY,250,28.24,2081.26,APP,CRUD,FULL',
                 'GO,100,23.9,251.78,APP,CRUD,FULL',
                 'GO,250,23.23,260.53,APP,CRUD,FULL',
                 'TOMCAT,100,54.46,438.29,MONGO,CRUD,FULL',
                 'TOMCAT,250,53.02,449.68,MONGO,CRUD,FULL',
                 'JETTY,100,52.66,441.22,MONGO,CRUD,FULL',
                 'JETTY,250,51.48,442.63,MONGO,CRUD,FULL',
                 'GO,100,37.04,256.85,MONGO,CRUD,FULL',
                 'GO,250,37.27,264.31,MONGO,CRUD,FULL'
]

['CLEAN', 'FULL'].each { String testType ->
    ['API Validation', 'Key Validation', 'CRUD', 'ALL'].each { String testGroup ->
        ['APP', 'MONGO'].each { String server ->
            List<String> tableCsvData = dstatCsv.findAll { String line -> line.contains("$server,$testGroup,$testType") }
            String testGroupShort = testGroup.toLowerCase().split(' ')[0]
            String serverDescription = (server == 'APP' ? 'uruchomiona była aplikacja' : 'uruchomiona była baza danych MongoDB')
            String data = tableCsvData.collect { String line ->
                List<String> cells = line.split(',')
                String lang = cells[0] == 'TOMCAT' ? 'Tomcat 8' : (cells[0] == 'JETTY' ? 'Jetty 9' : 'Go')
                return "$lang       & ${cells[1]}                    & ${cells[2]}                             & ${cells[3]}                          &  \\\\"
            }.join('\n')
            println """
\\begin{table}[!htb]
\\centering
\\caption{Wykorzystanie procesora i pamięci RAM na serwerze, gdzie $serverDescription}
\\label{tab:${server.toLowerCase()}-${testType.toLowerCase()}-${testGroupShort}}
\\begin{tabular}{@{}ccccl@{}}
\\toprule
\\textbf{Język} & \\textbf{Liczba wątków} & \\multicolumn{1}{p{3cm}}{\\textbf{Średnie wykorzystanie CPU (\\%)}} & \\multicolumn{1}{p{3cm}}{\\textbf{Średnie wykorzystanie RAM (MB)}} &  \\\\ \\midrule
$data
\\bottomrule
\\end{tabular}
\\end{table}
"""

        }
    }
}


