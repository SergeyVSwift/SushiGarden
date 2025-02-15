//
//  ProfileViewModel.swift
//  SushiGarden
//
//  Created by Sergey V on 22.02.25.
//

import Foundation

class ProfileViewModel: ObservableObject {
    
    @Published var profile: MWUser
    @Published var orders: [Order] = [Order]()
    
    init(profile: MWUser) {
        self.profile = profile
    }
    
    func getOrders() {
        DatabaseService.shared.getOrders(by: AuthService.shared.currentUser!.accessibilityHint) { result in
            switch result {
            case .success(let orders):
                self.orders = orders
                print("Всего заказов: \(orders.count)")
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    func setProfile() {
        
        DatabaseService.shared.setProfile(user: self.profile) { result in
            switch result {
                
            case .success(let user):
                print(user.name)
            case .failure(let error):
                print("Error name \(error.localizedDescription)")
            }
        }
        
    }
    
    func getProfile() {
        
        DatabaseService.shared.getProfile { result in
            switch result {
            case .success(let user):
                self.profile = user
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}
