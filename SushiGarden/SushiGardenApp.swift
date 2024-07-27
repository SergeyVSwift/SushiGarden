//
//  SushiGardenApp.swift
//  SushiGarden
//
//  Created by Сергей Ващенко on 26.07.24.
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
