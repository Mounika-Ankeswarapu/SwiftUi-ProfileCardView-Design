//
//  ShoesView.swift
//  UIDesignPractice
//
//  Created by Mounika Ankeswarapu on 01/05/23.
//

import SwiftUI

struct ShoesView: View {
    var body: some View {
        NavigationStack {

            HStack {
              
                    Image("profile")
                        .resizable()
                        .clipped()

                        .frame(maxWidth: 100.0, maxHeight: 100.0,  alignment: .leading)
                        .padding(.leading, 10)
               

                VStack{
                    Text("Nike Air Max 270").padding(.bottom, 8.0)
                    
                    Text("Nike Air Max 270").padding(.bottom, 8.0)
                    
                    Text("Nike Air Max 270").padding(.bottom, 8.0)
                    
                } .frame(width: 200, height: 100, alignment: .leading)
                    .padding(.leading)
            
        
            } .padding()
            
            .background(
            Color.white
                .cornerRadius(20)
                .shadow(color: Color.black.opacity(0.7), radius: 10, x: 0, y: 10)
        )
                
        } .navigationTitle("Bestsellers")
            
            
    }
}

struct ShoesView_Previews: PreviewProvider {
    static var previews: some View {
        ShoesView()
    }
}
