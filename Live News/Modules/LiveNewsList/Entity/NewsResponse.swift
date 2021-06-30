//
//  NewsResponse.swift
//  Live News
//
//  Created by Field Employee on 6/16/21.
//

import Foundation

struct NewsResponse: Codable {
    let status: String?
    let source: String?
    let sortBy: String?
    let articles: [LiveNewsModel]?
}
