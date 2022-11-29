//
//  ProjectorFactory.swift
//  Factory Method
//
//  Created by Shumakov Dmytro on 29.11.2022.
//

import Foundation

protocol ProjectorFactory {
    //
    func createProjector() -> Projector
    func syncedProjector(with projector: Projector) -> Projector
}

extension ProjectorFactory {

    /// Base implementation of ProjectorFactory
    func syncedProjector(with projector: Projector) -> Projector {

        /// Every instance creates an own projector
        let newProjector = createProjector()

        /// sync projectors
        newProjector.sync(with: projector)

        return newProjector
    }
}
