//
//  ContentView.swift
//  MacLandmarks
//
//  Created by k.soga on 2020/08/01.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedLandmark: Landmark?

    var body: some View {
        NavigationView {
            NavigationPrimary(selectedLandmark: $selectedLandmark)
            
            if selectedLandmark != nil {
                NavigationDetail(landmark: selectedLandmark!)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserData())
    }
}
