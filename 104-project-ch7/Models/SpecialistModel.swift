//
//  SpecialistModel.swift
//  104-project-ch7
//
//  Created by Timothy Terrance on 3/18/26.
//

import Foundation

class Specialist: Identifiable {
    let id = UUID()
    var name: String
    var specialty: String
    var minPrice: Double
    var maxPrice: Double
    var rating: Double
    var image: String
    
    init(name: String, specialty: String, minPrice:Double, maxPrice: Double, rating: Double, image: String){
        self.name = name
        self.specialty = specialty
        self.minPrice = minPrice
        self.maxPrice = maxPrice
        self.rating = rating
        self.image = image
        
        
        
    }
}
