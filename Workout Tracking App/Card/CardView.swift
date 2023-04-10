//
//  CardView.swift
//  Workout Tracking App
//
//  Created by jimenez on 4/10/23.
//

import SwiftUI

struct CardView: View {
    var exercises = Exercises(BenchPress: 100, InclinePress: 3)
    var main = MainExercises(ExerciseOne: "Bench Press", ExerciseTwo: "Incline Bench Press")
    
    @State private var name: String = ""
    
    @State private var showingPopover = false
    
    @State private var showDetails = false
    
    @State var benchPress = ""
    
    
    var body: some View {
        VStack {
            Text("\(main.ExerciseOne)")
                .font(.largeTitle)
                .fontWeight(.black)
            HStack {
                VStack{
                    Text("Dates")
                    Text(Date.now, format: .dateTime.day().month())
                        .fontWeight(.light)
                }
                VStack {
                    Text("Weight")
                    Text("\(exercises.BenchPress)")
                }
                VStack {
                    Text("Reps")
                    Text("\(exercises.InclinePress)")
                }
            }
            
            Button(action: {
                print("Delete tapped!")
                showDetails.toggle()
                showingPopover = true
            }) {
                HStack {
                    Image(systemName: "plus.circle.fill")
                    Text("Add")
                        .fontWeight(.medium)
                    //                        .font(.title)
                }
                .padding()
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(10)
            }
            .popover(isPresented: $showingPopover) {
                PopupView()
            }
        }
        .padding()
        .background(Color.gray)
        .opacity(0.8)
        .cornerRadius(15)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
