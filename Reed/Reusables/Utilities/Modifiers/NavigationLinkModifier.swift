//
//  NavigationLinkModifier.swift
//  Reed
//
//  Created by Mitko on 6.01.22.
//

import SwiftUI

// MARK: - NavigationLinkModifier

struct NavigationLinkModifier<T: View>: ViewModifier {

    let view: T

    func body(content: Content) -> some View {

        NavigationLink(destination: view) { content }
    }
}

// MARK: - NavigationLinkListModifier

struct NavigationLinkListModifier<T: View, V: Hashable>: ViewModifier {

    let selection: Binding<V?>
    let tag: V
    let view: T

    func body(content: Content) -> some View {
        NavigationLink(
            tag: tag,
            selection: selection,
            destination: { view },
            label: { content }
        )
    }
}
