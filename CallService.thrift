exception TalkException {
	1: ErrorCode code;
	2: string reason;
	3: map<string, string> parameterMap;
}

enum ErrorCode {
	ILLEGAL_ARGUMENT = 0,
	AUTHENTICATION_FAILED = 1,
	DB_FAILED = 2,
	INVALID_STATE = 3,
	EXCESSIVE_ACCESS = 4,
	NOT_FOUND = 5,
	INVALID_LENGTH = 6,
	NOT_AVAILABLE_USER = 7,
	NOT_AUTHORIZED_DEVICE = 8,
	INVALID_MID = 9,
	NOT_A_MEMBER = 10,
	INCOMPATIBLE_APP_VERSION = 11,
	NOT_READY = 12,
	NOT_AVAILABLE_SESSION = 13,
	NOT_AUTHORIZED_SESSION = 14,
	SYSTEM_ERROR = 15,
	NO_AVAILABLE_VERIFICATION_METHOD = 16,
	NOT_AUTHENTICATED = 17,
	INVALID_IDENTITY_CREDENTIAL = 18,
	NOT_AVAILABLE_IDENTITY_IDENTIFIER = 19,
	INTERNAL_ERROR = 20,
	NO_SUCH_IDENTITY_IDENFIER = 21,
	DEACTIVATED_ACCOUNT_BOUND_TO_THIS_IDENTITY = 22,
	ILLEGAL_IDENTITY_CREDENTIAL = 23,
	UNKNOWN_CHANNEL = 24,
	NO_SUCH_MESSAGE_BOX = 25,
	NOT_AVAILABLE_MESSAGE_BOX = 26,
	CHANNEL_DOES_NOT_MATCH = 27,
	NOT_YOUR_MESSAGE = 28,
	MESSAGE_DEFINED_ERROR = 29,
	USER_CANNOT_ACCEPT_PRESENTS = 30,
	USER_NOT_STICKER_OWNER = 32,
	MAINTENANCE_ERROR = 33,
	ACCOUNT_NOT_MATCHED = 34,
	ABUSE_BLOCK = 35,
	NOT_FRIEND = 36,
	NOT_ALLOWED_CALL = 37,
	BLOCK_FRIEND = 38,
	INCOMPATIBLE_VOIP_VERSION = 39,
	INVALID_SNS_ACCESS_TOKEN = 40,
	EXTERNAL_SERVICE_NOT_AVAILABLE = 41,
	NOT_ALLOWED_ADD_CONTACT = 42,
	NOT_CERTIFICATED = 43,
	NOT_ALLOWED_SECONDARY_DEVICE = 44,
	INVALID_PIN_CODE = 45,
	NOT_FOUND_IDENTITY_CREDENTIAL = 46,
	EXCEED_FILE_MAX_SIZE = 47,
	EXCEED_DAILY_QUOTA = 48,
	NOT_SUPPORT_SEND_FILE = 49,
	MUST_UPGRADE = 50,
	NOT_AVAILABLE_PIN_CODE_SESSION = 51,
	EXPIRED_REVISION = 52,
	NOT_YET_PHONE_NUMBER = 54,
	BAD_CALL_NUMBER = 55,
	UNAVAILABLE_CALL_NUMBER = 56,
	NOT_SUPPORT_CALL_SERVICE = 57,
	CONGESTION_CONTROL = 58,
	NO_BALANCE = 59,
	NOT_PERMITTED_CALLER_ID = 60,
	NO_CALLER_ID_LIMIT_EXCEEDED = 61,
	CALLER_ID_VERIFICATION_REQUIRED = 62,
	NO_CALLER_ID_LIMIT_EXCEEDED_AND_VERIFICATION_REQUIRED = 63,
	MESSAGE_NOT_FOUND = 64,
	INVALID_ACCOUNT_MIGRATION_PINCODE_FORMAT = 65,
	ACCOUNT_MIGRATION_PINCODE_NOT_MATCHED = 66,
	ACCOUNT_MIGRATION_PINCODE_BLOCKED = 67,
	INVALID_PASSWORD_FORMAT = 69,
	FEATURE_RESTRICTED = 70,
	MESSAGE_NOT_DESTRUCTIBLE = 71,
	PAID_CALL_REDEEM_FAILED = 72,
	PREVENTED_JOIN_BY_TICKET = 73,
	SEND_MESSAGE_NOT_PERMITTED_FROM_LINE_AT = 75,
	SEND_MESSAGE_NOT_PERMITTED_WHILE_AUTO_REPLY = 76,
	SECURITY_CENTER_NOT_VERIFIED = 77,
	SECURITY_CENTER_BLOCKED_BY_SETTING = 78,
	SECURITY_CENTER_BLOCKED = 79,
	TALK_PROXY_EXCEPTION = 80,
	E2EE_INVALID_PROTOCOL = 81,
	E2EE_RETRY_ENCRYPT = 82,
	E2EE_UPDATE_SENDER_KEY = 83,
	E2EE_UPDATE_RECEIVER_KEY = 84,
	E2EE_INVALID_ARGUMENT = 85,
	E2EE_INVALID_VERSION = 86,
	E2EE_SENDER_DISABLED = 87,
	E2EE_RECEIVER_DISABLED = 88,
	E2EE_SENDER_NOT_ALLOWED = 89,
	E2EE_RECEIVER_NOT_ALLOWED = 90,
	E2EE_RESEND_FAIL = 91,
	E2EE_RESEND_OK = 92,
	HITOKOTO_BACKUP_NO_AVAILABLE_DATA = 93,
	E2EE_UPDATE_PRIMARY_DEVICE = 94,
	SUCCESS = 95,
	CANCEL = 96,
	E2EE_PRIMARY_NOT_SUPPORT = 97,
	E2EE_RETRY_PLAIN = 98,
	E2EE_RECREATE_GROUP_KEY = 99,
	E2EE_GROUP_TOO_MANY_MEMBERS = 100,
	SERVER_BUSY = 101,
	NOT_ALLOWED_ADD_FOLLOW = 102,
	INCOMING_FRIEND_REQUEST_LIMIT = 103,
	OUTGOING_FRIEND_REQUEST_LIMIT = 104,
	OUTGOING_FRIEND_REQUEST_QUOTA = 105,
	DUPLICATED = 106,
	BANNED = 107,
}

