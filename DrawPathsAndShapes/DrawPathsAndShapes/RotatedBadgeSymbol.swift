//
//  RotatedBadgeSymbol.swift
//  DrawPathsAndShapes
//
//  Created by Jovins on 2019/7/10.
//  Copyright © 2019 Jovins. All rights reserved.
//

import SwiftUI

struct RotatedBadgeSymbol : View {
    
    let angle: Angle
    var body: some View {
        BadgeSymbol()
        .padding(-60)
        .rotationEffect(angle, anchor: .bottom)
    }
}

#if DEBUG
struct RotatedBadgeSymbol_Previews : PreviewProvider {
    static var previews: some View {
        RotatedBadgeSymbol(angle: .init(degrees: 0))
    }
}
#endif
