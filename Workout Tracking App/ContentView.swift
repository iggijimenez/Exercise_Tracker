//
//  ContentView.swift
//  Workout Tracking App
//
//  Created by jimenez on 4/8/23.
//

import SwiftUI

struct ContentView: View {
    var exercises = Exercises(BenchPress: 100, InclinePress: 3)
    var main = MainExercises(ExerciseOne: "Bench Press", ExerciseTwo: "Incline Bench Press")
    
    @State private var name: String = ""
    
    // Need to make this so it can be accessed in other files
    @State private var showingPopover = false
    
    @State private var showDetails = false
    
    @State var benchPress = ""
    
    var body: some View {
            CardView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
