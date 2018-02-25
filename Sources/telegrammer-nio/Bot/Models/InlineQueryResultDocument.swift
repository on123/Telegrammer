// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.

/// Represents a link to a file. By default, this file will be sent by the user with an optional caption. Alternatively, you can use input_message_content to send a message with the specified content instead of the file. Currently, only .PDF and .ZIP files can be sent using this method.
///
/// [- SeeAlso: ]<https://core.telegram.org/bots/api#inlinequeryresultdocument>

public final class InlineQueryResultDocument: Codable {
    
    enum CodingKeys: String, CodingKey {
        case type = "type"
        case id = "id"
        case title = "title"
        case caption = "caption"
        case parseMode = "parse_mode"
        case documentUrl = "document_url"
        case mimeType = "mime_type"
        case description = "description"
        case replyMarkup = "reply_markup"
        case inputMessageContent = "input_message_content"
        case thumbUrl = "thumb_url"
        case thumbWidth = "thumb_width"
        case thumbHeight = "thumb_height"
    }

    public var type: String
    public var id: String
    public var title: String
    public var caption: String?
    public var parseMode: String?
    public var documentUrl: String
    public var mimeType: String
    public var description: String?
    public var replyMarkup: InlineKeyboardMarkup?
    public var inputMessageContent: InputMessageContent?
    public var thumbUrl: String?
    public var thumbWidth: Int?
    public var thumbHeight: Int?

    public init (type: String, id: String, title: String, caption: String? = nil, parseMode: String? = nil, documentUrl: String, mimeType: String, description: String? = nil, replyMarkup: InlineKeyboardMarkup? = nil, inputMessageContent: InputMessageContent? = nil, thumbUrl: String? = nil, thumbWidth: Int? = nil, thumbHeight: Int? = nil) {
        self.type = type
        self.id = id
        self.title = title
        self.caption = caption
        self.parseMode = parseMode
        self.documentUrl = documentUrl
        self.mimeType = mimeType
        self.description = description
        self.replyMarkup = replyMarkup
        self.inputMessageContent = inputMessageContent
        self.thumbUrl = thumbUrl
        self.thumbWidth = thumbWidth
        self.thumbHeight = thumbHeight
    }

}

