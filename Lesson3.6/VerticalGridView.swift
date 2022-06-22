//
//  VerticalGridView.swift
//  Lesson3.6
//
//  Created by Андрей Барсук on 19.06.2022.
//

import SwiftUI

struct VerticalGridView: View {
    let data = (1...100).map { "Item: \($0)"}
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(data, id: \.self) { item in
                    Text(item)
                }
            }
        }
    }
}

struct VerticalGridView_Previews: PreviewProvider {
    static var previews: some View {
        VerticalGridView()
    }
}
