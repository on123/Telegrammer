// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.


import HTTP

public extension Bot {

    /// Use this method to send answers to callback queries sent from inline keyboards. The answer will be displayed to the user as a notification at the top of the chat screen or as an alert. On success, True is returned.
    /// Alternatively, the user can be redirected to the specified Game URL. For this option to work, you must first create a game for your bot via @Botfather and accept the terms. Otherwise, you may use links like t.me/your_bot?start=XXXX that open your bot with a parameter.
    /// - Parameters:
    ///     - callback_query_id: Unique identifier for the query to be answered
    ///     - text: Text of the notification. If not specified, nothing will be shown to the user, 0-200 characters
    ///     - show_alert: If true, an alert will be shown by the client instead of a notification at the top of the chat screen. Defaults to false.
    ///     - url: URL that will be opened by the user's client. If you have created a Game and accepted the conditions via @Botfather, specify the URL that opens your game – note that this will only work if the query comes from a callback_game button.
    ///       Otherwise, you may use links like t.me/your_bot?start=XXXX that open your bot with a parameter.
    ///     - cache_time: The maximum amount of time in seconds that the result of the callback query may be cached client-side. Telegram apps will support caching starting in version 3.14. Defaults to 0.
    /// - Returns: Future<Bool>. Throws on errors.
    /// - Note: Asynchronous method.
    ///
    /// [- SeeAlso: ]<https://core.telegram.org/bots/api#answercallbackquery>

    public struct AnswerCallbackQueryParams: JSONEncodable {
        var callbackQueryId: String
        var text: String?
        var showAlert: Bool?
        var url: String?
        var cacheTime: Int?

        enum CodingKeys: String, CodingKey {
            case callbackQueryId = "callback_query_id"
            case text = "text"
            case showAlert = "show_alert"
            case url = "url"
            case cacheTime = "cache_time"
        }

        public init(callbackQueryId: String, text: String? = nil, showAlert: Bool? = nil, url: String? = nil, cacheTime: Int? = nil) {
            self.callbackQueryId = callbackQueryId
            self.text = text
            self.showAlert = showAlert
            self.url = url
            self.cacheTime = cacheTime
        }
    }

    public func answerCallbackQuery(params: AnswerCallbackQueryParams) throws -> Future<Bool> {
        let body = try httpBody(for: params)
        let headers = try httpHeaders(for: params)
        let response: Future<TelegramContainer<Bool>>
        response = try client.respond(endpoint: "answerCallbackQuery", body: body, headers: headers)
        return response.flatMap(to: Bool.self) { try self.wrap($0) }
    }
}
