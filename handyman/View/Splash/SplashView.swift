//
//  SplashView.swift
//  handyman
//
//  Created by Tomiwa Idowu on 06/09/2022.
//

import SwiftUI

struct SplashView: View {
    @State private var isActive = true
    
    var body: some View {
        TabView {
            OnboardView(
                data: Onboarding(title: "Welcome to Hanyman Service", imageName: "walkthrough_1", description: "Handyma Service - On-Demand Home Services App with Complete Solution")
            )
            OnboardView(
                data: Onboarding(title: "Welcome to Hanyman Service", imageName: "walkthrough_1", description: "Handyma Service - On-Demand Home Services App with Complete Solution")
            )
            OnboardView(
                data: Onboarding(title: "Welcome to Hanyman Service", imageName: "walkthrough_1", description: "Handyma Service - On-Demand Home Services App with Complete Solution")
            )
            OnboardView(
                data: Onboarding(title: "Welcome to Hanyman Service", imageName: "walkthrough_1", description: "Handyma Service - On-Demand Home Services App with Complete Solution")
            )
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
            
    }
}
