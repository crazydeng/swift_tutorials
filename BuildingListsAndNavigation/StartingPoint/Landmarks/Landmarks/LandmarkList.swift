//
//  LandmarkList.swift
//  Landmarks
//
//  Created by 邓焕聪 on 2020/1/12.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
          List (landmarkData) { landmark in
            NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark:landmark)
            }
          }
          .navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone 8", "iPhone 11"], id: \.self) { deviceName in
            LandmarkList()
            .previewDevice(PreviewDevice(rawValue: deviceName))
            .previewDisplayName(deviceName)
        }
    }
}
