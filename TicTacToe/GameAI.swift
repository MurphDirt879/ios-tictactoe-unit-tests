//
//  GameAI.swift
//  TicTacToe
//
//  Created by Andrew R Madsen on 9/11/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

func game(board: GameBoard, isWonBy player: GameBoard.Mark) -> Bool {    
    // Check for vertical wins
    // Check if all y coordinates have the player mark that was passed into the function
    
    for x in 0..<3 {
        
        var numberOfY = 0
        
        for y in 0..<3 {
            if board[(x, y)] ==  player {
                numberOfY += 1
            }
        }
        if numberOfY == 3 {
            return true
        }
    }
     // Check for horizontal wins
    
    for y in 0..<3 {
        
        var numberOfX = 0
        
        for x in 0..<3 {
            if board[(x, y)] ==  player {
                numberOfX += 1
            }
        }
        if numberOfX == 3 {
            return true
        }
    }
    
    
    // Check for diagonal wins
    
    let leftToRight = [(0,0), (1, 1), (2,2)]
    
    var ltrMatches = 0
    
    for coordinate in leftToRight {
        let mark = board[coordinate]
        if mark == player {
            ltrMatches += 1
        }
    }
    
    if ltrMatches == 3 {
        return true
    }
    
    
    let rightToLeft = [(2,0), (1, 1), (0,2)]
    
    var rtlrMatches = 0
    
    for coordinate in rightToLeft {
        let mark = board[coordinate]
        if mark == player {
            rtlrMatches += 1
        }
    }
    
    if rtlrMatches == 3 {
        return true
    }
    
    
    return false
}
