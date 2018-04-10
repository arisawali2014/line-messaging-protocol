struct Message {
	1: string from_;
	2: string to;
	3: MIDType toType;
	4: string id;
	5: i64 createdTime;
	6: i64 deliveredTime;
	10: string text;
	#11: Location location;
	14: bool hasContent;
	15: ContentType contentType;
	17: binary contentPreview;
	18: map<string, string> contentMetadata;
	19: i8 sessionId;
	20: list<binary> chunks;
	21: string relatedMessageId;
	22: MessageRelationType messageRelationType;
	23: i32 readCount;
	24: ServiceCode relatedMessageServiceCode;
}

enum MIDType {
	USER = 0,
	ROOM = 1,
	GROUP = 2,
	SQUARE = 3,
	SQUARE_CHAT = 4,
	SQUARE_MEMBER = 5,
	BOT = 6,
}

enum ContentType {
	NONE = 0,
	IMAGE = 1,
	VIDEO = 2,
	AUDIO = 3,
	HTML = 4,
	PDF = 5,
	CALL = 6,
	STICKER = 7,
	PRESENCE = 8,
	GIFT = 9,
	GROUPBOARD = 10,
	APPLINK = 11,
	LINK = 12,
	CONTACT = 13,
	FILE = 14,
	LOCATION = 15,
	POSTNOTIFICATION = 16,
	RICH = 17,
	CHATEVENT = 18,
	MUSIC = 19,
	PAYMENT = 20,
	EXTIMAGE = 21,
}

enum MessageRelationType {
	FORWARD = 0,
	AUTO_REPLY = 1,
	SUBORDINATE = 2,
}

enum ServiceCode {
	UNKNOWN = 0,
	TALK = 1,
	SQUARE = 2,
}

enum SquareEventType {
	RECEIVE_MESSAGE = 0,
	SEND_MESSAGE = 1,
	NOTIFIED_JOIN_SQUARE_CHAT = 2,
	NOTIFIED_INVITE_INTO_SQUARE_CHAT = 3,
	NOTIFIED_LEAVE_SQUARE_CHAT = 4,
	NOTIFIED_DESTROY_MESSAGE = 5,
	NOTIFIED_MARK_AS_READ = 6,
	NOTIFIED_UPDATE_SQUARE_MEMBER_PROFILE = 7,
	NOTIFIED_UPDATE_SQUARE = 8,
	NOTIFIED_UPDATE_SQUARE_STATUS = 9,
	NOTIFIED_UPDATE_SQUARE_AUTHORITY = 10,
	NOTIFIED_UPDATE_SQUARE_MEMBER = 11,
	NOTIFIED_UPDATE_SQUARE_CHAT = 12,
	NOTIFIED_UPDATE_SQUARE_CHAT_STATUS = 13,
	NOTIFIED_UPDATE_SQUARE_CHAT_MEMBER = 14,
	NOTIFIED_CREATE_SQUARE_MEMBER = 15,
	NOTIFIED_CREATE_SQUARE_CHAT_MEMBER = 16,
	NOTIFIED_UPDATE_SQUARE_MEMBER_RELATION = 17,
	NOTIFIED_SHUTDOWN_SQUARE = 18,
	NOTIFIED_KICKOUT_FROM_SQUARE = 19,
	NOTIFIED_DELETE_SQUARE_CHAT = 20,
	NOTIFICATION_JOIN_REQUEST = 21,
	NOTIFICATION_JOINED = 22,
	NOTIFICATION_PROMOTED_COADMIN = 23,
	NOTIFICATION_PROMOTED_ADMIN = 24,
	NOTIFICATION_DEMOTED_MEMBER = 25,
	NOTIFICATION_KICKED_OUT = 26,
	NOTIFICATION_SQUARE_DELETE = 27,
	NOTIFICATION_SQUARE_CHAT_DELETE = 28,
	NOTIFICATION_MESSAGE = 29,
	NOTIFIED_UPDATE_SQUARE_CHAT_PROFILE_NAME = 30,
	NOTIFIED_UPDATE_SQUARE_CHAT_PROFILE_IMAGE = 31,
	NOTIFIED_UPDATE_SQUARE_FEATURE_SET = 32,
	NOTIFIED_UPDATE_SQUARE_NOTE_STATUS = 36,
	NOTIFIED_UPDATE_SQUARE_CHAT_ANNOUNCEMENT = 37,
	NOTIFIED_ADD_BOT = 33,
	NOTIFIED_REMOVE_BOT = 34,
}

exception SquareException {
	1: i32 errorCode;
	2: ErrorExtraInfo errorExtraInfo;
	3: string reason;
}

struct Category {
	1: i32 id;
	2: string name;
}

struct ErrorExtraInfo {
	1: i32 preconditionFailedExtraInfo;
}

struct NoteStatus {
	1: i32 noteCount;
	2: i64 latestCreatedAt;
}

