// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.

/// This object represents a sticker set.
///
/// [- SeeAlso: ]<https://core.telegram.org/bots/api#stickerset>

public final class StickerSet: Codable {
    
    enum CodingKeys: String, CodingKey {
        case name = "name"
        case title = "title"
        case containsMasks = "contains_masks"
        case stickers = "stickers"
    }

    public var name: String
    public var title: String
    public var containsMasks: Bool
    public var stickers: [Sticker]

    public init (name: String, title: String, containsMasks: Bool, stickers: [Sticker]) {
        self.name = name
        self.title = title
        self.containsMasks = containsMasks
        self.stickers = stickers
    }

}

