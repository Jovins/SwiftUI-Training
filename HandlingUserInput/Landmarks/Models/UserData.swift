//
//  UserData.swift
//  Landmarks
//
//  Created by Jovins on 2019/7/9.
//  Copyright © 2019 Jovins. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: BindableObject {
    
    // PassthroughSubject 是 Combine 框架中一个简易的发布者，它把任何值都直接传递给它的订阅者
    let didChange = PassthroughSubject<UserData, Never>()
    
    var showFavoritesOnly = false {
        
        didSet {
            didChange.send(self)
        }
    }
    var landmarks = landmarkData {
        
        didSet {
            didChange.send(self)
        }
    }
}
