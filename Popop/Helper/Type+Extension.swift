//
//  Type+Extension.swift
//  Popop
//
//  Created by Muhammed Ali SOYLU on 12.06.2023.
//

import Foundation


func removeLast(mytext: String, n: Int) -> String{
    //var ttext = mytext.removeLast(3)
    var clnPerc = mytext ?? "0"
    clnPerc.removeLast(3)
    return mytext
}



//sayıyı float' a çevirme
let intNumber: Int = 0
let F = Float(intNumber)

let url = "https://jsonplaceholder.typicode.com/posts"
