//
//  ContentView.swift
//  AddRowsToList
//
//  Created by mac on 17/12/2567 BE.
//

import SwiftUI

struct ContentView: View {
    @State var numbers = [1, 2, 3, 4]
    private func addNumber() {
        numbers.append(numbers.last!.advanced(by: 1))
    }

    var body: some View {
        NavigationStack {
            List {
                ForEach(self.numbers, id: \.self) {
                    number in Text("\(number)")
                }
            }
            .navigationTitle("Number List")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                Button("Add") {
                    addNumber()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
