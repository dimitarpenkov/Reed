//
//  TabBar.swift
//  Reed
//
//  Created by Mitko on 16.12.21.
//

import SwiftUI

struct TabBar: View {
    
    @Binding var selectedTab: String
    @State var tabPoints: [CGFloat] = []
    var body: some View {
        HStack(spacing: 0) {
            TabBarButton(image: "house", selectedTab: $selectedTab, tabPoints: $tabPoints)
            TabBarButton(image: "bookmark", selectedTab: $selectedTab, tabPoints: $tabPoints)
            TabBarButton(image: "message", selectedTab: $selectedTab, tabPoints: $tabPoints)
            TabBarButton(image: "person", selectedTab: $selectedTab, tabPoints: $tabPoints)
        }
        .padding()
        .background(
            Color.purple.opacity(0.4)
                .clipShape(TabCurve(tabPoint: getCurvePoint() - 15))
        )
        .overlay(
            Circle()
                .fill(Color.white)
                .frame(width: 10, height: 10)
                .offset(x: getCurvePoint() - 20)
            ,
            alignment: .bottomLeading
        )
        .cornerRadius(30)
        .padding(.horizontal)
    }
    
    func getCurvePoint() -> CGFloat {
        
        if tabPoints.isEmpty {
            return 10
        } else {
            switch selectedTab {
            case "house":
                return tabPoints[0]
            case "bookmark":
                return tabPoints[1]
            case "message":
                return tabPoints[2]
            default:
                return tabPoints[3]
            }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct TabBarButton: View {
    
    var image: String
    @Binding var selectedTab: String
    @Binding var tabPoints: [CGFloat]

    var body: some View {
        GeometryReader { reader -> AnyView in
            
            let midX = reader.frame(in: .global).midX
            
            DispatchQueue.main.async {
                if tabPoints.count <= 4 {
                    tabPoints.append(midX)
                }
            }
            return AnyView(
                Button {
                    withAnimation(
                        .interactiveSpring(
                            response: 0.5,
                            dampingFraction: 0.5,
                            blendDuration: 0.6
                        )
                    ) {
                        selectedTab = image
                    }
                } label: {
                    Image(systemName: "\(image)\(selectedTab == image ? ".fill" : "")")
                        .font(.system(size: 25, weight: .semibold))
                        .foregroundColor(.white)
                        .offset(y: selectedTab == image ? -10 : 0)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            )
        }
        .frame(height: 50)
    }
}
