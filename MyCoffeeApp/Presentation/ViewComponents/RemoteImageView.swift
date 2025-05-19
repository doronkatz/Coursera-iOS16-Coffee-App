//
//  RemoteImageView.swift
//  MyCoffeeApp
//
//  Created by Doron Katz on 5/19/25.
//

import SwiftUI
import CachedAsyncImage

struct RemoteImageView: View {
    
    private let url: URL?
    
    init (url: URL?) {
        self.url = url
    }
    
    var body: some View {
        ZStack{
            CachedAsyncImage(url: url) {image in
                image.resizable()
            } placeholder : {
                Image(systemName: "photo")
                    .resizable()
                    .frame(maxWidth: 60, maxHeight: 60)
                    .foregroundColor(.gray)
            }
        }
    }
}

#Preview {
    RemoteImageView(url: DummyData.drinks[0].imageURL)
}
