//
//  ConcreteCreator2.swift
//  Factory Method
//
//  Created by Shumakov Dmytro on 29.11.2022.
//

import Foundation

/// Concrete Creators override the factory method in order to change the
/// resulting product's type.
class ConcreteCreator2: Creator {

    /// Note that the signature of the method still uses the abstract product
    /// type, even though the concrete product is actually returned from the
    /// method. This way the Creator can stay independent of concrete product
    /// classes.
    public func factoryMethod() -> Product {
        return ConcreteProduct2()
    }
}
