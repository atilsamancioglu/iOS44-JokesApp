//
//  ContentView.swift
//  JokeSwiftUI
//
//  Created by Atil Samancioglu on 7.08.2022.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var jokesVM = JokesViewModel()
    
    var body: some View {
        NavigationView{
            
            List(jokesVM.jokes){ element in
                Text(element.joke)
                }.navigationBarItems(
                  trailing: Button(action: addJoke, label: { Text("Get New Joke") }))
            .navigationBarTitle("Jokes App")
             
        }
    }
    
    func addJoke(){
        jokesVM.getJokes(count: 1)
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
