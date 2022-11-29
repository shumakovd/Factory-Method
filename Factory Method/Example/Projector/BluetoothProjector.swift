//
//  BluetoothProjector.swift
//  Factory Method
//
//  Created by Shumakov Dmytro on 29.11.2022.
//

import Foundation

class BluetoothProjector: Projector {

    var currentPage = 0

    func present(info: String) {
        print("Info is presented over Bluetooth: \(info)")
    }

    func update(with page: Int) {
        /// ... scroll page via Bluetooth connection
        /// ...
        currentPage = page
    }
}
