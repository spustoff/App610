//
//  reviewers_1.swift
//  App610
//
//  Created by Вячеслав on 5/28/24.
//

import SwiftUI

struct reviewers_1: View {
    var body: some View {
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                VStack(alignment: .center, spacing: 5, content: {
                    
                    Text("Hide your capabilities")
                        .foregroundColor(.white)
                        .font(.system(size: 24, weight: .semibold))
                        .multilineTextAlignment(.center)

                    Text("Keep the information and win against your friends")
                        .foregroundColor(.gray)
                        .font(.system(size: 15, weight: .regular))
                        .multilineTextAlignment(.center)
                })
                .padding()
                
                Spacer()
                
                Image("reviewers_1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                NavigationLink(destination: {
                    
                    reviewers_2()
                        .navigationBarBackButtonHidden()
                    
                }, label: {
                    
                    Text("Next")
                        .foregroundColor(.black)
                        .font(.system(size: 15, weight: .medium))
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(RoundedRectangle(cornerRadius: 15).fill(Color("primary")))
                        .padding()
                })
            }
        }
    }
}

#Preview {
    reviewers_1()
}
