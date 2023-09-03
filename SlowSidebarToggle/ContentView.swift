//
//  ContentView.swift
//  SlowSidebarToggle
//
//  Created by Daniel Fortes on 02/09/23.
//

import SwiftUI

struct ContentView: View {
    
    struct Item: Identifiable {
        var id = UUID()
        var name: String
    }
    
    @State var items: [Item] = [
        "Arya Stark",
        "Frodo Baggins",
        "Harry Potter",
        "Bilbo Baggins",
        "Hermione Granger",
        "Luke Skywalker",
        "Katniss Everdeen",
        "Sherlock Holmes",
        "Elizabeth Bennet",
        "Darth Vader",
        "Gandalf",
        "Jon Snow",
        "Lara Croft",
        "Frodo Baggins",
        "Marty McFly",
        "Elsa",
        "James Bond",
        "Walter White",
        "Daenerys Targaryen",
        "Indiana Jones",
    ].map { Item(name: $0) }

    
    var body: some View {
        NavigationSplitView {
            
        } detail: {
            List {
                ForEach($items) { $item in
                    TextField("", text: $item.name)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