struct Square {
	1: string mid;
	2: string name;
	3: string welcomeMessage;
	4: string profileImageObsHash;
	5: string desc;
	6: bool searchable;
	7: i32 type;
	8: i32 categoryId;
	9: string invitationURL;
	10: i64 revision;
	11: bool ableToUseInvitationTicket;
	12: i32 state;
}

struct SquareAuthority {
	1: string squareMid;
	2: i32 updateSquareProfile;
	3: i32 inviteNewMember;
	4: i32 approveJoinRequest;
	5: i32 createPost;
	6: i32 createOpenSquareChat;
	7: i32 deleteSquareChatOrPost;
	8: i32 removeSquareMember;
	9: i32 grantRole;
	10: i32 enableInvitationTicket;
	11: i64 revision;
	12: i32 createSquareChatAnnouncement;
}

struct SquareChat {
	1: string squareChatMid;
	2: string squareMid;
	3: i32 type;
	4: string name;
	5: string chatImageObsHash;
	6: i64 squareChatRevision;
	7: i32 maxMemberCount;
	8: i32 state;
}

struct SquareChatAnnouncement {
	1: i64 announcementSeq;
	2: i32 type;
	3: SquareChatAnnouncementContents contents;
}

struct SquareChatAnnouncementContents {
	1: TextMessageAnnouncementContents textMessageAnnouncementContents
}

struct SquareChatMember {
	1: string squareMemberMid;
	2: string squareChatMid;
	3: i64 revision;
	4: i32 membershipState;
	5: bool notificationForMessage;
}

struct SquareChatStatus {
	1: SquareMessage lastMessage;
	2: string senderDisplayName;
	3: SquareChatStatusWithoutMessage otherStatus;
}

struct SquareChatStatusWithoutMessage {
	1: i32 memberCount;
	2: i32 unreadMessageCount;
	3: string markedAsReadMessageId;
}

struct SquareEventNotifiedLeaveSquareChat {
	1: string squareChatMid;
	2: string squareMemberMid;
	3: bool sayGoodbye;
	4: SquareMember squareMember;
}

struct SquareEventNotifiedMarkAsRead {
	1: string squareChatMid;
	2: string sMemberMid;
	4: string messageId;
}

struct SquareEventNotifiedRemoveBot {
	1: string squareChatMid;
	2: SquareMember squareMember;
	3: string botMid;
	4: string botDisplayName;
}

struct SquareEventNotifiedShutdownSquare {
	1: string squareChatMid;
	2: Square square;
}

struct SquareEventNotifiedUpdateSquare {
	1: string squareMid;
	2: Square square;
}

struct SquareEventNotifiedUpdateSquareAuthority {
	1: string squareMid;
	2: SquareAuthority squareAuthority
}

struct SquareEventNotifiedUpdateSquareChat {
	1: string squareMid;
	2: string squareChatMid;
	3: SquareChat squareChat;
}

struct SquareEventNotifiedUpdateSquareChatAnnouncement {
	1: string squareChatMid;
	2: i64 announcementSeq;
}

struct SquareEventNotifiedUpdateSquareChatMember {
	1: string squareChatMid;
	2: string squareMemberMid;
	3: SquareChatMember squareChatMember
}

struct SquareEventNotifiedUpdateSquareChatProfileImage {
	1: string squareChatMid;
	2: SquareMember editor;
}

struct SquareEventNotifiedUpdateSquareChatProfileName {
	1: string squareChatMid;
	2: SquareMember editor;
	3: string updatedChatName;
}

struct SquareEventNotifiedUpdateSquareChatStatus {
	1: string squareChatMid;
	2: SquareChatStatusWithoutMessage statusWithoutMessage;
}

struct SquareEventNotifiedUpdateSquareFeatureSet {
	1: SquareFeatureSet squareFeatureSet;
}

struct SquareEventNotifiedUpdateSquareMember {
	1: string squareMid;
	2: string squareMemberMid;
	3: SquareMember squareMember;
}

struct SquareEventNotifiedUpdateSquareMemberProfile {
	1: string squareChatMid;
	2: SquareMember squareMember;
}

struct SquareEventNotifiedUpdateSquareMemberRelation {
	1: string squareMid;
	2: string myMemberMid;
	3: string targetSquareMemberMid;
	4: SquareMemberRelation squareMemberRelation;
}

struct SquareEventNotifiedUpdateSquareNoteStatus {
	1: string squareMid;
	2: NoteStatus noteStatus;
}

struct SquareEventNotifiedUpdateSquareStatus{
	1: string squareMid;
	2: SquareStatus squareStatus;
}

struct SquareEventReceiveMessage {
	1: string squareChatMid;
	2: SquareMessage squareMessage;
}

struct SquareEventSendMessage {
	1: string squareChatMid;
	2: SquareMessage squareMessage;
	3: i32 reqSeq;
}

struct SquareMemberSearchOption {
	1: i32 membershipState;
	2: set<SquareMemberRole> memberRoles;
	3: string displayName;
	4: i32 ableToReceiveMessage;
	5: i32 ableToReceiveFriendRequest;
	6: string chatMidToExcludeMembers;
	7: bool includingMe;
}

