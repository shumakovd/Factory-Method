//
//  Projector.swift
//  Factory Method
//
//  Created by Shumakov Dmytro on 29.11.2022.
//

import Foundation

protocol Projector {

    /// Abstract projector interface

    var currentPage: Int { get }

    func present(info: String)

    func sync(with projector: Projector)

    func update(with page: Int)
}

extension Projector {

    /// Base implementation of Projector methods

    func sync(with projector: Projector) {
        projector.update(with: currentPage)
    }
}
