//
//  IGCTextModifier.swift
//  Insta
//
//  Created by Krishna on 14/07/23.
//

import SwiftUI

struct IGCTextModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(10)
            .background(Color(.systemGray6))
            .cornerRadius(6)
            .padding(.horizontal)
    }
}

struct IGCTextModifier_Previews: PreviewProvider {
    static var previews: some View {
        TextField("asdf", text: .constant("Nosd"))
            .modifier(IGCTextModifier())
        
    }
}
