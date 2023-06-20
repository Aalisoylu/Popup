//
//  JsonPlaceHolderService.swift
//  Popop
//
//  Created by Muhammed Ali SOYLU on 12.06.2023.
//

import Alamofire
import Foundation

protocol JsonPlaceHolderProtocol {
    func fetchAllPosts(onSuccess: @escaping ([PostModel]) -> Void, onFail: @escaping (String?) -> Void)
}

enum JsonPlaceHolderPath: String {
    case POSTS = "/posts"
}

extension JsonPlaceHolderPath {
    func withBaseUrl() -> String {
        return "https://jsonplaceholder.typicode.com\(rawValue)"
    }
}

struct JsonPlaceHolderService: JsonPlaceHolderProtocol {
    func fetchAllPosts(onSuccess: @escaping ([PostModel]) -> Void, onFail: @escaping (String?) -> Void) {
        AF.request(JsonPlaceHolderPath.POSTS.withBaseUrl(), method: .get).validate().responseDecodable(of: [PostModel].self) {
            (response) in

            guard let items = response.value else {
                onFail(response.debugDescription)
                return
            }
            onSuccess(items)
        }
    }
}
