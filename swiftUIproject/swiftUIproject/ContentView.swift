//
//  ContentView.swift
//  swiftUIproject
//
//  Created by Валерия  on 17.01.2023.
//

import SwiftUI

struct ContentView: View {
    
    var person: Person
    
    var body: some View {
        VStack {
            Image(person.imagename)
                .resizable()
                .aspectRatio(contentMode:.fill)
                .frame(width: 200.0, height: 200.0)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.gray, lineWidth: 1))
            Text(person.name)
            Text(person.surname)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(person: Person(name: "Ted", surname: "Mosby", imagename: "ted"))
    }
}
