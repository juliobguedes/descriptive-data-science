# Brazilian Congressman and Congresswoman tweets in 2019

We are using the package `rtweet` and a colaborative list of parliamentarians assembled by [Serenata de Amor](https://serenata.ai/), [Analytics Laboratory](https://www.facebook.com/analytics.ufcg?fref=ts) and other cool people to download our federal representants' tweets in 2019. The code to download it is not in this repository.

The raw data has 72,316 tweets which the API points to 2019. Those tweets were collected in March 22, 2019, and they are in `data/tweets-2019.csv.zip`. The script to download is not in this repository.

## What is in the data

```
Observations: 608
Variables: 19
$ id_parlamentar        <chr> "204554", "204521", "204379", "204560", "204528", "121948",…
$ casa                  <chr> "câmara", "câmara", "câmara", "câmara", "câmara", "câmara",…
$ nome_eleitoral        <chr> "ABÍLIO SANTANA", "ABOU ANNI", "ACÁCIO FAVACHO", "ADOLFO VI…
$ partido               <chr> "PR", "PSL", "PROS", "PSDB", "NOVO", "PP", "PSDB", "PT", "P…
$ UF                    <chr> "BA", "SP", "AP", "BA", "SP", "GO", "MG", "BA", "RS", "RS",…
$ twitter               <chr> "AbilioSantana_", "abouannipv", "FavachoAcacio", "AdolfoVia…
$ seguidores            <dbl> NA, NA, NA, NA, 4652, NA, NA, NA, NA, NA, NA, NA, NA, 3983,…
$ segue                 <dbl> NA, NA, NA, NA, 315, NA, NA, NA, NA, NA, NA, NA, NA, 995, 4…
$ n_proprio             <dbl> 0, 0, 0, 0, 99, 0, 0, 0, 0, 0, 0, 0, NA, 49, 214, NA, 39, 3…
$ n_retweet             <dbl> 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, NA, 1, 30, NA, 4, 100, …
$ engaj_total           <dbl> 0, 0, 0, 0, 7090, 0, 0, 0, 0, 0, 0, 0, NA, 4286, 6852, NA, …
$ engaj_total_proprio   <dbl> 0, 0, 0, 0, 6701, 0, 0, 0, 0, 0, 0, 0, NA, 284, 2239, NA, 1…
$ engaj_total_retweet   <dbl> 0, 0, 0, 0, 389, 0, 0, 0, 0, 0, 0, 0, NA, 4002, 4613, NA, 1…
$ engaj_mediano         <dbl> 0.0, 0.0, 0.0, 0.0, 26.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0…
$ engaj_mediano_proprio <dbl> 0.0, 0.0, 0.0, 0.0, 22.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0…
$ engaj_mediano_retweet <dbl> 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,…
$ engaj_max             <dbl> 0, 0, 0, 0, 1031, 0, 0, 0, 0, 0, 0, 0, NA, 4002, 4227, NA, …
$ engaj_max_proprio     <dbl> 0, 0, 0, 0, 1031, 0, 0, 0, 0, 0, 0, 0, NA, 38, 136, NA, 14,…
$ engaj_max_retweet     <dbl> 0, 0, 0, 0, 99, 0, 0, 0, 0, 0, 0, 0, NA, 4002, 4227, NA, 81…
```

* id_parlamentar  - parliamentarian ID according to the Chamber of Deputies or the Senate APIs.
* casa  - which house the parliamentarian belongs
* nome_eleitoral  - name seen in the ballot box
* partido - party initials
* UF  - which state elected him/her
* twitter - Twitter handle - *NA otherwise*
* seguidores  - Number of Followers. *`NA` if he/she doesnt have an account or didnt tweet in 2019* (reason that we were unable to acquire the data).
* segue - Number of Following. *`NA` if he/she doesnt have an account or didnt tweet in 2019* (reason that we were unable to acquire the data).
* n_proprio - Number of Tweets that are not retweets or retweets with comments.
* n_retweet - Number of Tweets that are retweets or retweets with comments.
* engaj_total - engagement = number of likes + number of retweets. Total = for every tweet available.
* engaj_total_proprio - engagement in tweets that are not retweets or retweets with comments.
* engaj_total_retweet - engagement in retweets or retweets with comments.
* engaj_mediano - median of engagement in all tweets.
* engaj_mediano_proprio - median of engagements in thweets that are not retweets or retweets with comments.
* engaj_mediano_retweet - median of engagements in thweets that are retweets or retweets with comments.
* engaj_max - Maximum engagement in all tweets.
* engaj_max_proprio - Maximum engagement in tweets that are not retweets or retweets with comments.
* engaj_max_retweet - Maximum engagement in tweets that are retweets or tweets with comments.
