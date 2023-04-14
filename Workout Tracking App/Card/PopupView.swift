//
//  PopupView.swift
//  Workout Tracking App
//
//  Created by jimenez on 4/10/23.
//

import SwiftUI

struct PopupView: View {
    
    let defaults = UserDefaults.standard
    
    @State private var name: String = ""
    
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
                TextField("Enter weight amount", text: $name) //This is going to later be saved as userDefault
                    .padding()
                    .background(Color.gray)
                    .cornerRadius(10)
            }
            .padding()
            .frame(width: 200, height: 200)
            VStack {
                Text("Input Reps")
                    .font(.title)
                    .fontWeight(.semibold)
                
                TextField("Enter reps", text: $name) //This is going to later be saved as userDefault
                    .padding()
                    .background(Color.gray)
                    .cornerRadius(10)
            }
            .padding()
            .frame(width: 200, height: 200)
            Button {
                print("hello")
                if name == "" {
                    print("nothing to save")
                } else {
                    defaults.set(name, forKey: "LastBench")
                }
                print("\(UserDefaults.standard.value(forKey: "LastBench")!)")
            } label: {
                Text("SAVE")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(15)
            }

        }
        .padding(.top, -250)
//        .background(Color.gray)
    }
}

struct PopupView_Previews: PreviewProvider {
    static var previews: some View {
        PopupView()
    }
}