enum SquareMemberRole {
	ADMIN = 1,
	CO_ADMIN = 2,
}

struct SquareFeature {
	1: i32 controlState;
	2: i32 booleanValue;
}

struct SquareFeatureSet {
	1: string squareMid;
	2: i64 revision;
	11: SquareFeature creatingSecretSquareChat;
	12: SquareFeature invitingIntoOpenSquareChat;
}

struct SquareInfo {
	1: Square square;
	2: SquareStatus squareStatus;
	3: NoteStatus squareNoteStatus;
}

struct SquareMember {
	1: string squareMemberMid;
	2: string squareMid;
	3: string displayName;
	4: string profileImageObsHash;
	5: bool ableToReceiveMessage;
	7: i32 membershipState;
	8: i32 role;
	9: i64 revision;
	10: SquarePreference preference;
	11: string joinMessage;
}

struct SquareMemberRelation {
	1: i32 state;
	2: i64 revision;
}

struct SquareMessage {
	1: Message message;
	3: i32 fromType;
	4: i64 squareMessageRevision
}

struct SquarePreference {
	1: i64 favoriteTimestamp;
	2: bool notiForNewJoinRequest;
}

struct SquareStatus {
	1: i32 memberCount;
	2: i32 joinRequestCount;
	3: string lastJoinRequestAt;
	4: i32 openChatCount;
}

struct SubscriptionNotification {
	1: i64 subscriptionId;
}

struct SubscriptionState {
	1: i64 subscriptionId;
	2: i64 ttlMillis;
}

struct TextMessageAnnouncementContents {
	1: string messageId;
	2: string text;
	3: string senderSquareMemberMid;
	4: i64 createdAt;
}

struct SendMessageRequest {
	1: i32 reqSeq;
	2: string squareChatMid;
	3: SquareMessage squareMessage;
}

struct SendMessageResponse {
	1: SquareMessage createdSquareMessage;
}

struct GetJoinedSquaresRequest {
	2: string continuationToken;
	3: i32 limit;
}

struct GetJoinedSquaresResponse {
	1: list<Square> Square;
	2: map<string, SquareMember> members;
	3: map<string, SquareAuthority> authorities;
	4: map<string, SquareStatus> statuses;
	5: string continuationToken;
	6: map<string, NoteStatus> noteStatuses;
}

struct GetSquareChatRequest {
	1: string squareChatMid;
}

struct GetSquareChatResponse {
	1: SquareChat squareChat;
	2: SquareChatMember squareChatMember;
	3: SquareChatStatus squareChatStatus;
}

struct FindSquareByInvitationTicketRequest {
	2: string invitationTicket;
}

struct FindSquareByInvitationTicketResponse {
	1: Square square;
	2: SquareMember myMembership;
	3: SquareAuthority squareAuthority;
	4: SquareStatus squareStatus;
	5: SquareFeatureSet squareFeatureSet;
	6: NoteStatus noteStatus;
	7: SquareChat chat;
	8: SquareChatStatus chatStatus;
}

struct GetJoinedSquareChatsRequest {
	2: string continuationToken;
	3: i32 limit;
}

struct GetJoinedSquareChatsResponse {
	1: SquareChat chats;
	2: SquareChatMember chatMembers;
	3: SquareChatStatus statuses;
	4: string continuationToken;
}

struct GetSquareRequest {
	2: string mid;
}

struct GetSquareResponse {
	1: Square square;
	2: SquareMember myMembership;
	3: SquareAuthority squareAuthority;
	4: SquareStatus squareStatus;
	5: SquareFeatureSet squareFeatureSet;
	6: NoteStatus noteStatus;
}

struct ApproveSquareMembersRequest {
	2: string squareMid;
	3: list<string> requestedMemberMids;
}

struct ApproveSquareMembersResponse {
	1: list<SquareMember> approvedMembers;
	2: SquareStatus status;
}

struct CreateSquareChatAnnouncementRequest {
	1: i32 reqSeq;
	2: string squareChatMid;
	3: SquareChatAnnouncement squareChatAnnouncement;
}

struct CreateSquareChatAnnouncementResponse {
	1: SquareChatAnnouncement announcement;
}

struct CreateSquareChatRequest {
	1: i32 reqSeq;
	2: SquareChat squareChat;
	3: list<string> squareMemberMids;
}

struct CreateSquareChatResponse {
	1: SquareChat squareChat;
	2: SquareChatStatus squareChatStatus;
	3: SquareChatMember squareChatMember;
}

struct CreateSquareRequest {
	1: i32 reqSeq;
	2: Square square;
	3: SquareMember creator;
}

struct CreateSquareResponse {
	1: Square square;
	2: SquareMember creator;
	3: SquareAuthority authority;
	4: SquareStatus status;
	5: SquareFeatureSet featureSet;
	6: NoteStatus noteStatus;
}

