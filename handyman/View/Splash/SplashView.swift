//
//  SplashView.swift
//  handyman
//
//  Created by Tomiwa Idowu on 06/09/2022.
//

import SwiftUI

struct SplashView: View {
    @State private var currentStep = 0
    
    
    var body: some View {
        VStack {
            
            TabView(selection: $currentStep) {
                
                ForEach(0..<Constants().onboardings.count) { it in
                    OnboardView(data: Constants().onboardings[it])
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            
            

            
            HStack{
                HStack {
                    ForEach(0..<Constants().onboardings.count) { it in
                        
                        if(it == self.currentStep) {
                           Rectangle()
                                .frame(width: 30, height: 10)
                                .cornerRadius(10)
                                .foregroundColor(.purple)
                        }
                        else {
                            Circle()
                                .frame(width: 10, height: 10)
                                .foregroundColor(.gray)
                        }
                    }
                }
                Spacer()
                Button {
                    print("Next")
                } label: {
                    Text(self.currentStep < Constants().onboardings.count - 1 ? "Next" : "Get Started")
                        .foregroundColor(.purple)
                        .font(.headline)
                }

                
            }
        } .padding(.horizontal, 20)
            .padding(.vertical, 20)
        
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
            
    }
}
