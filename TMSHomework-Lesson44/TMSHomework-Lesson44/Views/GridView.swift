//
//  GridView.swift
//  TMSHomework-Lesson44
//
//  Created by Наталья Мазур on 25.05.24.
//

import SwiftUI

struct GridView: View {
    @ObservedObject
    var vm: TeaViewModel
    
    @State
    private var columns: [GridItem] = [
        GridItem(.flexible(minimum: 100, maximum: 500)),
        GridItem(.flexible(minimum: 100, maximum: 500)),
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns,
                      alignment: .center,
                      spacing: 16,
                      pinnedViews: [.sectionHeaders, .sectionFooters]
            ) {
                
                ForEach(vm.teaCatalogueModel, id: \.id) { tea in
                    TeaViewGridCell(tea: tea)
                }
            }
            .padding()
        }
        .listStyle(.plain)
        .background(CircleBackgroundView())
        .buttonStyle(.borderless)
    }
}

#Preview {
    GridView(vm: TeaViewModel())
}
