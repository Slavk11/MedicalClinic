//
//  DataStore.swift
//  MedicalClinic
//
//  Created by Сазонов Станислав on 04.06.2023.
//

final class DataStore {
    static let shared = DataStore()
    
    let newsTitles = [
        "Скидка 15%!",
        "Акция!",
        "Высококвалифицированные специалисты",
        "Круглосуточная лаборатория",
        "Первичный осмотр со скидкой!",
        "Широкий спектр лабораторных исследований",
        "Наши преимущества перед другими клиниками",
        "Современное оборудование",
        "Аллергены 1 + 1 🌱🌼",
        "Онлайн консультация 🌐"
    ]
    
    let newsTexts = [
       """
        Уважаемые клиенты! Медицинская клиника Здоровье рада предложить вам специальную акцию на все медицинские услуги.
        Только сегодня и до конца месяца вы можете получить скидку 15% на любую процедуру или консультацию у наших квалифицированных специалистов.
        """,
       """
        Дорогие наши клиенты! Мы рады сообщить вам о запуске новой акции приведи друга в нашу лабораторию и получи скидку!
        Теперь вы можете получить скидку на свои лабораторные анализы, просто пригласив своего друга или родственника на прохождение анализов у нас.
        """,
       """
        Уважаемые пациенты! В нашей клинике работают профессионалы, которые имеют огромный медицинский опыт практики!
        Мы предоставляем широкий спектр медицинских услуг, которые включают в себя профилактику, диагностику и лечение различных заболеваний. Наши специалисты постоянно повышают свою квалификацию и используют только самое современное оборудование для достижения наилучших результатов в лечении наших пациентов.
        
        Приходите к нам на консультацию и получите профессиональную помощь от наших специалистов! А теперь самое интересное: только до конца этого месяца все наши услуги будут доступны по специальной цене! Не упустите свой шанс обеспечить себе здоровье на высшем уровне по выгодной цене!
        Ждем Вас в нашей клинике!
        """,
       """
        Благодарим Вас за проявленный интерес к нашей медицинской клинике! Наши лаборатории работают круглосуточно.
        Наша лаборатория работает 24/7, что позволяет нашим пациентам выбирать удобное для них время для прохождения тестирования.
        
        Мы гарантируем быстрый и точный анализ, а также полную конфиденциальность результатов. Кроме того, мы предоставляем возможность консультации со специалистами нашей клиники по всем вопросам, связанным с прохождением лабораторных исследований.
        Не упустите шанс получить доступ к высококачественным медицинским услугам в удобное для Вас время! Записывайтесь на прием уже сегодня и получите специальную скидку на прохождение лабораторных исследований!
        """,
       """
        Уважаемые пациенты! Спешите получить первичную консультацию терапевта со скидкой 50% в нашей медицинской клинике!
        Наша команда опытных врачей готова помочь вам позаботиться о вашем здоровье и провести полное обследование для выявления возможных проблем.
        В рамках данной акции мы предоставляем первичную консультацию терапевта по специальной цене. Это отличная возможность оценить квалификацию наших специалистов, а также получить рекомендации по вопросам здоровья.
        Не упустите шанс воспользоваться нашим предложением! Записывайтесь на прием по телефону или через сайт, указав промокод "Терапия50". Мы ждем вас!
        """,
       """
        Рады сообщить вам, что наша клиника предлагает широкий спектр исследований для диагностики заболеваний.
        Наши лаборатории оснащены современным оборудованием и работают под контролем опытных специалистов, что гарантирует точность результатов и высокое качество услуг.
        В рамках нашей акции мы предоставляем скидку 20% на все лабораторные исследования. У Вас есть возможность проверить своё здоровье, узнать о возможных рисках и провести комплексное обследование по доступной цене.
        
        Наши лаборатории выполняют следующие виды анализов:
            Общий анализ крови;
            Биохимический анализ крови;
            Иммунологические исследования;
            Микробиологические исследования;
            Генетические исследования;
            Исследования на наличие опухолей и других заболеваний.
        
        Не упустите возможность воспользоваться нашим предложением и получить квалифицированную помощь специалистов! Запишитесь на исследования по телефону или через сайт, указав промокод "Лаборатория20". Мы всегда готовы помочь вам и заботиться о вашем здоровье.
        """,
       """
        Уважаемые гости нашей клиники! Мы хотели бы поделиться с вами нашими преимуществами перед другими медицинскими центрами!
        
        Во-первых, мы предлагаем высококвалифицированный персонал, состоящий из профессиональных врачей и медицинских специалистов. Все наши специалисты имеют многолетний опыт работы и постоянно повышают свою квалификацию, чтобы обеспечивать вам лучшее лечение.
        
        Во-вторых, мы используем самое современное оборудование и технологии для диагностики и лечения различных заболеваний. Это позволяет нам точно и быстро определять причину болезни и применять эффективные методы лечения.
        
        В-третьих, мы гарантируем индивидуальный подход к каждому пациенту. Мы учитываем все особенности вашего здоровья и создаем индивидуальную программу лечения, которая будет соответствовать вашим потребностям.
        
        И наконец, мы всегда стараемся предоставить нашим пациентам максимальный комфорт и удобство. Мы стремимся, чтобы вы чувствовали себя как дома в нашей клинике.
        
        Приходите к нам на прием и убедитесь сами в преимуществах нашего медицинского центра! А чтобы сделать первый шаг, мы предлагаем всем новым пациентам скидку 10% на первый прием. Не упустите возможность получить качественное медицинское обслуживание по выгодной цене!
        """,
       """
        Наша клиника обладает одними из самых современных лабораторий, оснащенных новейшими анализаторами!
        Мы гордимся тем, что предоставляем уникальные и высококачественные медицинские услуги своим пациентам. Наша клиника обладает одними из самых современных лабораторий, оснащенных инновационными устройствами, что позволяет нам обеспечивать точные диагностики и улучшать качество лечения.
        Мы постоянно следим за последними технологическими новинками в медицине и внедряем их в нашу работу для достижения наилучших результатов. Наша команда профессиональных специалистов заботится о здоровье каждого пациента, используя современные методы лечения и диагностики.
        В наших лабораториях мы проводим различные анализы и исследования, начиная от простых биохимических анализов крови до более сложных генетических тестов. Все наши устройства и оборудование регулярно проверяются и поддерживаются в исправном состоянии, чтобы обеспечить максимальную точность и надежность результатов.
        Мы ценим каждого пациента и стремимся обеспечивать наилучший сервис и оптимальное лечение. Приходите к нам, и мы гарантируем, что вы останетесь довольны нашей работой!
        """,
       """
        Уважаемые пациенты! Наша клиника рада представить вам новую акцию на исследование аллергии 1 + 1! Торопитесь!⏰
        Это отличная возможность для вас и вашей близкой или дорогой вам любимой персоны пройти обследование на аллергические реакции по цене одного.

        Что вы получаете:
        🔬 Комплексное исследование, включающее определение аллергических реакций на широкий спектр популярных аллергенов.
        👥 Возможность обследования двух человек по цене одного - поделитесь этой акцией с вашими близкими, чтобы обеспечить заботу о здоровье всей вашей семьи или друзей.
        ⏰ Удобство выбора времени - наши специалисты готовы принять вас в удобное для вас время.

        Почему обследование на аллергию в "Здоровье+"?
        🌟 Мы используем современные методы исследования и лучшее оборудование, чтобы диагностировать аллергические реакции с высокой точностью.
        🌟 Наши врачи-аллергологи имеют богатый опыт в области диагностики и лечения аллергий.
        🌟 Мы предлагаем индивидуализированный подход к каждому пациенту, учитывая его уникальные потребности и особенности организма.

        Не упустите возможность проверить своё здоровье и узнать о возможных аллергических реакциях! Вместе с вашим близким или другом вы можете пройти исследование по цене одного.

        Для записи на обследование и получения подробной информации о нашей акции, пожалуйста, свяжитесь с нами по указанным контактным данным:

        ☎️ Телефон: +X XXX XXX-XXXX
        📧 Электронная почта: info@clinicazdorovieplus.com

        Заботьтесь о своём здоровье с "Здоровье+"! Мы всегда готовы помочь вам и вашим близким.

        С уважением,
        Медицинская клиника "Здоровье+"
        """,
       """
        Уникальная возможность получить квалифицированную медицинскую помощь без необходимости покидать дом!
        Теперь вы можете воспользоваться нашей удобной онлайн консультацией, чтобы обсудить свои здоровые проблемы с опытными врачами прямо через интернет.

        Что вы получаете, выбирая онлайн консультацию?

        1️⃣ Удобство и гибкость: Наша онлайн платформа позволяет вам получить доступ к медицинской помощи в любое время и из любого места, где у вас есть доступ к интернету. Нет необходимости тратить время на поездку в клинику или ожидание приема.

        2️⃣ Безопасность и конфиденциальность: Ваша конфиденциальность - наш главный приоритет. Все ваши данные и медицинская информация обрабатываются с соблюдением самых высоких стандартов безопасности и хранятся в зашифрованном виде.

        3️⃣ Высококвалифицированные специалисты: Наша команда состоит из опытных и профессиональных врачей, готовых предоставить вам медицинскую помощь, сделать диагноз и разработать план лечения на основе ваших индивидуальных потребностей.

        Как это работает?

        1️⃣ Запланируйте свою онлайн консультацию: Просто свяжитесь с нами по указанному номеру телефона или заполните форму на нашем сайте, чтобы назначить удобное для вас время консультации.

        2️⃣ Встретьтесь с врачом онлайн: В назначенное время вы будете подключены к нашей безопасной онлайн платформе, где вы сможете общаться с врачом через видеосвязь. Поделитесь своими симптомами, задавайте вопросы и получайте рекомендации от эксперта.

        3️⃣ Получите план действий: Врач оценит вашу ситуацию, поставит диагноз и предложит индивидуальный план лечения или рекомендации. Если необходимо, вам будут предоставлены рецепты или назначены дополнительные исследования.

        Не откладывайте свое здоровье на потом - воспользуйтесь возможностью получить медицинскую помощь прямо сейчас! Контактная информация для записи на онлайн консультацию приведена ниже.

        Мы всегда здесь, чтобы помочь вам заботиться о вашем здоровье!

        С уважением,
        [Имя клиники]
        """
    ]
    
