//
//  CurrentlyReadingView.swift
//  Reed
//
//  Created by Mitko on 9.12.21.
//

import SwiftUI

struct CurrentlyReadingView: View {
    
    var books: [Book]
    var body: some View {
        HStack {
            ForEach(books, id: \.id) { book in
                VStack(spacing: 5) {
                    Image(book.image)
                    VStack {
                        Text(book.title)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 15)
                            .font(.primary16Regular)
                        Text("by \(book.author)")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 15)
                            .font(.primary13Regular)
                    }
                    .foregroundColor(.white)
                }
            }
        }
    }
}