struct DeleteSquareChatAnnouncementRequest {
	2: string squareChatMid;
	3: i64 announcementSeq;
}

struct DeleteSquareChatRequest {
	2: string squareChatMid;
	3: i64 revision;
}

struct DeleteSquareRequest {
	2: string mid;
	3: i64 revision;	
}

struct DestroyMessageRequest {
	2: string squareChatMid;
	4: string messageId;
}

struct DestroyMessagesRequest {
	2: string squareChatMid;
	4: set<string> messageIds;
}

struct FetchMyEventsRequest {
	1: string subscriptionId;
	2: string syncToken;
	3: i32 limit;
	4: string continuationToken;
}

struct FetchMyEventsResponse {
	1: SubscriptionState subscription;
	2: list<SquareEvent> events;
	3: string syncToken;
	4: string continuationToken;
}

struct FetchSquareChatEventsRequest {
	1: i64 subscriptionId;
	2: string squareChatMid;
	3: string syncToken;
	4: i32 limit;
	5: i32 direction;
}

struct FetchSquareChatEventsResponse {
	1: SubscriptionState subscription;
	2: list<SquareEvent> events;
	3: string syncToken;
	4: string continuationToken;
}

struct GetInvitationTicketUrlRequest {
	2: string mid;
}

struct GetInvitationTicketUrlResponse {
	1: string invitationURL;
}

struct GetJoinableSquareChatsRequest {
	1: string squareMid;
	10: string continuationToken;
	11: i32 limit;
}

struct GetJoinableSquareChatsResponse {
	1: list<SquareChat> squareChats;
	2: string continuationToken;
	3: i32 totalSquareChatCount;
	4: map<string, SquareChatStatus> squareChatStatuses;
}

struct GetNoteStatusRequest {
	2: string squareMid
}

struct GetNoteStatusResponse {
	1: string squareMid;
	2: NoteStatus status;
}

struct GetSquareAuthorityRequest {
	1: string squareMid;
}

struct GetSquareAuthorityResponse {
	1: SquareAuthority authority;
}

struct GetSquareCategoriesRequest {}

struct GetSquareCategoriesResponse {
	1: list<Category> categoryList;
}

struct GetSquareChatAnnouncementsRequest {
	2: string squareChatMid;
}

struct GetSquareChatAnnouncementsResponse {
	1: SquareChatAnnouncement announcements;
}

struct GetSquareChatMembersRequest {
	1: string squareChatMid;
	2: string continuationToken;
	3: i32 limit;
}

struct GetSquareChatMembersResponse {
	1: list<SquareMember> squareChatMembers;
	2: string continuationToken;
}

struct GetSquareChatStatusRequest {
	2: string squareChatMid;
}

struct GetSquareChatStatusResponse {
	1: SquareChatStatus chatStatus;
}

struct GetSquareFeatureSetRequest {
	2: string squareMid;
}

struct GetSquareFeatureSetResponse {
	1: SquareFeatureSet squareFeatureSet;
}

struct GetSquareMemberRelationRequest {
	2: string squareMid;
	3: string targetSquareMemberMid;
}

struct GetSquareMemberRelationResponse {
	1: string squareMid;
	2: string targetSquareMemberMid;
	3: SquareMemberRelation relation;
}

struct GetSquareMemberRelationsRequest {
	2: i32 state;
	3: string continuationToken;
	4: i32 limit;
}

struct GetSquareMemberRelationsResponse {
	1: list<SquareMember> squareMembers;
	2: map<string, SquareMemberRelation> relations;
	3: string continuationToken;
}

struct GetSquareMemberRequest {
	2: string squareMemberMid;
}

struct GetSquareMemberResponse {
	1: SquareMember squareMember;
	2: SquareMemberRelation relation;
	3: string oneOnOneChatMid;
}

struct GetSquareStatusRequest {
	2: string squareMid;
}

struct GetSquareStatusResponse {
	1: SquareStatus squareStatus;
}

struct InviteIntoSquareChatRequest {
	1: list<string> inviteeMids;
	2: string squareChatMid	
}

struct InviteIntoSquareChatResponse {
	1: list<string> inviteeMids;
}

struct InviteToSquareRequest {
	2: string squareMid;
	3: list<string> invitees;
	4: string squareChatMid;
}

struct JoinSquareChatRequest {
	1: string squareChatMid;
}

struct JoinSquareChatResponse {
	1: SquareChat squareChat;
	2: SquareChatStatus squareChatStatus;
	3: SquareChatMember squareChatMember;
}

struct JoinSquareRequest {
	2: string squreMid;
	3: SquareMember member;
}

struct JoinSquareResponse {
	1: Square square;
	2: SquareAuthority squareAuthority;
	3: SquareStatus squareStatus;
	4: SquareMember squareMember;
	5: SquareFeatureSet squareFeatureSet;
	6: NoteStatus notestatus;
}

struct LeaveSquareChatRequest {
	2: string squareChatMid;
	3: bool sayGoodbye;
	4: i64 squareChatMemberRevision;
}