enum UserStatus {
	NORMAL = 0,
	UNBOUND = 1,
	UNREGISTERED = 2,
}

enum ProfileAttribute {
	ALL = 511,
	EMAIL = 1,
	DISPLAY_NAME = 2,
	PHONETIC_NAME = 4,
	PICTURE = 8,
	STATUS_MESSAGE = 16,
	ALLOW_SEARCH_BY_USERID = 32,
	ALLOW_SEARCH_BY_EMAIL = 64,
	BUDDY_STATUS = 128,
	MUSIC_PROFILE = 256,
}

enum ExtendedProfileAttribute {
	BIRTHDAY = 0,
}

struct ExtendedProfile {
    1: ExtendedProfileBirthday birthday;
}

struct ExtendedProfileBirthday {
	1: string year;
	2: PrivacyLevelType yearPrivacyLevelType;
	3: bool yearEnabled;
	5: string day;
	6: PrivacyLevelType dayPrivacyLevelType;
	7: bool dayEnabled;
}

enum PrivacyLevelType {
	PUBLIC = 0,
	PRIVATE = 1,
}

struct SimpleChannelContact {
	1: string mid;
	2: string displayName;
	3: string pictureStatus;
	4: string picturePath;
	5: string statusMessage;
	6: string userid;
	7: string regionCode;
}

enum RegistrationType {
	PHONE = 0,
	EMAIL_WAP = 1,
	FACEBOOK = 2305,
	SINA = 2306,
	RENREN = 2307,
	FEIXIN = 2308,
}

struct PaidCallDialing {
	1: PaidCallType type;
	2: string dialedNumber;
	3: string serviceDomain;
	4: PaidCallProductType productType;
	5: string productName;
	6: bool multipleProduct;
	7: PaidCallerIdStatus callerIdStatus;
	10: i32 balance;
	11: string unit;
	12: i32 rate;
	13: string displayCode;
	14: string calledNumber;
	15: string calleeNationalNumber;
	16: string calleeCallingCode;
	17: string rateDivision;
	20: i32 adMaxMin;
	21: i32 adRemains;
	22: string adSessionId;
}

