import Foundation

public enum VisitAction: String, Codable, Hashable {
    case advance
    case replace
    case restore
}
