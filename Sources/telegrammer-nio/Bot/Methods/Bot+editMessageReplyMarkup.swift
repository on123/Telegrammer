// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.


import HTTP

public extension Bot {

    /// Use this method to edit only the reply markup of messages sent by the bot or via the bot (for inline bots).  On success, if edited message is sent by the bot, the edited Message is returned, otherwise True is returned.
    /// - Parameters:
    ///     - chat_id: Required if inline_message_id is not specified. Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    ///     - message_id: Required if inline_message_id is not specified. Identifier of the sent message
    ///     - inline_message_id: Required if chat_id and message_id are not specified. Identifier of the inline message
    ///     - reply_markup: A JSON-serialized object for an inline keyboard.
    /// - Returns: Future<MessageOrBool>. Throws on errors.
    /// - Note: Asynchronous method.
    ///
    /// [- SeeAlso: ]<https://core.telegram.org/bots/api#editmessagereplymarkup>

    public struct EditMessageReplyMarkupParams: JSONEncodable {
        var chatId: ChatId?
        var messageId: Int?
        var inlineMessageId: String?
        var replyMarkup: InlineKeyboardMarkup?

        enum CodingKeys: String, CodingKey {
            case chatId = "chat_id"
            case messageId = "message_id"
            case inlineMessageId = "inline_message_id"
            case replyMarkup = "reply_markup"
        }

        public init(chatId: ChatId? = nil, messageId: Int? = nil, inlineMessageId: String? = nil, replyMarkup: InlineKeyboardMarkup? = nil) {
            self.chatId = chatId
            self.messageId = messageId
            self.inlineMessageId = inlineMessageId
            self.replyMarkup = replyMarkup
        }
    }

    public func editMessageReplyMarkup(params: EditMessageReplyMarkupParams? = nil) throws -> Future<MessageOrBool> {
        let body = try httpBody(for: params)
        let headers = try httpHeaders(for: params)
        let response: Future<TelegramContainer<MessageOrBool>>
        response = try client.respond(endpoint: "editMessageReplyMarkup", body: body, headers: headers)
        return response.flatMap(to: MessageOrBool.self) { try self.wrap($0) }
    }
}
