//
//  PopupView.swift
//  Workout Tracking App
//
//  Created by jimenez on 4/10/23.
//

import SwiftUI

struct PopupView: View {
    
    @State private var name: String = ""
    
    var body: some View {
        VStack {
            Text("Barbell Bench Press")
                .font(.largeTitle)
                .fontWeight(.black)
            VStack {
                Text("Input Weight")
                TextField("Enter your name", text: $name)
                    .padding()
                    .frame(width: 100, height: 100)
                    .background(Color.gray)
            }
            .padding()
            .frame(width: 200, height: 200)
            .background(Color.blue)
            VStack {
                Text("Input Reps")
                TextField("Enter your name", text: $name)
                    .padding()
                    .frame(width: 100, height: 100)
                    .background(Color.gray)
            }
            .padding()
            .frame(width: 200, height: 200)
            .background(Color.red)
        }
        .frame(width: 500, height: 500)
        .padding(.top, -250)
//        .background(Color.green)
    }
}

struct PopupView_Previews: PreviewProvider {
    static var previews: some View {
        PopupView()
    }
}
