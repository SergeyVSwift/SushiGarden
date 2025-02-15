//
//  SushiGardenApp.swift
//  SushiGarden
//
//  Created by Sergey V on 15.02.25.
//

import SwiftUI

let screen = UIScreen.main.bounds

@main
struct SushiGardenApp: App {
    var body: some Scene {
        WindowGroup {
            AuthView()
        }
    }
}
