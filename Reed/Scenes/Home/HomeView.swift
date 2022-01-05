//
//  HomeView.swift
//  Reed
//
//  Created by Mitko on 8.12.21.
//

import SwiftUI
import UIKit

struct HomeView: View {
    @State var selectedTab = "house"
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack {
                ScrollView(.vertical) {
                    VStack(spacing: 40.0) {
                        CurrentlyReadingView(books: currentlyReadingBooks) { book in
                            NavigationLink(
                        }
                        TodaysProgressView(percentage: 80, timeLeft: 15)
                    }
                }
                Spacer()
                TabBar(selectedTab: $selectedTab)
            }
            
            .padding(.top, 30)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
