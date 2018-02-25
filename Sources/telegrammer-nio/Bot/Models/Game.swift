// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.

/// This object represents a game. Use BotFather to create and edit games, their short names will act as unique identifiers.
///
/// [- SeeAlso: ]<https://core.telegram.org/bots/api#game>

public final class Game: Codable {
    
    enum CodingKeys: String, CodingKey {
        case title = "title"
        case description = "description"
        case photo = "photo"
        case text = "text"
        case textEntities = "text_entities"
        case animation = "animation"
    }

    public var title: String
    public var description: String
    public var photo: [PhotoSize]
    public var text: String?
    public var textEntities: [MessageEntity]?
    public var animation: Animation?

    public init (title: String, description: String, photo: [PhotoSize], text: String? = nil, textEntities: [MessageEntity]? = nil, animation: Animation? = nil) {
        self.title = title
        self.description = description
        self.photo = photo
        self.text = text
        self.textEntities = textEntities
        self.animation = animation
    }

}

