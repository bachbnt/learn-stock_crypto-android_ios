//
//  ArticleDataSource.swift
//  Stokrypto
//
//  Created by bach.bui on 24/07/2023.
//

import Foundation

var articles: [Article] = [
    ArticleModel(id: "1", title: "Nhiều ngân hàng cắt giảm nhân sự, thu nhập những người ở lại tăng mạnh", description: "Tuy số lượng nhân viên giảm trong nửa đầu năm 2023 nhưng quỹ lương, thưởng cho nhân sự của những ngân hàng này vẫn tăng khá mạnh so với cùng kỳ.", content: "Tuy số lượng nhân viên giảm trong nửa đầu năm 2023 nhưng quỹ lương, thưởng cho nhân sự của những ngân hàng này vẫn tăng khá mạnh so với cùng kỳ.", image: "https://cafefcdn.com/zoom/370_232/203337114487263232/2023/7/24/avatar1690238678488-1690238679297504431458.jpg", timestamp: 0),
    ArticleModel(id: "2", title: "Nhiều ngân hàng cắt giảm nhân sự, thu nhập những người ở lại tăng mạnh", description: "Tuy số lượng nhân viên giảm trong nửa đầu năm 2023 nhưng quỹ lương, thưởng cho nhân sự của những ngân hàng này vẫn tăng khá mạnh so với cùng kỳ.", content: "Tuy số lượng nhân viên giảm trong nửa đầu năm 2023 nhưng quỹ lương, thưởng cho nhân sự của những ngân hàng này vẫn tăng khá mạnh so với cùng kỳ.", image: "https://cafefcdn.com/zoom/370_232/203337114487263232/2023/7/24/avatar1690238678488-1690238679297504431458.jpg", timestamp: 0),
    ArticleModel(id: "3", title: "Nhiều ngân hàng cắt giảm nhân sự, thu nhập những người ở lại tăng mạnh", description: "Tuy số lượng nhân viên giảm trong nửa đầu năm 2023 nhưng quỹ lương, thưởng cho nhân sự của những ngân hàng này vẫn tăng khá mạnh so với cùng kỳ.", content: "Tuy số lượng nhân viên giảm trong nửa đầu năm 2023 nhưng quỹ lương, thưởng cho nhân sự của những ngân hàng này vẫn tăng khá mạnh so với cùng kỳ.", image: "https://cafefcdn.com/zoom/370_232/203337114487263232/2023/7/24/avatar1690238678488-1690238679297504431458.jpg", timestamp: 0),
    ArticleModel(id: "4", title: "Nhiều ngân hàng cắt giảm nhân sự, thu nhập những người ở lại tăng mạnh", description: "Tuy số lượng nhân viên giảm trong nửa đầu năm 2023 nhưng quỹ lương, thưởng cho nhân sự của những ngân hàng này vẫn tăng khá mạnh so với cùng kỳ.", content: "Tuy số lượng nhân viên giảm trong nửa đầu năm 2023 nhưng quỹ lương, thưởng cho nhân sự của những ngân hàng này vẫn tăng khá mạnh so với cùng kỳ.", image: "https://cafefcdn.com/zoom/370_232/203337114487263232/2023/7/24/avatar1690238678488-1690238679297504431458.jpg", timestamp: 0)
]

protocol ArticleLocalDataSource {
    func readArticles() -> [Article]
    func createArticle() -> Bool
}

protocol ArticleRemoteDataSource {
    func getArticles() -> [Article]
    func postArticle() -> Bool
}

class ArticleLocalDataSourceImpl: ArticleLocalDataSource {
    func readArticles() -> [Article] {
        return []
    }
    
    func createArticle() -> Bool {
        return true
    }
}

class ArticleRemoteDataSourceImpl: ArticleRemoteDataSource {
    func getArticles() -> [Article] {
        return articles
    }
    
    func postArticle() -> Bool {
        return true
    }
}
