//
//  PopupView.swift
//  Workout Tracking App
//
//  Created by jimenez on 4/10/23.
//

import SwiftUI

struct PopupView: View {
    
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
//            .background(Color.blue)
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
            .background(Color.red)
            .frame(width: 200, height: 200)
            Button {
                print("hello")
            } label: {
                Text("SAVE")
            }

        }
        .padding(.top, -250)
        .background(Color.gray)
    }
}

struct PopupView_Previews: PreviewProvider {
    static var previews: some View {
        PopupView()
    }
}
