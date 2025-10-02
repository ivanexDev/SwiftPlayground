//: [Previous](@previous)

import Foundation

func load<T: Codable>(filename: String) -> T {
    
    // 1. Obtener URL del archivo
    guard let fileURL = Bundle.main.url(forResource: filename, withExtension: "json") else {
        fatalError("No se pudo encontrar el archivo \(filename).json")
    }
    
    // 2. Leer data
    guard let data = try? Data(contentsOf: fileURL) else {
        fatalError("No se pudo leer el contenido de \(filename).json")
    }
    
    // 3. Decodificar JSON
    let decoder = JSONDecoder()
    do {
        let result = try decoder.decode(T.self, from: data)
        return result
    } catch {
        fatalError("Error al decodificar JSON: \(error)")
    }
}



let data: String = load(filename: "pokemon")

//: [Next](@next)
