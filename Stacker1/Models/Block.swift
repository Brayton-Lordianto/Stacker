//
//  Block.swift
//  Stacker1
//
//  Created by Brayton Lordianto on 1/5/23.
//
import SwiftUI

struct Block: Hashable {
    var coordinate: Coordinate
    var color: Color
    var size: CGSize
    var extrusion: CGFloat
    
    static func == (lhs: Block, rhs: Block) -> Bool {
        lhs.coordinate == rhs.coordinate
    }
}

extension CGSize: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(height)
        hasher.combine(width)
    }
}

let exampleBlock = Block(coordinate: .init(coordinateValue: 0), color: .yellow, size: .init(width: 250, height: 250), extrusion: 10)
