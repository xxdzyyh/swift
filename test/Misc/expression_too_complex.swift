// FIXME(integers): new integer protocols change the way + is resolved, which
// breaks this test. <rdar://problem/29956472>
// XFAIL: *

// RUN: %target-typecheck-verify-swift -solver-memory-threshold 4000

var x = [1, 2, 3, 4.5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18 ,19] // expected-error{{expression was too complex to be solved in reasonable time; consider breaking up the expression into distinct sub-expressions}}

// No errors should appear below as a result of the error above.
var y = 10
var z = 10 + 10

class C {}

var c = C()
var d = c
