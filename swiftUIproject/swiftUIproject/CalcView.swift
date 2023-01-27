//
//  CalcView.swift
//  swiftUIproject
//
//  Created by Валерия  on 17.01.2023.
//

import SwiftUI

struct CalcView: View {
    @State var a = ""
    @State var b = ""
    @State var sum = 0.0
    
    var body: some View {
        VStack {
            Text("Summa = \(sum)")
            TextField("Enter a", text: $a)
                .padding(.all)
                .frame(width: 100.0)
            
            TextField("Enter b", text: $b)
                .padding(.all)
                .frame(width: 100.0)
            HStack {
                Button("+") {
                    sum = Double(Int(a)! + Int(b)!)
                }
                .padding(.all)
                Button("-") {
                    sum = Double(Int(a)! - Int(b)!)
                }
                .padding(.all)
                Button("*") {
                    sum = Double(Int(a)! * Int(b)!)
                }
                .padding(.all)
                Button("/") {
                    sum = Double(Int(Double(a)! / Double(b)!))
                }
                
                
            }
        }
    }
}

struct CalcView_Previews: PreviewProvider {
    static var previews: some View {
        CalcView()
    }
}
