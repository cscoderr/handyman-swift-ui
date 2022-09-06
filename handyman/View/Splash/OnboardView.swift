//
//  OnboardView.swift
//  handyman
//
//  Created by Tomiwa Idowu on 06/09/2022.
//

import SwiftUI

struct OnboardView: View {
    let data: Onboarding
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Spacer()
            Image(data.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                
            
            Text(data.title)
                .font(.custom("Poppins", size: 25))
            
            Text(data.description)
                .foregroundColor(.gray)
                .multilineTextAlignment(.leading)
                .font(.body)
            Spacer()
            
//            IndicatorView()
        }
    }
}

struct OnboardView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardView(
            data: Onboarding(title: "Welcome to Hanyman Service", imageName: "walkthrough_1", description: "Handyma Service - On-Demand Home Services App with Complete Solution")
        )
    }
}
