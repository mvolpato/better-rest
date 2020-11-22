//
//  ContentView.swift
//  BetterRest
//
//  Created by Michele Volpato on 22/11/2020.
//

import SwiftUI

struct ContentView: View {
    @State private var sleepAmount = 8.0
    @State private var wakeUp = Date()

    var body: some View {
        Form {
            Stepper(value: $sleepAmount, in: 4...12, step: 0.25) {
                Text("\(sleepAmount, specifier: "%g") hours")
            }
            DatePicker("Please enter a time", selection: $wakeUp, in: Date()..., displayedComponents: .hourAndMinute)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
