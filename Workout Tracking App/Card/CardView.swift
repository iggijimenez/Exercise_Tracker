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
    
//    @Binding var userName: String
    
    func unwrap() -> String {
        
        @State var unwrapped = UserDefaults.standard.value(forKey: "LastBench")
        
        if unwrapped == nil {
            print("it is nil")
            return "0"
        } else {
            print("not nil")
            //            print(type(of: (unwrapped as! NSString) as String))
            return (unwrapped as! NSString) as String
        }
    }
    
    
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
//                    Text("userName: \(userName)")
                    Text("\(unwrap())")
                }
                VStack {
                    Text("Reps")
                    Text("\(exercises.InclinePress)")
                }
            }
            
            Button(action: {
                showDetails.toggle()
                showingPopover = true
//                print(userName)
            }) {
                HStack {
                    Image(systemName: "plus.circle.fill")
                    Text("Add")
                        .fontWeight(.medium)
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
