func fetchData(completion: @escaping (Result<[String], Error>) -> Void) {
    // Simulate network request
    DispatchQueue.global().asyncAfter(deadline: .now() + 2) { 
        let data = ["apple", "banana", "orange"]
        DispatchQueue.main.async { // Update UI on the main thread
            completion(.success(data))
        }
    }
}