import SwiftUI

struct ProfileView: View {
    @State private var selectedProfileFilter: ProfileFilter = .threads
    @Namespace var id
    
    var body: some View {
        ScrollView {
            // Bio and stats
            VStack(spacing: 20) {
                HStack(alignment: .top) {
                    VStack(alignment: .leading, spacing: 12) {
                        VStack(alignment: .leading, spacing: 4) {
                            // User name
                            Text("Albert Dera")
                                .font(.title2)
                                .fontWeight(.semibold)
                            
                            Text("albertdera")
                                .font(.subheadline)
                        }
                        
                        Text("🤖 Lover of all things tech and pizza. Join me in unraveling the secrets of coding! 🍕")
                            .font(.footnote)
                        
                        Text("100 followers")
                            .font(.caption)
                            .foregroundStyle(.gray)
                    }
                    
                    Spacer()
                    
                    CircularProfileImageView()
                }
                
                Button {
                    
                } label: {
                    Text("Follow")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .frame(width: 352, height: 32)
                        .background(.black)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                }
                
                // User content list
                VStack {
                    HStack {
                        ForEach(ProfileFilter.allCases) { filter in
                            VStack {
                                Text(filter.title)
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                
                                if selectedProfileFilter == filter {
                                    Rectangle()
                                        .foregroundStyle(.black)
                                        .frame(width: 180, height: 1)
                                        .matchedGeometryEffect(id: "id", in: id)
                                    
                                } else {
                                    Rectangle()
                                        .foregroundStyle(.clear)
                                        .frame(width: 180, height: 1)
                                    
                                }
                            }
                            .onTapGesture {
                                withAnimation(.spring()) {
                                    selectedProfileFilter = filter
                                }
                            }
                        }
                    }
                    
                    LazyVStack {
                        ForEach(0...10, id: \.self) { thread in
                            FeedCell()
                        }
                    }
                }
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    ProfileView()
}

//.toolbar {
//    ToolbarItem(placement: .topBarTrailing) {
//        Image(systemName: "line.3.horizontal")
//            .foregroundStyle(.black)
//    }
//}
