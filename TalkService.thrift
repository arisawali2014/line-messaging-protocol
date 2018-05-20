exception TalkException {
	1: ErrorCode code;
	2: string reason;
	3: map<string, string> parameterMap;
}

exception ShouldSyncException {
	1: i64 syncOpRevision;
	2: SyncScope syncScope;
	3: SyncTriggerReason syncReason;
	4: string message;
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
struct Location {
	1: string title;
	2: string address;
	3: double latitude;
	4: double longitude;
	5: string phone;
}
enum PendingAgreements {
    ACCOUNT_MIGRATION_PINCODE = 28, 
    AGREEMENT_AD_BY_WEB_ACCESS = 48, 
    AGREEMENT_BOT_USE = 42, 
    AGREEMENT_COMMUNICATION_INFO = 50, 
    AGREEMENT_MOBILE_CONTACT_NAME = 44, 
    AGREEMENT_NEARBY = 38, 
    AGREEMENT_PHONE_NUMBER_MATCHING = 49, 
    AGREEMENT_PRIVACY_POLICY_VERSION = 47, 
    AGREEMENT_SHAKE_FUNCTION = 43, 
    AGREEMENT_SOUND_TO_TEXT = 46, 
    AGREEMENT_SQUARE = 39, 
    AGREEMENT_THINGS_WIRELESS_COMMUNICATION = 52, 
    ALLOW_UNREGISTRATION_SECONDARY_DEVICE = 41, 
    CONTACT_ALLOW_FOLLOWING = 36, 
    CONTACT_MY_TICKET = 10, 
    CUSTOM_MODE = 22, 
    E2EE_ENABLE = 33, 
    EMAIL_CONFIRMATION_STATUS = 24, 
    ENFORCED_INPUT_ACCOUNT_MIGRATION_PINCODE = 29, 
    HITOKOTO_BACKUP_REQUESTED = 34, 
    IDENTITY_IDENTIFIER = 12, 
    IDENTITY_PROVIDER = 11, 
    NOTIFICATION_DISABLED_WITH_SUB = 16, 
    NOTIFICATION_ENABLE = 0, 
    NOTIFICATION_GROUP_INVITATION = 3, 
    NOTIFICATION_INCOMING_CALL = 5, 
    NOTIFICATION_MENTION = 40, 
    NOTIFICATION_MUTE_EXPIRATION = 1, 
    NOTIFICATION_NEW_MESSAGE = 2, 
    NOTIFICATION_PAYMENT = 17, 
    NOTIFICATION_SHOW_MESSAGE = 4, 
    NOTIFICATION_SOUND_GROUP = 9, 
    NOTIFICATION_SOUND_MESSAGE = 8, 
    NOTIFICATION_THUMBNAIL = 45, 
    PHONE_REGISTRATION = 20, 
    PREFERENCE_LOCALE = 15, 
    PRIVACY_AGREE_USE_LINECOIN_TO_PAIDCALL = 26, 
    PRIVACY_AGREE_USE_PAIDCALL = 27, 
    PRIVACY_ALLOW_FRIEND_REQUEST = 30, 
    PRIVACY_ALLOW_NEARBY = 37, 
    PRIVACY_ALLOW_SECONDARY_DEVICE_LOGIN = 21, 
    PRIVACY_PROFILE_IMAGE_POST_TO_MYHOME = 23, 
    PRIVACY_PROFILE_MUSIC_POST_TO_MYHOME = 35, 
    PRIVACY_RECV_MESSAGES_FROM_NOT_FRIEND = 25, 
    PRIVACY_SEARCH_BY_EMAIL = 14, 
    PRIVACY_SEARCH_BY_PHONE_NUMBER = 7, 
    PRIVACY_SEARCH_BY_USERID = 13, 
    PRIVACY_SHARE_PERSONAL_INFO_TO_FRIENDS = 51, 
    PRIVACY_SYNC_CONTACTS = 6, 
    SECURITY_CENTER_SETTINGS = 18, 
    SNS_ACCOUNT = 19,
}

enum Category {
	PROFILE = 0,
	SETTINGS = 1,
	OPS = 2,
	CONTACT = 3,
	RECOMMEND = 4,
	BLOCK = 5,
	GROUP = 6,
	ROOM = 7,
	NOTIFICATION = 8,
	ADDRESS_BOOK = 9,
}

enum SyncActionType {
	SYNC = 0,
	REPORT = 1,
}

enum SyncCategory {
	PROFILE = 0,
	SETTINGS = 1,
	OPS = 2,
	CONTACT = 3,
	RECOMMEND = 4,
	BLOCK = 5,
	GROUP = 6,
	ROOM = 7,
	NOTIFICATION = 8,
	ADDRESS_BOOK = 9,
}

struct SyncParamContact {
	1: SyncParamMid syncParamMid;
	2: ContactStatus contactStatus;
}

struct SyncParamMid {
	1: string mid;
	2: Diff diff;
	3: i64 revision;
}

struct SyncRelations {
	1: bool syncAll;
	2: list<SyncParamContact> syncParamContact;
	3: list<SyncParamMid> syncParamMid;
}

struct SyncScope {
	1: bool syncProfile;
	2: bool syncSettings;
	3: bool syncSticker;
	4: bool syncThemeShop;
	10: SyncRelations contact;
	11: SyncRelations group;
	12: SyncRelations room;
	13: SyncRelations chat;
}

enum SyncTriggerReason {
	OTHER = 0,
	REVISION_GAP_TOO_LARGE = 1,
	OPERATION_EXPIRED = 2,
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

enum Diff {
	ADDED = 0,
	UPDATED = 1,
	REMOVED = 2,
}

struct DeviceInfo {
	1: string deviceName;
	2: string systemName;
	3: string systemVersion;
	4: string model;
	5: string webViewVersion;
	10: CarrierCode carrierCode;
	11: string carrierName;
	20: ApplicationType applicationType;
}

enum CarrierCode {
	NOT_SPECIFIED = 0,
	JP_DOCOMO = 1,
	JP_AU = 2,
	JP_SOFTBANK = 3,
	KR_SKT = 17,
	KR_KT = 18,
	KR_LGT = 19,
	JP_DOCOMO_LINE = 4,
}

enum ApplicationType {
	ANDROID = 32,
	ANDROID_RC = 33,
	ANDROID_BETA = 34,
	ANDROID_ALPHA = 35,
	ANDROIDLITE = 384,
	ANDROIDLITE_RC = 385,
	ANDROIDLITE_BETA = 386,
	ANDROIDLITE_ALPHA = 387,
	BIZANDROID = 336,
	BIZANDROID_RC = 337,
	BIZANDROID_BETA = 338,
	BIZANDROID_ALPHA = 339,
	BIZBOT = 352,
	BIZBOT_RC = 353,
	BIZBOT_BETA = 354,
	BIZBOT_ALPHA = 355,
	BIZIOS = 320,
	BIZIOS_RC = 321,
	BIZIOS_BETA = 322,
	BIZIOS_ALPHA = 323,
	BIZWEB = 416,
	BIZWEB_RC = 417,
	BIZWEB_BETA = 418,
	BIZWEB_ALPHA = 419,
	BLACKBERRY = 176,
	BLACKBERRY_RC = 177,
	BLACKBERRY_BETA = 178,
	BLACKBERRY_ALPHA = 179,
	BOT = 64,
	BOT_RC = 65,
	BOT_BETA = 66,
	BOT_ALPHA = 67,
	CHANNELCP = 144,
	CHANNELCP_RC = 145,
	CHANNELCP_BETA = 146,
	CHANNELCP_ALPHA = 147,
	CHANNELGW = 128,
	CHANNELGW_RC = 129,
	CHANNELGW_BETA = 130,
	CHANNELGW_ALPHA = 131,
	CHROMEOS = 368,
	CHROMEOS_RC = 369,
	CHROMEOS_BETA = 370,
	CHROMEOS_ALPHA = 371,
	CHRONO = 224,
	CHRONO_RC = 225,
	CHRONO_BETA = 226,
	CHRONO_ALPHA = 227, 
	CLOVAFRIENDS = 480,
	CLOVAFRIENDS_RC = 481,
	CLOVAFRIENDS_BETA = 482,
	CLOVAFRIENDS_ALPHA = 483,
	DESKTOPMAC = 112,
	DESKTOPMAC_RC = 113,
	DESKTOPMAC_BETA = 114,
	DESKTOPMAC_ALPHA = 115,
	DESKTOPWIN = 96,
	DESKTOPWIN_RC = 97,
	DESKTOPWIN_BETA = 98,
	DESKTOPWIN_ALPHA = 99,
	DUMMYPRIMARY = 432,
	DUMMYPRIMARY_RC = 433,
	DUMMYPRIMARY_BETA = 434,
	DUMMYPRIMARY_ALPHA = 435,
	FIREFOXOS = 288,
	FIREFOXOS_RC = 289,
	FIREFOXOS_BETA = 290,
	FIREFOXOS_ALPHA = 291,
	INTERNAL = 464,
	INTERNAL_RC = 465,
	INTERNAL_BETA = 466,
	INTERNAL_ALPHA = 467,
	IOS = 16,
	IOS_RC = 17,
	IOS_BETA = 18,
	IOS_ALPHA = 19,
	IOSIPAD = 304,
	IOSIPAD_RC = 305,
	IOSIPAD_BETA = 306,
	IOSIPAD_ALPHA = 307,
	SQUARE = 448,
	SQUARE_RC = 449,
	SQUARE_BETA = 450,
	SQUARE_ALPHA = 451,
	S40 = 208,
	S40_RC = 209,
	S40_BETA = 210,
	S40_ALPHA = 211,
	TIZEN = 256,
	TIZEN_RC = 257,
	TIZEN_BETA = 258,
	TIZEN_ALPHA = 259,
	VIRTUAL = 272,
	WAP = 48,
	WAP_RC = 49,
	WAP_BETA = 50,
	WAP_ALPHA = 51,
	WEB = 80,
	WEB_RC = 81,
	WEB_BETA = 82,
	WEB_ALPHA = 83,
	WINPHONE = 160,
	WINPHONE_RC = 161,
	WINPHONE_BETA = 162,
	WINPHONE_ALPHA = 163,
	WINMETRO = 192,
	WINMETRO_RC = 193,
	WINMETRO_BETA = 194,
	WINMETRO_ALPHA = 195,
	WIN10 = 400,
	WIN10_RC = 401,
	WIN10_BETA = 402,
	WIN10_ALPHA = 403,
}

enum DeviceBooleanStateKey {
	BEACON_AGREEMENT = 1,
	BLUETOOTH = 2,
}

enum DeviceStringStateKey {
	LOCATION_OS = 1,
	LOCATION_APP = 2,
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

struct ExtendedProfile {
    1: ExtendedProfileBirthday birthday;
}

enum ExtendedProfileAttribute {
	BIRTHDAY = 0,
}

struct PendingAgreementsResponse {
    1: list<PendingAgreements> pendingAgreements;
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

struct Settings {
	10: bool notificationEnable;
	11: i64 notificationMuteExpiration;
	12: bool notificationNewMessage;
	13: bool notificationGroupInvitation;
	14: bool notificationShowMessage;
	15: bool notificationIncomingCall;
	16: string notificationSoundMessage;
	17: string notificationSoundGroup;
	18: bool notificationDisabledWithSub;
	19: bool notificationPayment;
	20: bool privacySyncContacts;
	21: bool privacySearchByPhoneNumber;
	22: bool privacySearchByUserid;
	23: bool privacySearchByEmail;
	24: bool privacyAllowSecondaryDeviceLogin;
	25: bool privacyProfileImagePostToMyhome;
	26: bool privacyReceiveMessagesFromNotFriend;
	27: bool privacyAgreeUseLineCoinToPaidCall;
	28: bool privacyAgreeUsePaidCall;
	29: bool privacyAllowFriendRequest;
	30: string contactMyTicket;
	40: IdentityProvider identityProvider;
	41: string identityIdentifier;
	42: map<SnsIdType, string> snsAccounts;
	43: bool phoneRegistration;
	44: EmailConfirmationStatus emailConfirmationStatus;
	45: AccountMigrationPincodeType accountMigrationPincodeType;
	46: bool enforcedInputAccountMigrationPincode;
	47: SecurityCenterSettingsType securityCenterSettingsType;
	48: bool allowUnregistrationSecondaryDevice;
	50: string preferenceLocale;
	60: map<CustomMode, string> customModes;
	61: bool e2eeEnable;
	62: bool hitokotoBackupRequested;
	63: bool privacyProfileMusicPostToMyhome;
	65: bool privacyAllowNearby;
	66: i64 agreementNearbyTime;
	67: i64 agreementSquareTime;
	68: bool notificationMention;
	69: i64 botUseAgreementAcceptedAt;
}

enum SettingsAttribute {
	NOTIFICATION_ENABLE = 1,
	NOTIFICATION_MUTE_EXPIRATION = 2,
	NOTIFICATION_NEW_MESSAGE = 4,
	NOTIFICATION_GROUP_INVITATION = 8,
	NOTIFICATION_SHOW_MESSAGE = 16,
	NOTIFICATION_INCOMING_CALL = 32,
	NOTIFICATION_SOUND_MESSAGE = 256,
	NOTIFICATION_SOUND_GROUP = 512,
	NOTIFICATION_DISABLED_WITH_SUB = 65536,
	NOTIFICATION_PAYMENT = 131072,
	PRIVACY_SYNC_CONTACTS = 64,
	PRIVACY_SEARCH_BY_PHONE_NUMBER = 128,
	PRIVACY_SEARCH_BY_USERID = 8192,
	PRIVACY_SEARCH_BY_EMAIL = 16384,
	PRIVACY_ALLOW_SECONDARY_DEVICE_LOGIN = 2097152,
	PRIVACY_PROFILE_IMAGE_POST_TO_MYHOME = 8388608,
	PRIVACY_ALLOW_FRIEND_REQUEST = 1073741824,
	PRIVACY_RECV_MESSAGES_FROM_NOT_FRIEND = 33554432,
	PRIVACY_AGREE_USE_LINECOIN_TO_PAIDCALL = 67108864,
	PRIVACY_AGREE_USE_PAIDCALL = 134217728,
	CONTACT_MY_TICKET = 1024,
	IDENTITY_PROVIDER = 2048,
	IDENTITY_IDENTIFIER = 4096,
	SNS_ACCOUNT = 524288,
	PHONE_REGISTRATION = 1048576,
	PREFERENCE_LOCALE = 32768,
	CUSTOM_MODE = 4194304,
	EMAIL_CONFIRMATION_STATUS = 16777216,
	ACCOUNT_MIGRATION_PINCODE = 268435456,
	ENFORCED_INPUT_ACCOUNT_MIGRATION_PINCODE = 536870912,
	SECURITY_CENTER_SETTINGS = 262144,
}

enum SettingsAttributeEx {
	NOTIFICATION_ENABLE = 0,
	NOTIFICATION_MUTE_EXPIRATION = 1,
	NOTIFICATION_NEW_MESSAGE = 2,
	NOTIFICATION_GROUP_INVITATION = 3,
	NOTIFICATION_SHOW_MESSAGE = 4,
	NOTIFICATION_INCOMING_CALL = 5,
	NOTIFICATION_SOUND_MESSAGE = 8,
	NOTIFICATION_SOUND_GROUP = 9,
	NOTIFICATION_DISABLED_WITH_SUB = 16,
	NOTIFICATION_PAYMENT = 17,
	NOTIFICATION_MENTION = 40,
	PRIVACY_SYNC_CONTACTS = 6,
	PRIVACY_SEARCH_BY_PHONE_NUMBER = 7,
	PRIVACY_SEARCH_BY_USERID = 13,
	PRIVACY_SEARCH_BY_EMAIL = 14,
	PRIVACY_ALLOW_SECONDARY_DEVICE_LOGIN = 21,
	PRIVACY_PROFILE_IMAGE_POST_TO_MYHOME = 23,
	PRIVACY_PROFILE_MUSIC_POST_TO_MYHOME = 35,
	PRIVACY_ALLOW_FRIEND_REQUEST = 30,
	PRIVACY_RECV_MESSAGES_FROM_NOT_FRIEND = 25,
	PRIVACY_AGREE_USE_LINECOIN_TO_PAIDCALL = 26,
	PRIVACY_AGREE_USE_PAIDCALL = 27,
	CONTACT_MY_TICKET = 10,
	IDENTITY_PROVIDER = 11,
	IDENTITY_IDENTIFIER = 12,
	SNS_ACCOUNT = 19,
	PHONE_REGISTRATION = 20,
	PREFERENCE_LOCALE = 15,
	CUSTOM_MODE = 22,
	EMAIL_CONFIRMATION_STATUS = 24,
	ACCOUNT_MIGRATION_PINCODE = 28,
	ENFORCED_INPUT_ACCOUNT_MIGRATION_PINCODE = 29,
	SECURITY_CENTER_SETTINGS = 18,
	E2EE_ENABLE = 33,
	HITOKOTO_BACKUP_REQUESTED = 34,
	CONTACT_ALLOW_FOLLOWING = 36,
	PRIVACY_ALLOW_NEARBY = 37,
	AGREEMENT_NEARBY = 38,
	AGREEMENT_SQUARE = 39,
	ALLOW_UNREGISTRATION_SECONDARY_DEVICE = 41,
	AGREEMENT_BOT_USE = 42,
}

enum IdentityProvider {
	UNKNOWN = 0,
	LINE = 1,
	NAVER_KR = 2,
	LINE_PHONE = 3,
}

enum SnsIdType {
	FACEBOOK = 1,
	SINA = 2,
	RENREN = 3,
	FEIXIN = 4,
	BBM = 5,
}

enum EmailConfirmationStatus {
	NOT_SPECIFIED = 0,
	NOT_YET = 1,
	DONE = 3,
	NEED_ENFORCED_INPUT = 4,
}

enum AccountMigrationPincodeType {
	NOT_APPLICABLE = 0,
	NOT_SET = 1,
	SET = 2,
	NEED_ENFORCED_INPUT = 3,
}

enum SecurityCenterSettingsType {
	NOT_APPLICABLE = 0,
	NOT_SET = 1,
	SET = 2,
	NEED_ENFORCED_INPUT = 3,
}

enum CustomMode {
	PROMOTION_FRIENDS_INVITE = 1,
	CAPABILITY_SERVER_SIDE_SMS = 2,
	LINE_CLIENT_ANALYTICS_CONFIGURATION = 3,
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

enum GroupAttribute {
	ALL = 255,
	NAME = 1,
	PICTURE_STATUS = 2,
	PREVENTED_JOIN_BY_TICKET = 4,
	NOTIFICATION_SETTING = 8,
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

struct GroupCallRoute {
	1: string token;
	2: CallHost cscf;
	3: CallHost mix;
}

struct GroupPreference {
	11: string invitationTicket;
	12: i64 favoriteTimestamp;
}

enum GroupPreferenceAttribute {
	INVITATION_TICKET = 1,
	FAVORITE_TIMESTAMP = 2,
}

struct IdentityCredential {
	1: IdentityProvider provider;
	2: string identifier;
	3: string password;
}

struct Location {
	1: string title;
	2: string address;
	3: double latitude;
	4: double longitude;
	5: string phone;
}

struct LoginRequest {
	1: LoginType type;
	2: IdentityProvider identityProvider;
	3: string identifier;
	4: string password;
	5: bool keepLoggedIn;
	6: string accessLocation;
	7: string systemName;
	8: string certificate;
	9: string verifier;
	10: binary secret;
	11: i32 e2eeVersion;
}

struct LoginResult {
	1: string authToken;
	2: string certificate;
	3: string verifier;
	4: string pinCode;
	5: LoginResultType type;
	6: i64 lastPrimaryBindTime;
	7: string displayMessage;
	8: VerificationSessionData sessionForSMSConfirm;
}

enum LoginResultType {
	SUCCESS = 1,
	REQUIRE_QRCODE = 2,
	REQUIRE_DEVICE_CONFIRM = 3,
	REQUIRE_SMS_CONFIRM = 4,
}

struct LoginSession {
	1: string tokenKey;
	3: i64 expirationTime;
	11: ApplicationType applicationType;
	12: string systemName;
	22: string accessLocation;
}

enum LoginType {
	ID_CREDENTIAL = 0,
	QRCODE = 1,
	ID_CREDENTIAL_WITH_E2EE = 2,
}

struct ChatRoomAnnouncementContents {
	1: i32 displayFields;
	2: string text;
	3: string link;
	4: string thumbnail;
}

struct ChatRoomAnnouncement {
	1: i64 announcementSeq;
	2: i32 type;
	3: ChatRoomAnnouncementContents contents;
	4: string creatorMid;
	5: i64 createdTime;
}

struct Message {
	1: string from_;
	2: string to;
	3: MIDType toType;
	4: string id;
	5: i64 createdTime;
	6: i64 deliveredTime;
	10: string text;
	11: Location location;
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

struct MessageBoxV2MessageId {
	1: i64 deliveredTime;
	2: i64 messageId;
}

struct MessageCommitResult {
	1: string requestId;
	2: BuddyResultState state;
	3: string messageStoreRequestId;
	4: list<string> messageIds;
	11: i64 receiverCount;
	12: i64 successCount;
	13: i64 failCount;
	14: i64 blockCount;
	15: i64 unregisteredCount;
	16: i64 unrelatedCount;
	21: string errorDescription;
}

enum MessageRelationType {
	FORWARD = 0,
	AUTO_REPLY = 1,
	SUBORDINATE = 2,
}

struct MessageStoreResult {
	1: string requestId;
	2: list<string> messageIds;
}

struct MetaProfile {
	1: i64 createTime;
	2: string regionCode;
	3: map<RegistrationType, string> identities;
	4: string udid;
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

enum ContactRelation {
	ONEWAY = 0,
	BOTH = 1,
	NOT_REGISTERED = 2,
}

enum FriendRequestStatus {
	NONE = 0,
	AVAILABLE = 1,
	ALREADY_REQUESTED = 2,
	UNAVAILABLE = 3,
}

struct CallHost {
	1: string host;
	2: i32 port;
	3: string zone;
}

struct VerificationSessionData {
	1: string sessionId;
	2: VerificationMethod method;
	3: string callback;
	4: string normalizedPhone;
	5: string countryCode;
	6: string nationalSignificantNumber;
	7: list<VerificationMethod> availableVerificationMethods;
	8: string callerIdMask;
}

enum VerificationMethod {
	NO_AVAILABLE = 0,
	PIN_VIA_SMS = 1,
	CALLERID_INDIGO = 2,
	PIN_VIA_TTS = 4,
	SKIP = 10,
}

enum ServiceCode {
	UNKNOWN = 0,
	TALK = 1,
	SQUARE = 2,
}

enum BuddyResultState {
	ACCEPTED = 1,
	SUCCEEDED = 2,
	FAILED = 3,
	CANCELLED = 4,
	NOTIFY_FAILED = 5,
	STORING = 11,
	UPLOADING = 21,
	NOTIFYING = 31,
	REMOVING_SUBSCRIPTION = 41,
	UNREGISTERING_ACCOUNT = 42,
	NOTIFYING_LEAVE_CHAT = 43,
}

enum RegistrationType {
	PHONE = 0,
	EMAIL_WAP = 1,
	FACEBOOK = 2305,
	SINA = 2306,
	RENREN = 2307,
	FEIXIN = 2308,
}

struct SIMInfo {
	1: string phoneNumber;
	2: string countryCode;
}

struct NearbyEntry {
	1: string emid;
	2: double distance;
	3: i32 lastUpdatedInSec;
	4: map<string, string> property;
	5: Profile profile;
}

enum ContactSetting {
	CONTACT_SETTING_NOTIFICATION_DISABLE = 1,
	CONTACT_SETTING_DISPLAY_NAME_OVERRIDE = 2,
	CONTACT_SETTING_CONTACT_HIDE = 4,
	CONTACT_SETTING_FAVORITE = 8,
	CONTACT_SETTING_DELETE = 16,
}

struct ContactModification {
	1: ModificationType type;
	2: string luid;
	11: list<string> phones;
	12: list<string> emails;
	13: list<string> userids;
}

enum ModificationType {
	ADD = 0,
	REMOVE = 1,
	MODIFY = 2,
}

struct ContactRegistration {
	1: Contact contact;
	10: string luid;
	11: ContactType contactType;
	12: string contactKey;
}

struct E2EEPublicKey {
	1: i32 version;
	2: i32 keyId;
	4: binary keyData;
	5: i64 createdTime;
}

struct Operation {
	1: i64 revision;
	2: i64 createdTime;
	3: OpType type;
	4: i32 reqSeq;
	5: string checksum;
	7: OpStatus status;
	10: string param1;
	11: string param2;
	12: string param3;
	20: Message message;
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

enum OpStatus {
	NORMAL = 0,
	ALERT_DISABLED = 1,
	ALWAYS = 2,
}

enum SpammerReason {
	OTHER = 0,
	ADVERTISING = 1,
	GENDER_HARASSMENT = 2,
	HARASSMENT = 3,
}

enum FriendRequestMethod {
	TIMELINE = 1,
	NEARBY = 2,
	SQUARE = 3,
}

enum FeatureType {
	OBS_VIDEO = 1,
	OBS_GENERAL = 2,
}

enum FriendRequestDirection {
	INCOMING = 1,
	OUTGOING = 2,
}

struct FriendRequest {
	1: string eMid;
	2: string mid;
	3: FriendRequestDirection direction;
	4: FriendRequestMethod method;
	5: string param;
	6: i64 timestamp;
	7: i64 seqId;
	10: string displayName;
	11: string picturePath;
	12: string pictureStatus;
}

struct UserAuthStatus {
	1: bool phoneNumberRegistered;
	2: list<SnsIdType> registeredSnsIdTypes;
	3: AccountMigrationCheckType accountMigrationCheckType;
}

enum AccountMigrationCheckType {
	SKIP = 0,
	PINCODE = 1,
	SECURITY_CENTER = 2,
}

struct RSAKey {
	1: string keynm;
	2: string nvalue;
	3: string evalue;
	4: string sessionKey;
}

enum NotificationType {
	APPLE_APNS = 1,
	GOOGLE_C2DM = 2,
	NHN_NNI = 3,
	SKT_AOM = 4,
	MS_MPNS = 5,
	RIM_BIS = 6,
	GOOGLE_GCM = 7,
	NOKIA_NNAPI = 8,
	TIZEN = 9,
	MOZILLA_SIMPLE = 10,
	LINE_BOT = 17,
	LINE_WAP = 18,
	APPLE_APNS_VOIP = 19,
	MS_WNS = 20,
}

struct SnsIdUserStatus {
	1: bool userExisting;
	2: bool phoneNumberRegistered;
	3: bool sameDevice;
	4: AccountMigrationCheckType accountMigrationCheckType;
}

struct SuggestDictionaryRevisions {
	1: SuggestItemDictionaryRevision itemRevision;
	2: list<SuggestTagDictionaryRevision> tagRevisions;
}

struct SuggestItemDictionaryRevision {
	1: i64 revision;
	2: string scheme;
}

struct SuggestTagDictionaryRevision {
	1: string language;
	2: i64 revision;
	3: string scheme;
}

struct SuggestItemDictionaryIncrement {
	1: SuggestDictionaryIncrementStatus status;
	2: i64 revision;
	3: string scheme;
	4: binary data;
}

struct SuggestDictionary {
	1: string language;
	2: string name;
}

struct SuggestDictionaryIncrements {
	1: SuggestItemDictionaryIncrement itemIncrement;
	2: list<SuggestTagDictionaryIncrement> tagIncrements;
}

enum SuggestDictionaryIncrementStatus {
	SUCCESS = 0,
	INVALID_REVISION = 1,
	TOO_LARGE_DATA = 2,
	SCHEME_CHANGED = 3,
	RETRY = 4,
	FAIL = 5,
	TOO_OLD_DATA = 6,
}

struct SuggestDictionarySettings {
	1: i64 revision;
	2: i64 newRevision;
	3: list<SuggestDictionary> dictionaries;
	4: list<string> preloadedDictionaries;
}

struct SuggestTagDictionaryIncrement {
	1: SuggestDictionaryIncrementStatus status;
	2: string language;
	3: i64 revision;
	4: string scheme;
	5: binary data;
}

struct TMessageReadRange {
	1: string chatId;
	2: map<string, list<TMessageReadRangeEntry>> ranges;
}

struct TMessageReadRangeEntry {
	1: i64 startMessageId;
	2: i64 endMessageId;
	3: i64 startTime;
	4: i64 endTime;
}

struct Room {
	1: string mid;
	2: i64 createdTime;
	10: list<Contact> contacts;
	31: bool notificationDisabled;
	40: list<string> memberMids;
}

struct SnsFriend {
	1: string snsUserId;
	2: string snsUserName;
	3: SnsIdType snsIdType;
}
struct SnsFriendModification {
	1: ModificationType type;
	2: SnsFriend snsFriend;
}

struct SnsFriendContactRegistration {
	1: Contact contact;
	2: SnsIdType snsIdType;
	3: string snsUserId;
}

struct RegisterWithPhoneNumberResult {
	1: string authToken;
	2: bool recommendEmailRegistration;
	3: string certificate;
}

struct E2EEGroupSharedKey {
	1: i32 version;
	2: i32 groupKeyId;
	3: string creator;
	4: i32 creatorKeyId;
	5: string receiver;
	6: i32 receiverKeyId;
	7: binary encryptedSharedKey;
	8: set<ContentType> allowedTypes;
}

struct E2EEKey {
	1: i32 version;
	2: i32 keyId;
	4: binary publicKey;
	5: binary privateKey;
	6: i64 createdTime;
}

struct E2EEKeyChain {
	1: list<E2EEKey> keychain;
}

struct E2EENegotiationResult {
	1: set<ContentType> allowedTypes;
	2: E2EEPublicKey publicKey;
}

struct EmailConfirmation {
	1: bool usePasswordSet;
	2: string email;
	3: string password;
	4: bool ignoreDuplication;
	5: bool useEmailOnly;
}

struct EmailConfirmationResult {
	1: string certificate;
}

struct EmailConfirmationSession {
	1: EmailConfirmationType emailConfirmationType;
	2: string verifier;
	3: string targetEmail;
}

struct Configurations {
	1: i64 revision;
	2: map<string, string> configMap;
}

enum EmailConfirmationType {
	SERVER_SIDE_EMAIL = 0,
	CLIENT_SIDE_EMAIL = 1,
}

struct PublicKey {
	1: AsymmetricKeyAlgorithm keyAlgorithm;
	2: i32 keySize;
	3: binary keyData;
	4: i64 createdTime;
}

struct PublicKeychain {
	1: set<PublicKey> publicKeys;
}

enum AsymmetricKeyAlgorithm {
	ASYMMETRIC_KEY_ALGORITHM_RSA = 1,
	ASYMMETRIC_KEY_ALGORITHM_ECDH = 2,
}

struct AnalyticsInfo {
	1: double gaSamplingRate;
	2: string tmid;
}

struct ProximityMatchCandidateResult {
	1: list<ProximityMatchCandidateEntry> users;
	2: list<ProximityMatchCandidateEntry> buddies;
	91: bool endOfResult;
}

struct ProximityMatchCandidateEntry {
	1: Contact contact;
	11: BuddyDetail buddyDetail;
}

struct BuddyDetail {
	1: string mid;
	2: i64 memberCount;
	3: bool onAir;
	4: bool businessAccount;
	5: bool addable;
	6: set<ContentType> acceptableContentTypes;
	7: bool capableMyhome;
	8: bool freePhoneCallable;
	9: string phoneNumberToDial;
	10: bool needPermissionApproval;
	11: i32 channelId;
	12: string channelProviderName;
	13: i32 iconType;
	14: BotType botType;
	15: bool showRichMenu;
	16: i64 richMenuRevision;
	17: BuddyOnAirLabel onAirLabel;
	18: bool useTheme;
	19: string themeId;
	20: bool useBar;
	21: i64 barRevision;
	22: bool useBackground;
	23: string backgroundId;
	24: bool statusBarEnabled;
	25: i64 statusBarRevision;
	26: bool capableChat;
}

enum BotType {
	RESERVED = 0,
	OFFICIAL = 1,
	LINE_AT_0 = 2,
	LINE_AT = 3,
}

enum BuddyOnAirLabel {
	ON_AIR = 0,
	LIVE = 1,
}

struct Ticket {
	1: string id;
	10: i64 expirationTime;
	21: i32 maxUseCount;
}

struct FriendRequestsInfo {
	1: i32 totalIncomingCount;
	2: i32 totalOutgoingCount;
	3: list<FriendRequest> recentIncomings;
	4: list<FriendRequest> recentOutgoings;
	5: i32 totalIncomingLimit;
	6: i32 totalOutgoingLimit;
}

struct RingbackTone {
	1: string uuid;
	2: string trackId;
	3: string title;
	4: string oid;
	5: map<string, string> tids;
}

struct ClientLastStatus {
	1: i64 lastRev;
	2: i32 badgeCount;
}

struct TMessageBox {
	1: string id;
	2: string channelId;
	5: i64 lastSeq;
	6: i64 unreadCount;
	7: i64 lastModifiedTime;
	8: i32 status;
	9: MIDType midType;
	10: list<Message> lastMessages;
}

enum TMessageBoxStatus {
	ACTIVATED = 1,
	UNREAD = 2,
}

struct TMessageBoxWrapUp {
	1: TMessageBox messageBox;
	2: string name;
	3: list<Contact> contacts;
	4: string pictureRevision;
}

struct TMessageBoxWrapUpResponse {
	1: list<TMessageBoxWrapUp> messageBoxWrapUpList;
	2: i32 totalSize;
}

enum NotificationStatus {
	NOTIFICATION_ITEM_EXIST = 1,
	TIMELINE_ITEM_EXIST = 2,
	NOTE_GROUP_NEW_ITEM_EXIST = 4,
	TIMELINE_BUDDYGROUP_CHANGED = 8,
	NOTE_ONE_TO_ONE_NEW_ITEM_EXIST = 16,
	ALBUM_ITEM_EXIST = 32,
	TIMELINE_ITEM_DELETED = 64,
	OTOGROUP_ITEM_EXIST = 128,
	GROUPHOME_NEW_ITEM_EXIST = 256,
	GROUPHOME_HIDDEN_ITEM_CHANGED = 512,
	NOTIFICATION_ITEM_CHANGED = 1024,
	BEAD_ITEM_HIDE = 2048,
	BEAD_ITEM_SHOW = 4096,
}

struct Geolocation {
	1: double longitude;
	2: double latitude;
}

struct WapInvitation {
	1: WapInvitationType type;
	10: string inviteeEmail;
	11: string inviterMid;
	12: string roomMid;
}

enum WapInvitationType {
	REGISTRATION = 1,
	CHAT = 2,
}

struct Announcement {
	1: i32 index;
	10: bool forceUpdate;
	11: string title;
	12: string text;
	13: i64 createdTime;
	14: string pictureUrl;
	15: string thumbnailUrl;
}

enum ReportCategory {
	PUSH_NORMAL_PLAIN = 0,
	PUSH_NORMAL_E2EE = 1,
	PUSH_VOIP_PLAIN = 2,
	PUSH_VOIP_E2EE = 3,
}

struct SystemConfiguration {
	1: string endpoint;
	2: string endpointSsl;
	3: string updateUrl;
	11: string c2dmAccount;
	12: string nniServer;
}

struct AuthQrcode {
	1: string qrcode;
	2: string verifier;
	3: string callbackUrl;
}

service TalkService {
	void updateAccountMigrationPincode(
		2: string accountMigrationPincode,) throws (1: TalkException e), 

	void verifyAccountMigration(
		2: string migrationSessionId,) throws (1: TalkException e), 

	void notifyInstalled(
		2: string udidHash,
		3: string applicationTypeWithExtensions,) throws (1: TalkException e),

	void notifyRegistrationComplete(
		2: string udidHash,
		3: string applicationTypeWithExtensions,) throws (1: TalkException e), 

	void notifyUpdated(
		2: i64 lastRev,
		3: DeviceInfo deviceInfo,
		4: string udidHash,
		5: string oldUdidHash,) throws (1: TalkException e), 

	void reportDeviceState(
		2: map<DeviceBooleanStateKey, bool> booleanState,
		3: map<DeviceStringStateKey, string> stringState,) throws (1: TalkException e), 

	void notifySleep(
		2: i64 lastRev,
		3: i32 badge,) throws (1: TalkException e),

	Profile getProfile() throws (1: TalkException e), 

	void updateProfileAttribute(
		1: i32 reqSeq,
		2: ProfileAttribute attr,
		3: string value,) throws (1: TalkException e), 

	bool registerUserid(
		1: i32 reqSeq,
		2: string userid,) throws (1: TalkException e), 

	bool isUseridAvailable(
		2: string userid,) throws (1: TalkException e), 

	ExtendedProfile getExtendedProfile() throws (1: TalkException e), 

	void updateExtendedProfileAttribute(
		1: i32 reqSeq,
		2: ExtendedProfileAttribute attr,
		3: ExtendedProfile extendedProfile,) throws (1: TalkException e), 

	Settings getSettings() throws (1: TalkException e), 

	Settings getSettingsAttributes(
		2: i32 attrBitset,) throws (1: TalkException e), 

	void updateSettingsAttributes(
		1: i32 reqSeq,
		2: i32 attrBitset,
		3: Settings settings,) throws (1: TalkException e), 

	PendingAgreementsResponse getPendingAgreements() throws (1: TalkException e),

	void setNotificationsEnabled(
		1: i32 reqSeq,
		2: MIDType type,
		3: string target,
		4: bool enablement,) throws (1: TalkException e), 

	map<string, Contact> findAndAddContactsByPhone(
		1: i32 reqSeq,
		2: set<string> phones,) throws (1: TalkException e), 

	map<string, Contact> findAndAddContactsByUserid(
		1: i32 reqSeq,
		2: string userid,) throws (1: TalkException e), 

	VerificationSessionData startVerification(
		2: string region,
		3: CarrierCode carrier,
		4: string phone,
		5: string udidHash,
		6: DeviceInfo deviceInfo,
		7: string networkCode,
		8: string mid,
		9: string locale,
		10: SIMInfo simInfo,
		11: string oldUdidHash,) throws (1: TalkException e), 

	list<NearbyEntry> updateAndGetNearby(
		2: double latitude,
		3: double longitude,) throws (1: TalkException e), 

	void removeChatRoomAnnouncement(
		1: i32 reqSeq,
		2: string chatRoomMid,
		3: i64 announcementSeq,) throws (1: TalkException e), 

	void unblockContact(
		1: i32 reqSeq,
		2: string id,
		3: string reference,) throws (1: TalkException e), 

	void respondResendMessage(
		1: i32 reqSeq,
		2: string receiverMid,
		3: string originalMessageId,
		4: Message resendMessage,
		5: ErrorCode errorCode,) throws (1: TalkException e), 

	Group createGroup(
		1: i32 seq,
		2: string name,
		3: list<string> contactIds,) throws (1: TalkException e), 

	void updateGroupPreferenceAttribute(
		1: i32 reqSeq,
		2: string groupMid,
		3: map<GroupPreferenceAttribute, string> updatedAttrs,) throws (1: TalkException e), 

	ChatRoomAnnouncement createChatRoomAnnouncement(
		1: i32 reqSeq,
		2: string chatRoomMid,
		3: i32 type,
		4: ChatRoomAnnouncementContents contents,) throws (1: TalkException e), 

	void updateContactSetting(
		1: i32 reqSeq,
		2: string mid,
		3: ContactSetting flag,
		4: string value,) throws (1: TalkException e), 

	map<string, Contact> findAndAddContactsByMid(
		1: i32 reqSeq,
		2: string mid,) throws (1: TalkException e), 

	void respondE2EEKeyExchange(
		1: i32 reqSeq,
		2: binary encryptedKeyChain,
		3: binary hashKeyChain,) throws (1: TalkException e), 

	map<string, ContactRegistration> syncContacts(
		1: i32 reqSeq,
		2: list<ContactModification> localContacts,) throws (1: TalkException e), 

	E2EEPublicKey registerE2EEPublicKey(
		1: i32 reqSeq,
		2: E2EEPublicKey publicKey,) throws (1: TalkException e), 

	void updateGroup(
		1: i32 reqSeq,
		2: Group group,) throws (1: TalkException e), 

	Message sendMessage(
		1: i32 seq,
		2: Message message,) throws (1: TalkException e), 

	void updateSettingsAttribute(
		1: i32 reqSeq,
		2: SettingsAttribute attr,
		3: string value,) throws (1: TalkException e), 

	list<Operation> fetchOps(
		2: i64 localRev,
		3: i32 count,
		4: i64 globalRev,
		5: i64 individualRev,) throws (1: ShouldSyncException e),

	list<Operation> fetchOperations(
		2: i64 localRev,
		3: i32 count,) throws (1: ShouldSyncException e),

	void reportProfile(
		2: i64 syncOpRevision,
		3: Profile profile,) throws (1: TalkException e), 

	void reportSettings(
		2: i64 syncOpRevision,
		3: Settings settings,) throws (1: TalkException e), 

	void report(
		2: i64 syncOpRevision,
		3: Category category,
		4: string report,) throws (1: TalkException e),

	void resendPinCode(
		2: string sessionId,) throws (1: TalkException e), 

	E2EEPublicKey getE2EEPublicKey(
		2: string mid,
		3: i32 version,
		4: i32 keyId,) throws (1: TalkException e), 

	void verifyAccountMigrationPincode(
		2: string migrationPincodeSessionId,
		3: string accountMigrationPincode,) throws (1: TalkException e), 

	string verifyPhoneNumberForLogin(
		2: string verifierFromPhone,
		3: string pinCodeForPhone,
		4: string verifierFromLogin,) throws (1: TalkException e), 

	void reportSpammer(
		2: string spammerMid,
		3: list<SpammerReason> spammerReasons,
		4: list<string> spamMessageIds,
		5: list<string> spamMessages,) throws (1: TalkException e), 

	void reportSpam(
		2: string chatMid,
		3: list<string> memberMids,
		4: list<SpammerReason> spammerReasons,
		5: list<string> senderMids,
		6: list<string> spamMessageIds,
		7: list<string> spamMessages,) throws (1: TalkException e), 

	void acceptProximityMatches(
		2: string sessionId,
		3: set<string> ids,) throws (1: TalkException e), 

	VerificationSessionData startUpdateVerification(
		2: string region,
		3: CarrierCode carrier,
		4: string phone,
		5: string udidHash,
		6: DeviceInfo deviceInfo,
		7: string networkCode,
		8: string locale,
		9: SIMInfo simInfo,) throws (1: TalkException e), 

	ContactRegistration getContactRegistration(
		1: string id,
		2: ContactType type,) throws (1: TalkException e), 

	list<string> acquireCallRoute(
		2: string to,) throws (1: TalkException e), 

	void tryFriendRequest(
		1: string midOrEMid,
		2: FriendRequestMethod method,
		3: string friendRequestParams,) throws (1: TalkException e), 

	string registerDeviceWithIdentityCredential(
		2: string sessionId,
		3: string identifier,
		4: string verifier,
		5: IdentityProvider provider,
		6: string migrationPincodeSessionId,) throws (1: TalkException e), 

	VerificationSessionData changeVerificationMethod(
		2: string sessionId,
		3: VerificationMethod method,) throws (1: TalkException e), 

	void inviteFriendsBySms(
		2: list<string> phoneNumberList,) throws (1: TalkException e), 

	string acquireEncryptedAccessToken(
		2: FeatureType featureType,) throws (1: TalkException e), 

	list<FriendRequest> getFriendRequests(
		1: FriendRequestDirection direction,
		2: i64 lastSeenSeqId,) throws (1: TalkException e), 

	void removeFriendRequest(
		1: FriendRequestDirection direction,
		2: string midOrEMid,) throws (1: TalkException e), 

	string getShakeEventV1(
		1: Location location,) throws (1: TalkException e), 

	UserAuthStatus verifyIdentityCredentialWithResult(
		2: IdentityCredential identityCredential,
		3: string migrationPincodeSessionId,) throws (1: TalkException e), 

	RSAKey getRSAKeyInfo(
		2: IdentityProvider provider,) throws (1: TalkException e), 

	void setIdentityCredential(
		2: string identifier,
		3: string verifier,
		4: IdentityProvider provider,) throws (1: TalkException e), 

	string openProximityMatch(
		2: Location location,) throws (1: TalkException e), 

	void updateNotificationToken(
		2: string token,
		3: NotificationType type,) throws (1: TalkException e), 

	string removeSnsId(
		2: SnsIdType snsIdType,) throws (1: TalkException e), 

	string addSnsId(
		2: SnsIdType snsIdType,
		3: string snsAccessToken,) throws (1: TalkException e), 

	SnsIdUserStatus findSnsIdUserStatus(
		2: SnsIdType snsIdType,
		3: string snsAccessToken,
		4: string udidHash,
		5: string migrationPincodeSessionId,
		6: string oldUdidHash,) throws (1: TalkException e), 

	string registerWithSnsIdAndIdentityCredential(
		2: SnsIdType snsIdType,
		3: string snsAccessToken,
		4: IdentityCredential identityCredential,
		5: string region,
		6: string udidHash,
		7: DeviceInfo deviceInfo,
		8: string migrationPincodeSessionId,) throws (1: TalkException e), 

	SuggestDictionaryIncrements getSuggestIncrements(
		2: SuggestDictionaryRevisions revisions,) throws (1: TalkException e), 

	list<string> getGroupIdsJoined() throws (1: TalkException e), 

	list<string> getGroupIdsInvited() throws (1: TalkException e), 

	Group getGroupWithoutMembers(
		2: string groupId,) throws (1: TalkException e), 

	Group getCompactGroup(
		2: string groupId,) throws (1: TalkException e), 

	Group getGroup(
		2: string groupId,) throws (1: TalkException e), 

	void inviteIntoGroup(
		1: i32 reqSeq,
		2: string groupId,
		3: list<string> contactIds,) throws (1: TalkException e), 

	void cancelGroupInvitation(
		1: i32 reqSeq,
		2: string groupId,
		3: list<string> contactIds,) throws (1: TalkException e), 

	void kickoutFromGroup(
		1: i32 reqSeq,
		2: string groupId,
		3: list<string> contactIds,) throws (1: TalkException e), 

	void leaveGroup(
		1: i32 reqSeq,
		2: string groupId,) throws (1: TalkException e), 

	void acceptGroupInvitation(
		1: i32 reqSeq,
		2: string groupId,) throws (1: TalkException e), 

	void rejectGroupInvitation(
		1: i32 reqSeq,
		2: string groupId,) throws (1: TalkException e), 

	i64 getLastOpRevision() throws (1: TalkException e), 

	void sendChatChecked(
		1: i32 seq,
		2: string consumer,
		3: string lastMessageId,
		4: i8 sessionId,) throws (1: TalkException e), 

	void sendChatRemoved(
		1: i32 seq,
		2: string consumer,
		3: string lastMessageId,
		4: i8 sessionId,) throws (1: TalkException e), 

	void sendContentReceipt(
		1: i32 seq,
		2: string consumer,
		3: string messageId,) throws (1: TalkException e), 

	void removeAllMessages(
		1: i32 seq,
		2: string lastMessageId,) throws (1: TalkException e), 

	list<TMessageReadRange> getMessageReadRange(
		2: list<string> chatIds,) throws (1: TalkException e), 

	void unsendMessage(
		1: i32 reqSeq,
		2: string messageId,) throws (1: TalkException e), 

	Room createRoom(
		1: i32 reqSeq,
		2: list<string> contactIds,) throws (1: TalkException e), 

	Room getRoom(
		2: string roomId,) throws (1: TalkException e), 

	list<string> getAllContactIds() throws (1: TalkException e), 

	list<Contact> getContacts(
		2: list<string> ids,) throws (1: TalkException e), 

	Contact getContact(
		2: string id,) throws (1: TalkException e), 

	void blockContact(
		1: i32 reqSeq,
		2: string id,) throws (1: TalkException e), 

	list<string> getBlockedContactIds() throws (1: TalkException e), 

	map<string, Contact> findContactsByPhone(
		2: set<string> phones,) throws (1: TalkException e), 

	Contact findContactByUserid(
		2: string userid,) throws (1: TalkException e), 

	Contact findContactByMetaTag(
		2: string userid,
		3: string reference,) throws (1: TalkException e), 

	Contact findAndAddContactByMetaTag(
		1: i32 reqSeq,
		2: string userid,
		3: string reference,) throws (1: TalkException e), 

	list<SnsFriendContactRegistration> syncContactBySnsIds(
		1: i32 reqSeq,
		2: list<SnsFriendModification> modifications,) throws (1: TalkException e), 

	void blockRecommendation(
		1: i32 reqSeq,
		2: string id,) throws (1: TalkException e), 

	void unblockRecommendation(
		1: i32 reqSeq,
		2: string id,) throws (1: TalkException e), 

	list<string> getRecommendationIds() throws (1: TalkException e), 

	list<string> getBlockedRecommendationIds() throws (1: TalkException e), 

	bool wakeUpLongPolling(
		2: i64 clientRevision,) throws (1: TalkException e),

	RegisterWithPhoneNumberResult registerWithPhoneNumber(
		2: string sessionId,
		3: string migrationPincodeSessionId,) throws (1: TalkException e), 

	E2EEGroupSharedKey getE2EEGroupSharedKey(
		2: i32 version,
		3: string chatMid,
		4: i32 groupKeyId,) throws (1: TalkException e), 

	E2EEGroupSharedKey registerE2EEGroupKey(
		2: i32 version,
		3: string chatMid,
		4: list<string> members,
		5: list<i32> keyIds,
		6: list<binary> encryptedSharedKeys,) throws (1: TalkException e), 

	void requestAccountPasswordReset(
		2: string identifier,
		4: IdentityProvider provider,
		5: string locale,) throws (1: TalkException e), 

	list<LoginSession> getSessions() throws (1: TalkException e), 

	i64 getServerTime() throws (1: TalkException e), 

	string verifyQrcode(
		2: string verifier,
		3: string pinCode,) throws (1: TalkException e), 

	string getCountryWithRequestIp() throws (1: TalkException e), 

	Configurations getConfigurations(
		2: i64 revision,
		3: string regionOfUsim,
		4: string regionOfTelephone,
		5: string regionOfLocale,
		6: string carrier,) throws (1: TalkException e), 

	PublicKeychain updatePublicKeychain(
		1: PublicKeychain publicKeychain,) throws (1: TalkException e), 

	PublicKeychain getPublicKeychain(
		1: string mid,) throws (1: TalkException e), 

	void notifyUpdatePublicKeychain(
		1: string mid,) throws (1: TalkException e), 

	SuggestDictionarySettings getSuggestSettings(
		2: string locale,) throws (1: TalkException e), 

	SuggestDictionaryRevisions getSuggestRevisions() throws (1: TalkException e), 

	AnalyticsInfo getAnalyticsInfo() throws (1: TalkException e), 

	E2EENegotiationResult negotiateE2EEPublicKey(
		2: string mid,) throws (1: TalkException e), 

	void inviteIntoRoom(
		1: i32 reqSeq,
		2: string roomId,
		3: list<string> contactIds,) throws (1: TalkException e), 

	void leaveRoom(
		1: i32 reqSeq,
		2: string roomId,) throws (1: TalkException e), 

	list<ChatRoomAnnouncement> getChatRoomAnnouncements(
		2: string chatRoomMid,) throws (1: TalkException e), 

	map<string, ChatRoomAnnouncement> getChatRoomAnnouncementsBulk(
		2: list<string> chatRoomMids,) throws (1: TalkException e),

	void sendEchoPush(
		2: string text,) throws (1: TalkException e),

	ProximityMatchCandidateResult getProximityMatchCandidateList(
		2: string sessionId,) throws (1: TalkException e), 

	set<string> getAcceptedProximityMatches(
		2: string sessionId,) throws (1: TalkException e), 

	void closeProximityMatch(
		2: string sessionId,) throws (1: TalkException e), 

	Ticket generateUserTicket(
		3: i64 expirationTime,
		4: i32 maxUseCount,) throws (1: TalkException e), 

	Contact findContactByUserTicket(
		2: string ticketIdWithTag,) throws (1: TalkException e), 

	string reissueGroupTicket(
		1: string groupMid,) throws (1: TalkException e), 

	Group findGroupByTicket(
		1: string ticketId,) throws (1: TalkException e), 

	void acceptGroupInvitationByTicket(
		1: i32 reqSeq,
		2: string groupMid,
		3: string ticketId,) throws (1: TalkException e), 

	void clearIdentityCredential() throws (1: TalkException e), 

	void logoutSession(
		2: string tokenKey,) throws (1: TalkException e), 

	void finishUpdateVerification(
		2: string sessionId,) throws (1: TalkException e), 

	list<E2EEPublicKey> getE2EEPublicKeys() throws (1: TalkException e), 

	void requestResendMessage(
		1: i32 reqSeq,
		2: string senderMid,
		3: string messageId,) throws (1: TalkException e), 

	E2EEGroupSharedKey getLastE2EEGroupSharedKey(
		2: i32 version,
		3: string chatMid,) throws (1: TalkException e), 

	map<string, E2EEPublicKey> getLastE2EEPublicKeys(
		2: string chatMid,) throws (1: TalkException e), 

	void disableNearby() throws (1: TalkException e), 

	FriendRequestsInfo getRecentFriendRequests() throws (1: TalkException e), 

	RingbackTone getRingbackTone() throws (1: TalkException e), 

	void clearRingbackTone() throws (1: TalkException e),

	void noop() throws (1: TalkException e),  

	void notifySleepV2(
		2: map<ServiceCode, ClientLastStatus> lastStatusMap,) throws (1: TalkException e), 

	string registerWithExistingSnsIdAndIdentityCredential(
		2: IdentityCredential identityCredential,
		3: string region,
		4: string udidHash,
		5: DeviceInfo deviceInfo,
		6: string migrationPincodeSessionId,) throws (1: TalkException e), 

	string registerDeviceWithoutPhoneNumber(
		2: string region,
		3: string udidHash,
		4: DeviceInfo deviceInfo,) throws (1: TalkException e), 

	string reissueDeviceCredential() throws (1: TalkException e), 

	void inviteViaEmail(
		1: i32 reqSeq,
		2: string email,
		3: string name,) throws (1: TalkException e), 

	list<Room> getRoomsV2(
		2: list<string> roomIds,) throws (1: TalkException e), 

	list<Operation> getReadMessageOps(
		2: string chatId,) throws (1: TalkException e), 

	list<Message> getMessagesBySequenceNumber(
		2: string channelId,
		3: string messageBoxId,
		4: i64 startSeq,
		5: i64 endSeq,) throws (1: TalkException e), 

	void updateC2DMRegistrationId(
		2: string registrationId,) throws (1: TalkException e), 

	void sendMessageIgnored(
		1: i32 seq,
		2: string consumer,
		3: list<string> messageIds,) throws (1: TalkException e), 

	TMessageBoxWrapUpResponse getMessageBoxWrapUpListV2(
		2: i32 messageBoxOffset,
		3: i32 messageBoxCount,) throws (1: TalkException e), 

	list<Operation> getOldReadMessageOpsWithRange(
		2: i64 startRev,
		3: i64 endRev,) throws (1: TalkException e), 

	void notifiedRedirect(
		2: map<string, string> paramMap,) throws (1: TalkException e), 

	void notifyIndividualEvent(
		2: NotificationStatus notificationStatus,
		3: list<string> receiverMids,) throws (1: TalkException e), 

	void updateApnsDeviceToken(
		2: binary apnsDeviceToken,) throws (1: TalkException e), 

	TMessageBoxWrapUp getMessageBoxCompactWrapUp(
		2: string mid,) throws (1: TalkException e), 

	TMessageBox getMessageBoxV2(
		2: string messageBoxId,
		3: i32 lastMessagesCount,) throws (1: TalkException e), 

	Geolocation getBuddyLocation(
		2: string mid,
		3: i32 index,) throws (1: TalkException e), 

	WapInvitation getWapInvitation(
		2: string invitationHash,) throws (1: TalkException e), 

	void invalidateUserTicket() throws (1: TalkException e), 

	Message sendEvent(
		1: i32 seq,
		2: Message message,) throws (1: TalkException e), 

	Message sendMessageToMyHome(
		1: i32 seq,
		2: Message message,) throws (1: TalkException e), 

	map<string, string> sendContentPreviewUpdated(
		1: i32 esq,
		2: string messageId,
		3: list<string> receiverMids,) throws (1: TalkException e), 

	string loginWithVerifier(
		3: string verifier,) throws (1: TalkException e), 

	void removeBuddySubscriptionAndNotifyBuddyUnregistered(
		1: list<string> subscriberMids,) throws (1: TalkException e), 

	void removeBuddyLocation(
		2: string mid,
		3: i32 index,) throws (1: TalkException e), 

	list<Message> getNextMessages(
		2: string messageBoxId,
		3: i64 startSeq,
		4: i32 messagesCount,) throws (1: TalkException e), 

	Room getCompactRoom(
		2: string roomId,) throws (1: TalkException e), 

	list<Message> getPreviousMessagesV2(
		2: string messageBoxId,
		3: MessageBoxV2MessageId endMessageId,
		4: i32 messagesCount,) throws (1: TalkException e), 

	list<Announcement> fetchAnnouncements(
		2: i32 lastFetchedIndex,) throws (1: TalkException e), 

	Group createGroupV2(
		1: i32 seq,
		2: string name,
		3: list<string> contactIds,) throws (1: TalkException e), 

	bool isIdentityIdentifierAvailable(
		2: string identifier,
		3: IdentityProvider provider,) throws (1: TalkException e), 

	map<string, string> commitUpdateProfile(
		1: i32 seq,
		2: list<ProfileAttribute> attrs,
		3: list<string> receiverMids,) throws (1: TalkException e), 

	map<string, string> validateContactsOnBot(
		2: list<string> contacts,) throws (1: TalkException e), 

	list<Message> getRecentMessagesV2(
		2: string messageBoxId,
		3: i32 messagesCount,) throws (1: TalkException e), 

	string unregisterUserAndDevice() throws (1: TalkException e), 

	i32 getLastAnnouncementIndex() throws (1: TalkException e), 

	string createQrcodeBase64Image(
		2: string url,
		3: string characterSet,
		4: i32 imageSize,
		5: i32 x,
		6: i32 y,
		7: i32 width,
		8: i32 height,) throws (1: TalkException e), 

	bool removeMessageFromMyHome(
		2: string messageId,) throws (1: TalkException e), 

	map<string, string> commitSendMessages(
		1: i32 seq,
		2: list<string> messageIds,
		3: list<string> receiverMids,
		4: bool onlyToFollowers,) throws (1: TalkException e), 

	RegisterWithPhoneNumberResult registerWithPhoneNumberAndPassword(
		2: string sessionId,
		3: string keynm,
		4: string encrypted,) throws (1: TalkException e), 

	void reportClientStatistics(
		1: i32 reqSeq,
		2: ReportCategory category,
		3: i32 count,) throws (1: TalkException e), 

	string registerDeviceWithoutPhoneNumberWithIdentityCredential(
		2: string region,
		3: string udidHash,
		4: DeviceInfo deviceInfo,
		5: IdentityProvider provider,
		6: string identifier,
		7: string verifier,
		8: string mid,
		9: string migrationPincodeSessionId,) throws (1: TalkException e), 

	list<string> getFavoriteMids() throws (1: TalkException e), 

	list<Group> getGroupsV2(
		2: list<string> groupIds,) throws (1: TalkException e), 

	string loginWithIdentityCredential(
		3: string identifier,
		4: string password,
		5: bool keepLoggedIn,
		6: string accessLocation,
		7: string systemName,
		8: IdentityProvider identityProvider,
		9: string certificate,) throws (1: TalkException e), 

	SystemConfiguration getSystemConfiguration() throws (1: TalkException e), 

	void updateRegion(
		2: string region,) throws (1: TalkException e), 

	TMessageBoxWrapUpResponse getMessageBoxWrapUpList(
		2: i32 start,
		3: i32 messageBoxCount,) throws (1: TalkException e), 

	AuthQrcode getAuthQrcode(
		2: bool keepLoggedIn,
		3: string systemName,
		4: bool returnCallbackUrl,) throws (1: TalkException e), 

	void reportRooms(
		2: i64 syncOpRevision,
		3: list<Room> rooms,) throws (1: TalkException e), 

	EmailConfirmationSession resendEmailConfirmation(
		2: string verifier,) throws (1: TalkException e), 

	EmailConfirmationResult confirmEmail(
		2: string verifier,
		3: string pinCode,) throws (1: TalkException e), 

	void updateCustomModeSettings(
		2: CustomMode customMode,
		3: map<string, string> paramMap,) throws (1: TalkException e), 

	Room createRoomV2(
		1: i32 reqSeq,
		2: list<string> contactIds,) throws (1: TalkException e), 
}
