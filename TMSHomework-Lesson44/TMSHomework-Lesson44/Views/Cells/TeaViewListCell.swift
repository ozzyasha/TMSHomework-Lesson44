//
//  TeaViewListCell.swift
//  TMSHomework-Lesson44
//
//  Created by Наталья Мазур on 24.05.24.
//

import SwiftUI

struct TeaViewListCell: View {
    
    @State
    var tea: TeaCatalogueModel
    
    @State
    private var isLiked = false
    
    
    var body: some View {
        
        HStack {
            TeaViewImageView(imageURL: tea.img)
                .padding(.trailing)
            
            VStack {
                HStack {
                    Text(tea.name)
                        .font(.headline)
                }
                Spacer()
            }
            Spacer()
//            .frame(width: 180)
            
            VStack {
                Spacer()
                Button(action: {
                    isLiked.toggle()
                }) {
                    Image(systemName: isLiked ? "heart.fill" : "heart")
                        .foregroundColor(.red)
                        .font(.system(size: 30))
                }
                .frame(width: 40, height: 40, alignment: .bottomTrailing)
            }
//            .padding(.trailing)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
    }
}

#Preview {
    TeaViewListCell(tea: TeaCatalogueModel(name: "Some tea tea tea tea tea tea tea tea tea tea teaaaaaaaaa teateatea aaaaa", price: "0 Br", img: "https://tea-mail.by/wa-data/public/shop/products/82/83/8382/images/32944/32944.750.jpg", description: "description", quantity: "1 шт."))
}


