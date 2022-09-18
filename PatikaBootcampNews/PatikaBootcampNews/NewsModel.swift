//
//  NewsModel.swift
//  PatikaBootcampNews
//
//  Created by Ahmet Ozkan on 16.09.2022.
//

import Foundation
import UIKit

struct NewsModel {
    var title: String?
    var subtitle: String?
    var content: String?
    var date: String?
    var image = UIImage()
    var url: String?
}


// in our static model , keep a list of values
let news: [NewsModel] = [
    NewsModel(title: "FMSS Bilişim", subtitle: "Android Kotlin & iOS Swift Bootcamp'leri", content: "FMSS Bilişim iş birliği ile düzenlediğimiz FMSS Bilişim Android Kotlin & iOS Swift Bootcamp'leri başlıyor! 🚀 Sen de bu ücretsiz bootcamp'lere katılarak yazılım kariyerine FMSS Bilişim ekibinde başlamak istiyorsan şimdi başvur, bu fırsatı kaçırma!🎉FMSS Bilişim iş birliği ile düzenlediğimiz FMSS Bilişim Android Kotlin & iOS Swift Bootcamp'leri başlıyor! 🚀 \n \n Sen de bu ücretsiz bootcamp'lere katılarak yazılım kariyerine FMSS Bilişim ekibinde başlamak istiyorsan şimdi başvur, bu fırsatı kaçırma!🎉FMSS Bilişim iş birliği ile düzenlediğimiz FMSS Bilişim Android Kotlin & iOS Swift Bootcamp'leri başlıyor! 🚀 Sen de bu ücretsiz bootcamp'lere katılarak yazılım kariyerine FMSS Bilişim ekibinde başlamak istiyorsan şimdi başvur, bu fırsatı kaçırma!🎉FMSS Bilişim iş birliği ile düzenlediğimiz FMSS Bilişim Android Kotlin & iOS Swift Bootcamp'leri başlıyor! ", date: "20 Ağustos 2022 - 2 Ekim 2022", image: UIImage(named: "fmss")!, url: "https://www.patika.dev/bootcamp/fmss-bilisim-android-kotlin-ios-swift-bootcampleri"),
    NewsModel(title: "VakıfBank", subtitle: "iOS Swift Bootcamp", content: "VakıfBank iş birliği ile ücretsiz iOS Swift Bootcamp başlıyor!🎉Sen de bu ücretsiz bootcamp'e katılarak VakıfBank ekibinde yazılım kariyerine başlamak istiyorsan şimdi başvur, bu fırsatı kaçırma!🥳", date: "29 Ekim 2022 - 11 Aralık 2022", image: UIImage(named: "vakifbank")!, url: "https://www.patika.dev/bootcamp/vakifbank-ios-swift-bootcamp"),
   NewsModel(title: "A101", subtitle: "Test Otomasyon Practicum", content: "A101 iş birliği ile Test Otomasyon Practicum başlıyor! 🎉 Sen de bu ücretsiz programa katılarak case geliştirmek ve yazılım kariyerine A101 Teknoloji Ekibinde başlamak istiyorsan şimdi başvur, bu fırsatı kaçırma! 🥳", date: "28 Eylül 2022 - 12 Ekim 2022", image: UIImage(named: "a101")!, url: "https://www.patika.dev/bootcamp/a101-test-otomasyon-practicum"),
   NewsModel(title: "Solid Electron", subtitle: "Angular Practicum", content: "Solid Electron iş birliği ile Angular Practicum başlıyor! 🎉 Sen de bu ücretsiz programa katılarak eğitim alıp, case geliştirmek ve yazılım kariyerine Solid Electron ekibinde başlamak istiyorsan şimdi başvur, bu fırsatı kaçırma! 🥳", date: "5 Ekim 2022 - 13 Kasım 2022", image: UIImage(named: "solidelectron")! , url: "https://www.patika.dev/bootcamp/solid-electron-angular-practicum"),
    NewsModel(title: "Papara", subtitle: ".Net Core Bootcamp", content: "Bütün finansal hizmetleri, herkes için daha hızlı, daha kolay, daha hesaplı ve daha keyifli hale getirmeyi amaç edinen teknoloji şirketi Papara iş birliği ile düzenlediğimiz .Net Core Bootcamp’imiz başlıyor! 🚀 Sen de bu ücretsiz bootcamp'e katıl, kadın yazılımcı olarak kariyerine Papara ekibinde başlama fırsatını kaçırma! 🎉", date: "22 Ekim 2022 - 4 Aralık 2022", image: UIImage(named: "papara")!, url: "https://www.patika.dev/bootcamp/papara-net-core-bootcamp"),
   NewsModel(title: "VitrA & GoLive", subtitle: "SAP Bootcamp", content: "VitrA & GoLive iş birliği ile düzenlediğimiz SAP Bootcamp başlıyor! 🚀 Sen de bu ücretsiz eğitime katılarak danışmanlık kariyerine VitrA veya GoLive ekibinde başlamak istiyorsan şimdi başvur, bu fırsatı kaçırma!🎉", date: "29 Ekim 2022 - 11 Aralık 2022", image: UIImage(named: "vitra")!, url: "https://www.patika.dev/bootcamp/vitra-golive-sap-bootcamp"),
    NewsModel(title: "Pazarama", subtitle: "iOS Swift & Android Kotlin Bootcamp'leri", content: "Türkiye İş Bankası iştiraki, hayatı kolaylaştıran platform Pazarama iş birliği ile ücretsiz iOS Swift & Android Kotlin Bootcamp'leri başlıyor!🎉E-ticaret ve teknolojinin harmanlandığı bir yapıda, güncel teknolojilerle çalışan Pazarama ekibinde yazılım kariyerine başlamak istiyorsan şimdi başvur, bu fırsatı kaçırma!🎉", date: "17 Eylül 2022 - 30 Ekim 2022", image:  UIImage(named: "pazarama")!, url: "https://www.patika.dev/bootcamp/pazarama-ios-swift-android-kotlin-bootcampleri"),
   NewsModel(title: "Protein", subtitle: "Vue.js Bootcamp", content: "Protein iş birliği ile düzenlediğimiz Vue.js Bootcamp başlıyor! 🚀 Sen de bu ücretsiz bootcamp'e katılarak yazılım kariyerine Protein ekibinde başlamak istiyorsan şimdi başvur, bu fırsatı kaçırma!🎉", date: "27 Ağustos 2022 - 9 Ekim 2022", image: UIImage(named: "protein")!, url: "https://www.patika.dev/bootcamp/protein-vue-js-bootcamp"),
   NewsModel(title: "Ford Otosan", subtitle: "Gelecek Tasarımcıları Dijital Staj Programı", content: "Ford Otosan iş birliği ile düzenlediğimiz Ford Otosan Gelecek Tasarımcıları Dijital Staj Programı başlıyor! 🚀 Sen de bu ücretsiz bootcamp’e katılarak; bootcamp sırasında stajını yapmak ve Ford Otosan ekibinde çalışma şansını elde etmek istiyorsan şimdi başvur, bu fırsatı kaçırma! 🎉", date: "Bootcamp Tarihleri: 21 Mayıs - 11 Haziran | Staj Tarihleri: 18 Mayıs - 8 Temmuz", image: UIImage(named: "ford")!, url: "https://www.patika.dev/bootcamp/ford-otosan-gelecek-tasarimcilari-dijital-staj-programi"),
  NewsModel(title: "Evam", subtitle: "Java Bootcamp", content: "Evam iş birliği ile düzenlediğimiz Evam Java Bootcamp başlıyor! 🚀 Sen de bu ücretsiz bootcamp'e katılarak yazılım kariyerine Evam ekibinde başlamak istiyorsan şimdi başvur, bu fırsatı kaçırma!🎉", date: "4 Haziran 2022 - 31 Temmuz 2022", image: UIImage(named: "evam")!, url: "https://www.patika.dev/bootcamp/evam-java-bootcamp"),
    NewsModel(title: "InterProbe", subtitle: "Java Spring Bootcamp", content: "InterProbe iş birliği ile düzenlediğimiz Java Spring Bootcamp başlıyor! 🚀 Sen de bu ücretsiz bootcamp'e katılarak yazılım kariyerine InterProbe ekibinde başlamak istiyorsan şimdi başvur, bu fırsatı kaçırma!🎉", date: "11 Haziran 2022 - 4 Temmuz 2022", image: UIImage(named: "interprobe")!, url: "https://www.patika.dev/bootcamp/interprobe-java-spring-bootcamp"),
  NewsModel(title: "iyzico", subtitle: "Front-end Practicum", content: "iyzico, kadın yazılımcı adaylarını sektöre kazandırmak için öncü bir adım atıyor! Ücretsiz iyzico Front-end Practicum başlıyor! 🚀 Sen de bu ücretsiz practicum'a katıl ve iyzico mühendislik kültürünün bir parçası ol! 🤩", date: "29 Temmuz 2022 - 18 Eylül 2022", image: UIImage(named: "iyzico")!, url: "https://www.patika.dev/bootcamp/iyzico-front-end-practicum"),
    NewsModel(title: "Akbank", subtitle: "React Bootcamp", content: "Kadın yazılımcı adayları için Akbank iş birliği ile React Bootcamp başlıyor! 🚀 Sen de bu ücretsiz bootcamp'e katılarak yazılım kariyerine Akbank ekibinde başlamak istiyorsan şimdi başvur, bu fırsatı kaçırma!🎉", date: "27 Ağustos 2022 - 9 Ekim 2022", image:  UIImage(named: "akbank")!, url: "https://www.patika.dev/bootcamp/akbank-react-bootcamp")
    
]
