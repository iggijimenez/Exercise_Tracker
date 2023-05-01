//
//  PopupView.swift
//  Workout Tracking App
//
//  Created by jimenez on 4/10/23.
//

import SwiftUI

struct PopupView: View {
    
    let defaults = UserDefaults.standard
    
    @State private var weight: String = ""
    @State private var reps: Int = 1
    @State private var number: Int = 100
    @State private var colorScheme = 1

    
    var main = MainExercises(ExerciseOne: "Bench Press", ExerciseTwo: "Incline Bench Press")
    
    var body: some View {
        VStack {
            Text("\(main.ExerciseOne)")
                .font(.largeTitle)
                .fontWeight(.black)
            VStack {
                Text("Input Weight")
                    .font(.title)
                    .fontWeight(.semibold)
                Picker("Your age", selection: $number) {
                    ForEach(1...999, id: \.self) { number in
                        Text("\(number) lbs")
                    }
                }
            }
            .padding()
            .frame(width: 200, height: 200)
            VStack {
                Text("Input Reps")
                    .font(.title)
                    .fontWeight(.semibold)
                
                Picker("Your age", selection: $reps) {
                    ForEach(1...20, id: \.self) { number in
                        Text("\(number) reps")
                    }
                }
            }
            .padding()
            .frame(width: 200, height: 200)
            Button {
                print("hello")
                if weight == "" {
                    print("nothing to save")
                } else {
                    defaults.set(weight, forKey: "LastBench")
                }
                print("\(defaults.value(forKey: "LastBench")!)")
            } label: {
                Text("SAVE")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .fontWeight(.heavy)
                    .cornerRadius(15)
            }
            
        }
        .padding(.top, -250)
    }
}

struct PopupView_Previews: PreviewProvider {
    static var previews: some View {
        PopupView()
    }
}
