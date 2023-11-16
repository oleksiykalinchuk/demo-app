//
//  TimeSectionView.swift
//  DemoApp
//
//  Created by Oleksii Kalinchuk on 15.11.2023.
//

import SwiftUI

struct TimeSectionView: View {
    @Binding var selectedTime: Date?
    @State private var showsAvailableDates: Bool = false
    let availableTimes: [Date]
    private let dateFormatter = DateFormatters.HHmm()
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                VStack(alignment: .leading) {
                    Text("Time")
                        .padding(.vertical, 8)
                    Text(dateFormatter.string(from: selectedTime ?? Date()))
                        .font(.system(size: 30, weight: .semibold, design: .rounded))
                }
                Spacer()
                Button {
                    withAnimation {
                        showsAvailableDates.toggle()
                    }
                } label: {
                    Image(systemName: "clock")
                        .tint(.black)
                }
                .padding()
                .background(Color(.lightGray))
                .clipShape(Circle())
                .frame(width: 60, height: 60)
            }
            
            if showsAvailableDates {
                HStack {
                    ForEach(availableTimes, id: \.self) { time in
                        Text(dateFormatter.string(from: time))
                            .foregroundColor(time == selectedTime ? .white : .black)
                            .font(.system(size: 16, weight: .semibold))
                            .padding(.vertical)
                            .padding(.horizontal, 24)
                            .background(time == selectedTime ? Color(.lightGreen) : .clear)
                            .cornerRadius(16)
                            .onTapGesture {
                                selectedTime = time
                            }
                            .if(time != selectedTime) { view in
                                view.overlay(RoundedRectangle(cornerRadius: 16).stroke().foregroundColor(.black))
                            }
                    }
                }
            }
        }
    }
    
    func getBorderColor(time: Date) -> Color {
        return selectedTime == time ? .clear : .black
    }
}

#Preview {
    TimeSectionView(selectedTime: .constant(Date()), availableTimes: [])
}
