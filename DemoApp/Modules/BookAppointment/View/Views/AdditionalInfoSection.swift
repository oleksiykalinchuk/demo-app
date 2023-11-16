//
//  AdditionalInfoSection.swift
//  DemoApp
//
//  Created by Oleksii Kalinchuk on 16.11.2023.
//

import SwiftUI

struct AdditionalInfoSection: View {
    let title: String
    let subtitle: String
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text(title)
                        .font(.system(size: 16))
                        .padding(.vertical, 8)
                    Text(subtitle)
                        .font(.system(size: 30, weight: .semibold, design: .rounded))
                }
                Spacer()
                Button {
                    // possible handling
                } label: {
                    Image(systemName: "mustache")
                        .tint(.black)
                        .padding(4)
                }
                .padding()
                .background(Color(.lightGray))
                .clipShape(Circle())
                .frame(width: 60, height: 60)
            }
        }
    }
}

#Preview {
    AdditionalInfoSection(title: "Barber", subtitle: "Melvin Wallance")
}
