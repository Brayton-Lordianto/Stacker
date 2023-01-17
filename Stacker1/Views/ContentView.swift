import SwiftUI
import Prism

struct ContentView: View {
    @State private var platformX: CGFloat = 0
    @State private var platformWidth: CGFloat = 100
    @State private var blockX: CGFloat = 0
    @State private var blockWidth: CGFloat = 50
    @State private var blockHeight: CGFloat = 20
    @State private var blockSpeed: CGFloat = 0.5
    @State private var score: Int = 0
    @State private var gameOver: Bool = false
    var body: some View {
        ZStack {
//            PrismView(x: platformX, y:blockHeight, width: platformWidth, height: blockHeight)
//                .fill(Color.black)
//                .onAppear {
//                    // Move platform horizontally
//                    Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true) { timer in
//                        self.platformX += self.blockSpeed
//                        if self.platformX > self.width - self.platformWidth {
//                            self.platformX = 0
//                        }
//                    }
//                }
//                .gesture(DragGesture()
//                    .onChanged({ value in
//                        self.platformX = value.location.x - self.platformWidth/2
//                    }))
//            Prism(x: blockX, y: 0, width: blockWidth, height: blockHeight)
//                .fill(Color.blue)
//                .onAppear {
//                    // Move block downward
//                    Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true) { timer in
//                        self.blockX += self.blockSpeed
//                        if self.blockX > self.width - self.blockWidth {
//                            self.blockX = 0
//                        }
//                    }
//                }
//        }
//        Text("Score: \(score)")
//            .font(.largeTitle)
//            .offset(x: 0, y: 20)
//        if gameOver {
//            Text("Game Over!")
//                .font(.largeTitle)
//                .offset(x: 0, y: -20)
        }
    }
}
