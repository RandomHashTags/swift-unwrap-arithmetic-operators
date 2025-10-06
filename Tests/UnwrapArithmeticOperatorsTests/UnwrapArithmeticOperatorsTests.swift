
import Testing
@testable import UnwrapArithmeticOperators

@Test
func example() {
    #expect(1 + 1 == 2)
    #expect(1 +! 1 == 2)
    #expect(1 + 1 +! 1 +! 1 == 4)

    var test = 1
    test +=! 1
    #expect(test == 2)

    #expect(1 - 1 == 0)
    #expect(1 -! 1 == 0)
    #expect(1 - 1 -! 1 -! 1 == -2)

    test -=! 2
    #expect(test == 0)
}
