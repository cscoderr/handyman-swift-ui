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
        NavigationView {
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
                                    .frame(width: 30, height: 8)
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
                    
                    if(self.currentStep == Constants().onboardings.count - 1) {
                        NavigationLink {
                            LoginView()
                        } label: {
                            Text("Get Started")
                                .foregroundColor(.purple)
                                .font(.headline)
                        }
                    } else {
                        Button {
                            self.currentStep += 1
                        } label: {
                            Text("Next")
                                .foregroundColor(.purple)
                                .font(.headline)

                        }
                    }
                    

                    
                }
            } .padding(.horizontal, 20)
                .padding(.vertical, 20)
            
        }
        }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
            
    }
}
