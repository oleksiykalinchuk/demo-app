//
//  BookAppointmentViewModel.swift
//  DemoApp
//
//  Created by Oleksii Kalinchuk on 15.11.2023.
//

import Foundation

class BookAppointmentViewModel: ObservableObject {
    @Published var selectedAvailableTime: Date?
    @Published var selectedDate: Date = Date()
    @Published var appoinmentEntity: AppoinmentEntity
    
    private let repository: BookAppoinmentRepositoryProtocol!
    
    init(repo: BookAppoinmentRepositoryProtocol) {
        self.repository = repo
        self.appoinmentEntity = repo.getAppoinmentEntity()
        self.selectedAvailableTime = appoinmentEntity.availableTimes.first
        self.selectedDate = appoinmentEntity.date
    }
    
    func tapBack() {
        
    }
    
    func tapConfirm() {
        
    }
    
    func tapSelectDate() {
        
    }
}
