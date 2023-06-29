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
    let professions: String
    let doctorsIcons: String
    let analyzes: String
    
    static func getInfo() -> [Hospital] {
        var news: [Hospital] = []
        
        let newsTitle = DataStore.shared.newsTitles
        let newsText = DataStore.shared.newsTexts
        let newsImage = DataStore.shared.newsImages
        
        let analyzesImage = DataStore.shared.analyzesImages
        let analyzesTests = DataStore.shared.analyzes
        let test = DataStore.shared.analyzes
        let professions = DataStore.shared.professions
        let doctorsIcons = DataStore.shared.doctorsIcons
        
        for index in 0..<newsTitle.count {
            
            let model = Hospital(
                newsTitle: newsTitle[index % newsTitle.count],
                newsText: newsText[index % newsText.count],
                newsImage: newsImage[index % newsImage.count],
                analyzesImage: analyzesImage[index],
                analyzesTests: analyzesTests.values.map { $0 }[index],
                professions: professions[index],
                doctorsIcons: doctorsIcons[index],
                analyzes: test.keys.map{ $0 }[index]
            )
            news.append(model)
        }
        return news
    }
}
