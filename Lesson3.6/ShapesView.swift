//
//  ShapesView.swift
//  Lesson3.6
//
//  Created by Андрей Барсук on 19.06.2022.
//

import SwiftUI

struct ShapesView: View {
    let awards = Award.getAwards()
    var activeAwards: [Award]  {
        awards.filter { $0.awarded }
    }

    var body: some View {
        VStack {
            CustomGridView(items: activeAwards, columns: 2) { itemSize, award in
                VStack {
                    award.awardView
                    Text(award.title)
                }
                .padding()
                .frame(width: itemSize, height: itemSize)
            }
        }
    }
}

//struct ShapesView: View {
//    let awards = Award.getAwards()
//    let columns = [
//        GridItem(.adaptive(minimum: 160, maximum: 200))
//    ]
//    var activeAwards: [Award]  {
//        awards.filter { $0.awarded }
//    }
//
//    var body: some View {
//        VStack {
//            ScrollView {
//                LazyVGrid(columns: columns) {
//                    ForEach(activeAwards, id: \.title) { award in
//                        VStack {
//                            award.awardView
//                            Text(award.title)
//                        }
//                    }
//                }
//            }
//        }
//    }
//}

struct ShapesView_Previews: PreviewProvider {
    static var previews: some View {
        ShapesView()
    }
}
