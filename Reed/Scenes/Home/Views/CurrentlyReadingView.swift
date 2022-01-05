//
//  CurrentlyReadingView.swift
//  Reed
//
//  Created by Mitko on 9.12.21.
//

import SwiftUI

struct CurrentlyReadingView: View {
    
    var books: [Book]
    var onBookTap: (Book) -> Void = { _ in }
    var body: some View {
        VStack {
            CurrentlyReadingTitle()
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 26) {
                    ForEach(books, id: \.id) { book in
                        VerticalBookView(book: book) { book in
                            onBookTap(book)
                        }
                    }
                }
            }
        }
        
    }
}

struct CurrentlyReadingTitle: View {
    var body: some View {
        HStack {
            Text("Currently Reading")
                .font(.primary25Bold)
                .foregroundColor(.white)
            Spacer()
            Button("see all") {
                // todo
            }
            .foregroundColor(.purple)
            .padding(.trailing, 20)
        }
    }
}
struct CurrentlyReadingView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            CurrentlyReadingView(books: currentlyReadingBooks)
        }
    }
}
