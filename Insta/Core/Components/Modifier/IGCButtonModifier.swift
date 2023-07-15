//
//  IGCButtonModifier.swift
//  Insta
//
//  Created by Krishna on 15/07/23.
//

import SwiftUI

struct IGCButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.footnote)
            .fontWeight(.heavy)
            .frame(width: 250, height: 38.0)
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .cornerRadius(6)
    }
}

struct IGCButtonModifier_Previews: PreviewProvider {
    static var previews: some View {
        Button {
             
        } label: {
            Text("Login")
                .modifier(IGCButtonModifier())
            
        }
    }
}
