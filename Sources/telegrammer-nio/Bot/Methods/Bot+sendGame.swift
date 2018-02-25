// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.


import HTTP

public extension Bot {

    /// Use this method to send a game. On success, the sent Message is returned.
    /// - Parameters:
    ///     - chat_id: Unique identifier for the target chat
    ///     - game_short_name: Short name of the game, serves as the unique identifier for the game. Set up your games via Botfather.
    ///     - disable_notification: Sends the message silently. Users will receive a notification with no sound.
    ///     - reply_to_message_id: If the message is a reply, ID of the original message
    ///     - reply_markup: A JSON-serialized object for an inline keyboard. If empty, one ‘Play game_title’ button will be shown. If not empty, the first button must launch the game.
    /// - Returns: Future<Message>. Throws on errors.
    /// - Note: Asynchronous method.
    ///
    /// [- SeeAlso: ]<https://core.telegram.org/bots/api#sendgame>

    public struct SendGameParams: JSONEncodable {
        var chatId: Int64
        var gameShortName: String
        var disableNotification: Bool?
        var replyToMessageId: Int?
        var replyMarkup: InlineKeyboardMarkup?

        enum CodingKeys: String, CodingKey {
            case chatId = "chat_id"
            case gameShortName = "game_short_name"
            case disableNotification = "disable_notification"
            case replyToMessageId = "reply_to_message_id"
            case replyMarkup = "reply_markup"
        }

        public init(chatId: Int64, gameShortName: String, disableNotification: Bool? = nil, replyToMessageId: Int? = nil, replyMarkup: InlineKeyboardMarkup? = nil) {
            self.chatId = chatId
            self.gameShortName = gameShortName
            self.disableNotification = disableNotification
            self.replyToMessageId = replyToMessageId
            self.replyMarkup = replyMarkup
        }
    }

    public func sendGame(params: SendGameParams) throws -> Future<Message> {
        let body = try httpBody(for: params)
        let headers = try httpHeaders(for: params)
        let response: Future<TelegramContainer<Message>>
        response = try client.respond(endpoint: "sendGame", body: body, headers: headers)
        return response.flatMap(to: Message.self) { try self.wrap($0) }
    }
}
