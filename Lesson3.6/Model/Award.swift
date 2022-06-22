//
//  Award.swift
//  Lesson3.6
//
//  Created by Андрей Барсук on 19.06.2022.
//

import SwiftUI

struct Award {
    let awardView: AnyView
    let title: String
    let awarded: Bool
    
    static func getAwards() -> [Award] {
        [
            Award(awardView: AnyView(RectView().frame(width: 160, height: 160)), title: "Rect Award", awarded: true),
            Award(awardView: AnyView(PathView().frame(width: 160, height: 160)), title: "Path Award", awarded: true),
            Award(awardView: AnyView(CurveView().frame(width: 160, height: 160)), title: "Curve Award", awarded: true),
            Award(awardView: AnyView(RectView().frame(width: 160, height: 160)), title: "Rect Award", awarded: true),
            Award(awardView: AnyView(PathView().frame(width: 160, height: 160)), title: "Path Award", awarded: true),
            Award(awardView: AnyView(CurveView().frame(width: 160, height: 160)), title: "Curve Award", awarded: true),
            Award(awardView: AnyView(RectView().frame(width: 160, height: 160)), title: "Rect Award", awarded: true),
            Award(awardView: AnyView(PathView().frame(width: 160, height: 160)), title: "Path Award", awarded: true),
            Award(awardView: AnyView(CurveView().frame(width: 160, height: 160)), title: "Curve Award", awarded: true),
            Award(awardView: AnyView(RectView().frame(width: 160, height: 160)), title: "Another Rect Award", awarded: false)
        ]
    }
}
