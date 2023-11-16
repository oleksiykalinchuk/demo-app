//
//  DateFormatters.swift
//  DemoApp
//
//  Created by Oleksii Kalinchuk on 16.11.2023.
//

import Foundation

enum DateFormatters {
    static func HHmm() -> DateFormatter {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm"
        return dateFormatter
    }
    
    static func ddMMMyy() -> DateFormatter {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd MMM yy"
        return dateFormatter
    }
}
