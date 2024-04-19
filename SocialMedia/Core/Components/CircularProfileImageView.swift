import SwiftUI

struct CircularProfileImageView: View {
    var body: some View {
        Image("plug")
            .resizable()
            .scaledToFill()
            .frame(width: 40, height: 40)
            .clipShape(Circle())
    }
}

#Preview {
    CircularProfileImageView()
}
