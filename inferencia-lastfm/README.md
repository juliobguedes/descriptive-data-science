# Padrões de consumo de música no lastfm

Dados coletados por Andryw Marques para fazer [esse estudo](http://www.ppgia.pucpr.br/ismir2013/wp-content/uploads/2013/09/257_Paper.pdf). Detalhes sobre a coleta no artigo.

Cada dado é um usuário do lastfm descrito segundo os artistas que ele escutou 5x ou mais durante 6 meses em 2012. Durante esse tempo um artista é novo se ele não foi escutando antes desses 6 meses, e antigo se já foi escutado antes. 

## As principais variáveis

Há 11,989 usuários.

As principais variáveis são: 
```
  * user           <chr> Nome do usuário
  * ecletic        <dbl> Quão eclético o usuário é, em uma medida inventada por Andryw.
  * media_pop      <dbl> Média do log10 da popularidade dos artistas escutados por esse usuário
  * mediana_pop    <dbl> Mediana do mesmo
  * dp_pop         <dbl> Desvio padrão do mesmo
  * news           <dbl> Quantos artistas novos foram escutados durante os 6 meses
  * old            <dbl> Quantos artistas já conhecidos foram escutados durante os 6 meses
```