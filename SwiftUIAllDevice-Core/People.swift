//
//  Animal.swift
//  SwiftUIForAllDevice
//
//  Created by Moh Zinnur Atthufail Addausi on 08/09/20.
//  Copyright © 2020 Moh Zinnur Atthufail Addausi. All rights reserved.
//

import Foundation
struct Animal : Hashable {
    let name : String
    let description : String
    let image : String
}

extension Animal {
    static var placeholder : Animal {
        return Animal(name: "budi", description: "sdkmns", image: "dsnjnfsjn")
    }
}
