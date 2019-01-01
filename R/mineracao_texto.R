install.packages("tm")
library(tm)
#arquivos permitidos para minerar com tm
getSources()
#formatos a ler
getReaders()
#criação do corpus (corpus volátil ou persistente)
corpus = VCorpus(DirSource("C:/Users/vinif/Desktop/CursoDataScience/dados/corpus", encoding = "UTF-8"),readerControl = list(reader=readPlain,language = "eng"))
#inspeção do corpus
inspect(corpus)
inspect(corpus[1:100])          
meta(corpus[[1]])
inspect(corpus[[2]])
as.character(corpus[[2]])
as.character(corpus[[2]])[1]

#remoção de stopwords, espaços, pontuações e números
corpus = tm_map(corpus, removeWords, stopwords("english"))
corpus = tm_map(corpus, stripWhitespace)
corpus = tm_map(corpus, removePunctuation)
corpus = tm_map(corpus, removeNumbers)

#nuvem de palavras
install.packages("wordcloud")
library(wordcloud)
wordcloud(corpus, max.words=100, radom.order=T, colors=rainbow(8), rot.per=0.5, use.r.layout=T)

#matriz de termos frequentes
freq = TermDocumentMatrix(corpus)
matriz = as.matrix(freq)
matriz = sort(rowSums(matriz), decreasing=T)
matriz = data.frame(word=names(matriz), freq=matriz)
matriz
head(matriz, n=100)