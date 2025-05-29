//  Created by Lakshay Sachdeva on 29/05/25.
//
import Foundation
func fetchData(completion: @escaping (Result<ApiResponse, Error>) -> Void) {
    let urlString = "https://gist.githubusercontent.com/sanjeevworkstation/c27e6cc85b7d4bcaf8ec73d96a0ae25b7a7201338a6af49a77c0f81f6a/assignment.json"
    guard let url = URL(string: urlString) else {
        completion(.failure(NSError(domain: "Invalid URL", code: 400, userInfo: nil)))
        return
    }

    URLSession.shared.dataTask(with: url) { data, response, error in
        if let error = error {
            print("Networking error: \(error.localizedDescription)")
            completion(.failure(error))
            return
        }

        guard let data = data else {
            print("No data received")
            completion(.failure(NSError(domain: "No data", code: 404, userInfo: nil)))
            return
        }

        do {
            // Log the raw JSON
            let jsonObject = try JSONSerialization.jsonObject(with: data, options: [])
            print("Raw JSON Response: \(jsonObject)")

            // Attempt decoding
            let decodedData = try JSONDecoder().decode(ApiResponse.self, from: data)
            completion(.success(decodedData))
        } catch {
            print("Decoding error: \(error.localizedDescription)")
            completion(.failure(error))
        }
    }.resume()
}
    
