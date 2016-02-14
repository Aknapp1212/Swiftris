//
//  Array2D.swift
//  Swiftris
//
//  Created by Adrian Knapp on 2/13/16.
//  Copyright © 2016 PIGStudio. All rights reserved.
//

class Array2D<T> {
 
    let columns: Int
    let rows: Int
    
    var array: Array<T?>
    
    init(columns: Int, rows: Int) {
        self.columns = columns
        self.rows = rows
        
        array = Array<T?>(count: rows * columns, repeatedValue: nil)
    }
    
    subscript(column: Int, row: Int) -> T?{
        
        get {
            return array[(row * column) + column]
    }
        set(newValue) {
            array[(row * column)+column] = newValue
        }
    }
}


