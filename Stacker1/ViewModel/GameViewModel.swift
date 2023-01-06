//
//  GameViewModel.swift
//  Stacker1
//
//  Created by Brayton Lordianto on 1/5/23.
//

import Foundation
import SwiftUI
import Prism

class GameViewModel: ObservableObject {
    @Published var blocks = [Block(coordinate: .init(coordinateValue: 0), color: .red, size: .init(width: 250, height: 250), extrusion: 50)]
    var prevSize: CGSize = .init(width: 250, height: 250)
    var prevColor: Color = .yellow
    var prevExtrusion: CGFloat = 1
    var prevCoordinateValue = 10
}

extension GameViewModel {
    func addBlock(
    ) {
        // figure out which block to give
        var block = exampleBlock
        block.coordinate = Coordinate(coordinateValue: prevCoordinateValue + 10)
        blocks = blocks + [block]
        
        // update for next block
        prevCoordinateValue += 10

    }
}


