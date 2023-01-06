//
//  SingleSquare.swift
//  Stacker1
//
//  Created by Brayton Lordianto on 1/5/23.
//

import SwiftUI
import Prism

struct SingleSquare: View {
    var config: PrismConfiguration
    
    var body: some View {
        PrismView(configuration: config) {
            Color.yellow
        } left: {
            Color.yellow
                .brightness(-0.1)
        } right: {
            Color.yellow
                .brightness(-0.2)
        }

    }
}

struct SingleSquare_Previews: PreviewProvider {
    static var previews: some View {
        SingleSquare(config: defaultConfig)
    }
}

