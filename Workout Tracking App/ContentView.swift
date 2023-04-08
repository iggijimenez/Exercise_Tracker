//
//  ContentView.swift
//  Workout Tracking App
//
//  Created by jimenez on 4/8/23.
//

import SwiftUI

struct ContentView: View {
    var exercises = Exercises(BenchPress: 100, InclinePress: 3)
    
    @State private var name: String = ""
    
    @State private var showingPopover = false
    
    @State private var showDetails = false
    
    @State var benchPress = ""
    
    var body: some View {
        VStack {
            
            Text("Bench Press")
                .font(.largeTitle)
                .fontWeight(.black)
            HStack {
                VStack{
                    Text("Date")
                    Text("April 8th")
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
                //                .frame(width: 500)
                //                .frame(height: 500)
                .background(Color.green)
            }
            
            
            
        }
        .padding()
        .background(Color.gray)
        .opacity(0.8)
        .cornerRadius(15)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
