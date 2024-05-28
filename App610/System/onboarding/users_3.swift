//
//  users_3.swift
//  App610
//
//  Created by Вячеслав on 5/28/24.
//

import SwiftUI

struct users_3: View {
    
    @AppStorage("status") var status: Bool = false
    
    var body: some View {
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                VStack(alignment: .center, spacing: 5, content: {
                    
                    Text("Don’t miss anything")
                        .foregroundColor(.white)
                        .font(.system(size: 24, weight: .semibold))
                        .multilineTextAlignment(.center)

                    Text("Don’t miss the most userful information")
                        .foregroundColor(.gray)
                        .font(.system(size: 15, weight: .regular))
                        .multilineTextAlignment(.center)
                })
                .padding()
                
                Spacer()
                
                Image("users_3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                HStack {
                    
                    Button(action: {
                        
                        status = true
                        
                    }, label: {
                        
                        Text("Skip")
                            .foregroundColor(.white)
                            .font(.system(size: 15, weight: .medium))
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background(RoundedRectangle(cornerRadius: 15).fill(.gray.opacity(0.3)))
                    })
                    
                    Button(action: {
                        
                        status = true
                        
                    }, label: {
                        
                        Text("Enable Notifications")
                            .foregroundColor(.black)
                            .font(.system(size: 15, weight: .medium))
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background(RoundedRectangle(cornerRadius: 15).fill(Color("primary")))
                    })
                }
                .padding()
                
            }
        }
    }
}

#Preview {
    users_3()
}
