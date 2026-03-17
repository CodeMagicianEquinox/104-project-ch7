//
//  StepsView.swift
//  104-project-ch7
//
//  Created by Timothy Terrance on 3/11/26.
//

import SwiftUI

struct StepsView: View {

    
    var body: some View {
        ZStack {
            Color(red: 0.95, green:0.98, blue: 0.94)
                .ignoresSafeArea()
            
            VStack(spacing: 24) {
              Text("Keep Moving")
                .font(.largeTitle.bold())
                    
             Text("You're making great progress today")
                    .foregroundColor((.secondary))
                
                Spacer()
            }
            .padding()
        }
        
        
        
    }
}

#Preview {
    StepsView()
}
