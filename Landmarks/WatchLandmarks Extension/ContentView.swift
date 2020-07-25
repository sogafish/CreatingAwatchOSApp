//
//  ContentView.swift
//  WatchLandmarks Extension
//
//  Created by k.soga on 2020/07/25.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList {
            WatchLandmarkDetail(landmark: $0)
        }.environmentObject(UserData())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
         LandmarkList { WatchLandmarkDetail(landmark: $0) }.environmentObject(UserData())
    }
}
