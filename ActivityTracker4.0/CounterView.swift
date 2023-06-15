//
//  CounterView.swift
//  ActivityTracker4.0
//
//  Created by Laszlo Kovacs on 2023. 06. 14..
//

import SwiftUI

struct CounterView: View {
    @Binding var progress: Double
    
    var body: some View {
        Form {
            Section(header: Text("Progress:")) {
                Text("Counter: 00:00:00")
                    .font(.largeTitle)
            }
            .navigationTitle("Counter")
        }
    }
}

struct CounterView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CounterView(progress: .constant(Activity.lightSample[0].progress))
        }
    }
}
