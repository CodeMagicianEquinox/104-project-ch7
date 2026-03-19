//
//  SpecialistCardView.swift
//  104-project-ch7
//
//  Created by Timothy Terrance on 3/18/26.
//

import SwiftUI

struct SpecialistCardView: View {
    
    // Specialist data injected into the View
    let specialist: Specialist
    
    
    var body: some View {
        
        
        
        HStack {
            Image(systemName: specialist.image)
                .font(.system(size: 50))
                .bold()
                .clipShape(RoundedRectangle(cornerRadius: 12))
            
            VStack(alignment: .leading) {
                Text("Specialist Name")
                    .foregroundStyle(Color.blue)
                    .bold()
                Text("Specialty")
                Text("$xxx - $xxx")
            }
            
            Spacer()
            
            //Price Range
            Text("$\(specialist.maxPrice, specifier: "%.2f") - $\(specialist.maxPrice, specifier: "%.2f")")
                .font(.footnote)
                .bold()
            
            
            Spacer()
            
            VStack {
                // Specialist 1
                HStack {
                    Image(systemName: "star")
                    Text("x.x")
                }
                
                NavigationLink(destination: Text ("BookAppointView")) {
                    Text("Book")
                        .font(.headline)
                        .foregroundStyle(Color.white)
                        .padding(.vertical, 6)
                        .padding(.horizontal, 12)
                        .background(Color.blue)
                        .cornerRadius(12)
                }
            }
        }
        .padding()
    }
}
#Preview {
        SpecialistCardView(
        
            specialist: Specialist(
                name:"Tim Terrance",
                specialty: "Lashes",
                minPrice: 100,
                maxPrice: 300,
                rating: 5.0,
                image: "person.fill")
        )
    }

