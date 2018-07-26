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
