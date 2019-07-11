//
//  HikeView.swift
//  AnimatingAndTransitions
//
//  Created by Jovins on 2019/7/11.
//  Copyright © 2019 Jovins. All rights reserved.
//

import SwiftUI

struct HikeView : View {
    
    var hike: Hike
    @State private var showDetail = false
    
    var transition: AnyTransition {
        let insertion = AnyTransition.move(edge: .trailing)
            .combined(with: .opacity)
        let removal = AnyTransition.scale()
            .combined(with: .opacity)
        return .asymmetric(insertion: insertion, removal: removal)
    }
    
    var body: some View {
        
        VStack {
            HStack {
                HikeGraph(hike: hike, path: \.elevation)
                    .frame(width: 50, height: 30)
                
                VStack(alignment: .leading) {
                    Text(verbatim: hike.name)
                        .font(.headline)
                    Text(verbatim: hike.distanceText)
                }
                Spacer()
                Button(action: {
                    withAnimation() {
                        self.showDetail.toggle()
                    }
                }) {
                    Image(systemName: "chevron.right.circle")
                        .imageScale(.large)
                        .rotationEffect(.degrees(showDetail ? 90 : 0))
                        .padding()
                        .animation(.basic())
                }
            }
            
            if showDetail {
                
                HikeDetail(hike: hike)
                .transition(transition)
            }
        }
    }
}

#if DEBUG
struct HikeView_Previews : PreviewProvider {
    static var previews: some View {
        VStack {
         
            HikeView(hike: hikeData[0])
            .padding()
            Spacer()
        }
    }
}
#endif
