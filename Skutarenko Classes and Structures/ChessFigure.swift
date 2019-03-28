//
//  ChessFigure.swift
//  Skutarenko Classes and Structures
//
//  Created by Sasha on 3/28/19.
//  Copyright © 2019 Sasha. All rights reserved.
//

import UIKit

class ChessFigure {
    
    enum Color : String {
        case white
        case black
    }
    
    enum Name : String{
        case king, queen, bishop
        case knight, rook, pawn
    }
    
    enum xPos : Int {
        case one = 1, two, three, four, five, six, seven, eight
    }
    
    enum yPos : String {
        case a, b, c, d, e, f, g, h
    }
    
    var color : Color
    var name: Name
    var position: (x: xPos, y: yPos)
    var drawPic: String
    
    init(name: Name, color: Color, position: (x: xPos, y: yPos)) {
        self.color = color
        self.name = name
        self.position = position
        self.drawPic = ""
        
        switch name {
        case .king:
            self.drawPic = color == .white ? "♚" : "♔"
        case .queen:
            self.drawPic = color == .white ? "♛" : "♕"
        case .bishop:
            self.drawPic = color == .white ? "♝" : "♗"
        case .knight:
            self.drawPic = color == .white ? "♞" : "♘"
        case .rook:
            self.drawPic = color == .white ? "♜" : "♖"
        case .pawn:
            self.drawPic = color == .white ? "♠︎" : "♙"
        }
        
        chessArr.append(self)
    }
    
    func moveTo (newX: xPos, newY: yPos) {
        self.position.x = newX
        self.position.y = newY
    }
    
}



var chessArr = [ChessFigure]()
