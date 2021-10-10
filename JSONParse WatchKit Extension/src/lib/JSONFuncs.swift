//
//  JSONFuncs.swift
//  JSONParse WatchKit Extension
//
//  Created by Paul Zamshin on 10.10.2021.
//

import Foundation

func readLocalJSONFile(forName name: String) -> Data? {
    do {
        if let filePath = Bundle.main.path(forResource: name, ofType: "json") {
            let fileUrl = URL(fileURLWithPath: filePath)
            let data = try Data(contentsOf: fileUrl)
            return data
        }
    } catch {
        print("error: \(error)")
    }
    return nil
}

func parse(jsonData: Data) -> sampleRecord? {
    do {
        let decodedData = try JSONDecoder().decode(sampleRecord.self, from: jsonData)
        return decodedData
    } catch {
        print("error: \(error)")
    }
    return nil
}
