//
//  CardView.swift
//  UIDesignPractice
//
//  Created by Mounika Ankeswarapu on 30/04/23.
//

import Foundation
import SwiftUI

struct CardView<Content: View>: View {
    init(foregroundColor: Color = .black, backgroundColor: Color = .gray.opacity(0.4), cornerRadius: CGFloat = 8, padding: CGFloat = 8, stroke: Color = .gray, @ViewBuilder content: () -> Content) {
        self.foregroundColor = foregroundColor
        self.backgroundColor = backgroundColor
        self.cornerRadius = cornerRadius
        self.padding = padding
        self.stroke = stroke
        self.content = content()
    }

    var foregroundColor: Color
    var backgroundColor: Color
    var cornerRadius: CGFloat
    var padding: CGFloat
    var stroke: Color
    var content: Content
    var body: some View {
        content
            .egCardView(foregroundColor: foregroundColor, backgroundColor: backgroundColor, cornerRadius: cornerRadius, padding: padding, stroke: stroke)
    }
}

extension View {
    func egCardView(foregroundColor: Color = .black,
                    backgroundColor: Color = .gray.opacity(0.4),
                    cornerRadius: CGFloat = 8,
                    padding: CGFloat = 8,
                    stroke: Color = .gray) -> some View {
        modifier(Border(backgroundColor: backgroundColor, cornerRadius: cornerRadius, padding: padding, stroke: stroke))
    }
}

struct Border: ViewModifier {
    var backgroundColor: Color
    var cornerRadius: CGFloat
    var padding: CGFloat
    var stroke: Color

    func body(content: Content) -> some View {
        content
            .padding(padding)
            .background(backgroundColor)
            .overlay(
                RoundedRectangle(cornerRadius: cornerRadius)
                    .stroke(stroke, lineWidth: 1)
            )
    }
}
