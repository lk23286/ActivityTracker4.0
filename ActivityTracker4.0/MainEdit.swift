//
//  MainEdit.swift
//  ActivityTracker4.0
//
//  Created by Laszlo Kovacs on 2023. 06. 14..
//

import SwiftUI

struct MainEdit: View {
    
    @Binding var activites: [Activity]
    @State var editedData = Activity.Data()
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            List {
                ForEach($activites) { $activity in
                    NavigationLink(destination:
                                    AddView(data: $editedData)
                        .onAppear  {
                            editedData = activity.data
                        }
                        .onDisappear(perform: {
                            activity.update(from: editedData)
                        })
                    )
                    {
                        MainHeaderView(activity: $activity)
                    }
                    .listRowBackground(activity.arcThemeColor.paperColor)
                }
                .onDelete { indices in
                    activites.remove(atOffsets: indices)
                }
            }
        }
    }
}

struct MainEdit_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MainEdit(activites: .constant(Activity.lightSample))
        }
    }
}

