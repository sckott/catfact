context("cat_fact")

test_that("cat_fact works", {
  vcr::use_cassette("cat_fact", {
    aa <- cat_fact()

    expect_is(aa, "list")
    expect_named(aa, c('fact', 'length'))
    expect_is(aa$fact, 'character')
    expect_type(aa$length, 'integer')
  })
})

test_that("cat_fact length works", {
  vcr::use_cassette(name="cat_fact_lengths", {
      expect_lte(cat_fact(30)$length, 30)
      expect_lte(cat_fact(80)$length, 80)
      expect_lte(cat_fact(120)$length, 120)
      expect_lte(cat_fact(300)$length, 300)
    }, 
    match_requests_on = c('method', 'uri', 'query'),
    record = "new_episodes"
  )
})

test_that("cat_fact error behavior", {
  library(vcr)
  use_cassette("cat_fact_zero", {
      aa <- cat_fact(max_length = 0)

      expect_is(aa, "list")
      expect_equal(length(aa), 0)
    }, 
    match_requests_on = c('method', 'uri', 'query'), 
    preserve_exact_body_bytes = TRUE
  )

  expect_error(cat_fact(max_length = 'foobar'))
})

test_that("cat_fact works", {
  name <- "foo_bar"
  vcr::use_cassette(name, {
    aa <- cat_fact()

    expect_is(aa, "list")
    expect_named(aa, c('fact', 'length'))
    expect_is(aa$fact, 'character')
    expect_type(aa$length, 'integer')
  })
})
