//
//  CustomCardView.swift
//  UIDesignPractice
//
//  Created by Mounika Ankeswarapu on 04/05/23.
//

import SwiftUI
struct CustomCardView: View {
    var body: some View {
        CardView(backgroundColor: .gray.opacity(0.4), padding: 24, stroke: .clear, content: {
            VStack(spacing: 28) {
                VStack(spacing: 16) {
                    profileImage
                    name
                    description
                    hireMeButton
                    notInterestedButton
                }
            }
        })
        .cornerRadius(8)
    }
    
    @ViewBuilder
    var profileImage: some View {
        Image("profile")
            .resizable()
            .frame(width: 232, height: 232)
            .padding(.bottom, 8)
    }
    
    @ViewBuilder
    var name: some View {
        Text("Alina Smith")
            .font(.title3.bold())
            .foregroundColor(.primaryTextColor)
    }
    
    @ViewBuilder
    var description: some View {
        Text("Hi, I'm Alina. I’m a UX/UI web and mobile designer with over 6 years of exp. in helping brands make it big. ")
            .font(.callout)
            .multilineTextAlignment(.center)
            .foregroundColor(.secondaryTextColor)
        
    }
    @ViewBuilder
    var hireMeButton: some View {
        Button(action: {}, label:  {
            Text("Hire Me")
                .customButtonModifier()
        })
    }
 
    var notInterestedButton: some View {
        Button(action: {}, label:  {
            Text(" Not Interested ")
                
        })
        .customButtonModifier()
    }
}

struct CustomCardView_Previews: PreviewProvider {
        static var previews: some View {
            VStack {
                ProfileComposableView()
                    .padding(.horizontal, 20)
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.white)
        }
    }
    
    
struct ButtonModifier: ViewModifier {
        var width: CGFloat
        var verticalPadding: CGFloat
        var horizontalPadding: CGFloat
        var backgroundColor: Color
        var foregroundColor: Color
        var cornerRadius: CGFloat
        
        func body(content: Content) -> some View {
            content
                .frame(width: width)
                .padding(.horizontal, horizontalPadding)
                .padding(.vertical, verticalPadding)
                .background(backgroundColor)
                .foregroundColor(foregroundColor)
                .cornerRadius(cornerRadius)
        }
    }
    
    extension View {
        func customButtonModifier(width: CGFloat = 110, verticalPadding: CGFloat = 16, horizontalPadding: CGFloat = 16, backgroundColor: Color = Color.ButtonColor, foregroundColor: Color = .white, cornerRadius: CGFloat = 24) -> some View {
            modifier(ButtonModifier(width: width, verticalPadding: verticalPadding, horizontalPadding: horizontalPadding, backgroundColor: backgroundColor, foregroundColor: foregroundColor, cornerRadius: cornerRadius))
        }
    }

