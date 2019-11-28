// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.



public extension Bot {

    /// Parameters container struct for `getUpdates` method
    struct GetUpdatesParams: JSONEncodable {

        /// Identifier of the first update to be returned. Must be greater by one than the highest among the identifiers of previously received updates. By default, updates starting with the earliest unconfirmed update are returned. An update is considered confirmed as soon as getUpdates is called with an offset higher than its update_id. The negative offset can be specified to retrieve updates starting from -offset update from the end of the updates queue. All previous updates will forgotten.
        var offset: Int?

        /// Limits the number of updates to be retrieved. Values between 1—100 are accepted. Defaults to 100.
        var limit: Int?

        /// Timeout in seconds for long polling. Defaults to 0, i.e. usual short polling. Should be positive, short polling should be used for testing purposes only.
        var timeout: Int?

        /// List the types of updates you want your bot to receive. For example, specify [“message”, “edited_channel_post”, “callback_query”] to only receive updates of these types. See Update for a complete list of available update types. Specify an empty list to receive all updates regardless of type (default). If not specified, the previous setting will be used.
        /// 
        /// Please note that this parameter doesn't affect updates created before the call to the getUpdates, so unwanted updates may be received for a short period of time.
        var allowedUpdates: [String]?

        /// Custom keys for coding/decoding `GetUpdatesParams` struct
        enum CodingKeys: String, CodingKey {
            case offset = "offset"
            case limit = "limit"
            case timeout = "timeout"
            case allowedUpdates = "allowed_updates"
        }

        public init(offset: Int? = nil, limit: Int? = nil, timeout: Int? = nil, allowedUpdates: [String]? = nil) {
            self.offset = offset
            self.limit = limit
            self.timeout = timeout
            self.allowedUpdates = allowedUpdates
        }
    }

    /**
     Use this method to receive incoming updates using long polling (wiki). An Array of Update objects is returned.

     SeeAlso Telegram Bot API Reference:
     [GetUpdatesParams](https://core.telegram.org/bots/api#getupdates)
     
     - Parameters:
         - params: Parameters container, see `GetUpdatesParams` struct
     - Throws: Throws on errors
     - Returns: Future of `[Update]` type
     */
    @discardableResult
    func getUpdates(params: GetUpdatesParams? = nil) throws -> Future<[Update]> {
        let body = try httpBody(for: params)
        let headers = httpHeaders(for: params)
        return try client
            .request(endpoint: "getUpdates", body: body, headers: headers)
            .flatMapThrowing { (container) -> [Update] in
                return try self.processContainer(container)
        }
    }
}