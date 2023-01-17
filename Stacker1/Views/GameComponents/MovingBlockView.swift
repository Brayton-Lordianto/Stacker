//
//  MovingBlockView.swift
//  Stacker1
//
//  Created by Brayton Lordianto on 1/6/23.
//

import SwiftUI

// the block that is moving either way
// the movement is only horizontal or vertical
struct MovingBlockView: View {
    @EnvironmentObject var gameVM: GameViewModel
    private let xFix: CGFloat = -25
    private let yFix: CGFloat = -35
    var xOffset: CGFloat {
        guard gameVM.blockDirection == .vertical else {return 0}
        return gameVM.blockOffset
    }
    var yOffset: CGFloat {
        guard gameVM.blockDirection == .horizontal else {return 0}
        return gameVM.blockOffset
    }
    
    var body: some View {
        BlockView(block: exampleBlock)
            .offset(x: xOffset + xFix, y: yOffset + yFix)
            // for testing purposes.
            .overlay {
                Text(max(xOffset, yOffset).description)
            }
    }
}
