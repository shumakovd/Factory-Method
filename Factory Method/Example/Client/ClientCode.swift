//
//  ClientCode.swift
//  Factory Method
//
//  Created by Shumakov Dmytro on 29.11.2022.
//

import Foundation

class ClientCode {

    private var currentProjector: Projector?

    func present(info: String, with factory: ProjectorFactory) {

        /// Check wheater a client code already present smth...

        guard let projector = currentProjector else {

            /// 'currentProjector' variable is nil. Create a new projector and
            /// start presentation.

            let projector = factory.createProjector()
            projector.present(info: info)
            self.currentProjector = projector
            return
        }

        /// Client code already has a projector. Let's sync pages of the old
        /// projector with a new one.

        self.currentProjector = factory.syncedProjector(with: projector)
        self.currentProjector?.present(info: info)
    }
}
