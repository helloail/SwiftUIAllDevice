//
//  ContentView.swift
//  SwiftUIForAllDevice-MacOS
//
//  Created by Moh Zinnur Atthufail Addausi on 08/09/20.
//  Copyright © 2020 Moh Zinnur Atthufail Addausi. All rights reserved.
//

import SwiftUI




struct ContentView: View {
    @State private var selectedPeople : People? = nil
    
    var body: some View {
        NavigationView{
            
            GeometryReader{ _ in
                
                ListView(selectedPeople : self.$selectedPeople )
                
            }.frame(width: 200)
            
            GeometryReader{ g -> SharedDetailView in
                if let people = self.selectedPeople {
                    
                    return SharedDetailView(people: people)
                }else{
                    return SharedDetailView(people: People.placeholder)
                }
            }
            
        }.navigationViewStyle(DoubleColumnNavigationViewStyle())
    }
    
}


struct ListView : View{
    @Binding var selectedPeople : People?
    var peopleservice = PeopleService.getAll()
    
    var body: some View {
        
        List(self.peopleservice, id: \.name){ people in
            
            VStack(alignment: .center){
                Image(people.image)
                    .resizable()
                    .frame(width: 100, height: 100)
                Text(people.name)
                    .font(.system(size: 12))
                
            }.onTapGesture {
                self.selectedPeople = people
            }
            
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
