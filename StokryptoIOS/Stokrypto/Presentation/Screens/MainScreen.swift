//
//  MainScreen.swift
//  Stokrypto
//
//  Created by bach.bui on 14/07/2023.
//

import SwiftUI

struct MainScreen: View {
    var body: some View {
        NavigationView {
            TabView {
                HomeScreen()
                    .tabItem {
                        Image(systemName: "homekit")
                        Text("Home")
                    }
                MarketScreen()
                    .tabItem {
                        Image(systemName: "chart.bar")
                        Text("Market")
                    }
                TradingScreen()
                    .tabItem {
                        Image(systemName: "dollarsign.circle")
                        Text("Trading")
                    }
                AssetScreen()
                    .tabItem {
                        Image(systemName: "wallet.pass")
                        Text("Asset")
                    }
                OtherScreen()
                    .tabItem {
                        Image(systemName: "square.grid.2x2")
                        Text("Other")
                    }
            }
        }
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
