//
//  ListPracticeView.swift
//  SOPT39-Seminar
//
//  Created by dayeon on 10/17/26.
//

import SwiftUI

struct ListPracticeView: View {
    
    struct MoaMoa: Identifiable, Hashable {
        let id = UUID()
        let name: String
    }
    // hashable은 왜 넣었을까

    private var moas = [
        MoaMoa(name: "성환"),
        MoaMoa(name: "세령"),
        MoaMoa(name: "서영"),
        MoaMoa(name: "주희")
    ]

    @State private var multiSelection = Set<UUID>()
    
    var body: some View {
        NavigationStack {
            List(moas, selection: $multiSelection) { moayo in
                Text(moayo.name)
            }
            .navigationTitle("Moas")
            .toolbar { EditButton() }
            .listStyle(.plain)
        }
        
        Text("\(multiSelection.count) selections")
    }
}


#Preview {
    ListPracticeView()
}
