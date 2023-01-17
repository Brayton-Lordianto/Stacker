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
    
    // for the moving block
    private let SPEED_UNIT: CGFloat = 3
    @Published var blockDirection: MoveDirection = .horizontal
    @Published var blockOffset: CGFloat = 0
    private var currBlockSize = 0
    private var offsetFactor: CGFloat = 1
    private var offsetSpeed: CGFloat = 1
    private var offsetLimit: CGFloat = 0 // .5 blockWidth + offsetLimit + .5 blockWidth => means reverse direction
    private var offsetTimer = Timer()
    
    init() {
        offsetTimer = Timer.scheduledTimer(timeInterval: 1/5, target: self, selector: #selector(moveTopBlock), userInfo: nil, repeats: true)
    }
}

enum MoveDirection { case vertical; case horizontal; }

extension GameViewModel {
    
    func addBlock(
    ) {
            // figure out which block to give
            var block = exampleBlock
            block.coordinate = Coordinate(coordinateValue: self.prevCoordinateValue + 10)
            self.blocks = self.blocks + [block]
            
            // update for next block
            self.prevCoordinateValue += 10
            self.blockDirection = self.blockDirection == .horizontal ? .vertical : .horizontal
            self.blockOffset = 0
    }
    
    @objc func moveTopBlock() {
        DispatchQueue.global(qos: .background).async {
            withAnimation {
                self.blockOffset += self.offsetFactor * self.offsetSpeed * self.SPEED_UNIT
            }
            if self.blockOffset > self.prevSize.width + self.offsetLimit {
                self.offsetFactor *= -1
            }
        }
    }
}


