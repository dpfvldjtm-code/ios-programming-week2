import SwiftUI

struct SymbolListView: View {
    @State private var selected: String? = nil

    private let items: [(symbol: String, label: String)] = [
        ("house.fill", "홈"),
        ("star.fill", "즐겨찾기"),
        ("bell.fill", "알림"),
        ("gearshape.fill", "설정"),
        ("person.fill", "프로필")
    ]

    var body: some View {
        VStack(spacing: 12) {
            ForEach(items, id: \.label) { item in
                HStack(spacing: 16) {
                    Image(systemName: item.symbol)
                        .font(.title3)
                        .frame(width: 30)

                    Text(item.label)
                        .font(.body)

                    Spacer()
                }
                .padding()
                .background(selected == item.label ? Color.blue.opacity(0.2) : Color(.systemGray6))
                .cornerRadius(12)
                .onTapGesture {
                    selected = (selected == item.label) ? nil : item.label
                }
            }
        }
        .padding()
    }
}

#Preview {
    SymbolListView()
}
