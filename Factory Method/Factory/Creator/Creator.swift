//
//  Creator.swift
//  Factory Method
//
//  Created by Shumakov Dmytro on 29.11.2022.
//

import Foundation


/// The Creator protocol declares the factory method that's supposed to return a
/// new object of a Product class. The Creator's subclasses usually provide the
/// implementation of this method.
protocol Creator {
    
    /// Note that the Creator may also provide some default implementation of
    /// the factory method.
    func factoryMethod() -> Product
    
    /// Also note that, despite its name, the Creator's primary responsibility
    /// is not creating products. Usually, it contains some core business logic
    /// that relies on Product objects, returned by the factory method.
    /// Subclasses can indirectly change that business logic by overriding the
    /// factory method and returning a different type of product from it.
    func someOperation() -> String
}

/// This extension implements the default behavior of the Creator. This behavior
/// can be overridden in subclasses.
extension Creator {

    func someOperation() -> String {
        // Call the factory method to create a Product object.
        let product = factoryMethod()

        // Now, use the product.
        return "Creator: The same creator's code has just worked with " + product.operation()
    }
}