struct LeaveSquareRequest {
	2: string squareMid;
}

struct MarkAsReadRequest {
	2: string squareChatMid;
	4: string messageId;
}

struct RefreshSubscriptionsRequest{
	2: list<string> subscriptions;
}

struct RefreshSubscriptionsResponse {
	1: i64 ttlMillis;
	2: map<string, SubscriptionState> subscriptionStates;
}

struct RejectSquareMembersRequest {
	2: string squareMid;
	3: list<string> requestedMemberMids;
}

struct RejectSquareMembersResponse {
	1: list<SquareMember> rejectedMembers;
	2: SquareStatus status;
}

struct RemoveSubscriptionsRequest {
	2: list<string> unsubscriptions;
}

struct ReportSquareChatRequest {
	2: string squareMid;
	3: string squareChatMid;
	5: i32 reportType;
	6: string otherReason;
}

struct ReportSquareMemberRequest {
	2: string squareMemberMid;
	3: i32 reportType;
	4: string otherReason;
	5: string squareChatMid;
}

struct ReportSquareMessageRequest {
	2: string squareMid;
	3: string squareChatMid;
	4: string squareMessageId;
	5: i32 reportType;
	6: string otherReason;
}

struct ReportSquareRequest {
	2: string squareMid;
	3: i32 reportType;
	4: string otherReason;
}

struct SearchSquareMembersRequest {
	2: string squareMid;
	3: SquareMemberSearchOption searchOption;
	4: string continuationToken;
	5: i32 limit;
}

struct SearchSquareMembersResponse {
	1: list<SquareMember> members;
	2: i64 revision;
	3: string continuationToken;
	4: i32 totalCount;
}

struct SearchSquaresRequest {
	2: string query;
	3: string continuationToken;
	4: i32 limit;
}

struct SearchSquaresResponse {
	1: list<Square> squares;
	2: map<string, SquareStatus> squareStatuses;
	3: map<string, SquareMember> myMemberships;
	4: string continuationToken;
	5: map<string, NoteStatus> noteStatuses
}

struct SquareEvent {
	2: i64 createdTime;
	3: i32 type;
	4: SquareEventPayload payload;
	5: string syncToken;
	6: i32 eventStatus;
}

struct SquareEventNotificationJoinRequest {
	1: string squareMid;
	2: string squareName;
	3: string requestMemberName;
	4: string profileImageObsHash;
}

struct SquareEventNotificationMemberUpdate {
	1: string squareMid;
	2: string squareName;
	3: string profileImageObsHash;
}

struct SquareEventNotificationMessage {
	1: string squareChatMid;
	2: SquareMessage squareMessage;
	3: string senderDisplayName;
	4: i32 unreadCount;
	5: bool requiredToFetchChatEvents;
}

struct SquareEventNotificationSquareChatDelete {
	1: string squareChatMid;
	2: string squareChatName;
	3: string profileImageObsHash;
}

struct SquareEventNotificationSquareDelete {
	1: string squareChatMid;
	2: string squareChatName;
	3: string profileImageObsHash;
}

struct SquareEventNotifiedAddBot {
	1: string squareChatMid;
	2: string squareChatName;
	3: string botMid;
	4: string botDisplayName;
}

struct SquareEventNotifiedCreateSquareChatMember {
	1: SquareChat chat;
	2: SquareChatStatus chatStatus;
	3: SquareChatMember chatMember;
	4: i64 joinedAt;
	5: SquareMember peerSquareMember;
}

struct SquareEventNotifiedCreateSquareMember {
	1: Square square;
	2: SquareAuthority squareAuthority;
	3: SquareStatus squareStatus;
	4: SquareMember squareMember;
	5: SquareFeatureSet squareFeatureSet;
	6: NoteStatus noteStatus;
}

struct SquareEventNotifiedDeleteSquareChat {
	1: SquareChat squareChat;
}

struct SquareEventNotifiedDestroyMessage {
	1: string squareChatMid;
	3: string messageId;
}

struct SquareEventNotifiedInviteIntoSquareChat {
	1: string squareChatMid;
	2: list<SquareMember> invitees;
	3: SquareMember invitor;
	4: SquareMemberRelation invitorRelation;
}

struct SquareEventNotifiedJoinSquareChat {
	1: string squareChatMid;
	2: SquareMember joinedMember;
}

struct SquareEventNotifiedKickoutFromSquare {
	1: string squareChatMid;
	2: list<SquareMember> kickees;
}

