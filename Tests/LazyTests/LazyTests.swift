//
// Lazy
// Copyright © 2023 Space Code. All rights reserved.
//

import Lazy
import XCTest

final class LazyTests: XCTestCase {
    // MARK: Tests

    func test_lazyResolution() {
        // given
        let lazy = Lazy<Int> { .zero }

        // when
        let value = lazy.value

        // then
        XCTAssertEqual(value, .zero)
    }

    func test_lazyResolutionOfInitializedInstance() {
        // given
        let lazy = Lazy<Int> { .zero }

        // when
        var value = lazy.value
        value = lazy.value

        // then
        XCTAssertEqual(value, .zero)
    }
}
