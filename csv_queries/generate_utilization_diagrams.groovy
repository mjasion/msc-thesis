String data = '''
CLEAN,TOMCAT,100,Key Validation,50.63,1935.12
CLEAN,JETTY,100,Key Validation,50.61,1949.84
CLEAN,GO,100,Key Validation,39.28,214.6
CLEAN,TOMCAT,100,ALL,56.12,1976.99
CLEAN,JETTY,100,ALL,51.55,1944.2
CLEAN,GO,100,ALL,40.59,223.55
CLEAN,TOMCAT,100,API Validation,77.5,1882.6
CLEAN,JETTY,100,API Validation,70.13,2020.03
CLEAN,GO,100,API Validation,29.93,211.65
CLEAN,TOMCAT,100,CRUD,42.38,1959.11
CLEAN,JETTY,100,CRUD,36.32,1753.27
CLEAN,GO,100,CRUD,33.31,222.13
CLEAN,TOMCAT,250,Key Validation,49.02,2009.8
CLEAN,JETTY,250,Key Validation,45.24,1851.88
CLEAN,GO,250,Key Validation,45.59,234.03
CLEAN,TOMCAT,250,ALL,46.62,2063.85
CLEAN,JETTY,250,ALL,46.04,1600.48
CLEAN,GO,250,ALL,46.66,244.16
CLEAN,TOMCAT,250,API Validation,65.73,1926.08
CLEAN,JETTY,250,API Validation,59.31,2005.06
CLEAN,GO,250,API Validation,31.64,228.72
CLEAN,TOMCAT,250,CRUD,40.25,2034.83
CLEAN,JETTY,250,CRUD,39.6,1605.56
CLEAN,GO,250,CRUD,41.36,242.23
FULL,TOMCAT,100,Key Validation,44.94,1996.1
FULL,JETTY,100,Key Validation,51.93,2051.5
FULL,GO,100,Key Validation,29.86,244.53
FULL,TOMCAT,100,ALL,43.92,1641
FULL,JETTY,100,ALL,37.57,1979.89
FULL,GO,100,ALL,28.85,253.25
FULL,TOMCAT,100,API Validation,74.01,1932.11
FULL,JETTY,100,API Validation,81.33,1990.89
FULL,GO,100,API Validation,31.35,241.75
FULL,TOMCAT,100,CRUD,28.86,1752.04
FULL,JETTY,100,CRUD,27.3,1951.18
FULL,GO,100,CRUD,23.9,251.78
FULL,TOMCAT,250,Key Validation,39.3,2040.71
FULL,JETTY,250,Key Validation,42.63,2049.01
FULL,GO,250,Key Validation,34.68,251.53
FULL,TOMCAT,250,ALL,38.52,2064.93
FULL,JETTY,250,ALL,33.75,2031.93
FULL,GO,250,ALL,30.64,260.94
FULL,TOMCAT,250,API Validation,47.96,1965.24
FULL,JETTY,250,API Validation,59.42,1980.65
FULL,GO,250,API Validation,32.38,249.13
FULL,TOMCAT,250,CRUD,27.06,2053.7
FULL,JETTY,250,CRUD,28.24,2081.26
FULL,GO,250,CRUD,23.23,260.53'''


List<Map> datas = data.replaceAll('API Validation', 'Walidacja API')
        .replaceAll('Key Validation', 'Walidacja Cache')
        .replaceAll('ALL', 'Testy równoległe')
        .replaceAll('CRUD', 'Testy CRUD')
        .split('\n')
        .collect { String line ->
    List fields = line.split(',')
    return [
            testType : fields[0],
            lang     : fields[1],
            threads  : fields[2],
            testGroup: fields[3],
            cpu      : fields[4],
            mem      : fields[5],
    ]
}

String getCpuRecords(List<Map> datas, String threads, String testType) {
    Map recordsByLang = datas.findAll { it.threads == threads && it.testType == testType }.groupBy { it.lang }

    return """
\\addplot [blue, fill=blue!50!white] coordinates{ ${
        recordsByLang['TOMCAT'].collect { "(${it.testGroup},${it.cpu})" }.join(' ')
    } } ;
\\addplot [red, fill=red!50!white] coordinates{ ${
        recordsByLang['JETTY'].collect { "(${it.testGroup},${it.cpu})" }.join(' ')
    } } ;
\\addplot [green, fill=green!50!white] coordinates{ ${
        recordsByLang['GO'].collect { "(${it.testGroup},${it.cpu})" }.join(' ')
    } } ;
"""
}

String getMemRecords(List<Map> datas, String threads, String testType) {
    Map recordsByLang = datas.findAll { it.threads == threads && it.testType == testType }.groupBy { it.lang }

    return """
\\addplot [blue, fill=blue!50!white] coordinates{ ${
        recordsByLang['TOMCAT'].collect { "(${it.testGroup},${it.mem})" }.join(' ')
    } } ;
\\addplot [red, fill=red!50!white] coordinates{ ${
        recordsByLang['JETTY'].collect { "(${it.testGroup},${it.mem})" }.join(' ')
    } } ;
\\addplot [green, fill=green!50!white] coordinates{ ${
        recordsByLang['GO'].collect { "(${it.testGroup},${it.mem})" }.join(' ')
    } } ;
"""
}

def printClean(List datas) {
    String testType = 'CLEAN'

    [100, 250].each { int threads ->
        print """

\\begin{figure}[!ht]
\\begin{tikzpicture}
\\begin{axis}[
    ybar,
    width=13cm,
    height=6cm,
    legend style={at={(0.5,-0.25)},
      anchor=north,legend columns=-1},
    ylabel={Wykorzystanie procesora (\\%)},
    symbolic x coords={Walidacja API, Walidacja Cache, Testy CRUD, Testy równoległe},
    xtick=data,
    ymin=0, ymax=100
    ]
${getCpuRecords(datas, threads.toString(), testType)}
\\legend{Tomcat,Jetty,Go}
\\end{axis}
\\end{tikzpicture}
\\caption{Wykorzystanie procesowa przez aplikacje podczas testów z pustą bazą danych - $threads klientów}
\\label{fig:cpu_utilization_${threads}_${testType.toLowerCase()}}
\\end{figure}

"""
    }
}
def printFull(List datas) {
    String testType = 'FULL'

    [100, 250].each { int threads ->
        print """

\\begin{figure}[!ht]
\\begin{tikzpicture}
\\begin{axis}[
    ybar,
    width=13cm,
    height=6cm,
    legend style={at={(0.5,-0.25)},
      anchor=north,legend columns=-1},
    ylabel={Wykorzystanie procesora (\\%)},
    symbolic x coords={Walidacja API, Walidacja Cache, Testy CRUD, Testy równoległe},
    xtick=data,
    ymin=0, ymax=100
    ]
${getCpuRecords(datas, threads.toString(), testType)}
\\legend{Tomcat,Jetty,Go}
\\end{axis}
\\end{tikzpicture}
\\caption{Wykorzystanie procesowa przez aplikacje podczas testów z bazą danych wypełnioną danymi początkowymi - $threads klientów}
\\label{fig:cpu_utilization_${threads}_${testType.toLowerCase()}}
\\end{figure}

"""
    }
}

printClean(datas)
//printFull(datas)
