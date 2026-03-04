//
//  NSUserDefaults+ArchiveData.swift
//
//  Clipy
//  GitHub: https://github.com/clipy
//  HP: https://clipy-app.com
//
//  Created by Econa77 on 2016/06/23.
//
//  Copyright © 2015-2018 Clipy Project.
//

import Foundation
import Cocoa

extension UserDefaults {
    func setArchiveData<T: NSCoding>(_ object: T, forKey key: String) {
        let data: Data
        if #available(macOS 10.13, *), let secureCodingObject = object as? NSSecureCoding & NSObject,
           let secureData = try? NSKeyedArchiver.archivedData(withRootObject: secureCodingObject, requiringSecureCoding: true) {
            data = secureData
        } else {
            data = NSKeyedArchiver.archivedData(withRootObject: object)
        }
        set(data, forKey: key)
    }

    func archiveDataForKey<T: NSCoding>(_: T.Type, key: String) -> T? {
        guard let data = object(forKey: key) as? Data else { return nil }
        return NSKeyedUnarchiver.unarchiveObject(with: data) as? T
    }
}
