//
// Lazy
// Copyright © 2023 Space Code. All rights reserved.
//

import Foundation

// MARK: - LazyServiceValue

/// An enumeration representing the lazy service value state.
private enum LazyServiceValue<T> {
    case uninitialized(() -> T)
    case initialized(T)
}

// MARK: - Lazy

/// A generic class for lazily initializing a value.
public class Lazy<T> {
    // MARK: Properties

    /// The internal representation of the lazy value.
    private var _value: LazyServiceValue<T>

    /// The DispatchQueue used for synchronization.
    private let queue = DispatchQueue(label: "com.space-code.lazy")

    // MARK: Initialization

    /// Initializes a `Lazy` instance with a closure for lazy initialization.
    ///
    /// - Parameter initialization: A closure that returns the value to be lazily initialized.
    public init(_ initialization: @escaping () -> T) {
        _value = .uninitialized(initialization)
    }

    // MARK: Internal

    /// Gets the lazily initialized value.
    public var value: T {
        var returnValue: T?

        queue.sync {
            switch self._value {
            case let .uninitialized(initialization):
                let result = initialization()
                self._value = .initialized(result)
                returnValue = result
            case let .initialized(result):
                returnValue = result
            }
        }

        assert(returnValue != nil)

        return returnValue!
    }
}
