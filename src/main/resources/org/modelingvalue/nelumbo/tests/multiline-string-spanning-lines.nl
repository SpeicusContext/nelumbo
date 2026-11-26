// Regression test for the same checkToken fix as multiline-string-assert.nl:
// a VALID string that continues on the next line must simply answer the
// query, also with java -ea. (Was: StringIndexOutOfBoundsException, because
// the token text was looked up within its first line only.)
import nelumbo.strings

String a

a = "eerste regel
tweede regel" ? [(a="eerste regel
tweede regel")][..]

/* A block comment spanning lines exercises the IN_LINE_COMMENT exclusion in
   checkToken (PIT showed that this branch otherwise had no coverage). The query
   afterwards must still answer normally. */
a = "x" ? [(a="x")][..]
