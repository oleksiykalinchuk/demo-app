//
//  BookAppoinmentRepository.swift
//  DemoApp
//
//  Created by Oleksii Kalinchuk on 16.11.2023.
//

import Foundation

protocol BookAppoinmentRepositoryProtocol {
    func getAppoinmentEntity() -> AppoinmentEntity
}

class BookAppoinmentRepository: BookAppoinmentRepositoryProtocol {
    func getAppoinmentEntity() -> AppoinmentEntity {
        let calendar = Calendar.current
        let additionalDate = calendar.date(byAdding: .minute, value: 10, to: Date()) ?? Date()
        return AppoinmentEntity(date: Date(), availableTimes: [Date(), additionalDate], workerName: "Melwim Wallance", workerJob: "Barber")
    }
}