struct SquareEventPayload {
	1: SquareEventReceiveMessage receiveMessage;
	2: SquareEventSendMessage sendMessage;
	3: SquareEventNotifiedJoinSquareChat notifiedJoinSquareChat;
	4: SquareEventNotifiedInviteIntoSquareChat notifiedInviteIntoSquareChat;
	5: SquareEventNotifiedLeaveSquareChat notifiedLeaveSquareChat;
	6: SquareEventNotifiedDestroyMessage notifiedDestroyMessage;
	7: SquareEventNotifiedMarkAsRead notifiedMarkAsRead;
	8: SquareEventNotifiedUpdateSquareMemberProfile notifiedUpdateSquareMemberProfile;
	9: SquareEventNotifiedUpdateSquare notifiedUpdateSquare;
	10: SquareEventNotifiedUpdateSquareMember notifiedUpdateSquareMember;
	11: SquareEventNotifiedUpdateSquareChat notifiedUpdateSquareChat;
	12: SquareEventNotifiedUpdateSquareChatMember notifiedUpdateSquareChatMember;
	13: SquareEventNotifiedUpdateSquareAuthority notifiedUpdateSquareAuthority;
	14: SquareEventNotifiedUpdateSquareStatus notifiedUpdateSquareStatus;
	15: SquareEventNotifiedUpdateSquareChatStatus notifiedUpdateSquareChatStatus;
	16: SquareEventNotifiedCreateSquareMember notifiedCreateSquareMember;
	17: SquareEventNotifiedCreateSquareChatMember notifiedCreateSquareChatMember;
	18: SquareEventNotifiedUpdateSquareMemberRelation notifiedUpdateSquareMemberRelation;
	19: SquareEventNotifiedShutdownSquare notifiedShutdownSquare;
	20: SquareEventNotifiedKickoutFromSquare notifiedKickoutFromSquare;
	21: SquareEventNotifiedDeleteSquareChat notifiedDeleteSquareChat;
	22: SquareEventNotificationJoinRequest notificationJoinRequest;
	23: SquareEventNotificationMemberUpdate notificationJoined;
	24: SquareEventNotificationMemberUpdate notificationPromoteCoadmin;
	25: SquareEventNotificationMemberUpdate notificationPromoteAdmin;
	26: SquareEventNotificationMemberUpdate notificationDemoteMember;
	27: SquareEventNotificationMemberUpdate notificationKickedOut;
	28: SquareEventNotificationSquareDelete notificationSquareDelete;
	29: SquareEventNotificationSquareChatDelete notificationSquareChatDelete;
	30: SquareEventNotificationMessage notificationMessage;
	31: SquareEventNotifiedUpdateSquareChatProfileName notifiedUpdateSquareChatProfileName;
	32: SquareEventNotifiedUpdateSquareChatProfileImage notifiedUpdateSquareChatProfileImage;
	33: SquareEventNotifiedUpdateSquareFeatureSet notifiedUpdateSquareFeatureSet;
	34: SquareEventNotifiedAddBot notifiedAddBot;
	35: SquareEventNotifiedRemoveBot notifiedRemoveBot;
	36: SquareEventNotifiedUpdateSquareNoteStatus notifiedUpdateSquareNoteStatus;
	37: SquareEventNotifiedUpdateSquareChatAnnouncement notifiedUpdateSquareChatAnnouncement;
}

struct GetSquareMembersRequest {
	2: set<string> mids;
}

struct GetSquareMembersResponse {
	1: map<string, SquareMember> members;
}

struct UpdateSquareAuthorityRequest {
	2: set<SquareAuthorityAttribute> updateAttributes;
	4: SquareAuthority authority;
}

struct UpdateSquareAuthorityResponse {
	1: set<SquareAuthorityAttribute> updateAttributes;
	2: SquareAuthority authority;
}

enum SquareAuthorityAttribute {
	UPDATE_SQUARE_PROFILE = 1,
	INVITE_NEW_MEMBER = 2,
	APPROVE_JOIN_REQUEST = 3,
	CREATE_POST = 4,
	CREATE_OPEN_SQUARE_CHAT = 5,
	DELETE_SQUARE_CHAT_OR_POST = 6,
	REMOVE_SQUARE_MEMBER = 7,
	GRANT_ROLE = 8,
	ENABLE_INVITATION_TICKET = 9,
	CREATE_CHAT_ANNOUNCEMENT = 10,
}

struct UpdateSquareChatMemberRequest {
	2: set<SquareAuthorityAttribute> updatedAttrs;
	3: SquareChatMember chatMember;
}

struct UpdateSquareChatMemberResponse {
	1: SquareChatMember updatedChatMember;
}

struct UpdateSquareChatRequest {
	2: set<SquareAuthorityAttribute> updatedAttrs;
	3: SquareChat chatChat;
}

struct UpdateSquareChatResponse {
	1: set<SquareChatAttribute> updatedAttrs;
	2: SquareChat squareChat;
}

enum SquareChatAttribute {
	NAME = 2,
	SQUARE_CHAT_IMAGE = 3,
	STATE = 4,
	TYPE = 5,
}

enum SquareAttribute {
	NAME = 1,
	WELCOME_MESSAGE = 2,
	PROFILE_IMAGE = 3,
	DESCRIPTION = 4,
	SEARCHABLE = 6,
	CATEGORY = 7,
	INVITATION_URL = 8,
	ABLE_TO_USE_INVITATION_URL = 9,
	STATE = 10,
}

