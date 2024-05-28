//
//  users_1.swift
//  App610
//
//  Created by Вячеслав on 5/28/24.
//

import SwiftUI

struct users_1: View {
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                VStack(alignment: .center, spacing: 5, content: {
                    
                    Text("Come in and start earning")
                        .foregroundColor(.white)
                        .font(.system(size: 24, weight: .semibold))
                        .multilineTextAlignment(.center)

                    Text("Discover earning opportunities")
                        .foregroundColor(.gray)
                        .font(.system(size: 15, weight: .regular))
                        .multilineTextAlignment(.center)
                })
                .padding()
                
                Spacer()
                
                Image("users_1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                NavigationLink(destination: {
                    
                    users_2()
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
    users_1()
}
