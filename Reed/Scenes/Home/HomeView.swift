//
//  HomeView.swift
//  Reed
//
//  Created by Mitko on 8.12.21.
//

import SwiftUI
import UIKit

struct HomeView: View {
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            ScrollView(.vertical) {
                VStack(spacing: 40.0) {
                    CurrentlyReadingView(books: currentlyReadingBooks)
                    TodaysProgressView(percentage: 80, timeLeft: 15)
                }
            }
            .padding(.top, 30)
            .padding(.leading, 20)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
