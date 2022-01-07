//
//  CircularProgressView.swift
//  Reed
//
//  Created by Mitko on 9.12.21.
//

import SwiftUI

struct CircularProgressView: View {
    
    var width: CGFloat = 200.0
    var height: CGFloat = 200.0
    var percentage: CGFloat = 50.0
    var subtitle: String?

    var body: some View {
        ZStack {
            Track()
            Label(
                title: String(format: "%.0f", percentage),
                subtitle: subtitle
            )
            Outline(
                percentage: percentage,
                width: width,
                height: height
            )
        }
        .foregroundColor(.white)
    }
}

struct Label: View {
    var title: String
    var subtitle: String?
    var body: some View {
        ZStack {
            VStack {
                Text("\(title)%")
                    .font(.primary25Bold)
                if let subtitle = subtitle {
                    Text(subtitle)
                        .font(.primary13Regular)
                        .multilineTextAlignment(.center)
                }
            }
        }
    }
}

struct Outline: View {

    var percentage: CGFloat = 50.0
    var width: CGFloat = 200.0
    var height: CGFloat = 200.0

    var colors: [Color] = [Color.actionButtonBackgroundColor]
    
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.clear)
                .frame(width: width, height: height)
                .overlay(
                    Circle()
                        .trim(from: 0, to: percentage * 0.01)
                        .stroke(style: StrokeStyle(lineWidth: 20, lineCap: .round, lineJoin: .round))
                        .fill(
                            AngularGradient(
                                gradient: Gradient.init(colors: colors),
                                center: .center,
                                startAngle: .zero,
                                endAngle: .init(degrees: 360)
                            )
                        )
                )
        }
    }
}

struct Track: View {
    var colors: [Color] = [Color.trackColor]
    var width: CGFloat = 200.0
    var height: CGFloat = 200.0
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.backgroundColor)
                .frame(width: width, height: height)
                .overlay(
                    Circle()
                        .stroke(style: StrokeStyle(lineWidth: 20))
                        .fill(AngularGradient(gradient: Gradient(colors: colors), center: .center))
                )
        }
    }
}

struct CircularProgressView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.backgroundColor.edgesIgnoringSafeArea(.all)
            CircularProgressView()
        }
    }
}
