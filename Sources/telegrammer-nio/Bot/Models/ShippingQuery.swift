// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.

/// This object contains information about an incoming shipping query.
///
/// [- SeeAlso: ]<https://core.telegram.org/bots/api#shippingquery>

public final class ShippingQuery: Codable {
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case from = "from"
        case invoicePayload = "invoice_payload"
        case shippingAddress = "shipping_address"
    }

    public var id: String
    public var from: User
    public var invoicePayload: String
    public var shippingAddress: ShippingAddress

    public init (id: String, from: User, invoicePayload: String, shippingAddress: ShippingAddress) {
        self.id = id
        self.from = from
        self.invoicePayload = invoicePayload
        self.shippingAddress = shippingAddress
    }

}