enum PaidCallType {
	OUT = 0,
	IN = 1,
	TOLLFREE = 2,
	RECORD = 3,
	AD = 4,
	CS = 5,
}

enum PaidCallProductType {
	COIN = 0,
	CREDIT = 1,
	MONTHLY = 2,
}

enum PaidCallerIdStatus {
	NOT_SPECIFIED = 0,
	VALID = 1,
	VERIFICATION_REQUIRED = 2,
	NOT_PERMITTED = 3,
	LIMIT_EXCEEDED = 4,
	LIMIT_EXCEEDED_AND_VERIFICATION_REQUIRED = 5,
}

struct PhoneInfoForChannel {
	1: string mid;
	2: string normalizedPhoneNumber;
	3: bool allowedToSearchByPhoneNumber;
	4: bool allowedToReceiveMessageFromNonFriend;
	5: string region;
}

struct PaidCallRedeemResult {
	1: string eventName;
	2: i32 eventAmount;
}

struct Contact {
	1: string mid;
	2: i64 createdTime;
	10: ContactType type;
	11: ContactStatus status;
	21: ContactRelation relation;
	22: string displayName;
	23: string phoneticName;
	24: string pictureStatus;
	25: string thumbnailUrl;
	26: string statusMessage;
	27: string displayNameOverridden;
	28: i64 favoriteTime;
	31: bool capableVoiceCall;
	32: bool capableVideoCall;
	33: bool capableMyhome;
	34: bool capableBuddy;
	35: i32 attributes;
	36: i64 settings;
	37: string picturePath;
	38: string recommendParams;
	39: FriendRequestStatus friendRequestStatus;
	40: string musicProfile;
	42: string videoProfile;
}

enum ContactRelation {
	ONEWAY = 0,
	BOTH = 1,
	NOT_REGISTERED = 2,
}

enum ContactStatus {
	UNSPECIFIED = 0,
	FRIEND = 1,
	FRIEND_BLOCKED = 2,
	RECOMMEND = 3,
	RECOMMEND_BLOCKED = 4,
	DELETED = 5,
	DELETED_BLOCKED = 6,
}

enum ContactType {
	MID = 0,
	PHONE = 1,
	EMAIL = 2,
	USERID = 3,
	PROXIMITY = 4,
	GROUP = 5,
	USER = 6,
	QRCODE = 7,
	PROMOTION_BOT = 8,
	CONTACT_MESSAGE = 9,
	FRIEND_REQUEST = 10,
	REPAIR = 128,
	FACEBOOK = 2305,
	SINA = 2306,
	RENREN = 2307,
	FEIXIN = 2308,
	BBM = 2309,
	BEACON = 11,
}

enum FriendRequestStatus {
	NONE = 0,
	AVAILABLE = 1,
	ALREADY_REQUESTED = 2,
	UNAVAILABLE = 3,
}

enum PaymentType {
	PAYMENT_APPLE = 1,
	PAYMENT_GOOGLE = 2,
}

enum PaymentPgType {
	PAYMENT_PG_NONE = 0,
	PAYMENT_PG_AU = 1,
	PAYMENT_PG_AL = 2,
}

struct CoinProductItem {
	1: string itemId;
	2: i32 coin;
	3: i32 freeCoin;
	5: string currency;
	6: string price;
	7: string displayPrice;
	8: string name;
	9: string desc;
}

struct CompactContact {
	1: string mid;
	2: i64 createdTime;
	3: i64 modifiedTime;
	4: ContactStatus status;
	5: i64 settings;
	6: string displayNameOverridden;
}

struct NotiCenterEventData {
	1: string id;
	2: string to;
	3: string from_;
	4: string toChannel;
	5: string fromChannel;
	6: string eventType;
	7: i64 createdTime;
	8: i64 operationRevision;
	9: map<string, string> content;
	10: map<string, string> push;
}

