// Regression test (fixed 2026-11-19; was bugs/multiline-string-assert.nl).
// An unclosed string quote must give parse diagnostics, not a
// StringIndexOutOfBoundsException from checkToken (with java -ea).
// (Was: checkToken looked the token text up within its first line only,
// which fails for any token that spans lines. Fixed by checking the text
// across the joined lines.)
import nelumbo.strings

String a

a = "abc
a = "x" ?
