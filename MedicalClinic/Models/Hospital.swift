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
    let analyzesImage: String
    let analyzesTests: [String]
    let doctorsIcons: String
    let analyzes: String
    let profession: String
    let doctors: [String]
    
    static func getInfo() -> [Hospital] {
        var news: [Hospital] = []
        
        let newsTitle = DataStore.shared.newsTitles
        let newsText = DataStore.shared.newsTexts
        let newsImage = DataStore.shared.newsImages
        let analyzesImage = DataStore.shared.analyzesImages
        let analyzesTests = DataStore.shared.analyzes.sorted { $0.0 < $1.0 }
        let doctorsIcons = DataStore.shared.doctorsIcons
        let professions = DataStore.shared.specialists.sorted { $0.0 < $1.0 }
        
        for index in 0..<newsTitle.count {
            
            let model = Hospital(
                newsTitle: newsTitle[index % newsTitle.count],
                newsText: newsText[index % newsText.count],
                newsImage: newsImage[index % newsImage.count],
                analyzesImage: analyzesImage[index],
                analyzesTests: analyzesTests[index].value,
                doctorsIcons: doctorsIcons[index],
                analyzes: analyzesTests[index].key,
                profession: professions[index].key,
                doctors: professions[index].value
            )
            news.append(model)
        }
        return news
    }
}
