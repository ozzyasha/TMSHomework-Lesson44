//
//  APIError.swift
//  TMSHomework-Lesson44
//
//  Created by Наталья Мазур on 23.05.24.
//

import Foundation

enum APIError: Error {
    case urlError(String)
    case requestError(String)
    case responseError(String)
    case decodeError(String)
}
