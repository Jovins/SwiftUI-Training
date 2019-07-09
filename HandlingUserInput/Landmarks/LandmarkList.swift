//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Jovins on 2019/7/3.
//  Copyright © 2019 Jovins. All rights reserved.
//

import SwiftUI

struct LandmarkList : View {
    
    @EnvironmentObject private var userData: UserData
    
    var body: some View {
       
        NavigationView {
            
            List {
                
                Toggle(isOn: $userData.showFavoritesOnly) {
                    
                    Text("Favorite only")
                }
                
                ForEach(userData.landmarks) { landmark in
                    // 过滤
                    if !self.userData.showFavoritesOnly || landmark.isFavorite {
                        
                        NavigationButton(
                        destination: LandmarkDetail(landmark: landmark)
                        .environmentObject(self.userData)
                        ) {
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Jovins"), displayMode: .large)
        }
    }
}

struct LandmarkList_Previews : PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"].identified(by: \.self)) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
        .environmentObject(UserData())
    }
}
