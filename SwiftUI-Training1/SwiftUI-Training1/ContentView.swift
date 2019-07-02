//
//  ContentView.swift
//  SwiftUI-Training1
//
//  Created by Jovins on 2019/7/2.
//  Copyright © 2019 Jovins. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        Text("SwiftUI Training")
        .font(.title)
        .color(.blue)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
