//
//  VerticalBookView.swift
//  Reed
//
//  Created by Mitko on 9.12.21.
//

import SwiftUI

struct VerticalBookView: View {

    @State private var isPresented = false

    var book: Book

    var body: some View {
        Button {
            isPresented.toggle()
        } label: {
            VStack(alignment: .leading, spacing: 10) {
                Image(book.image)
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width / 2, height: 300)
                    .clipped()
                    .cornerRadius(20)
                VStack(alignment: .leading) {
                    Text(book.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.primary16Regular)
                    Text(book.author)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.primary11Regular)
                        .padding(.bottom, 5)
                    HorizontalProgressView(
                        width: UIScreen.main.bounds.width / 2 - 10,
                        height: 11,
                        percent: book.percentFinished,
                        color1: .purple,
                        color2: .blue
                    )
                    Text("\(Int(book.percentFinished))%")
                        .font(.primary13Regular)
                }
                .padding(.leading, 8)
            }
            .foregroundColor(.white)
        }
        .fullScreenCover(isPresented: $isPresented) {
            BookDetailsView(book: book)
        }

    }
}

struct VerticalBookView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            VerticalBookView(book: currentlyReadingBooks[0])
        }
        
    }
}
