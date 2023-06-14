//
//  ErrorView.swift
//  ActivityTracker4.0
//
//  Created by Laszlo Kovacs on 2023. 06. 14..
//

import SwiftUI

struct ErrorView: View {
    
    var errorWrapper: ErrorWrapper
    @Environment(\.dismiss) var dismiss
    
    
    var body: some View {
        
        NavigationView {
            VStack {
                Text("Error Occured")
                    .font(.title)
                    .padding(.bottom)
                Text(errorWrapper.error.localizedDescription)
                    .padding(.bottom)
                Text(errorWrapper.guidance)
                    .font(.headline)
                    .foregroundColor(.red)
                    
                Spacer()
            }
            .padding()
            .background(.ultraThinMaterial)
            .cornerRadius(26)
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button("Dismiss") {
                        dismiss()
                    }
                }
        }
        

        }
    }
}

struct ErrorView_Previews: PreviewProvider {
    
     enum sampleError: Error {
         case errorRequired
    }
    
    static var previews: some View {
        ErrorView(errorWrapper: ErrorWrapper(error: sampleError.errorRequired, guidance: "You can safely ignor it"))
    }
}