struct UpdateSquareFeatureSetRequest {
	2: set<SquareFeatureSetAttribute> updatedAttributes;
	3: SquareFeatureSet squareFeatureSet;
}

struct UpdateSquareFeatureSetResponse {
	1: set<SquareFeatureSetAttribute> updatedAttributes;
	2: SquareFeatureSet squareFeatureSet;
}

enum SquareFeatureSetAttribute {
	CREATING_SECRET_SQUARE_CHAT = 1,
	INVITING_INTO_OPEN_SQUARE_CHAT = 2,
}

enum SquareMemberRelationAttribute {
	BLOCKED = 1,
}

struct UpdateSquareMemberRelationRequest {
	2: string squareMid;
	3: string targetSquareMemberMid
	4: set<SquareMemberRelationAttribute> updatedAttrs;
	5: SquareMemberRelation relation;
}

struct UpdateSquareMemberRelationResponse {
	1: string squareMid;
	2: string targetSquareMemberMid;
	3: set<SquareMemberRelationAttribute> updatedAttrs;
	4: SquareMemberRelation relation;
}

enum SquareMemberAttribute {
	DISPLAY_NAME = 1,
	PROFILE_IMAGE = 2,
	ABLE_TO_RECEIVE_MESSAGE = 3,
	MEMBERSHIP_STATE = 5,
	ROLE = 6,
	PREFERENCE = 7,
}

enum SquarePreferenceAttribute {
	FAVORITE = 1,
	NOTI_FOR_NEW_JOIN_REQUEST = 2,
}

struct UpdateSquareMemberRequest {
	2: set<SquareMemberAttribute> updatedAttrs;
	3: set<SquarePreferenceAttribute> updatedPreferenceAttrs;
	4: SquareMember squareMember;
}

struct UpdateSquareMemberResponse {
	1: set<SquareMemberAttribute> updatedAttrs;
	2: SquareMember squareMember;
	3: set<SquarePreferenceAttribute> updatedPreferenceAttrs;
}

struct UpdateSquareMembersRequest {
	2: set<SquareMemberAttribute> updatedAttrs;
	3: list<SquareMember> members;
}

struct UpdateSquareMembersResponse {
	1: set<SquareMemberAttribute> updatedAttrs;
	2: SquareMember editor;
	3: map<string, SquareMember> members;
}

struct UpdateSquareRequest {
	2: set<SquareAttribute> updatedAttrs;
	3: Square square;
}

struct UpdateSquareResponse {
	1: set<SquareAttribute> updatedAttrs;
	2: Square square;
}

