//
//  Document.swift
//  DocumentScanner
//
//  Created by Luis Filipe Pedroso on 08/04/25.
//
import SwiftUI
import SwiftData

@Model
class Document {
    var name: String
    var createdAt: Date = Date()
    @Relationship(deleteRule: .cascade, inverse: \DocumentPage.document)
    var pages: [DocumentPage]?
    
    init(name: String, pages: [DocumentPage]? = nil) {
        self.name = name
        self.pages = pages
    }
}
