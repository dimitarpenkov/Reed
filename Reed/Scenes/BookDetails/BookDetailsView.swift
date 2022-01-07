//
//  BookDetailsView.swift
//  Reed
//
//  Created by Mitko on 4.01.22.
//

import SwiftUI

struct BookDetailsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    var book: Book

    var body: some View {
        ZStack {
            CloseButton {
                presentationMode.wrappedValue.dismiss()
            }
            ScrollView {
                BookDetailsHeaderView(book: book)
                ActionButton(title: "Add To Shelf") {
                    //todo
                }
                Text(book.description)
                    .multilineTextAlignment(.leading)
                    .font(.primary16Regular)
                    .foregroundColor(Color.white)
                    .padding(.horizontal, 15)
            }
            .padding(.top, -60)
        }
        
        .background(Color.black.edgesIgnoringSafeArea(.all))
        .navigationBarHidden(true)
    }
}


struct BookDetailsHeaderView: View {

    var book: Book

    var body: some View {
        Image(book.image)
            .resizable()
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.70)
            .scaledToFill()
            .clipped()
            .cornerRadius(25)
            .padding(.bottom, 20)
        VStack {
            Text(book.title)
                .font(.primary20Bold)
                .foregroundColor(Color.white)
            Text(book.author)
                .font(.primary13Regular)
                .foregroundColor(Color.white)
        }
    }
}

struct BookDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailsView(book: currentlyReadingBooks[0])
    }
}
