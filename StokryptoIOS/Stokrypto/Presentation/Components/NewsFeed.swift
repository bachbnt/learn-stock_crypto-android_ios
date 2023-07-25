//
//  NewsFeed.swift
//  Stokrypto
//
//  Created by bach.bui on 25/07/2023.
//

import SwiftUI

struct NewsFeed: View {
    let data: [Article]
    
    var body: some View {
        LazyVStack(spacing: 10) {
            ForEach(data, id: \.id) { item in
                Text(item.title)
                Text(item.description)
                AsyncImage(url: URL(string: item.image))
            }
        }
    }
}

struct NewsFeed_Previews: PreviewProvider {
    static var previews: some View {
        NewsFeed(data: articles)
    }
}
