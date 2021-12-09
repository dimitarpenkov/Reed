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
                VStack {
                    HStack {
                        Text("Currently Reading")
                            .font(.primary25Bold)
                            .foregroundColor(.white)
                        Spacer()
                        Button("see all") {
                            for family in UIFont.familyNames.sorted() {
                                let names = UIFont.fontNames(forFamilyName: family)
                                print("family: \(family) font names: \(names)")
                            }
                        }
                        .foregroundColor(.purple)
                    }
                    ScrollView(.horizontal, showsIndicators: false) {
                        CurrentlyReadingView(books: currentlyReadingBooks)
                    }
                }
            }
            .padding(.top, 30)
            .padding(.horizontal, 20)
            
        }
    }
}
