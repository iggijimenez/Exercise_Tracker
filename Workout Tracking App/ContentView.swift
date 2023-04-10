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
    
    @State private var showingPopover = false
    
    @State private var showDetails = false
    
    @State var benchPress = ""
    
    var body: some View {
            CardView()
                .popover(isPresented: $showingPopover) {
                    HStack {
                        VStack {
                            Text("Input Weight")
                            TextField("Enter your name", text: $name)
                                .padding()
                                .frame(width: 70, height: 70)
                                .background(Color.gray)
                        }
                        .padding()
                        .background(Color.blue)
                        VStack {
                            Text("Input Reps")
                            TextField("Enter your name", text: $name)
                                .padding()
                                .frame(width: 70, height: 70)
                                .background(Color.gray)
                        }
                        .padding()
                        .background(Color.red)
                    }
                    .background(Color.green)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
