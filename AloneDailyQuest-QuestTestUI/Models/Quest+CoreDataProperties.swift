//
//  Quest+CoreDataProperties.swift
//  AloneDailyQuest-QuestTestUI
//
//  Created by 오정석 on 8/1/2024.
//
//

import Foundation
import CoreData


extension Quest {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Quest> {
        return NSFetchRequest<Quest>(entityName: "Quest")
    }

    @NSManaged public var friday: Bool
    @NSManaged public var monday: Bool
    @NSManaged public var questDetail: String?
    @NSManaged public var questTitle: String?
    @NSManaged public var saturday: Bool
    @NSManaged public var sunday: Bool
    @NSManaged public var thursday: Bool
    @NSManaged public var tuesday: Bool
    @NSManaged public var wednesday: Bool

}

extension Quest : Identifiable {

}
