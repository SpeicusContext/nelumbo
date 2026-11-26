// Regression test (fixed 2026-11-19; was bugs/operator-split-combining-marks-npe.nl).
// An operator token ending in two combining marks must give a parse error,
// not a NullPointerException when the parser splits the token. (Was:
// TokenType.of returned null for the split-off remainder, because a
// combining mark is not a valid token on its own. Fixed by mapping such
// remainders to ERROR tokens.)
J<͍͍