struct Room {
	1: string mid;
	2: i64 createdTime;
	10: list<Contact> contacts;
	31: bool notificationDisabled;
	40: list<string> memberMids;
}

struct GroupCall {
	1: bool online;
	2: string chatMid;
	3: string hostMid;
	4: list<string> memberMids;
	5: i64 started;
	6: GroupCallMediaType mediaType;
}

enum GroupCallMediaType {
	AUDIO = 1,
	VIDEO = 2,
}

struct SimpleChannelClient {
	1: string applicationType;
	2: string applicationVersion;
	3: string locale;
	4: string mid;
}

struct PaidCallMetadataResult {
	1: list<PaidCallCurrencyExchangeRate> currencyExchangeRates;
	2: list<string> recommendedCountryCodes;
	3: list<PaidCallAdCountry> adCountries;
}

struct PaidCallCurrencyExchangeRate {
	1: string currencyCode;
	2: string currencyName;
	3: string currencySign;
	4: bool preferred;
	5: string coinRate;
	6: string creditRate;
}

struct PaidCallAdCountry {
	1: string countryCode;
	2: string rateDivision;
}


struct PaidCallHistory {
	1: i64 seq;
	2: PaidCallType type;
	3: string dialedNumber;
	4: string calledNumber;
	5: string toMid;
	6: string toName;
	7: i64 setupTime;
	8: i64 startTime;
	9: i64 endTime;
	10: i64 duration;
	11: i32 terminate;
	12: PaidCallProductType productType;
	13: i32 charge;
	14: string unit;
	15: string result;
}

struct PaidCallHistoryResult {
	1: list<PaidCallHistory> historys;
	2: bool hasNext;
}

struct MetaProfile {
	1: i64 createTime;
	2: string regionCode;
	3: map<RegistrationType, string> identities;
	4: string udid;
}

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

