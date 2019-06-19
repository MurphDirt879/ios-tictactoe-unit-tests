//
//  WinCheckingTest.swift
//  TicTacToeTests
//
//  Created by Ryan Murphy on 6/19/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import TicTacToe

class WinCheckingTest: XCTestCase {

    
    // TDD - Test Driven Development
    
    func testWinCheckingVertical1() {
        /*
         x o -
         x o -
         x - -
         */
        
         var board = GameBoard()
        
        XCTAssertNoThrow(try board.place(mark: .x, on: (0, 0)))
        XCTAssertNoThrow(try board.place(mark: .x, on: (1, 0)))
        XCTAssertNoThrow(try board.place(mark: .x, on: (2, 0)))
        
        XCTAssertNoThrow(try board.place(mark: .o, on: (0, 1)))
        XCTAssertNoThrow(try board.place(mark: .o, on: (1, 1)))
        
        XCTAssert(game(board: board, isWonBy: .x))
        
        
        
    }
    
    func testWinCheckingVertical2() {
        var board = GameBoard()
        /*
         x o -
         x o -
         - o -
         */
        try! board.place(mark: .o, on: (1, 0))
        try! board.place(mark: .x, on: (0, 0))
        try! board.place(mark: .o, on: (1, 1))
        try! board.place(mark: .x, on: (0, 1))
        try! board.place(mark: .o, on: (1, 2))
        XCTAssertTrue(game(board: board, isWonBy: .o))
        XCTAssertFalse(game(board: board, isWonBy: .x))
    }

}
