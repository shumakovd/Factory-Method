//
//  ConcreteProduct1.swift
//  Factory Method
//
//  Created by Shumakov Dmytro on 29.11.2022.
//

import Foundation

/// Concrete Products provide various implementations of the Product protocol.
class ConcreteProduct1: Product {

    func operation() -> String {
        return "{Result of the ConcreteProduct1}"
    }
}
