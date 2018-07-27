catfact
=======



[![Build Status](https://travis-ci.org/sckott/catfact.svg?branch=master)](https://travis-ci.org/sckott/catfact)

`catfact` package

Get a random cat fact from the Cat Fact API <https://catfact.ninja/>


----

Package to demonstrate using [vcr][] for unit test caching in an R package that uses [httr][].

[vcr][] was originally built with support only for the [crul][] package - we are working on support in `vcr` for both [httr][] and [curl][]

## install


```r
remotes::install_github("sckott/catfact")
```


```r
library(catfact)
```

## get a cat fact


```r
cat_fact()
#> $fact
#> [1] "Cats spend nearly 1/3 of their waking hours cleaning themselves."
#> 
#> $length
#> [1] 64
```


[vcr]: https://github.com/ropensci/vcr
[crul]: https://github.com/ropensci/crul
[httr]: https://github.com/r-lib/httr
[curl]: https://github.com/jeroen/curl
