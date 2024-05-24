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
    
    var body: some View {
        ListView(vm: vm)
    }
}

#Preview {
    ContentView(vm: TeaViewModel())
}
