import SwiftUI

struct GameView: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            Text("Game Screen")
                .font(.largeTitle.bold())
                .foregroundColor(.white)
        }
        .navigationTitle("Game")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
    }
}

struct DestinationView: View {
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            Text("Destination Screen")
                .font(.largeTitle.bold())
                .foregroundColor(.white)
        }
        .navigationTitle("Destination")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack { GameView() }
}
