import Foundation
import SwiftData

@Model
final class WorkEntry {
    var date: Date
    var hours: Double
    var hourlyRate: Double
    var currencyCode: String
    var createdAt: Date
    
    init(date: Date, hours: Double, hourlyRate: Double, currencyCode: String) {
        self.date = date
        self.hours = hours
        self.hourlyRate = hourlyRate
        self.currencyCode = currencyCode
        self.createdAt = Date()
    }
    
    var totalAmount: Double {
        return hours * hourlyRate
    }
    
}
