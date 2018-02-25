// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.


import HTTP

public extension Bot {

    /// Use this method to remove webhook integration if you decide to switch back to getUpdates. Returns True on success. Requires no parameters.
    /// - Returns: Future<Bool>. Throws on errors.
    /// - Note: Asynchronous method.
    ///
    /// [- SeeAlso: ]<https://core.telegram.org/bots/api#deletewebhook>

    public func deleteWebhook() throws -> Future<Bool> {
        let response: Future<TelegramContainer<Bool>>
        response = try client.respond(endpoint: "deleteWebhook", body: HTTPBody(), headers: HTTPHeaders())
        return response.flatMap(to: Bool.self) { try self.wrap($0) }
    }
}
