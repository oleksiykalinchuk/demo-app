//
//  DateSectionView.swift
//  DemoApp
//
//  Created by Oleksii Kalinchuk on 15.11.2023.
//

import SwiftUI

struct DateSectionView: View {
    let date: Date
    let tapHandler: (() -> Void)
    private let dateFormatter = DateFormatters.ddMMMyy()
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("Date")
                        .padding(.vertical, 8)
                    Text(dateFormatter.string(from: date))
                        .font(.system(size: 30, weight: .semibold, design: .rounded))
                }
                Spacer()
                Button {
                    tapHandler()
                } label: {
                    Image(systemName: "calendar.circle")
                        .tint(.black)
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
    DateSectionView(date: Date(), tapHandler: {
        
    })
}
