//
//  TodaysProgressView.swift
//  Reed
//
//  Created by Mitko on 9.12.21.
//

import SwiftUI

struct TodaysProgressView: View {

    var percentage: CGFloat = .zero
    var timeLeft: Int = .zero

    var body: some View {
        VStack(spacing: 40.0) {
            HStack {
                Text("Today's Progress")
                    .font(.primary25Bold)
                Spacer()
            }
            CircularProgressView(
                width: 200,
                height: 200,
                percentage: percentage,
                subtitle: "\(timeLeft)min left\n of daily goal 40min"
            )
            
        }
        .foregroundColor(.white)
    }
}

struct TodaysProgressView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            TodaysProgressView()
        }
    }
}
