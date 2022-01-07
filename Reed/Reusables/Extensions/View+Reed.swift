//
//  View+Reed.swift
//  Reed
//
//  Created by Mitko on 6.01.22.
//

import SwiftUI

// MARK: - NavigationLinkModifier Extension

extension View {

    func navigationLinkToView<T: View>(view: T) -> some View {

        modifier(NavigationLinkModifier(view: view))
    }

    func navigationLinkForListItem<T: View, V: Hashable>(
        selection: Binding<V?>,
        tag: V,
        view: T
    ) -> some View {

        modifier(NavigationLinkListModifier(selection: selection, tag: tag, view: view))
    }
}
