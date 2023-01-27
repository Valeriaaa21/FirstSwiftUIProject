//
//  ListView.swift
//  swiftUIproject
//
//  Created by Валерия  on 17.01.2023.
//

import SwiftUI

struct Person : Identifiable {
    var id = UUID()
    var name = ""
    var surname = ""
    var imagename = ""
}
struct PersonRow : View {
    var person : Person
    var body : some View {
        HStack {
            Image(person.imagename)
                .resizable()
                .aspectRatio(contentMode:.fill)
                .frame(width: 100.0, height: 100.0)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.gray, lineWidth: 1))
            VStack(alignment: .leading){
                Text(person.name)
                Text(person.surname)
            }
            
        }
    }
}

struct ListView: View {
    var persons = [Person(name: "Ted", surname: "Mosby", imagename: "ted"),
                   Person(name: "Barney", surname: "Stinson", imagename: "barney"),
                   Person(name: "Lily", surname: "Aldrins", imagename: "lily"),
                   Person(name: "Marshall", surname: "Eriksen", imagename: "marshall"),
                   Person(name: "Robin", surname: "Scherbatsky", imagename: "robin")]
    
    var body: some View {
        NavigationView {
            List (persons) { item in
                NavigationLink(destination: ContentView(person: item)) {
                    PersonRow(person: item)
                }
            }
        }
    }
    struct ListView_Previews: PreviewProvider {
        static var previews: some View {
            ListView()
        }
    }
}
