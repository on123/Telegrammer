// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.


import HTTP

public extension Bot {

    /// Use this method to promote or demote a user in a supergroup or a channel. The bot must be an administrator in the chat for this to work and must have the appropriate admin rights. Pass False for all boolean parameters to demote a user. Returns True on success.
    /// - Parameters:
    ///     - chat_id: Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    ///     - user_id: Unique identifier of the target user
    ///     - can_change_info: Pass True, if the administrator can change chat title, photo and other settings
    ///     - can_post_messages: Pass True, if the administrator can create channel posts, channels only
    ///     - can_edit_messages: Pass True, if the administrator can edit messages of other users and can pin messages, channels only
    ///     - can_delete_messages: Pass True, if the administrator can delete messages of other users
    ///     - can_invite_users: Pass True, if the administrator can invite new users to the chat
    ///     - can_restrict_members: Pass True, if the administrator can restrict, ban or unban chat members
    ///     - can_pin_messages: Pass True, if the administrator can pin messages, supergroups only
    ///     - can_promote_members: Pass True, if the administrator can add new administrators with a subset of his own privileges or demote administrators that he has promoted, directly or indirectly (promoted by administrators that were appointed by him)
    /// - Returns: Future<Bool>. Throws on errors.
    /// - Note: Asynchronous method.
    ///
    /// [- SeeAlso: ]<https://core.telegram.org/bots/api#promotechatmember>

    public struct PromoteChatMemberParams: JSONEncodable {
        var chatId: ChatId
        var userId: Int64
        var canChangeInfo: Bool?
        var canPostMessages: Bool?
        var canEditMessages: Bool?
        var canDeleteMessages: Bool?
        var canInviteUsers: Bool?
        var canRestrictMembers: Bool?
        var canPinMessages: Bool?
        var canPromoteMembers: Bool?

        enum CodingKeys: String, CodingKey {
            case chatId = "chat_id"
            case userId = "user_id"
            case canChangeInfo = "can_change_info"
            case canPostMessages = "can_post_messages"
            case canEditMessages = "can_edit_messages"
            case canDeleteMessages = "can_delete_messages"
            case canInviteUsers = "can_invite_users"
            case canRestrictMembers = "can_restrict_members"
            case canPinMessages = "can_pin_messages"
            case canPromoteMembers = "can_promote_members"
        }

        public init(chatId: ChatId, userId: Int64, canChangeInfo: Bool? = nil, canPostMessages: Bool? = nil, canEditMessages: Bool? = nil, canDeleteMessages: Bool? = nil, canInviteUsers: Bool? = nil, canRestrictMembers: Bool? = nil, canPinMessages: Bool? = nil, canPromoteMembers: Bool? = nil) {
            self.chatId = chatId
            self.userId = userId
            self.canChangeInfo = canChangeInfo
            self.canPostMessages = canPostMessages
            self.canEditMessages = canEditMessages
            self.canDeleteMessages = canDeleteMessages
            self.canInviteUsers = canInviteUsers
            self.canRestrictMembers = canRestrictMembers
            self.canPinMessages = canPinMessages
            self.canPromoteMembers = canPromoteMembers
        }
    }

    public func promoteChatMember(params: PromoteChatMemberParams) throws -> Future<Bool> {
        let body = try httpBody(for: params)
        let headers = try httpHeaders(for: params)
        let response: Future<TelegramContainer<Bool>>
        response = try client.respond(endpoint: "promoteChatMember", body: body, headers: headers)
        return response.flatMap(to: Bool.self) { try self.wrap($0) }
    }
}
