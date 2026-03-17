//
//  BookAppointmentView.swift
//  104-project-ch7
//
//  Created by Timothy Terrance on 3/16/26.
//

import SwiftUI

struct BookAppointmentView: View {
    var body: some View {
        VStack(spacing: 20){
            
            Image(systemName: "progress.indicator")
                .font(.largeTitle)
            
            Text("Book Appointment")
                .font(.largeTitle)
            
            Text("Under construction")
                .foregroundStyle(Color.gray)
            
        }
        .navigationTitle("Book Appointment")
        .navigationBarTitleDisplayMode(.inline)
    }
}
#Preview {
    BookAppointmentView()
}
