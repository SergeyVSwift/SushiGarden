//
//  TabBar.swift
//  SushiGarden
//
//  Created by Сергей Ващенко on 27.07.24.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            NavigationView {
                ProfileView()
                    .navigationBarHidden(true)
            }
            .tabItem {
                VStack {
                    Image(systemName: "person.circle")
                    Text("Profile")
                }
            }

            NavigationView {
                CatalogeView()
                    .navigationBarHidden(true)
            }
            .tabItem {
                VStack {
                    Image(systemName: "fork.knife")
                    Text("Cataloge")
                }
            }

            NavigationView {
                OrdersView()
                    .navigationBarHidden(true)
            }
            .tabItem {
                VStack {
                    Image(systemName: "basket")
                    Text("Orders")
                }
            }
        }
        .background(Color.bgColor)
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