    let newsImages = [
        "doctor-writing",
        "microscope",
        "two specialists",
        "test-tubes",
        "stethoscope",
        "labo",
        "woman-doctor",
        "laboratory-centrifuge",
        "female-researcher",
        "man-doctor"
    ]
    
    let analyzesImages = [
        "bloodSample",
        "bloodTest",
        "bloodTube",
        "chemistry",
        "chemistry2",
        "chemistry3",
        "chemistry4",
        "chemistryFlask",
        "flask",
        "laboratory"
    ]
  
    let analyzes = [
        "Гематологические исследования": [
            "Общий анализ крови c дифференцировкой лейкоцитарной формулы",
            "Подсчёт ретикулоцитов (автоматический RET анализ)",
            "Подсчет тромбоцитов мануально",
            "Флуоресцентный анализ тромбоцитов (автоматический подсчет)",
            "Общий анализ крови c дифференцировкой лейкоцитарной формулы (автоматический подсчет)",
            "Микроскопическое исследование лейкоцитарной формулы",
            "Определение СОЭ по методу Вестергрена",
            "Общий анализ крови (CBC/Diff — 5 фракций лейкоцитов)",
            "Ретикулоциты (проточная цитофлуорометрия)",
            "Развернутый анализ крови"
        ],
        "Биохимия крови": [
            "Глюкоза",
            "Холестерин общий",
            "Билирубин общий",
            "Определение концентраци триглицеридов",
            "Общий белок",
            "Определение концентраци α-амилазы",
            "С-реактивный белок (СРБ)",
            "Железо",
            "Определение соотношения ЛДГ-жидкость/ЛДГ-сыворотка",
            "Белок-жидкость/белок-сыворотка"
        ],
        "Иммунологические исследования": [
            "Диагностика эндокринных нарушений",
            "Диагностика септических состояний (С-реактивный белок, прокальцитонин)",
            "Изучение изменений в экспрессии генов",
            "Изучение секреции цитокинов и других медиаторов иммунной системы",
            "Тестостерон",
            "Глобулин, связывающий половые гормоны (ГСПГ)",
            "Индекс свободного тестостерона (расчетный метод)",
            "Эстриол свободный",
            "Мономерный пролактин",
            "Лютеинизирующий гормон (ЛГ)"
        ],
        "Инфекционные заболевания": [
            "НВsAg, поверхностный антиген вируса гепатита В (австралийский антиген)",
            "Антитела к НВs-антигену вирусного гепатита В (Anti-HBsAg)",
            "Вирус простого герпеса 1 IgG / HSV-1 IgG",
            "Антитела к вирусу гепатита С (Anti-HCV количественный)",
            "IgG антитела к хеликобактер",
            "IgG anti-SARS-COV-2 (качественно, КП, ИФА)",
            "Цитомегаловирус IgM / CMV IgM",
            "Определение антигена SARS-CoV-2 (Ag) в образцах мазков из носоглотки",
            "Краснуха IgM / Rubella IgM",
            "Токсоплазмоз IgG / Toxo IgG"
        ],
        "Цитологические исследования": [
            "Цитологическое исследование материала, полученного при хирургических вмешательствах",
            "Исследования смыв с бронхов",
            "Исследование отпечатка с внутриматочной спирали (ВМС)",
            "Исследование выделений из молочной железы",
            "Исследование пунктатов кожи",
            "Исследования эндоскопического материала",
            "Консультация готовых цитологических препаратов",
            "Исследование транссудатов, экссудатов, секретов",
            "Цитологическое исследование пунктатов молочной железы",
            "Исследование пунктатов других органов и тканей (кроме костного мозга)"
        ],
        "Гистологические исследования": [
            "Гистохимическое исследование: - Helicobacter pylori.",
            "Биопсия кожи для определения наличия заболеваний кожи",
            "Изучение образцов легочной ткани для диагностики заболеваний дыхательной системы",
            "Определение степени дифференциации опухолей",
            "Оценка изменений в тканях почек",
            "Изучение образцов мышц для выявления заболеваний опорно-двигательного аппарата",
            "Определение наличия опухолей в молочной железе",
            "Изучение образцов кишечника для диагностики заболеваний желудочно-кишечного тракта",
            "Определение экспрессии белка PD-L1 в ткани опухоли методом ИГХ",
            "Комплексная гистохимическая диагностика заболеваний верхних отделов ЖКТ",
        ],
        "Цитогенетические исследования": [
            "Исследование кариотипа",
            "Молекулярный скрининг на микроделеции/микродупликации хромосом",
            "Исследование хромосом в абортивном материале",
            "Исследование хромосом в абортивном материале, расширенное",
            "Хромосомный микроматричный анализ",
            "Хромосомный микроматричный анализ абортивного материала",
            "Компаративно-геномное гибридизационное исследование",
            "Микроматричная диагностика ДНК",
            "Флюоресцентная in situ гибридизация (FISH)",
            "Кариотипирование"
        ],
        "Аллергические исследования": [
            "Пробы на аллергию на инсектоусоки",
            "Эозинофильный тест",
            "Пробы на аллергию на лекарства",
            "Определение уровня IgE антител в крови",
            "Базофил-активационный тест",
            "Атопическая панель PROTIA Allerqy-Q",
            "Пробы на аллергию на пыльцу",
            "Коровье молоко, IgE (Milk, IgE, F2)",
            "Бета-лактоглобулин (F77), аллерген-специфические IgЕ",
            "Пробы на аллергию на домашних животных"
        ],
        "Гормональные исследования": [
            "Соматотропный гормон",
            "Трийодтиронин общий",
            "Свободный кортизол (суточная моча)",
            "Исследование уровня адреналина",
            "Тироксин общий ",
            "Исследование уровня норадреналина",
            "Антитела к тиреоглобулину",
            "Тиреоглобулин",
            "Кальцитонин",
            "Исследование уровня гонадотропинов (ФСГ, ЛГ)"
        ],
        "Наследственные заболевания": [
            "Мутация гена BRCA1/BRCA2",
            "MSH2/MLH1",
            "Диагностика синдрома Фрагилы Х-хромосомы",
            "Мутация гена CFTR",
            "Диагностика Тей-Сакс болезни",
            "Мутация гена HTT",
            "Диагностика гиперхолестеринемии",
            "Мутация гена GLA",
            "Диагностика Дюшенн-мышечной дистрофии",
            "Тест на мутации гена PKD1/PKD2"
        ]
    ]
    
