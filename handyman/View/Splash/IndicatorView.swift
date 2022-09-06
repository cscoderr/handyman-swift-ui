//
//  IndicatorView.swift
//  handyman
//
//  Created by Tomiwa Idowu on 06/09/2022.
//

import SwiftUI

struct IndicatorView: View {
    var body: some View {
        HStack{
            HStack {
                Button {
                    print("clicked")
                } label: {
                    
                }
                .frame(width: 15, height: 15)
                .background(.purple)
                .clipShape(Circle())
                
                Button {
                    print("clicked")
                } label: {
                    
                }
                .frame(width: 15, height: 15)
                .background(.gray)
                .clipShape(Circle())
                
                Button {
                    print("clicked")
                } label: {
                    
                }
                .frame(width: 15, height: 15)
                .background(.gray)
                .clipShape(Circle())

            }
            Spacer()
            Button {
                print("Next")
            } label: {
                Text("Next")
                    .foregroundColor(.purple)
                    .font(.headline)
            }

            
        }
    }
}

struct IndicatorView_Previews: PreviewProvider {
    static var previews: some View {
        IndicatorView()
    }
}
