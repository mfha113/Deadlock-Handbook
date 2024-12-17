//
//  APIService.swift
//  Deadlock Handbook
//
//  Michael Ha
//  CSC 680
//
//  This file is responsible for doing the actual api call
//

import Foundation

class APIService {
    static let shared = APIService()
    private init() {}

    func fetchHeroes(completion: @escaping (Result<[Hero], Error>) -> Void) {
        // print("in APIService fetchHeroes")
        guard let url = URL(string: "https://assets.deadlock-api.com/v2/heroes?language=english&client_version=5430&only_active=true") else {
            completion(.failure(NSError(domain: "Invalid URL", code: -1, userInfo: nil)))
            return
        }

        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }

            guard let data = data else {
                completion(.failure(NSError(domain: "No data", code: -1, userInfo: nil)))
                return
            }

            do {
                //print("Raw Data: \(String(data: data, encoding: .utf8) ?? "Unable to parse data as String")")
                let heroes: [Hero] = try JSONDecoder().decode([Hero].self, from: data)
                completion(.success(heroes))
            } catch {
                completion(.failure(error))
            }
        }.resume()
    }
    
    func fetchItems(completion: @escaping (Result<[UpgradeItemElement], Error>) -> Void) {
        // print("In APIService fetchItems")
        guard let url = URL(string: "https://assets.deadlock-api.com/v2/items/by-type/upgrade?language=english&client_version=5430") else {
            completion(.failure(NSError(domain: "Invalid URL", code: -1, userInfo: nil)))
            return
        }

        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }

            guard let data = data else {
                completion(.failure(NSError(domain: "No data", code: -1, userInfo: nil)))
                return
            }

            do {
                let upgradeItems = try JSONDecoder().decode([UpgradeItemElement].self, from: data)
                completion(.success(upgradeItems))
            } catch {
                print("Decoding Error: \(error)")
                completion(.failure(error))
            }
        }.resume()
    }
}
