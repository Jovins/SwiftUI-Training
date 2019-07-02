//
//  ContentView.swift
//  SwiftUI-Training4
//
//  Created by Jovins on 2019/7/2.
//  Copyright © 2019 Jovins. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        
        VStack {
            
            MapView()
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            
            CircleImage()
                    .offset(y: -150)
                    .padding(.bottom, -150)
            
            VStack(alignment: .leading, spacing: 0) {
                Text("SwiftUI Training4")
                    .font(.title)
                HStack(alignment: .top) {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("GuangZhou")
                        .font(.subheadline)
                }
            }
            .padding()
            Spacer()
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
