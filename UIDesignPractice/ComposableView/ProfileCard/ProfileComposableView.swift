//
//  ProfileComposableView.swift
//  UIDesignPractice
//
//  Created by Mounika Ankeswarapu on 30/04/23.
//

import Foundation
import SwiftUI
import SwiftUI

struct ProfileComposableView: View {
    var body: some View {
        CardView(backgroundColor: .secondaryBgColor, cornerRadius: 24, padding: 32, stroke: .clear, content:  {
            VStack(spacing: 28) {
                VStack(spacing: 16) {
                    Image("profile")
                        .resizable()
                        .frame(width: 232, height: 232)
                        .padding(.bottom, 8)
                    
                    Text("Alina Smith")
                        .font(.title3.bold())
                        .foregroundColor(.primaryTextColor)
                    
                    Text("Hi, I'm Alina. I’m a UX/UI web and mobile designer with over 6 years of exp. in helping brands make it big. ")
                        .font(.callout)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.secondaryTextColor)
                }
                
               Button(action: { }, label: {
                   Text("Hire Me")
                       .frame(width: 110)
                       .padding(.horizontal, 16)
                       .padding(.vertical, 12)
                       .background(Color.ButtonColor)
                       .foregroundColor(.white)
                       .cornerRadius(24)
               })
            }
        })
        .cornerRadius(24)
    }
}

struct ProfileComposableView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            ProfileComposableView()
                .padding(.horizontal, 20)
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.white)
    }
}
