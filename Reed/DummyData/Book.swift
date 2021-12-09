//
//  Book.swift
//  Reed
//
//  Created by Mitko on 9.12.21.
//

import Foundation

struct Book: Identifiable {

    var id: String = UUID().uuidString
    var title: String
    var image: String
    var author: String
}

var currentlyReadingBooks = [

    Book(title: "Can't Hurt me", image: "test", author: "David Goggins"),
    Book(title: "Atomic Habits", image: "test", author: "James Clear"),
    Book(title: "Can't Hurt me", image: "test", author: "David Goggins"),
    Book(title: "Atomic Habits", image: "test", author: "James Clear")
]
