//
//  ContentView.swift
//  DemoApp
//
//  Created by Oleksii Kalinchuk on 15.11.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // Possible use of factory, builder or ect
        BookAppointmentView(viewModel: .init(repo: BookAppoinmentRepository()))
    }
}

#Preview {
    ContentView()
}
