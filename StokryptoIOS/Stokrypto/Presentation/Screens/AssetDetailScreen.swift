//
//  AssetDetailScreen.swift
//  Stokrypto
//
//  Created by bach.bui on 26/07/2023.
//

import SwiftUI

struct AssetDetailScreen: View {
    let item: Asset
    
    var body: some View {
        Text(item.symbol)
        Text(item.name)
    }
}

struct AssetDetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        AssetDetailScreen(item: assetStocks[0])
    }
}