    let doctorsDescriptions = [
        ["Стаж 15 лет. Врач - аллерголог высшей категории Кандидат медицинских наук.", "Стаж 18 лет. Врач - аллерголог высшей категории Доктор медицинских наук"],
        ["Стаж 8 лет. Заведующий лаборатории", "Стаж работы 6 лет. Врач - лаборант"],
        ["Стаж 10 лет. Заведующий отделением - Гематологии", "Стаж 4 года. Врач - Гематолог"],
        ["Стаж 25 лет. Доктор медицинских наук, классный парень"],
        ["Стаж 13 лет. Заведующий отделением - Иммунологии", "Стаж 9 лет. Врач - Иммунолог","Стаж 5 лет. Врач - Иммунолог"],
        ["Стаж 15 лет. Заведующий отделением - Кардиологии", "Стаж 11 лет. Врач - Кардиолог"],
        ["Стаж 12 лет. Заведующая отделением - Оториноларингологии", "Стаж 10 лет. Врач - Оториноларинголог высшей категории"],
        ["Стаж 10 лет. Заведующий отделением - Неврологии", "Стаж 8 лет. Врач - Невролог высшей категории", "Стаж 3 года. Врач - Невролог"],
        ["Стаж 15 лет. Заведующий отделением - Педиатрии", "Стаж 3 года. Врач - Педиатр"],
        ["Стаж 7 лет. Заведующий Терапевтическим отделением", "Стаж 6 лет. Врач - Терапевт высшей категории"]
    ]
    
