//
//  ListViewModel.swift
//  TMSHomework-Lesson44
//
//  Created by Наталья Мазур on 25.05.24.
//

import SwiftUI

struct ListView: View {
    
    @ObservedObject
    var vm: TeaViewModel
    
    var body: some View {
        List(vm.teaCatalogueModel, id: \.id) { tea in
                TeaViewListCell(tea: tea)
                .listRowBackground(Color.clear)
                .listRowSeparator(.hidden)
        }
        .listStyle(.plain)
        .background(CircleBackgroundView())
        .buttonStyle(.borderless)
    }
        
}

#Preview {
    ListView(vm: TeaViewModel())
}
