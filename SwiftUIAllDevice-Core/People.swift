//
//  Animal.swift
//  SwiftUIForAllDevice
//
//  Created by Moh Zinnur Atthufail Addausi on 08/09/20.
//  Copyright © 2020 Moh Zinnur Atthufail Addausi. All rights reserved.
//

import Foundation
struct People : Hashable {
    let name : String
    let description : String
    let image : String
}

extension People {
    static var placeholder : People {
        return People(name: "budi", description: "sdkmns", image: "dsnjnfsjn")
    }
}
