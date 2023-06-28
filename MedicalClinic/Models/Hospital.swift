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
    let analyzesGroup: String
    let analyzesImage: String
    let analyzesTest: [String]
    let professions: String
    let doctorsIcons: String
    
    static func getInfo() -> [Hospital] {
        var news: [Hospital] = []
        
        let newsTitle = DataStore.shared.newsTitles
        let newsText = DataStore.shared.newsTexts
        let newsImage = DataStore.shared.newsImages
        let analyzesTitle = DataStore.shared.analyzesGroups
        let analyzesImage = DataStore.shared.analyzesImages
        let analyzesTest = DataStore.shared.analyzesDict
        let professions = DataStore.shared.professions
        let doctorsIcons = DataStore.shared.doctorsIcons
        
        for index in 0..<analyzesTitle.count {
            
            let model = Hospital(
                newsTitle: newsTitle[index % newsTitle.count],
                newsText: newsText[index % newsText.count],
                newsImage: newsImage[index % newsImage.count],
                analyzesGroup: analyzesTitle[index],
                analyzesImage: analyzesImage[index],
                analyzesTest: analyzesTest[analyzesTitle[index]] ?? [],
                professions: professions[index],
                doctorsIcons: doctorsIcons[index]
            )
            news.append(model)
        }
        return news
    }
}
