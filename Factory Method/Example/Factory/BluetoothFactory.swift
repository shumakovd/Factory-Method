//
//  BluetoothFactory.swift
//  Factory Method
//
//  Created by Shumakov Dmytro on 29.11.2022.
//

import Foundation

class BluetoothFactory: ProjectorFactory {
    
    func createProjector() -> Projector {
        return BluetoothProjector()
    }
}
