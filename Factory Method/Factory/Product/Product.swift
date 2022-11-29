//
//  Product.swift
//  Factory Method
//
//  Created by Shumakov Dmytro on 29.11.2022.
//

import Foundation

/// The Product protocol declares the operations that all concrete products must
/// implement.
protocol Product {

    func operation() -> String
}
