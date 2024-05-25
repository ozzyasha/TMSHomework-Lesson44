//
//  TeaViewGridCell.swift
//  TMSHomework-Lesson44
//
//  Created by Наталья Мазур on 25.05.24.
//

import SwiftUI

struct TeaViewGridCell: View {
    @State
    var tea: TeaCatalogueModel
    
    @State
    private var isLiked = false
    
    var body: some View {
        
        VStack {
            TeaViewImageView(imageURL: tea.img)
            
            HStack {
                Text(tea.name)
                    .font(.headline)
                    .foregroundStyle(Color.black)
                    .padding(.leading)
                Spacer()
            }
            
            Spacer()
            
            HStack {
                Spacer()
                Button(action: {
                    isLiked.toggle()
                    @AppStorage("isLiked") var liked: Bool = isLiked
                }) {
                    Image(systemName: isLiked ? "heart.fill" : "heart")
                        .foregroundColor(.red)
                        .font(.system(size: 30))
                }
                .frame(width: 40, height: 40, alignment: .bottomTrailing)
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
    }
}

#Preview {
    TeaViewGridCell(tea: TeaCatalogueModel(id: 0, name: "Some tea tea tea tea tea tea tea tea tea tea teaaaaaaaaa teateatea aaaaa", price: "0 Br", img: "https://tea-mail.by/wa-data/public/shop/products/82/83/8382/images/32944/32944.750.jpg", description: "description", quantity: "1 шт."))
}
