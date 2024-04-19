import SwiftUI

struct ExploreCell: View {
    var body: some View {
        VStack {
            HStack {
                CircularProfileImageView()
                
                VStack(alignment: .leading) {
                    Text("alertdera")
                        .fontWeight(.semibold)
                    
                    Text("Albert Dera")
                }
                .font(.footnote)
                
                Spacer()
                
                Text("Follow")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 100, height: 32)
                    .overlay {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color(.systemGray4), lineWidth: 1)
                    }
            }
            .padding(.horizontal)
            
            Divider()
        }
        .padding(.vertical, 4)
    }
}

#Preview {
    ExploreCell()
}
