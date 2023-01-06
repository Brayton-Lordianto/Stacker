//
//  BlockView.swift
//  Stacker1
//
//  Created by Brayton Lordianto on 1/5/23.
//

import SwiftUI
import Prism

struct BlockView: View {
    var block: Block
    var body: some View {
        PrismView(
            tilt: defaultConfig.tilt,
            size: block.size,
            extrusion: block.extrusion,
            levitation: CGFloat(block.coordinate.coordinateValue),
            shadowColor: .clear
        ) {
            block.color
        } left: {
            block.color
                .brightness(-0.1)
        } right: {
            block.color
                .brightness(-0.2)
        }
    }
}

struct BlockView_Previews: PreviewProvider {
    static var previews: some View {
        BlockView(block: exampleBlock)
    }
}
