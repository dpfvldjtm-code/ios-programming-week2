import SwiftUI

struct OrderCompareView: View {
    var body: some View {
        VStack(spacing: 40) {

            VStack(spacing: 8) {
                Text("padding → background")
                    .font(.headline)

                Text("Hello, SwiftUI!")
                    .padding()
                    .background(Color.green)
            }

            VStack(spacing: 8) {
                Text("background → padding")
                    .font(.headline)

                Text("Hello, SwiftUI!")
                    .background(Color.green)
                    .padding()
            }
        }
        .padding()
    }
}

#Preview {
    OrderCompareView()
}
