//
//  ContentView.swift
//  TMSHomework-Lesson44
//
//  Created by Наталья Мазур on 22.05.24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject
    var vm = TeaViewModel()
    
    @State
    var isGrid = false
    
    var body: some View {
        NavigationView {
            if isGrid {
                GridView(vm: vm)
                    .toolbar {
                        Button(
                            action: {
                                isGrid.toggle()
                            },
                            label: {
                                Image(systemName: "rectangle.grid.1x2"
                                )
                                .font(.system(size: 25))
                                .foregroundStyle(Color.yellow)}
                        )
                    }
            } else {
                ListView(vm: vm)
                    .toolbar {
                        Button(
                            action: {
                                isGrid.toggle()
                            },
                            label: {
                                Image(systemName: "rectangle.grid.2x2"
                                )
                                .font(.system(size: 25))
                                .foregroundStyle(Color.yellow)}
                        )
                    }
            }
        }
        
    }
}

#Preview {
    ContentView(vm: TeaViewModel())
}
