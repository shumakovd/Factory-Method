//
//  Client.swift
//  Factory Method
//
//  Created by Shumakov Dmytro on 29.11.2022.
//

import Foundation

/// The client code works with an instance of a concrete creator, albeit through
/// its base protocol. As long as the client keeps working with the creator via
/// the base protocol, you can pass it any creator's subclass.
class Client {
    // ...
    static func someClientCode(creator: Creator) {
        print("Client: I'm not aware of the creator's class, but it still works.\n"
            + creator.someOperation())
    }
    // ...
}
