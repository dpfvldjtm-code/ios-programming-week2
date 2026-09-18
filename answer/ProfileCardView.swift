import SwiftUI

struct ProfileCardView: View {
    var body: some View {
        ZStack(alignment: .topTrailing) {

            VStack(alignment: .leading, spacing: 12) {

                HStack(spacing: 16) {
                    Image(systemName: "person.crop.circle.fill")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .foregroundColor(.white)

                    VStack(alignment: .leading, spacing: 4) {
                        Text("양철규")
                            .font(.title2)
                            .bold()
                            .foregroundColor(.white)

                        Text("게임공학과")
                            .font(.subheadline)
                            .foregroundColor(.white.opacity(0.85))
                    }
                }

                Text("iOS 앱 만드는 걸 좋아하는 학생입니다 🙂")
                    .font(.body)
                    .foregroundColor(.white)
                    .padding(.top, 4)
            }
            .padding(20)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.blue)
            .cornerRadius(20)

            Text("NEW")
                .font(.caption2)
                .bold()
                .foregroundColor(.white)
                .padding(.horizontal, 8)
                .padding(.vertical, 4)
                .background(Color.red)
                .cornerRadius(8)
                .offset(x: -10, y: 10)
        }
        .padding()
    }
}

#Preview {
    ProfileCardView()
}
