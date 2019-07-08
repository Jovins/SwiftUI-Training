//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Jovins on 2019/7/3.
//  Copyright © 2019 Jovins. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    
    var landmark: Landmark
    var body: some View {
        
        VStack {
            
            MapView(coordinate: landmark.locationCoordinate)
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            CircleImage(image: landmark.image(forSize: 250))
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading, spacing: 0) {
                
                Text(landmark.name)
                .font(.title)
                HStack(alignment: .top, spacing: 0) {
                    
                    Text(landmark.park)
                    .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                    .font(.subheadline)
                }
            }
            .padding()
            Spacer()
        }
    }
}

struct LandmarkDetail_Previews : PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[0])
    }
}

