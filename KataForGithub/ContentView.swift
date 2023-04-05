//
//  ContentView.swift
//  KataForGithub
//
//  Created by Tyson Laroyce Walker II on 4/4/23.
//

import SwiftUI

struct ContentView: View {
    @State var location: String = ""
    var body: some View {
       
        
        
        let binding = Binding<String>(get: {
            self.location
        }, set: {
            self.location = $0
            // do whatever you want here
            @State var strThing = String(location)
            longestRepetition(strThing)

        })
        NavigationView{
            //Text("test")
            
            VStack {
                Text("Longest String : \(ansrForView) \(ansrForView2)")
                TextField("Type String Here", text: binding)
            }
            .navigationBarTitle("Code Wars Challenge")
        }
        
       
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