service SquareService {

	SendMessageResponse sendMessage(
		1: SendMessageRequest request
	) throws (1: SquareException e)
	
	GetSquareResponse getSquare(
		1: GetSquareRequest request
	) throws(1: SquareException e);
	
	GetJoinedSquaresResponse getJoinedSquares(
		1: GetJoinedSquaresRequest request,
	) throws (1: SquareException e);

	GetSquareChatResponse getSquareChat(
		1: GetSquareChatRequest request,
	) throws (1: SquareException e);

	FindSquareByInvitationTicketResponse findSquareByInvitationTicket(
		1: FindSquareByInvitationTicketRequest request,
	) throws (1: SquareException e);

	ApproveSquareMembersResponse approveSquareMembers(
		1: ApproveSquareMembersRequest request;
	) throws (1: SquareException e);

	CreateSquareChatAnnouncementResponse createSquareChatAnnouncement(
		1: CreateSquareChatAnnouncementRequest createSquareChatAnnouncementRequest;
	) throws (1: SquareException e);

	CreateSquareChatResponse createSquareChat(
		1: CreateSquareChatRequest request;
	) throws (1: SquareException e);

	CreateSquareResponse createSquare(
		1: CreateSquareRequest request;
	) throws (1: SquareException e);

	void deleteSquareChatAnnouncement(
		1: DeleteSquareChatAnnouncementRequest request;
	) throws (1: SquareException e);

	void deleteSquareChat(
		1: DeleteSquareChatRequest request;
	) throws (1: SquareException e);

	void deleteSquare(
		1: DeleteSquareRequest request;
	) throws (1: SquareException e);

	void destroyMessage(
		1: DestroyMessageRequest request;
	) throws (1: SquareException e);

	void destroyMessages(
		1: DestroyMessagesRequest request;
	) throws (1: SquareException e);

	FetchMyEventsResponse fetchMyEvents(
		1: FetchMyEventsRequest request;
	) throws (1: SquareException e);

	FetchSquareChatEventsResponse fetchSquareChatEvents(
		1: FetchSquareChatEventsRequest request;
	) throws (1: SquareException e);

	GetSquareCategoriesResponse getCategories(
		1: GetSquareCategoriesRequest request;
	) throws (1: SquareException e);

	GetInvitationTicketUrlResponse getInvitationTicketUrl(
		1: GetInvitationTicketUrlRequest request;
	) throws (1: SquareException e);

	GetJoinableSquareChatsResponse getJoinableSquareChats(
		1: GetJoinableSquareChatsRequest request;
	) throws (1: SquareException e);

	GetJoinedSquareChatsResponse getJoinedSquareChats(
		1: GetJoinedSquareChatsRequest request;
	) throws (1: SquareException e);

	GetNoteStatusResponse getNoteStatus(
		1: GetNoteStatusRequest request;
	) throws (1: SquareException e);

	GetSquareAuthorityResponse getSquareAuthority(
		1: GetSquareAuthorityRequest request;
	) throws (1: SquareException e);

	GetSquareChatAnnouncementsResponse getSquareChatAnnouncements(
		1: GetSquareChatAnnouncementsRequest getSquareChatAnnouncementsRequest;
	) throws (1: SquareException e);

	GetSquareChatMembersResponse getSquareChatMembers(
		1: GetSquareChatMembersRequest request;
	) throws (1: SquareException e);

	GetSquareChatStatusResponse getSquareChatStatus(
		1: GetSquareChatStatusRequest request;
	) throws (1: SquareException e);

	GetSquareFeatureSetResponse getSquareFeatureSet(
		1: GetSquareFeatureSetRequest request;
	) throws (1: SquareException e);

	GetSquareMemberRelationResponse getSquareMemberRelation(
		1: GetSquareMemberRelationRequest request;
	) throws (1: SquareException e);

	GetSquareMemberRelationsResponse getSquareMemberRelations(
		1: GetSquareMemberRelationsRequest request;
	) throws (1: SquareException e);

	GetSquareMemberResponse getSquareMember(
		1: GetSquareMemberRequest request;
	) throws (1: SquareException e);

	GetSquareMembersResponse getSquareMembers(
		1: GetSquareMembersRequest request;
	) throws (1: SquareException e);

	GetSquareStatusResponse getSquareStatus(
		1: GetSquareStatusRequest request;
	) throws (1: SquareException e);

	InviteIntoSquareChatResponse inviteIntoSquareChat(
		1: InviteIntoSquareChatRequest request;
	) throws (1: SquareException e);

	void inviteToSquare(
		1: InviteToSquareRequest request;
	) throws (1: SquareException e);

	JoinSquareChatResponse joinSquareChat(
		1: JoinSquareChatRequest request;
	) throws (1: SquareException e);

	JoinSquareResponse joinSquare(
		1: JoinSquareRequest request;
	) throws (1: SquareException e);

	void leaveSquareChat(
		1: LeaveSquareChatRequest request;
	) throws (1: SquareException e);

	void leaveSquare(
		1: LeaveSquareRequest request;
	) throws (1: SquareException e);

	void markAsRead(
		1: MarkAsReadRequest request;
	) throws (1: SquareException e);

	RefreshSubscriptionsResponse refreshSubscriptions(
		1: RefreshSubscriptionsRequest request;
	) throws (1: SquareException e);

	RejectSquareMembersResponse rejectSquareMembers(
		1: RejectSquareMembersRequest request;
	) throws (1: SquareException e);

	void removeSubscriptions(
		1: RemoveSubscriptionsRequest request;
	) throws (1: SquareException e);

	void reportSquareChat(
		1: ReportSquareChatRequest request;
	) throws (1: SquareException e);

	void reportSquareMember(
		1: ReportSquareMemberRequest request;
	) throws (1: SquareException e);

	void reportSquareMessage(
		1: ReportSquareMessageRequest request;
	) throws (1: SquareException e);

	void reportSquare(
		1: ReportSquareRequest request;
	) throws (1: SquareException e);

	SearchSquareMembersResponse searchSquareMembers(
		1: SearchSquareMembersRequest request;
	) throws (1: SquareException e);

	SearchSquaresResponse searchSquares(
		1: SearchSquaresRequest request;
	) throws (1: SquareException e);

	UpdateSquareAuthorityResponse updateSquareAuthority(
		1: UpdateSquareAuthorityRequest request;
	) throws (1: SquareException e);

	UpdateSquareChatMemberResponse updateSquareChatMember(
		1: UpdateSquareChatMemberRequest request;
	) throws (1: SquareException e);

	UpdateSquareChatResponse updateSquareChat(
		1: UpdateSquareChatRequest request;
	) throws (1: SquareException e);

	UpdateSquareFeatureSetResponse updateSquareFeatureSet(
		1: UpdateSquareFeatureSetRequest request;
	) throws (1: SquareException e);

	UpdateSquareMemberRelationResponse updateSquareMemberRelation(
		1: UpdateSquareMemberRelationRequest request;
	) throws (1: SquareException e);

	UpdateSquareMemberResponse updateSquareMember(
		1: UpdateSquareMemberRequest request;
	) throws (1: SquareException e);

	UpdateSquareMembersResponse updateSquareMembers(
		1: UpdateSquareMembersRequest request;
	) throws (1: SquareException e);

	UpdateSquareResponse updateSquare(
		1: UpdateSquareRequest request;
	) throws (1: SquareException e);
}