//
//  Balance.swift
//  Stokrypto
//
//  Created by bach.bui on 17/07/2023.
//

import SwiftUI

struct Balance: View {
    var balance: Int
    @State private var isVisible = false
    
    var body: some View {
        HStack {
            Text(isVisible ? "\(balance)VND" : "******")
            Button(action: {
                isVisible = !isVisible;
            }, label: {
                Image(systemName: isVisible ? "eye" : "eye.slash")
            })
        }
    }
}

struct Balance_Previews: PreviewProvider {
    static var previews: some View {
        Balance(balance: 100000)
    }
}
