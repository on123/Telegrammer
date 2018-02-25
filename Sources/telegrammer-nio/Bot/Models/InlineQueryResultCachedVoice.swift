// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.

/// Represents a link to a voice message stored on the Telegram servers. By default, this voice message will be sent by the user. Alternatively, you can use input_message_content to send a message with the specified content instead of the voice message.
///
/// [- SeeAlso: ]<https://core.telegram.org/bots/api#inlinequeryresultcachedvoice>

public final class InlineQueryResultCachedVoice: Codable {
    
    enum CodingKeys: String, CodingKey {
        case type = "type"
        case id = "id"
        case voiceFileId = "voice_file_id"
        case title = "title"
        case caption = "caption"
        case parseMode = "parse_mode"
        case replyMarkup = "reply_markup"
        case inputMessageContent = "input_message_content"
    }

    public var type: String
    public var id: String
    public var voiceFileId: String
    public var title: String
    public var caption: String?
    public var parseMode: String?
    public var replyMarkup: InlineKeyboardMarkup?
    public var inputMessageContent: InputMessageContent?

    public init (type: String, id: String, voiceFileId: String, title: String, caption: String? = nil, parseMode: String? = nil, replyMarkup: InlineKeyboardMarkup? = nil, inputMessageContent: InputMessageContent? = nil) {
        self.type = type
        self.id = id
        self.voiceFileId = voiceFileId
        self.title = title
        self.caption = caption
        self.parseMode = parseMode
        self.replyMarkup = replyMarkup
        self.inputMessageContent = inputMessageContent
    }

}

