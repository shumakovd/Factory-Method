//
//  FactoryVC.swift
//  Factory Method
//
//  Created by Shumakov Dmytro on 29.11.2022.
//

import UIKit
import Foundation

class FactoryVC: UIViewController {
    
    // MARK: - IBOutlets
            
    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        testFactoryMethodConceptual()
        testFactoryMethodRealWorld()
    }
    
    // MARK: - Methods
    
    func testFactoryMethodConceptual() {

        /// The Application picks a creator's type depending on the
        /// configuration or environment.
        print("App: Launched with the ConcreteCreator1.")
        Client.someClientCode(creator: ConcreteCreator1())

        print("\nApp: Launched with the ConcreteCreator2.")
        Client.someClientCode(creator: ConcreteCreator2())
    }
    
    func testFactoryMethodRealWorld() {
        
        let info = "Very important info of the presentation"
        
        let clientCode = ClientCode()
        
        /// Present info over WiFi
        clientCode.present(info: info, with: WifiFactory())
        
        /// Present info over Bluetooth
        clientCode.present(info: info, with: BluetoothFactory())
    }
}