struct Location {
	1: string title;
	2: string address;
	3: double latitude;
	4: double longitude;
	5: string phone;
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

struct CoinHistoryCondition {
	1: i64 start;
	2: i32 size;
	3: string language;
	4: string eddt;
	5: PaymentType appStoreCode;
}

struct CoinHistoryResult {
	1: list<CoinHistory> historys;
	2: Coin balance;
	3: bool hasNext;
}

struct CoinHistory {
	1: i64 payDate;
	2: i32 coinBalance;
	3: i32 coin;
	4: string price;
	5: string title;
	6: bool refund;
	7: string paySeq;
	8: string currency;
	9: string currencySign;
	10: string displayPrice;
	11: CoinPayLoad payload;
	12: string channelId;
}

struct Coin {
	1: i32 freeCoinBalance;
	2: i32 payedCoinBalance;
	3: i32 totalCoinBalance;
	4: i32 rewardCoinBalance;
}

struct CoinPayLoad {
	1: i32 payCoin;
	2: i32 freeCoin;
	3: PayloadType type;
	4: i32 rewardCoin;
}

enum PayloadType {
	PAYLOAD_BUY = 101,
	PAYLOAD_CS = 111,
	PAYLOAD_BONUS = 121,
	PAYLOAD_EVENT = 131,
	PAYLOAD_POINT_AUTO_EXCHANGED = 141,
	PAYLOAD_POINT_MANUAL_EXCHANGED = 151,
}

struct PaidCallResponse {
	1: CallHost host;
	2: PaidCallDialing dialing;
	3: string token;
	4: list<SpotItem> spotItems;
}

struct SpotItem {
	2: string name;
	3: string phone;
	4: SpotCategory category;
	5: string mid;
	6: string countryAreaCode;
	10: bool freePhoneCallable;
}

struct CallHost {
	1: string host;
	2: i32 port;
	3: string zone;
}

enum SpotCategory {
	UNKNOWN = 0,
	GOURMET = 1,
	BEAUTY = 2,
	TRAVEL = 3,
	SHOPPING = 4,
	ENTERTAINMENT = 5,
	SPORTS = 6,
	TRANSPORT = 7,
	LIFE = 8,
	HOSPITAL = 9,
	FINANCE = 10,
	EDUCATION = 11,
	OTHER = 12,
	ALL = 10000,
}

struct Group {
	1: string id;
	2: i64 createdTime;
	10: string name;
	11: string pictureStatus;
	12: bool preventedJoinByTicket;
	13: GroupPreference groupPreference;
	20: list<Contact> members;
	21: Contact creator;
	22: list<Contact> invitee;
	31: bool notificationDisabled;
	32: string picturePath;
	40: list<string> memberMids;
	41: list<string> inviteeMids;
}

struct GroupPreference {
	11: string invitationTicket;
	12: i64 favoriteTimestamp;
}

struct CoinPurchaseReservation {
	1: string productId;
	2: string country;
	3: string currency;
	4: string price;
	5: PaymentType appStoreCode;
	6: string language;
	7: PaymentPgType pgCode;
	8: string redirectUrl;
}

struct PaymentReservationResult {
	1: string orderId;
	2: string confirmUrl;
	3: map<string, string> extras;
}

struct PaidCallBalance {
	1: PaidCallProductType productType;
	2: string productName;
	3: string unit;
	4: i32 limitedPaidBalance;
	5: i32 limitedFreeBalance;
	6: i32 unlimitedPaidBalance;
	7: i32 unlimitedFreeBalance;
	8: i64 startTime;
	9: i64 endTime;
	10: bool autopayEnabled;
}

enum PersonalInfo {
	EMAIL = 0,
	PHONE = 1,
	BIRTHDAY = 2,
	RAW_BIRTHDAY = 3,
}

struct ContactTransition {
	1: string ownerMid;
	2: string targetMid;
	3: ContactStatus previousStatus;
	4: ContactStatus resultStatus;
}

struct PaidCallAdResult {
	1: i32 adRemains;
}

struct Profile {
	1: string mid;
	3: string userid;
	10: string phone;
	11: string email;
	12: string regionCode;
	20: string displayName;
	21: string phoneticName;
	22: string pictureStatus;
	23: string thumbnailUrl;
	24: string statusMessage;
	31: bool allowSearchByUserid;
	32: bool allowSearchByEmail;
	33: string picturePath;
	34: string musicProfile;
	35: string videoProfile;
}

struct UserTicketResponse {
	1: string mid;
	2: string userTicket;
}

struct PaidCallUserRate {
	1: string countryCode;
	2: i32 rate;
	3: string rateDivision;
	4: string rateName;
}

struct GroupCallRoute {
	1: string token;
	2: CallHost cscf;
	3: CallHost mix;
}

struct IdentityCredential {
	1: IdentityProvider provider;
	2: string identifier;
	3: string password;
}

enum IdentityProvider {
	UNKNOWN = 0,
	LINE = 1,
	NAVER_KR = 2,
	LINE_PHONE = 3,
}

enum OpType {
	END_OF_OPERATION = 0,
	UPDATE_PROFILE = 1,
	UPDATE_SETTINGS = 36,
	NOTIFIED_UPDATE_PROFILE = 2,
	REGISTER_USERID = 3,
	ADD_CONTACT = 4,
	NOTIFIED_ADD_CONTACT = 5,
	BLOCK_CONTACT = 6,
	UNBLOCK_CONTACT = 7,
	NOTIFIED_RECOMMEND_CONTACT = 8,
	CREATE_GROUP = 9,
	UPDATE_GROUP = 10,
	NOTIFIED_UPDATE_GROUP = 11,
	INVITE_INTO_GROUP = 12,
	NOTIFIED_INVITE_INTO_GROUP = 13,
	CANCEL_INVITATION_GROUP = 31,
	NOTIFIED_CANCEL_INVITATION_GROUP = 32,
	LEAVE_GROUP = 14,
	NOTIFIED_LEAVE_GROUP = 15,
	ACCEPT_GROUP_INVITATION = 16,
	NOTIFIED_ACCEPT_GROUP_INVITATION = 17,
	REJECT_GROUP_INVITATION = 34,
	NOTIFIED_REJECT_GROUP_INVITATION = 35,
	KICKOUT_FROM_GROUP = 18,
	NOTIFIED_KICKOUT_FROM_GROUP = 19,
	CREATE_ROOM = 20,
	INVITE_INTO_ROOM = 21,
	NOTIFIED_INVITE_INTO_ROOM = 22,
	LEAVE_ROOM = 23,
	NOTIFIED_LEAVE_ROOM = 24,
	SEND_MESSAGE = 25,
	RECEIVE_MESSAGE = 26,
	SEND_MESSAGE_RECEIPT = 27,
	RECEIVE_MESSAGE_RECEIPT = 28,
	SEND_CONTENT_RECEIPT = 29,
	SEND_CHAT_CHECKED = 40,
	SEND_CHAT_REMOVED = 41,
	RECEIVE_ANNOUNCEMENT = 30,
	INVITE_VIA_EMAIL = 38,
	NOTIFIED_REGISTER_USER = 37,
	NOTIFIED_UNREGISTER_USER = 33,
	NOTIFIED_REQUEST_RECOVERY = 39,
	NOTIFIED_FORCE_SYNC = 42,
	SEND_CONTENT = 43,
	SEND_MESSAGE_MYHOME = 44,
	NOTIFIED_UPDATE_CONTENT_PREVIEW = 45,
	REMOVE_ALL_MESSAGES = 46,
	NOTIFIED_UPDATE_PURCHASES = 47,
	DUMMY = 48,
	UPDATE_CONTACT = 49,
	NOTIFIED_RECEIVED_CALL = 50,
	CANCEL_CALL = 51,
	NOTIFIED_REDIRECT = 52,
	NOTIFIED_CHANNEL_SYNC = 53,
	FAILED_SEND_MESSAGE = 54,
	NOTIFIED_READ_MESSAGE = 55,
	FAILED_EMAIL_CONFIRMATION = 56,
	NOTIFIED_PUSH_NOTICENTER_ITEM = 59,
	NOTIFIED_CHAT_CONTENT = 58,
	NOTIFIED_JOIN_CHAT = 60,
	NOTIFIED_LEAVE_CHAT = 61,
	NOTIFIED_TYPING = 62,
	FRIEND_REQUEST_ACCEPTED = 63,
	DESTROY_MESSAGE = 64,
	NOTIFIED_DESTROY_MESSAGE = 65,
	UPDATE_PUBLICKEYCHAIN = 66,
	NOTIFIED_UPDATE_PUBLICKEYCHAIN = 67,
	NOTIFIED_BLOCK_CONTACT = 68,
	NOTIFIED_UNBLOCK_CONTACT = 69,
	UPDATE_GROUPPREFERENCE = 70,
	NOTIFIED_PAYMENT_EVENT = 71,
	REGISTER_E2EE_PUBLICKEY = 72,
	NOTIFIED_E2EE_KEY_EXCHANGE_REQ = 73,
	NOTIFIED_E2EE_KEY_EXCHANGE_RESP = 74,
	NOTIFIED_E2EE_MESSAGE_RESEND_REQ = 75,
	NOTIFIED_E2EE_MESSAGE_RESEND_RESP = 76,
	NOTIFIED_E2EE_KEY_UPDATE = 77,
	NOTIFIED_BUDDY_UPDATE_PROFILE = 78,
	NOTIFIED_UPDATE_LINEAT_TABS = 79,
	UPDATE_ROOM = 80,
	NOTIFIED_BEACON_DETECTED = 81,
	UPDATE_EXTENDED_PROFILE = 82,
	ADD_FOLLOW = 83,
	NOTIFIED_ADD_FOLLOW = 84,
	DELETE_FOLLOW = 85,
	NOTIFIED_DELETE_FOLLOW = 86,
	UPDATE_TIMELINE_SETTINGS = 87,
	NOTIFIED_FRIEND_REQUEST = 88,
	UPDATE_RINGBACK_TONE = 89,
	NOTIFIED_POSTBACK = 90,
	RECEIVE_READ_WATERMARK = 91,
	NOTIFIED_MESSAGE_DELIVERED = 92,
	NOTIFIED_UPDATE_CHAT_BAR = 93,
	NOTIFIED_CHATAPP_INSTALLED = 94,
    NOTIFIED_CHATAPP_UPDATED =  95,
    NOTIFIED_CHATAPP_NEW_MARK =  96,
    NOTIFIED_CHATAPP_DELETED =  97,
    NOTIFIED_CHATAPP_SYNC =  98,
    NOTIFIED_UPDATE_MESSAGE = 99,
}

service CallService {
	UserStatus getUserStatus(
		1: string mid,) throws (1: TalkException e),

	void updateProfileAttributeForChannel(
		2: ProfileAttribute profileAttribute,
		3: string value,) throws (1: TalkException e),

	void updateExtendedProfileAttribute(
		1: ExtendedProfileAttribute attr,
		2: ExtendedProfile extendedProfile,) throws (1: TalkException e),

	list<SimpleChannelContact> getAllSimpleChannelContacts(
		1: bool statusSticonFallbackDisabled,) throws (1: TalkException e),

	map<RegistrationType, string> getUserIdentities() throws (1: TalkException e),

	PaidCallDialing markPaidCallAd(
		2: string dialedNumber,
		3: string language,
		4: bool disableCallerId,) throws (1: TalkException e),

	bool isGroupMember(
		1: string groupId,) throws (1: TalkException e),

	PhoneInfoForChannel getPhoneInfoFromPhoneNumber(
		1: string region,
		2: string phoneNumber,) throws (1: TalkException e),

	PaidCallRedeemResult redeemPaidCallVoucher(
		2: string serial,
		3: string language,) throws (1: TalkException e),

	map<string, string> getPreferredDisplayName(
		1: list<string> mids,) throws (1: TalkException e),

	list<Contact> getContactsForChannel(
		2: list<string> ids,) throws (1: TalkException e),

	list<CoinProductItem> getCallCreditProducts(
		2: PaymentType appStoreCode,
		3: PaymentPgType pgCode,
		4: string country,
		5: string language,) throws (1: TalkException e),

	list<CompactContact> getCompactContacts(
		2: i64 lastModifiedTimestamp,) throws (1: TalkException e),

	void notifyNotiCenterEvent(
		1: NotiCenterEventData event,) throws (1: TalkException e),

	bool isInContact(
		2: string mid,) throws (1: TalkException e),

	list<SimpleChannelContact> lookupGroupMembers(
		1: string groupId,
		2: list<string> mids,) throws (1: TalkException e),

	Room getRoomInformation(
		1: string roomMid,) throws (1: TalkException e),

	GroupCall getGroupCall(
		2: string chatMid,) throws (1: TalkException e),

	bool isAllowSecondaryDeviceLogin() throws (1: TalkException e),

	SimpleChannelClient getPrimaryClientForChannel() throws (1: TalkException e),

	Room createRoomWithBuddy(
		1: i32 reqSeq,
		2: string buddyMid,
		3: list<string> contactIds,) throws (1: TalkException e),

	string getDisplayName(
		2: string mid,) throws (1: TalkException e),

	PaidCallMetadataResult getPaidCallMetadata(
		2: string language,) throws (1: TalkException e),

	string getMid() throws (1: TalkException e),

	string getUserCountryForBilling(
		2: string country,
		3: string remoteIp,) throws (1: TalkException e),

	list<string> getFavoriteGroupIdsForChannel() throws (1: TalkException e),

	PaidCallHistoryResult getPaidCallHistory(
		2: i64 start,
		3: i32 size,
		4: string language,) throws (1: TalkException e),

	void sendPinCodeOperation(
		1: string verifier,) throws (1: TalkException e),

	void inviteIntoGroupCall(
		2: string chatMid,
		3: list<string> memberMids,
		4: GroupCallMediaType mediaType,) throws (1: TalkException e),

	list<string> getFriendMids() throws (1: TalkException e),

	MetaProfile getMetaProfile() throws (1: TalkException e),

	Message sendMessageForChannel(
		2: Message message,) throws (1: TalkException e),

	i64 activeBuddySubscriberCount() throws (1: TalkException e),

	CoinHistoryResult getCallCreditPurchaseHistory(
		2: CoinHistoryCondition request,) throws (1: TalkException e),

	bool isRoomMember(
		1: string roomId,) throws (1: TalkException e),

	Message sendSystemOAMessage(
		1: Message message,) throws (1: TalkException e),

	PaidCallResponse acquirePaidCallRoute(
		2: PaidCallType paidCallType,
		3: string dialedNumber,
		4: string language,
		5: string networkCode,
		6: bool disableCallerId,
		7: string referer,
		8: string adSessionId,) throws (1: TalkException e),

	list<Group> getGroupsForChannel(
		1: list<string> groupIds,) throws (1: TalkException e),

	i64 getUserCreateTime() throws (1: TalkException e),

	string registerChannelCP(
		2: string cpId,
		3: string registerPassword,) throws (1: TalkException e),

	PaymentReservationResult reserveCallCreditPurchase(
		2: CoinPurchaseReservation request,) throws (1: TalkException e),

	list<PaidCallCurrencyExchangeRate> acquirePaidCallCurrencyExchangeRate(
		2: string language,) throws (1: TalkException e),

	list<string> getRoomMemberMidsForAppPlatform(
		1: string roomId,) throws (1: TalkException e),

	list<PaidCallBalance> getPaidCallBalanceList(
		2: string language,) throws (1: TalkException e),

	map<PersonalInfo, string> getPersonalInfos(
		1: set<PersonalInfo> requiredPersonalInfos,) throws (1: TalkException e),

	list<SimpleChannelClient> getPrimaryClientsForChannel(
		1: list<string> userMids,) throws (1: TalkException e),

	ContactTransition addBuddyToContact(
		1: string buddyMid,) throws (1: TalkException e),

	list<string> getGroupMemberMidsForAppPlatform(
		1: string groupId,) throws (1: TalkException e),

	string getUserLanguage() throws (1: TalkException e),

	PaidCallResponse lookupPaidCall(
		2: string dialedNumber,
		3: string language,
		4: string referer,) throws (1: TalkException e),

	ExtendedProfile getExtendedProfile() throws (1: TalkException e),

	map<string, CompactContact> getReverseCompactContacts(
		1: list<string> ids,) throws (1: TalkException e),

	PaidCallAdResult getPaidCallAdStatus() throws (1: TalkException e),

	Contact findContactByUseridWithoutAbuseBlockForChannel(
		2: string userid,) throws (1: TalkException e),

	list<string> getGroupMemberMids(
		1: string groupId,) throws (1: TalkException e),

	Message sendMessageWithoutRelationship(
		2: Message message,) throws (1: TalkException e),

	map<string, i64> displayBuddySubscriberCountInBulk(
		1: list<string> mids,) throws (1: TalkException e),

	list<SimpleChannelContact> lookupRoomMembers(
		1: string roomId,
		2: list<string> mids,) throws (1: TalkException e),

	list<string> getFavoriteMidsForChannel() throws (1: TalkException e),

	list<string> getAllContactIdsForChannel() throws (1: TalkException e),

	i64 displayBuddySubscriberCount() throws (1: TalkException e),

	Profile getProfileForChannel() throws (1: TalkException e),

	list<UserTicketResponse> getUserTickets(
		1: list<string> userMids,) throws (1: TalkException e),

	list<string> getOAFriendMids() throws (1: TalkException e),

	list<PaidCallUserRate> searchPaidCallUserRate(
		2: string countryCode,
		3: string language,) throws (1: TalkException e),

	list<string> getJoinedGroupIdsForChannel() throws (1: TalkException e),

	GroupCallRoute acquireGroupCallRoute(
		2: string chatMid,
		3: GroupCallMediaType mediaType,) throws (1: TalkException e),

	list<string> getUserMidsWhoAddedMe() throws (1: TalkException e),

	IdentityCredential getIdentityCredential() throws (1: TalkException e),

	void addOperationForChannel(
		1: OpType opType,
		2: string param1,
		3: string param2,
		4: string param3,) throws (1: TalkException e),

	list<SimpleChannelContact> getSimpleChannelContacts(
		1: list<string> ids,
		2: bool statusSticonFallbackDisabled,) throws (1: TalkException e),

	i64 getUserLastSentMessageTimeStamp(
		1: string mid,) throws (1: TalkException e),

}