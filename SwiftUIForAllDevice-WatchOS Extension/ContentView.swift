//
//  ContentView.swift
//  SwiftUIForAllDevice-WatchOS Extension
//
//  Created by Moh Zinnur Atthufail Addausi on 08/09/20.
//  Copyright © 2020 Moh Zinnur Atthufail Addausi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    private let peopleservice = PeopleService.getAll()
    var body: some View {
        
        List{
            
            ForEach(peopleservice, id: \.name){ people in
                
                NavigationLink(destination: SharedDetailView(people: people)){
                    
                    PeopleCell(people: people)
                }
                
            }
        }.listStyle(CarouselListStyle())
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct PeopleCell: View {
    let people : People
    var body: some View {
        VStack(alignment: .center){
            
            Image(people.image)
                .resizable()
                .frame(width: 100, height: 100)
                
            Text(people.name)
                .font(.system(size : 12))
            
        }.frame(minWidth: 0, maxWidth: .infinity)
    }
}
