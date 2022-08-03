//
//  Product Gallery.swift
//  Estee Lauder
//
//  Created by Shivika Varshney on 8/1/22.
//

import SwiftUI

struct Product_Gallery: View {
    private var numberOfImages = 6
    var body: some View {
            GeometryReader() { proxy in
            TabView {
                ForEach(1..<numberOfImages) { num in
                    Image("\(num)")
                        .resizable()
                        .scaledToFill()
                        .overlay(Color.black.opacity(0.1))
                        .tag(num)
                }
            } .tabViewStyle(PageTabViewStyle())
            .clipShape(RoundedRectangle(cornerRadius: 5))
            .padding()
            .frame(width: proxy.size.width, height: proxy.size.height)
        }
            
    }
}

struct Product_Gallery_Previews: PreviewProvider {
    static var previews: some View {
        Product_Gallery()
    }
}
