// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.

/// Represents a photo to be sent.
///
/// [- SeeAlso: ]<https://core.telegram.org/bots/api#inputmediaphoto>

public final class InputMediaPhoto: Codable {
    
    enum CodingKeys: String, CodingKey {
        case type = "type"
        case media = "media"
        case caption = "caption"
        case parseMode = "parse_mode"
    }

    public var type: String
    public var media: String
    public var caption: String?
    public var parseMode: String?

    public init (type: String, media: String, caption: String? = nil, parseMode: String? = nil) {
        self.type = type
        self.media = media
        self.caption = caption
        self.parseMode = parseMode
    }

}

