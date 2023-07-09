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
    let doctorsIcon: String
    let analyze: String
    let specialist: String
    let doctors: [String]
    let doctorsDescriptions: [String]
    let doctorsPhotos: [String]
    let executionStatus: String
    let analyzesResult: [String]
    let analyzesResultStatus: [String]
    let schedule: String
    
    static func getInfo() -> [Hospital] {
        var news: [Hospital] = []
        
        let newsTitle = DataStore.shared.newsTitles
        let newsText = DataStore.shared.newsTexts
        let newsImage = DataStore.shared.newsImages
        let analyzesImage = DataStore.shared.analyzesImages
        let analyzesTests = DataStore.shared.analyzes.sorted { $0.0 < $1.0 }
        let doctorsIcons = DataStore.shared.doctorsIcons
        let specialists = DataStore.shared.specialists.sorted { $0.0 < $1.0 }
        let doctorsDescriptions = DataStore.shared.doctorsDescriptions
        let testPic = DataStore.shared.doctorsPhotos
        let executionStatus = DataStore.shared.executionStatus
        let analyzesResult = DataStore.shared.analyzesResults
        let analyzesStatus = DataStore.shared.analyzesResultsStatus
        let schedule = DataStore.shared.schedule
        
        for index in 0..<newsTitle.count {
            let model = Hospital(
                newsTitle: newsTitle[index % newsTitle.count],
                newsText: newsText[index % newsText.count],
                newsImage: newsImage[index % newsImage.count],
                analyzesImage: analyzesImage[index],
                analyzesTests: analyzesTests[index].value,
                doctorsIcon: doctorsIcons[index],
                analyze: analyzesTests[index].key,
                specialist: specialists[index].key,
                doctors: specialists[index].value,
                doctorsDescriptions: doctorsDescriptions[index],
                doctorsPhotos: testPic[index],
                executionStatus: executionStatus[index],
                analyzesResult: analyzesResult[index % analyzesResult.count],
                analyzesResultStatus: analyzesStatus[index % analyzesStatus.count],
                schedule: schedule[index % schedule.count]
            )
            news.append(model)
        }
        return news
    }
}

struct Patient {
    let login: String
    let password: String
    
    static func getUser() -> Patient {
        Patient(
            login: "Пациент",
            password: "Password"
        )
    }
}
