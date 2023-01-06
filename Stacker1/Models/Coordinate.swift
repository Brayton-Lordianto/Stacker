//
//  Coordinate.swift
//  SwiftUICraft
//
//  Created by A. Zheng (github.com/aheze) on 11/9/22.
//  Copyright © 2022 A. Zheng. All rights reserved.
//

import SwiftUI

/// A 3D point in space.
struct Coordinate: Codable, Hashable, Comparable {
    var coordinateValue: Int
    
    static func <(lhs: Coordinate, rhs: Coordinate) -> Bool {
        return lhs.coordinateValue < rhs.coordinateValue
    }
}
