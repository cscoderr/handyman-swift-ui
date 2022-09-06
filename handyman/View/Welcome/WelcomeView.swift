//
//  WelcomeView.swift
//  handyman
//
//  Created by Tomiwa Idowu on 06/09/2022.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack {
            Image("ic_app_logo")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100, alignment: .center)
                .padding(.bottom, 15)
            
            Text("Handyman Service")
                .font(.largeTitle)
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
