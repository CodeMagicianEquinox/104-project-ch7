//
//  CategoryCardView.swift
//  104-project-ch7
//
//  Created by Timothy Terrance on 3/16/26.
//

import SwiftUI

struct CategoryCardView: View {
    
    var icon: String = "eye"
    var label: String = "Lashes"
    var color: Color = Color("Primary")
    
    var body: some View {
        VStack(spacing: 10) {
            
            ZStack {
                Circle()
                    .foregroundStyle(color)
                    .frame(width: 70, height: 70)
                
                Image(systemName: icon)
                    .font(.title2)
                    .foregroundStyle(Color.white)
            }
            
            Text(label)
                .font(.subheadline.bold())
                .foregroundStyle(Color.primary)
        }
    }
}

#Preview {
    CategoryCardView()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("Surface"))
}
