//
//  CircleImage.swift
//  SwiftUI-Training2
//
//  Created by Jovins on 2019/7/2.
//  Copyright © 2019 Jovins. All rights reserved.
//

import SwiftUI

struct CircleImage : View {
    var body: some View {
        Image("gelei")
        .clipShape(Circle())
        .overlay(Circle().stroke(Color.white, lineWidth: 4))
        .shadow(radius: 10) // 阴影
    }
}

#if DEBUG
struct CircleImage_Previews : PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
#endif
