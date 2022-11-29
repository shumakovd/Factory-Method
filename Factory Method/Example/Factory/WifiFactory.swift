//
//  WifiFactory.swift
//  Factory Method
//
//  Created by Shumakov Dmytro on 29.11.2022.
//

import Foundation

class WifiFactory: ProjectorFactory {

    func createProjector() -> Projector {
        return WifiProjector()
    }
}
