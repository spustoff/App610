//
//  users_2.swift
//  App610
//
//  Created by Вячеслав on 5/28/24.
//

import SwiftUI

struct users_2: View {
    var body: some View {
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                VStack(alignment: .center, spacing: 5, content: {
                    
                    Text("Rate our app\nin the AppStore")
                        .foregroundColor(.white)
                        .font(.system(size: 24, weight: .semibold))
                        .multilineTextAlignment(.center)

                    Text("Help make the app even better")
                        .foregroundColor(.gray)
                        .font(.system(size: 15, weight: .regular))
                        .multilineTextAlignment(.center)
                })
                .padding()
                
                Spacer()
                
                Image("users_2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                NavigationLink(destination: {
                    
                    users_3()
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
    users_2()
}
