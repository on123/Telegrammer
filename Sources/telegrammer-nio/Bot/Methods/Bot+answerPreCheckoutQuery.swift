// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.


import HTTP

public extension Bot {

    /// Once the user has confirmed their payment and shipping details, the Bot API sends the final confirmation in the form of an Update with the field pre_checkout_query. Use this method to respond to such pre-checkout queries. On success, True is returned. Note: The Bot API must receive an answer within 10 seconds after the pre-checkout query was sent.
    /// - Parameters:
    ///     - pre_checkout_query_id: Unique identifier for the query to be answered
    ///     - ok: Specify True if everything is alright (goods are available, etc.) and the bot is ready to proceed with the order. Use False if there are any problems.
    ///     - error_message: Required if ok is False. Error message in human readable form that explains the reason for failure to proceed with the checkout (e.g. "Sorry, somebody just bought the last of our amazing black T-shirts while you were busy filling out your payment details. Please choose a different color or garment!"). Telegram will display this message to the user.
    /// - Returns: Future<Bool>. Throws on errors.
    /// - Note: Asynchronous method.
    ///
    /// [- SeeAlso: ]<https://core.telegram.org/bots/api#answerprecheckoutquery>

    public struct AnswerPreCheckoutQueryParams: JSONEncodable {
        var preCheckoutQueryId: String
        var ok: Bool
        var errorMessage: String?

        enum CodingKeys: String, CodingKey {
            case preCheckoutQueryId = "pre_checkout_query_id"
            case ok = "ok"
            case errorMessage = "error_message"
        }

        public init(preCheckoutQueryId: String, ok: Bool, errorMessage: String? = nil) {
            self.preCheckoutQueryId = preCheckoutQueryId
            self.ok = ok
            self.errorMessage = errorMessage
        }
    }

    public func answerPreCheckoutQuery(params: AnswerPreCheckoutQueryParams) throws -> Future<Bool> {
        let body = try httpBody(for: params)
        let headers = try httpHeaders(for: params)
        let response: Future<TelegramContainer<Bool>>
        response = try client.respond(endpoint: "answerPreCheckoutQuery", body: body, headers: headers)
        return response.flatMap(to: Bool.self) { try self.wrap($0) }
    }
}
