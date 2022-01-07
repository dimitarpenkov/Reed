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
        NavigationView {
            ZStack {
                Color.black.edgesIgnoringSafeArea(.all)
                VStack {
                    ScrollView(.vertical) {
                        VStack(spacing: 40.0) {
                            CurrentlyReadingView(books: currentlyReadingBooks)
                            TodaysProgressView(percentage: 80, timeLeft: 15)
                        }
                    }
                    Spacer()
                    TabBar(selectedTab: $selectedTab)
                }
            }
            .navigationTitle("")
            .navigationBarHidden(true)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
