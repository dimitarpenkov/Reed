//
//  CloseButton.swift
//  Reed
//
//  Created by Mitko on 6.01.22.
//

import SwiftUI

struct CloseButton: View {

    var onTap: () -> Void?

    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                    onTap()
                } label: {
                    Image(systemName: "x.circle")
                        .font(.system(size: 45))
                }
                .foregroundColor(.white)
                .opacity(0.6)
                .padding(.trailing, 20)
            }
            Spacer()
        }
        .zIndex(1)
    }
}
