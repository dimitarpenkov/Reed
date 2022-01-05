//
//  ActionButton.swift
//  Reed
//
//  Created by Mitko on 4.01.22.
//

import SwiftUI

struct ActionButton: View {

    var title: String = "Currently Reading"
    var action: () -> Void = {}

    var body: some View {
        Button {
            //todo
        } label: {
            Text(title)
                .font(.primary15Bold)
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 15)
        .background(Color.actionButtonBackgroundColor)
        .foregroundColor(Color.white)
        .cornerRadius(30)
    }
}

struct ActionButton_Previews: PreviewProvider {
    static var previews: some View {
        ActionButton()
    }
}
