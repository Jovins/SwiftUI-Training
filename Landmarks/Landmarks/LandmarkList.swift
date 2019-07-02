//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Jovins on 2019/7/3.
//  Copyright © 2019 Jovins. All rights reserved.
//

import SwiftUI

struct LandmarkList : View {
    
    var body: some View {
       
        NavigationView {
            List(landmarkData) { landmark in
                
                NavigationButton(
                destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationBarTitle(Text("Jovins"), displayMode: .large)
        }
    }
}

#if DEBUG
struct LandmarkList_Previews : PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"].identified(by: \.self)) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
#endif
