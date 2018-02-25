// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.


import HTTP

public extension Bot {

    /// Use this method to set the score of the specified user in a game. On success, if the message was sent by the bot, returns the edited Message, otherwise returns True. Returns an error, if the new score is not greater than the user's current score in the chat and force is False.
    /// - Parameters:
    ///     - user_id: User identifier
    ///     - score: New score, must be non-negative
    ///     - force: Pass True, if the high score is allowed to decrease. This can be useful when fixing mistakes or banning cheaters
    ///     - disable_edit_message: Pass True, if the game message should not be automatically edited to include the current scoreboard
    ///     - chat_id: Required if inline_message_id is not specified. Unique identifier for the target chat
    ///     - message_id: Required if inline_message_id is not specified. Identifier of the sent message
    ///     - inline_message_id: Required if chat_id and message_id are not specified. Identifier of the inline message
    /// - Returns: Future<Bool>. Throws on errors.
    /// - Note: Asynchronous method.
    ///
    /// [- SeeAlso: ]<https://core.telegram.org/bots/api#setgamescore>

    public struct SetGameScoreParams: JSONEncodable {
        var userId: Int64
        var score: Int
        var force: Bool?
        var disableEditMessage: Bool?
        var chatId: Int64?
        var messageId: Int?
        var inlineMessageId: String?

        enum CodingKeys: String, CodingKey {
            case userId = "user_id"
            case score = "score"
            case force = "force"
            case disableEditMessage = "disable_edit_message"
            case chatId = "chat_id"
            case messageId = "message_id"
            case inlineMessageId = "inline_message_id"
        }

        public init(userId: Int64, score: Int, force: Bool? = nil, disableEditMessage: Bool? = nil, chatId: Int64? = nil, messageId: Int? = nil, inlineMessageId: String? = nil) {
            self.userId = userId
            self.score = score
            self.force = force
            self.disableEditMessage = disableEditMessage
            self.chatId = chatId
            self.messageId = messageId
            self.inlineMessageId = inlineMessageId
        }
    }

    public func setGameScore(params: SetGameScoreParams) throws -> Future<Bool> {
        let body = try httpBody(for: params)
        let headers = try httpHeaders(for: params)
        let response: Future<TelegramContainer<Bool>>
        response = try client.respond(endpoint: "setGameScore", body: body, headers: headers)
        return response.flatMap(to: Bool.self) { try self.wrap($0) }
    }
}
