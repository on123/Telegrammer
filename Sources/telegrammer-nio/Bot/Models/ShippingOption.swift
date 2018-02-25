// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.

/// This object represents one shipping option.
///
/// [- SeeAlso: ]<https://core.telegram.org/bots/api#shippingoption>

public final class ShippingOption: Codable {
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case title = "title"
        case prices = "prices"
    }

    public var id: String
    public var title: String
    public var prices: [LabeledPrice]

    public init (id: String, title: String, prices: [LabeledPrice]) {
        self.id = id
        self.title = title
        self.prices = prices
    }

}

