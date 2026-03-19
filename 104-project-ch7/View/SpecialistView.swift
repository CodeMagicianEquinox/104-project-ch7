import SwiftUI

// Main screen
struct SpecialistView: View {
    
    let specialistList: [Specialist] = [
        Specialist(
            name: "Name 1",
            specialty: "Specialty 1",
            minPrice: 299.99,
            maxPrice: 599.99,
            rating: 4.6,
            image: "person.fill"
        ),
        Specialist(
            name: "Name 2",
            specialty: "Specialty 2",
            minPrice: 299.99,
            maxPrice: 599.99,
            rating: 4.6,
            image: "person.fill"
        ),
        Specialist(
            name: "Name 3",
            specialty: "Specialty 3",
            minPrice: 299.99,
            maxPrice: 599.99,
            rating: 4.6,
            image: "person.fill"
        )
    ]
    
    var body: some View {
        
        NavigationStack {
            ZStack {
                Color("Primary")
                    .ignoresSafeArea()

                VStack(spacing: 20) {

                    // MARK: - Title + Search
                    VStack(spacing: 20) {
                        Text("Find your \nBeauty Specialist")
                            .font(.largeTitle.bold())
                            .foregroundStyle(.white)
                            .multilineTextAlignment(.center)

                        TextField("Search for ...", text: .constant(""))
                            .padding()
                            .background(Color.white)
                            .cornerRadius(20)
                    }
                    .padding(.horizontal, 40)

                    VStack(spacing: 20) {

                        // MARK: - Categories
                        VStack {
                            HStack {
                                Text("Categories")
                                    .font(.title2.bold())

                                Spacer()

                                NavigationLink(destination: AllCategoriesView()) {
                                    Text("See all")
                                        .font(.headline)
                                        .foregroundStyle(Color("Primary"))
                                }
                            }


                            // Real category cards
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 40) {
                                    CategoryCardView(icon: "eye", title: "Lashes")
                                    CategoryCardView(icon: "wind", title: "Hair")
                                    CategoryCardView(icon: "hand.raised", title: "Nails")
                                }
                                .padding(.horizontal)
                            }

                            // MARK: - Top Specialist
                            VStack(alignment: .leading, spacing: 16) {
                                Text("Top Specialist")
                                    .font(.title2.bold())
                                    .padding(.horizontal)

                                ScrollView(.vertical, showsIndicators: false) {
                                    VStack(spacing: 16) {
                                        
                                    //SpecialistCardView()
                                    ForEach(specialistList) { specialist in
                                        SpecialistCardView(specialist: specialist)
                                        }
                                    }
                                    }
                                    .padding(.horizontal)
                                    
                                }
                            }
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(Color("Surface"))
                        .cornerRadius(30)
                    }
                }
            }
        }
    }

#Preview {
    SpecialistView()
}
