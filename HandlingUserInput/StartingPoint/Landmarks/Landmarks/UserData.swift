//
//  UserData.swift
//  Landmarks
//
//  Created by 邓焕聪 on 2020/1/13.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
    
}
