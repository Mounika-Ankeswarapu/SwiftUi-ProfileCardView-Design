//
//  PrimaryButton.swift
//  UIDesignPractice
//
//  Created by Mounika Ankeswarapu on 01/05/23.
//


import SwiftUI

struct PrimaryButton: View {
    var title: String
    var type: ButtonType = .fill
    var isInfinity: Bool = true
    var onTap: () -> Void
    var foregroundColor: Color {
        return type == .fill ? .white : .blue
    }

    var backgroundColor: Color {
        return type == .fill ? .blue : .clear
    }

    var body: some View {
        HStack {
            Button(action: { onTap() }, label: {
                Text(title)
                    .if(isInfinity) {
                        $0.frame(maxWidth: .infinity, alignment: .center)
                    }
                    .padding(12)
                    .foregroundColor(foregroundColor)
                    .background(backgroundColor)
                    .cornerRadius(8.0)
                    .padding(.horizontal, 20)

            })
        }
    }

    enum ButtonType {
        case link
        case fill
    }
}

struct PrimaryButton_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryButton(title: "Title", type: .fill, isInfinity: true, onTap:  {
            
        })
    }
}
