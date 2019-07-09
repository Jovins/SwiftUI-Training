//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Jovins on 2019/7/3.
//  Copyright © 2019 Jovins. All rights reserved.
//

import SwiftUI

struct LandmarkRow : View {
    
    var landmark: Landmark
    var body: some View {
        
        HStack {
            
            landmark.image(forSize: 50)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 0.5))
                .shadow(radius: 10) // 阴影
            Text(verbatim: landmark.name)
            Spacer()
            
            if landmark.isFavorite {
                
                Image(systemName: "star.fill")
                .imageScale(.medium)
                .foregroundColor(.orange)
            }
        }
    }
}

struct LandmarkRow_Previews : PreviewProvider {
    static var previews: some View {
        Group {

            LandmarkRow(landmark: landmarkData[0])
            // LandmarkRow(landmark: landmarkData[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
