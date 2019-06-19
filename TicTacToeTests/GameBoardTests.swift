//
//  GameBoardTests.swift
//  TicTacToeTests
//
//  Created by Ryan Murphy on 6/19/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import TicTacToe


class GameBoardTests: XCTestCase {

    // Why do we test?
    // we write tests to find/prevent bugs
    // test functionality between new features to make sure you didn't break shit
    
    
    // How do we unit test?
    // unit refers to a small chunk of code
    // we test the code as if the user would use it, but completely prgramatically
    // How can we make th test fail or succeed?
    
    func testCreatingEmptyBoard() {
        
        let board = GameBoard()
        
//        try? board.place(mark: .x, on: (0, 0))
        
        for x in 0..<3 {
            for y in 0..<3 {
                let coordinate = (x, y)
                
                let mark = board[coordinate]
                
                XCTAssert(mark == nil, "Square at coordinate \(coordinate) is not empty")
                }
            }
        }
    
    
    func testTryPlacingMarks() {
        var board = GameBoard()
        //place a mark at (1, 1)
        XCTAssertNoThrow(try board.place(mark: .x, on: (1, 1)))
        // check that the mark is now an x at the cooridinate
        let mark = board[(1, 1)]
       
    
        // "" at (2, 2)
        XCTAssertNoThrow(try board.place(mark: .o, on: (2, 2)))
        // "" now an 0
        XCTAssertEqual(board[(2, 2)], .o)
}
    
}
