//
//  ContentView.swift
//  SwiftUIForAllDevice
//
//  Created by Moh Zinnur Atthufail Addausi on 08/09/20.
//  Copyright © 2020 Moh Zinnur Atthufail Addausi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    private var peopleservice = PeopleService.getAll()
    
    var body: some View {
        
        NavigationView{
            List(self.peopleservice, id: \.name){ people in
                NavigationLink(destination: SharedDetailView(people: people)) {
                    HStack{
                        Image(people.image)
                            .resizable()
                            .frame(width: 100, height: 100)
                        Text(people.name)
                    }
                }
            }
                
            .navigationBarTitle("Bakol Kopi")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
