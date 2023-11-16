//
//  BookAppointmentView.swift
//  DemoApp
//
//  Created by Oleksii Kalinchuk on 15.11.2023.
//

import SwiftUI

struct BookAppointmentView: View {
    @StateObject private var viewModel: BookAppointmentViewModel
    
    init(viewModel: BookAppointmentViewModel) {
        self._viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        ZStack {
            Color(.whiteBackground)
                .ignoresSafeArea()
            contentView
        }
    }
    
    private var contentView: some View {
        VStack(alignment: .leading) {
            navigationView
                .padding()
            titleView
            infoSections
            Spacer()
            confirmButton
                .padding(.bottom)
        }
        .padding(.horizontal)
    }
    
    private var titleView: some View {
        VStack(alignment: .leading) {
            Text("Book new")
                .font(.system(size: 40, weight: .light))
            Text("Appointment")
                .font(.system(size: 40, weight: .bold, design: .rounded))
        }
    }
    
    private var infoSections: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 16) {
                Divider()
                DateSectionView(date: viewModel.appoinmentEntity.date) {
                    
                }
                Divider()
                TimeSectionView(selectedTime: $viewModel.selectedAvailableTime, availableTimes: viewModel.appoinmentEntity.availableTimes)
                Divider()
                AdditionalInfoSection(title: viewModel.appoinmentEntity.workerJob, subtitle: viewModel.appoinmentEntity.workerName)
                Divider()
            }
        }
    }
 
    private var navigationView: some View {
        HStack {
            Button {
                viewModel.tapBack()
            } label: {
                Image(systemName: "chevron.left")
                    .resizable()
                    .tint(.black)
                    .frame(width: 15, height: 25)
            }
            Spacer()
        }
    }
    
    private var confirmButton: some View {
        Button {
            viewModel.tapConfirm()
        } label: {
            Text("Confirm")
                .font(.callout)
                .foregroundStyle(.white)
        }
        .padding(.vertical, 16)
        .padding(.horizontal, 32)
        .background(Color.black)
        .clipShape(RoundedRectangle(cornerRadius: 32))
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    BookAppointmentView(viewModel: BookAppointmentViewModel(repo: BookAppoinmentRepository()))
}
