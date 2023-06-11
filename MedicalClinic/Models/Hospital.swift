//
//  Model.swift
//  MedicalClinic
//
//  Created by Сазонов Станислав on 04.06.2023.
//

struct Hospital {
    let newsTitle: String
    let newsText: String
    let newsImage: String
    let analyzesTitle: String
    
    static func getInfo() -> [Hospital] {
        var news: [Hospital] = []
        
        let newsTitle = DataStore.shared.newsTitles
        let newsText = DataStore.shared.newsTexts
        let newsImage = DataStore.shared.newsImages
        let analyzesTitle = DataStore.shared.analyzesTitles
        
        for index in 0..<analyzesTitle.count {
            let model = Hospital(
                newsTitle: newsTitle[index % newsTitle.count],
                newsText: newsText[index % newsText.count],
                newsImage: newsImage[index % newsImage.count],
                analyzesTitle: analyzesTitle[index]
            )
            news.append(model)
        }
        return news
    }
}
