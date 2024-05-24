//
//  CircleBackgroundView.swift
//  TMSHomework-Lesson44
//
//  Created by Наталья Мазур on 25.05.24.
//

import SwiftUI


struct CircleBackgroundView: View {
    var body: some View {
        ZStack {
            Color.red
                .ignoresSafeArea()
            
            GeometryReader { geometry in
                Circle()
                    .fill(Color.yellow)
                    .frame(width: geometry.size.width + 170, height: geometry.size.width + 170)
                    .position(x: geometry.size.width / 2 + 40, y: geometry.size.height - (geometry.size.width / 2 - 50))
            }
        }
    }
    
}


#Preview {
    CircleBackgroundView()
}
