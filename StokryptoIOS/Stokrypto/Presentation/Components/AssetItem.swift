//
//  AssetItem.swift
//  Stokrypto
//
//  Created by bach.bui on 25/07/2023.
//

import SwiftUI

struct AssetItem: View {
    let symbol: String?
    let price: Double?
    let volatility: Double?
    let volatilityPercent: Double?
    let volume: Double?
    
    func getColor(volatility: Double?) -> Color {
        if(volatility == nil) {
            return Color.black
        }
        if volatility! > 0 {
            return Color.green
        }
        if volatility! < 0 {
            return Color.red
        }
        return Color.yellow
    }
        
    var body: some View {
        GeometryReader { geo in
            HStack(spacing: 0) {
                Text(symbol != nil ? symbol! : "Symbol")
                    .frame(width: geo.size.width * 0.175)
                    .border(.black)
                Text(price != nil ? String(format: "%.1f", price!) : "Price")
                    .foregroundColor(getColor(volatility: volatility))
                    .frame(width: geo.size.width * 0.225)
                Text(volatility != nil ? String(format: "%.1f", volatility!) : "+/-")
                    .foregroundColor(getColor(volatility: volatility))
                    .frame(width: geo.size.width * 0.175)
                Text(volatility != nil ? "\(String(format: "%.1f", volatilityPercent!))%" : "+/-(%)")
                    .foregroundColor(getColor(volatility: volatility))
                    .frame(width: geo.size.width * 0.15)
                Text(volume != nil ? String(format: "%.1f", volume!) : "Volume")
                    .frame(width: geo.size.width * 0.275)
            }
            .frame(width: geo.size.width)
            .border(.black)
        }

    }
}

struct AssetItem_Previews: PreviewProvider {
    static var previews: some View {
        AssetItem(symbol: nil, price: nil, volatility: nil, volatilityPercent: nil, volume: nil)
    }
}
