import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(0...10, id: \.self) { thread in
                        Text("Some text")
                    }
                }
            }
            .scrollIndicators(.hidden)
        }
    }
}

#Preview {
    FeedView()
}
