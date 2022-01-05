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
    var description: String
}

var currentlyReadingBooks = [

    Book(title: "Can't Hurt me", image: "test", author: "David Goggins", percentFinished: 45, description: "For David Goggins, childhood was a nightmare -- poverty, prejudice, and physical abuse colored his days and haunted his nights. But through self-discipline, mental toughness, and hard work, Goggins transformed himself from a depressed, overweight young man with no future into a U.S. Armed Forces icon and one of the world's top endurance athletes. The only man in history to complete elite training as a Navy SEAL, Army Ranger, and Air Force Tactical Air Controller, he went on to set records in numerous endurance events, inspiring Outside magazine to name him \"The Fittest (Real) Man in America."),
    Book(title: "Atomic Habits", image: "test", author: "James Clear", percentFinished: 30, description: "For David Goggins, childhood was a nightmare -- poverty, prejudice, and physical abuse colored his days and haunted his nights. But through self-discipline, mental toughness, and hard work, Goggins transformed himself from a depressed, overweight young man with no future into a U.S. Armed Forces icon and one of the world's top endurance athletes. The only man in history to complete elite training as a Navy SEAL, Army Ranger, and Air Force Tactical Air Controller, he went on to set records in numerous endurance events, inspiring Outside magazine to name him \"The Fittest (Real) Man in America."),
    Book(title: "Can't Hurt me", image: "test", author: "David Goggins", percentFinished: 20, description: "For David Goggins, childhood was a nightmare -- poverty, prejudice, and physical abuse colored his days and haunted his nights. But through self-discipline, mental toughness, and hard work, Goggins transformed himself from a depressed, overweight young man with no future into a U.S. Armed Forces icon and one of the world's top endurance athletes. The only man in history to complete elite training as a Navy SEAL, Army Ranger, and Air Force Tactical Air Controller, he went on to set records in numerous endurance events, inspiring Outside magazine to name him \"The Fittest (Real) Man in America."),
    Book(title: "Atomic Habits", image: "test", author: "James Clear", percentFinished: 90, description: "For David Goggins, childhood was a nightmare -- poverty, prejudice, and physical abuse colored his days and haunted his nights. But through self-discipline, mental toughness, and hard work, Goggins transformed himself from a depressed, overweight young man with no future into a U.S. Armed Forces icon and one of the world's top endurance athletes. The only man in history to complete elite training as a Navy SEAL, Army Ranger, and Air Force Tactical Air Controller, he went on to set records in numerous endurance events, inspiring Outside magazine to name him \"The Fittest (Real) Man in America.")
]
