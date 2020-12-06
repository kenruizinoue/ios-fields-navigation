//
//  ContentView.swift
//  ios-fields-navigation
//
//  Created by Ken on 05/12/20.
//

import SwiftUI

struct ContentView: View {
    @State var firstName: String = ""
    @State var lastName: String = ""
    
    var body: some View {
        NavigationView {
            
            VStack(alignment: .leading) {
                Text("Your first name: \(firstName)")
                    .font(.callout)
                    .bold()
                TextField("Enter your first name...", text: $firstName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.bottom, 24)
                
                Text("Your last name: \(lastName)")
                    .font(.callout)
                    .bold()
                TextField("Enter your last name...", text: $lastName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.bottom, 24)
                
                NavigationLink(destination: SecondView(name: self.firstName + " " + self.lastName)) {
                    Text("Go to another screen")
                }
            }
            
        }.padding()
    }
}
