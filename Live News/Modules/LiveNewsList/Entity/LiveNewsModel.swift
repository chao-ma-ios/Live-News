//
//  LiveNewsModel.swift
//  Live News
//
//  Created by Field Employee on 6/16/21.
//

import Foundation

struct LiveNewsModel: Codable {
    let author: String?
    let title: String?
    let description: String?
    let url: String?
    let urlToImage: String?
    let publishedAt: String?
}
