import SwiftUI

struct GameView: View {
    var body: some View {
        var game = Game()
        
        
        ZStack {
            Color.black.ignoresSafeArea()
            Image(.launch)
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .blur(radius: 10)
            
            VStack() {
                Spacer()

                VStack(spacing: 16) {
                    Text("Score: 0")
                        .bold()
                        .font(.largeTitle)
                        .foregroundColor(.white)

                    ZStack {
                        Rectangle()
                            .fill(.ultraThinMaterial)
                            .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                            .overlay(
                                RoundedRectangle(cornerRadius: 20, style: .continuous)
                                    .stroke(Color.white.opacity(0.08), lineWidth: 1)
                            )
                            .padding(8)
                            .aspectRatio(1, contentMode: .fit)
                        
                        ForEach(game.gameMatrix, id:\.self ) { segment in
                            Rectangle()
                                .fill(Color.blue)
                                .frame(width:20, height:20)
                        }
                        
            
                        
                    }
                }
                
                Spacer()
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
    }
}



#Preview {
    NavigationStack { GameView() }
}
