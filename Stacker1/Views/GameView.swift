//
//  GameView.swift
//  Stacker1
//
//  Created by Brayton Lordianto on 1/5/23.
//

import SwiftUI
import Prism

struct GameViewContainter: View {
//    var defaultConfig: PrismConfiguration = defaultConfig
    @EnvironmentObject var gameVM: GameViewModel
    var body: some View {
        PrismCanvas(tilt: defaultConfig.tilt) {
            GameView(config: defaultConfig)
        }
        .onLongPressGesture(perform: {
            gameVM.blocks.removeAll()
        })
        .onTapGesture {
//            gameVM.blocks.removeAll()
            gameVM.addBlock()
//            gameVM.blocks.append(exampleBlock)
        }
    }
}

struct GameView: View {
    @State var config: PrismConfiguration
    @EnvironmentObject var gameVM: GameViewModel
    var body: some View {
        AnyView(
            ZStack {
                Text(gameVM.blocks.count.description)
                ForEach(gameVM.blocks, id: \.hashValue) {
                    block in
                    BlockView(block: block)
                }
                MovingBlockView()
            }
        )
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameViewContainter()
            .environmentObject(GameViewModel())
    }
}


var defaultConfig: PrismConfiguration =
    .init(
        tilt: 0.5,
        size: .init(width: 250, height: 250),
        extrusion: 50
    )
