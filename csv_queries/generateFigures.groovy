List<Map> figuresDetails = [
        [
                testGroup  : "api_validation",
                test_type  : "clean",
                description: "test walidacji istnienia klucza API"
        ]
]

List languages = [
        [
                full : 'Tomcat 8',
                short: 'tomcat'
        ],[
                full : 'Jetty 9',
                short: 'jetty'
        ],[
                full : 'Go',
                short: 'go'
        ],
]
int i=1
figuresDetails.each { Map figureDetails ->
    String filename = "5_testy_wydajnosciowe_diagram_${i++}_${figureDetails.test_type}_${figureDetails.testGroup}.tex"
    println filename
    File texFile = new File("../chapters/${filename}")
    texFile.text = ''
    languages.each { Map lang ->
        def reqPerSeqCsv = "requests_per_sec/${lang.short}_${figureDetails.test_type}_${figureDetails.testGroup}.csv"
        def responseTimeDistribution100Csv = "response_time_distribution/${lang.short}_${figureDetails.test_type}_${figureDetails.testGroup}_100.csv"
        def responseTimeDistribution250Csv = "response_time_distribution/${lang.short}_${figureDetails.test_type}_${figureDetails.testGroup}_250.csv"

        def template = """\\pgfplotsset{grid style={dashed}}
\\begin{figure}[!ht]
\\captionsetup[subfigure]{singlelinecheck=off, justification=centering}
\\showcaptionsetup{subfigure}
\\hspace{-2.5cm}
\\begin{subfigure}{0.5\\textwidth}
\\pgfplotstableread[col sep = comma]{csv_queries/requests_per_sec/${reqPerSeqCsv}\\csvdata
\\begin{tikzpicture}
  \\begin{axis}[xmin = 0, xmax=900, ymin = 0, scaled y ticks = base 10:-3, xlabel = {Czas [s]}, ylabel = Liczba żądań, legend pos=south east, ymajorgrids] %TODO miary?
    \\addplot[color=blue,mark=none] table[x index=0, y index=1]{\\csvdata};
    \\addplot[color=green,mark=none] table[x index=0, y index=2]{\\csvdata};
    \\legend{100,250}
  \\end{axis}
\\end{tikzpicture}
\\caption{${lang.full} - liczba żądań obsłużonych przez aplikację w ciągu sekundy}
\\label{fig:${lang.short}_${figureDetails.test_type}_${figureDetails.testGroup}_rps}
\\end{subfigure}

\\hspace{3cm}
\\begin{subfigure}{0.5\\textwidth}
\\pgfplotstableread[col sep = comma]{csv_queries/response_time_distribution/${responseTimeDistribution100Csv}\\csva
\\pgfplotstableread[col sep = comma]{csv_queries/response_time_distribution/${responseTimeDistribution250Csv}\\csvb
\\pgfplotsset{
    /pgfplots/ybar legend/.style={
    /pgfplots/legend image code/.code={\\draw[##1,/tikz/.cd,yshift=-0.25em](0cm,0cm) rectangle(1pt,0.7em);},
   }
}
\\begin{tikzpicture}
  \\begin{axis}[ybar, bar width=0.5, xmin = 0, ymin = 0, scaled y ticks = base 10:-5, xlabel = {Czas odpowiedzi [ms]}, ylabel = {Liczba żądań}, ymajorgrids] %TODO miary?
    \\addplot[color=blue, mark=none, fill=blue] table[x index=0, y index=1]{\\csva};
    \\addplot[color=green, mark=none, fill=green] table[x index=0, y index=1]{\\csvb};
    \\legend{100,250}
  \\end{axis}
\\end{tikzpicture}
\\caption{${lang.full} - rozkład czasów odpowiedzi aplikacji (95\\% odpowiedzi)}
\\label{fig:${lang.short}_${figureDetails.test_type}_${figureDetails.testGroup}_td}
\\end{subfigure}

\\caption{${lang.full} - ${figureDetails.description}}
\\label{fig:${lang.short}_${figureDetails.test_type}_${figureDetails.testGroup}}
\\end{figure}"""
        texFile.append(template)
        texFile.append('\n\n')

    }
    println ""
}
