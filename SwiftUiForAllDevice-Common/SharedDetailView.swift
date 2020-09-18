//
//  SharedDetailView.swift
//  SwiftUIForAllDevice
//
//  Created by Moh Zinnur Atthufail Addausi on 09/09/20.
//  Copyright © 2020 Moh Zinnur Atthufail Addausi. All rights reserved.
//

import SwiftUI


struct SharedDetailView: View {
    let people : People
    
    var body: some View {
        VStack{
            Image(people.image)
                .resizable()
                .frame(width: 100, height: 100)
            Text(people.name)
        }
        
    }
}

struct SharedDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        SharedDetailView(people: People(name: "adbandhb h", description: "ksdnns", image: "2"))
    }
}

