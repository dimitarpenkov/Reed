//
//  HorizontalProgressView.swift
//  Reed
//
//  Created by Mitko on 9.12.21.
//

import SwiftUI

struct HorizontalProgressView: View {

    var width: CGFloat = 200
    var height: CGFloat = 20
    var percent: CGFloat = 20
    var color1 = Color.purple
    var color2 = Color.blue

    var body: some View {

        let multiplier = width / 100
        
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: height, style: .continuous)
                .frame(width: width, height: height)
                .foregroundColor(Color.gray.opacity(0.4))
            RoundedRectangle(cornerRadius: height, style: .continuous)
                .frame(width: percent * multiplier, height: height)
                .background(
                    LinearGradient(
                        gradient: Gradient(colors: [Color.purple, Color.blue]),
                        startPoint: .leading,
                        endPoint: .trailing
                    )
                        .clipShape(RoundedRectangle(cornerRadius: height, style: .continuous))
                )
                .foregroundColor(.clear)
            
        }
    }
}

struct HorizontalProgressView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalProgressView()
    }
}
