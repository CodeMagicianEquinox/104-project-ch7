//
//  SpecialistView.swift
//  104-project-ch7
//
//  Created by Timothy Terrance on 3/16/26.
//

import SwiftUI

// Main screen
struct SpecialistView: View {
    var body: some View {
        // Navigation Container for the screen
        NavigationStack {
            // Background Color
            ZStack {
                Color("Primary")
                    .ignoresSafeArea()
                
                VStack(spacing: 20) {
                    
                    // MARK: -- Title + Search
                    VStack(spacing: 20) {
                        Text("Find your \nBeauty Specialist")
                            .font(.largeTitle.bold())
                            .foregroundStyle(Color.white)
                            .multilineTextAlignment(.center)
                        
                        TextField("Search for ...", text: .constant(""))
                            .padding()
                            .background(Color.white)
                            .cornerRadius(20)
                    }
                    .padding(.horizontal, 40)
                    VStack(spacing: 20) {
                        
                    //MARK: - Content: All categories + Top Specialist
                        
                        // Categories
                        VStack {
                            HStack{
                                Text("Categories")
                                    .font(.title2.bold())
                                
                                Spacer()
                                
                                NavigationLink(destination: AllCategoriesView()) {
                                    Text("See all")
                                        .font(.headline)
                                        .foregroundStyle(Color("Primary"))
                                    
                                }
                            }
                            
                            // Horizontal scroll of category cards
                            ScrollView(.horizontal, showsIndicators: false){
                                HStack(spacing: 20) {
                                    
                                    Rectangle()
                                        .frame(width: 100, height: 100)
                                    
                                    Rectangle()
                                        .frame(width: 100, height: 100)
                                    
                                    Rectangle()
                                        .frame(width: 100, height: 100)
                                    
                                    Rectangle()
                                        .frame(width: 100, height: 100)
                                    
                                    Rectangle()
                                        .frame(width: 100, height: 100)
                                    
                                }
                            }
                        }
                        .padding()
                        
                        // Top Specialist
                        
                        VStack(alignment: .leading, spacing: 16) {
                            
                                Text("Top Specialist")
                                    .font(.title2.bold())
                                
 
                                
                            
                            .padding(.horizontal)
                            
                            // Vertical scroll of specialist cards
                            ScrollView(.vertical, showsIndicators: false) {
                                VStack(spacing: 16) {
                                    
                                    Rectangle()
                                        .foregroundStyle(Color.black)
                                        .frame(maxWidth: .infinity)
                                        .frame(height: 100)
                                        .cornerRadius(12)
                                    
                                    Rectangle()
                                        .foregroundStyle(Color.black)
                                        .frame(maxWidth: .infinity)
                                        .frame(height: 100)
                                        .cornerRadius(12)
                                    
                                    Rectangle()
                                        .foregroundStyle(Color.black)
                                        .frame(maxWidth: .infinity)
                                        .frame(height: 100)
                                        .cornerRadius(12)
                                    
                                }
                                .padding(.horizontal)
                            }
                        }
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color("Surface"))
                }
            }
        } // END: NavigationStack
    } // END: body
} // END: SpecialistView

#Preview {
    SpecialistView()
}
