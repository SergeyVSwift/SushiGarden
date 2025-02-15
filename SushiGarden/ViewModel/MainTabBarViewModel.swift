//
//  MainTabBarViewModel.swift
//  SushiGarden
//
//  Created by Sergey V on 20.02.25.
//

import Foundation
import FirebaseAuth

class MainTabBarViewModel: ObservableObject {
    
    @Published var user: User
    
    init(user: User) {
        self.user = user
    }
}