    let doctorsPhotos = [
        ["man-doc1", "woman-doc1"],
        ["man-doc2", "woman-doc2" ],
        ["man-doc3", "man-doc4"],
        ["man-doc5"],
        ["man-doc6","woman-doc3", "man-doc7"],
        ["woman-doc4", "man-doc8"],
        ["woman-doc5", "man-doc9" ],
        ["man-doc10", "woman-doc6", "man-doc11"],
        ["man-doc12", "man-doc13"],
        ["woman-doc7","woman-doc8"]
    ]
    
    let specialists = [
        "Главный врач": [
            "Алексей Николаевич Шпак"
        ],
        "Врач лабораторной диагностики": [
            "Борисов Анатолий Владимирович",
            "Никитина Елена Александровна"
        ],
        "Иммунолог": [
            "Иванов Павел Сергеевич",
            "Козлова Ольга Ивановна",
            "Соколов Михаил Дмитриевич"
        ],
        "Кардиолог": [
            "Петрова Наталья Петровна",
            "Лебедев Андрей Игоревич",
        ],
        "Педиатр": [
            "Ковалев Денис Алексеевич",
            "Федоров Александр Викторович"
        ],
        "Невролог": [
            "Нервнов Дмитрий Александрович",
            "Воробьева Ольга Сергеевна",
            "Косырев Павел Анатольевич"
        ],
        "ЛОР Оториноларинголог": [
            "Ласточкина Екатерина Васильевна",
            "Глухов Кирилл Вячеславович"
        ],
        "Терапевт": [
            "Сойка Елена Петровна",
            "Колибрикова Анна Ивановна"
        ],
        "Гематолог": [
            "Прудников Павел Сергеевич",
            "Смирнов Николай Павлович"
        ],
        "Аллерголог": [
            "Будьздоров Павел Александрович",
            "Жукова Татьяна Генадьевна"
        ]
    ]
    
    let doctorsIcons = [
        "heartDoc",
        "womandoc2",
        "withred",
        "top-doc",
        "redhairdoc",
        "greendoc",
        "eardoc",
        "bluedoc",
        "womandoc",
        "mandoc"
    ]
    
    private init() {}
}
