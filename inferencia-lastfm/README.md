# Padrões de consumo de música no lastfm

Dados coletados por Andryw Marques para fazer [esse estudo](http://www.ppgia.pucpr.br/ismir2013/wp-content/uploads/2013/09/257_Paper.pdf). Detalhes sobre a coleta no artigo.

Data collected by Andryw Marques to [this study](http://www.ppgia.pucpr.br/ismir2013/wp-content/uploads/2013/09/257_Paper.pdf). Details about how the data was collected it in the article.

Each data is a lastfm user described as the artists he/she listened 5 times or more during 6 months in 2012. During this time, an artist is new if he/she was not listened before in the 6 months, otherwise its old.

## The data

There are 11,989 users.

The main features are
```
  * user           <chr> Username
  * ecletic        <dbl> How ecletic the user is, a measure proposed by Andryw.
  * media_pop      <dbl> log10 average of the listened artists popularity.
  * mediana_pop    <dbl> median of the same.
  * dp_pop         <dbl> standard deviation of the same.
  * news           <dbl> How many new artists were listened during the 6 months.
  * old            <dbl> How many old artists were listened during the 6 months.
```