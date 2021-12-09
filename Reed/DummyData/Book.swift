//
//  Book.swift
//  Reed
//
//  Created by Mitko on 9.12.21.
//

import UIKit

struct Book: Identifiable {

    var id: String = UUID().uuidString
    var title: String
    var image: String
    var author: String
    var percentFinished: CGFloat
}

var currentlyReadingBooks = [

    Book(title: "Can't Hurt me", image: "test", author: "David Goggins", percentFinished: 45),
    Book(title: "Atomic Habits", image: "test", author: "James Clear", percentFinished: 30),
    Book(title: "Can't Hurt me", image: "test", author: "David Goggins", percentFinished: 20),
    Book(title: "Atomic Habits", image: "test", author: "James Clear", percentFinished: 90)
]
