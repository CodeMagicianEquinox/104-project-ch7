//
//  CategoryCardView.swift
//  104-project-ch7
//
//  Created by Timothy Terrance on 3/16/26.
//

import SwiftUI

struct CategoryCardView: View {
    let icon: String
    let title: String

    var body: some View {
        VStack(spacing: 12) {
            Image(systemName: icon)
                .font(.system(size: 28))
                .foregroundStyle(Color("Primary"))

            Text(title)
                .font(.headline)
                .foregroundStyle(.black)
        }
        .frame(width: 100, height: 100)
        .background(Color.white)
        .cornerRadius(20)
        .shadow(radius: 2)
    }
}
