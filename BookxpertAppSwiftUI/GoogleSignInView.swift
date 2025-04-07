//
//  GoogleSignInView.swift
//  BookxpertAppSwiftUI
//
//  Created by Rambabu on 25/03/25.
//

import SwiftUI

struct GoogleSignInView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            CustomNavigationBar(title: "Google Sign-In") {
                presentationMode.wrappedValue.dismiss() // Back action
            }
            Spacer()
        
            
        }
        .toolbar(.hidden, for: .navigationBar)
        
    }
}

#Preview {
    GoogleSignInView()
}
