//
//  PhotoFilter.swift
//  telegrammer-nio
//
//  Created by Givi Pataridze on 21.04.2018.
//

import Foundation

public struct PhotoFilter: Filter {
    
    public var name: String = "photo"
    
    public func filter(message: Message) -> Bool {
        guard let photos = message.photo else { return false }
        return !photos.isEmpty
    }
}

public extension Filters {
    static var photo = Filters(filter: PhotoFilter())
}
