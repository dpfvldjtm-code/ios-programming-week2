import SwiftUI

struct CounterView: View {
    @State private var count: Int = 0

    var body: some View {
        VStack(spacing: 24) {
            Text("\(count)")
                .font(.system(size: 60, weight: .bold))
                .foregroundColor(count >= 5 ? .red : .primary)

            Button("증가") {
                count += 1
            }
            .font(.title3)
            .padding(.horizontal, 24)
            .padding(.vertical, 12)
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(12)
        }
        .padding()
    }
}

#Preview {
    CounterView()
}
