//
//  ContentView.swift
//  DeleteRowFromList
//
//  Created by mac on 17/12/2567 BE.
//

import SwiftUI

struct ContentView: View {
    @State private var countries = ["USA", "CANADA", "MEXICO"]
    private func deleteItem(at indexSet: IndexSet) {
        countries.remove(atOffsets: indexSet)
    }

    var body: some View {
        NavigationStack {
            List {
                ForEach(countries, id: \.self) {
                    country in Text("\(country)")
                }
                .onDelete(perform: deleteItem)
                .onMove(perform: moveRow)
            }
            .navigationTitle("Countries")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }
            }
        }
    }
    private func moveRow(source: IndexSet, destination: Int) {
         countries.move(fromOffsets: source, toOffset: destination)
     }
}

#Preview {
    ContentView()
}
