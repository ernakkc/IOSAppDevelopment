//
//  Utils.swift
//  Boom Blocks
//
//  Created by Eren Akkoç on 17.05.2026.
//

import SwiftUI

public enum BlockTypes {
    case Empty
    case Blue
    case Green
    case Yellow
    case Brown
    case Pink
    
    var color: Color {
        switch self {
            case .Empty:
                .clear
            case .Blue:
                .blue
            case .Green:
                .green
            case .Yellow:
                .yellow
            case .Brown:
                .brown
            case .Pink:
                .pink
        }
    }
}


enum ItemTypes {
    case straightHorizontal
    case straightVertical


    var matrix: [[BlockTypes]] {
        switch self {
        case .straightHorizontal:
            // 1x4 horizontal line
            return [[.Blue, .Blue, .Blue, .Blue]]
        case .straightVertical:
            // 4x1 vertical line
            return [
                [.Green],
                [.Green],
                [.Green],
                [.Green]
            ]
        }
    }
}


public typealias GameMatrix = [[BlockTypes]]

@inline(__always)
func makeEmptyMatrix(rows: Int = 8, columns: Int = 8) -> GameMatrix {
    guard rows > 0, columns > 0 else { return [] }
    return Array(repeating: Array(repeating: .Empty, count: columns), count: rows)
}
