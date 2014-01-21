.class public Lcom/android/mms/ui/VCardComposerMsg;
.super Lcom/android/vcard/VCardComposer;
.source "VCardComposerMsg.java"


# static fields
.field public static final ATTR_TYPE:Ljava/lang/String; = "TYPE"

.field public static final ATTR_TYPE_BBS:Ljava/lang/String; = "BBS"

.field public static final ATTR_TYPE_CAR:Ljava/lang/String; = "CAR"

.field public static final ATTR_TYPE_CELL:Ljava/lang/String; = "CELL"

.field public static final ATTR_TYPE_FAX:Ljava/lang/String; = "FAX"

.field public static final ATTR_TYPE_HOME:Ljava/lang/String; = "HOME"

.field public static final ATTR_TYPE_INTERNET:Ljava/lang/String; = "INTERNET"

.field public static final ATTR_TYPE_ISDN:Ljava/lang/String; = "ISDN"

.field public static final ATTR_TYPE_MODEM:Ljava/lang/String; = "MODEM"

.field public static final ATTR_TYPE_MSG:Ljava/lang/String; = "MSG"

.field public static final ATTR_TYPE_PAGER:Ljava/lang/String; = "PAGER"

.field public static final ATTR_TYPE_PHONE_EXTRA_ASSISTANT:Ljava/lang/String; = "ASSISTANT"

.field public static final ATTR_TYPE_PHONE_EXTRA_CALLBACK:Ljava/lang/String; = "CALLBACK"

.field public static final ATTR_TYPE_PHONE_EXTRA_COMPANY_MAIN:Ljava/lang/String; = "COMPANY-MAIN"

.field public static final ATTR_TYPE_PHONE_EXTRA_OTHER:Ljava/lang/String; = "OTHER"

.field public static final ATTR_TYPE_PHONE_EXTRA_RADIO:Ljava/lang/String; = "RADIO"

.field public static final ATTR_TYPE_PHONE_EXTRA_TELEX:Ljava/lang/String; = "TELEX"

.field public static final ATTR_TYPE_PHONE_EXTRA_TTY_TDD:Ljava/lang/String; = "TTY-TDD"

.field public static final ATTR_TYPE_PREF:Ljava/lang/String; = "PREF"

.field public static final ATTR_TYPE_VIDEO:Ljava/lang/String; = "VIDEO"

.field public static final ATTR_TYPE_VOICE:Ljava/lang/String; = "VOICE"

.field public static final ATTR_TYPE_WORK:Ljava/lang/String; = "WORK"

.field public static final ATTR_TYPE_X_IRMC_N:Ljava/lang/String; = "X-IRMC-N"

.field private static final DEFAULT_EMAIL_TYPE:Ljava/lang/String; = "INTERNET"

.field private static final ENCODE64:[C = null

.field private static final LOG_TAG:Ljava/lang/String; = "vcard.VCardComposerMsg"

.field private static PAD:C = '\u0000'

.field public static final PROPERTY_X_AIM:Ljava/lang/String; = "X-AIM"

.field public static final PROPERTY_X_GOOGLE_TALK:Ljava/lang/String; = "X-GOOGLE-TALK"

.field public static final PROPERTY_X_GOOGLE_TALK_WITH_SPACE:Ljava/lang/String; = "X-GOOGLE TALK"

.field public static final PROPERTY_X_ICQ:Ljava/lang/String; = "X-ICQ"

.field public static final PROPERTY_X_JABBER:Ljava/lang/String; = "X-JABBER"

.field public static final PROPERTY_X_MSN:Ljava/lang/String; = "X-MSN"

.field public static final PROPERTY_X_SKYPE_PSTNNUMBER:Ljava/lang/String; = "X-SKYPE-PSTNNUMBER"

.field public static final PROPERTY_X_SKYPE_USERNAME:Ljava/lang/String; = "X-SKYPE-USERNAME"

.field public static final PROPERTY_X_YAHOO:Ljava/lang/String; = "X-YAHOO"

.field private static final SHIFT_JIS:Ljava/lang/String; = "SHIFT_JIS"

.field private static final VCARD_ATTR_ENCODING_BASE64_V21:Ljava/lang/String; = "ENCODING=BASE64"

.field private static final VCARD_ATTR_ENCODING_BASE64_V30:Ljava/lang/String; = "ENCODING=b"

.field private static final VCARD_ATTR_ENCODING_QP:Ljava/lang/String; = "ENCODING=QUOTED-PRINTABLE"

.field private static final VCARD_ATTR_EQUAL:Ljava/lang/String; = "="

.field private static final VCARD_ATTR_SEPARATOR:Ljava/lang/String; = ";"

.field private static final VCARD_COL_SEPARATOR:Ljava/lang/String; = "\r\n"

.field private static final VCARD_DATA_PUBLIC:Ljava/lang/String; = "PUBLIC"

.field private static final VCARD_DATA_SEPARATOR:Ljava/lang/String; = ":"

.field private static final VCARD_DATA_VCARD:Ljava/lang/String; = "VCARD"

.field private static final VCARD_ITEM_SEPARATOR:Ljava/lang/String; = ";"

.field private static final VCARD_PROPERTY_ADR:Ljava/lang/String; = "ADR"

.field private static final VCARD_PROPERTY_BEGIN:Ljava/lang/String; = "BEGIN"

.field private static final VCARD_PROPERTY_BIRTHDAY:Ljava/lang/String; = "BDAY"

.field private static final VCARD_PROPERTY_CALLTYPE_INCOMING:Ljava/lang/String; = "INCOMING"

.field private static final VCARD_PROPERTY_CALLTYPE_MISSED:Ljava/lang/String; = "MISSED"

.field private static final VCARD_PROPERTY_CALLTYPE_OUTGOING:Ljava/lang/String; = "OUTGOING"

.field private static final VCARD_PROPERTY_EMAIL:Ljava/lang/String; = "EMAIL"

.field private static final VCARD_PROPERTY_END:Ljava/lang/String; = "END"

.field private static final VCARD_PROPERTY_FULL_NAME:Ljava/lang/String; = "FN"

.field private static final VCARD_PROPERTY_NAME:Ljava/lang/String; = "N"

.field private static final VCARD_PROPERTY_NICKNAME:Ljava/lang/String; = "NICKNAME"

.field private static final VCARD_PROPERTY_NOTE:Ljava/lang/String; = "NOTE"

.field private static final VCARD_PROPERTY_ORG:Ljava/lang/String; = "ORG"

.field private static final VCARD_PROPERTY_PHOTO:Ljava/lang/String; = "PHOTO"

.field private static final VCARD_PROPERTY_SORT_STRING:Ljava/lang/String; = "SORT-STRING"

.field private static final VCARD_PROPERTY_SOUND:Ljava/lang/String; = "SOUND"

.field private static final VCARD_PROPERTY_TEL:Ljava/lang/String; = "TEL"

.field private static final VCARD_PROPERTY_TITLE:Ljava/lang/String; = "TITLE"

.field private static final VCARD_PROPERTY_URL:Ljava/lang/String; = "URL"

.field private static final VCARD_PROPERTY_VERSION:Ljava/lang/String; = "VERSION"

.field private static final VCARD_PROPERTY_X_CLASS:Ljava/lang/String; = "X-CLASS"

.field private static final VCARD_PROPERTY_X_DCM_HMN_MODE:Ljava/lang/String; = "X-DCM-HMN-MODE"

.field private static final VCARD_PROPERTY_X_NICKNAME:Ljava/lang/String; = "X-NICKNAME"

.field private static final VCARD_PROPERTY_X_NO:Ljava/lang/String; = "X-NO"

.field private static final VCARD_PROPERTY_X_PHONETIC_FIRST_NAME:Ljava/lang/String; = "X-PHONETIC-FIRST-NAME"

.field private static final VCARD_PROPERTY_X_PHONETIC_LAST_NAME:Ljava/lang/String; = "X-PHONETIC-LAST-NAME"

.field private static final VCARD_PROPERTY_X_PHONETIC_MIDDLE_NAME:Ljava/lang/String; = "X-PHONETIC-MIDDLE-NAME"

.field private static final VCARD_PROPERTY_X_REDUCTION:Ljava/lang/String; = "X-REDUCTION"

.field private static final VCARD_PROPERTY_X_TIMESTAMP:Ljava/lang/String; = "X-IRMC-CALL-DATETIME"

.field private static final VCARD_WS:Ljava/lang/String; = " "

.field public static final VERSION_V21:Ljava/lang/String; = "2.1"

.field public static final VERSION_V30:Ljava/lang/String; = "3.0"


# instance fields
.field private final mCareHandlerErrors:Z

.field private final mCharsetString:Ljava/lang/String;

.field private final mContentResolverEx:Landroid/content/ContentResolver;

.field private final mContextEx:Landroid/content/Context;

.field private mCursorEx:Landroid/database/Cursor;

.field private final mIsDoCoMo:Z

.field private final mIsJapaneseMobilePhone:Z

.field private final mIsV30:Z

.field private mNeedPhotoForVCard:Z

.field private final mOnlyOneNoteFieldIsAvailable:Z

.field private final mUsesAndroidProperty:Z

.field private final mUsesDefactProperty:Z

.field private final mUsesQPToPrimaryProperties:Z

.field private final mUsesQuotedPrintable:Z

.field private final mVCardAttributeCharset:Ljava/lang/String;

.field private final mVCardType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1161
    const/16 v0, 0x3d

    sput-char v0, Lcom/android/mms/ui/VCardComposerMsg;->PAD:C

    .line 1163
    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/mms/ui/VCardComposerMsg;->ENCODE64:[C

    return-void

    :array_0
    .array-data 0x2
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x76t 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x2bt 0x0t
        0x2ft 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;IZZ)V
    .locals 2
    .parameter "context"
    .parameter "vcardType"
    .parameter "careHandlerErrors"
    .parameter "needPhotoInVCard"

    .prologue
    .line 333
    invoke-direct {p0, p1}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;)V

    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mNeedPhotoForVCard:Z

    .line 334
    iput-object p1, p0, Lcom/android/mms/ui/VCardComposerMsg;->mContextEx:Landroid/content/Context;

    .line 335
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mContentResolverEx:Landroid/content/ContentResolver;

    .line 336
    iput p2, p0, Lcom/android/mms/ui/VCardComposerMsg;->mVCardType:I

    .line 337
    iput-boolean p3, p0, Lcom/android/mms/ui/VCardComposerMsg;->mCareHandlerErrors:Z

    .line 338
    iput-boolean p4, p0, Lcom/android/mms/ui/VCardComposerMsg;->mNeedPhotoForVCard:Z

    .line 339
    invoke-static {p2}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsV30:Z

    .line 340
    invoke-static {p2}, Lcom/android/vcard/VCardConfig;->shouldUseQuotedPrintable(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesQuotedPrintable:Z

    .line 341
    invoke-static {p2}, Lcom/android/vcard/VCardConfig;->isDoCoMo(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsDoCoMo:Z

    .line 342
    invoke-static {p2}, Lcom/android/vcard/VCardConfig;->needsToConvertPhoneticString(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsJapaneseMobilePhone:Z

    .line 343
    invoke-static {p2}, Lcom/android/vcard/VCardConfig;->onlyOneNoteFieldIsAvailable(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mOnlyOneNoteFieldIsAvailable:Z

    .line 344
    invoke-static {p2}, Lcom/android/vcard/VCardConfig;->usesAndroidSpecificProperty(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesAndroidProperty:Z

    .line 346
    invoke-static {p2}, Lcom/android/vcard/VCardConfig;->usesDefactProperty(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesDefactProperty:Z

    .line 350
    invoke-static {p2}, Lcom/android/vcard/VCardConfig;->shouldRefrainQPToNameProperties(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesQPToPrimaryProperties:Z

    .line 353
    iget-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsDoCoMo:Z

    if-eqz v0, :cond_0

    .line 354
    const-string v0, "SHIFT_JIS"

    const-string v1, "docomo"

    invoke-static {v0, v1}, Landroid/util/CharsetUtils;->charsetForVendor(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mCharsetString:Ljava/lang/String;

    .line 358
    const-string v0, "CHARSET=SHIFT_JIS"

    iput-object v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mVCardAttributeCharset:Ljava/lang/String;

    .line 367
    :goto_0
    return-void

    .line 364
    :cond_0
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mCharsetString:Ljava/lang/String;

    .line 365
    const-string v0, "CHARSET=UTF-8"

    iput-object v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mVCardAttributeCharset:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;IZZZ)V
    .locals 2
    .parameter "context"
    .parameter "vcardType"
    .parameter "careHandlerErrors"
    .parameter "isCallLogComposer"
    .parameter "needPhotoInVCard"

    .prologue
    const/4 v1, 0x1

    .line 373
    invoke-direct {p0, p1, p2, p3}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;IZ)V

    .line 277
    iput-boolean v1, p0, Lcom/android/mms/ui/VCardComposerMsg;->mNeedPhotoForVCard:Z

    .line 374
    iput-object p1, p0, Lcom/android/mms/ui/VCardComposerMsg;->mContextEx:Landroid/content/Context;

    .line 375
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mContentResolverEx:Landroid/content/ContentResolver;

    .line 376
    iput p2, p0, Lcom/android/mms/ui/VCardComposerMsg;->mVCardType:I

    .line 377
    iput-boolean p3, p0, Lcom/android/mms/ui/VCardComposerMsg;->mCareHandlerErrors:Z

    .line 380
    iput-boolean v1, p0, Lcom/android/mms/ui/VCardComposerMsg;->mNeedPhotoForVCard:Z

    .line 381
    invoke-static {p2}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsV30:Z

    .line 382
    invoke-static {p2}, Lcom/android/vcard/VCardConfig;->shouldUseQuotedPrintable(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesQuotedPrintable:Z

    .line 383
    invoke-static {p2}, Lcom/android/vcard/VCardConfig;->isDoCoMo(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsDoCoMo:Z

    .line 384
    invoke-static {p2}, Lcom/android/vcard/VCardConfig;->needsToConvertPhoneticString(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsJapaneseMobilePhone:Z

    .line 385
    invoke-static {p2}, Lcom/android/vcard/VCardConfig;->onlyOneNoteFieldIsAvailable(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mOnlyOneNoteFieldIsAvailable:Z

    .line 386
    invoke-static {p2}, Lcom/android/vcard/VCardConfig;->usesAndroidSpecificProperty(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesAndroidProperty:Z

    .line 387
    invoke-static {p2}, Lcom/android/vcard/VCardConfig;->usesDefactProperty(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesDefactProperty:Z

    .line 390
    invoke-static {p2}, Lcom/android/vcard/VCardConfig;->shouldRefrainQPToNameProperties(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesQPToPrimaryProperties:Z

    .line 392
    iget-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsDoCoMo:Z

    if-eqz v0, :cond_0

    .line 394
    const-string v0, "SHIFT_JIS"

    const-string v1, "docomo"

    invoke-static {v0, v1}, Landroid/util/CharsetUtils;->charsetForVendor(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mCharsetString:Ljava/lang/String;

    .line 399
    const-string v0, "CHARSET=SHIFT_JIS"

    iput-object v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mVCardAttributeCharset:Ljava/lang/String;

    .line 407
    :goto_0
    return-void

    .line 404
    :cond_0
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mCharsetString:Ljava/lang/String;

    .line 405
    const-string v0, "CHARSET=UTF-8"

    iput-object v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mVCardAttributeCharset:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .parameter "context"
    .parameter "vcardTypeStr"
    .parameter "careHandlerErrors"

    .prologue
    .line 327
    invoke-static {p2}, Lcom/android/vcard/VCardConfig;->getVCardTypeFromString(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, p3, v1}, Lcom/android/mms/ui/VCardComposerMsg;-><init>(Landroid/content/Context;IZZ)V

    .line 329
    return-void
.end method

.method private appendBirthday(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 6
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p2, contentValuesListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    const/4 v5, 0x0

    .line 1105
    const-string v3, "vnd.android.cursor.item/contact_event"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1106
    .local v1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1107
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    const-string v4, "data2"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 1108
    .local v2, eventType:Ljava/lang/Integer;
    if-eqz v2, :cond_0

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1124
    .end local v2           #eventType:Ljava/lang/Integer;
    :cond_0
    :goto_0
    return-void

    .line 1114
    .restart local v2       #eventType:Ljava/lang/Integer;
    :cond_1
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    const-string v4, "data1"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1116
    .local v0, birthday:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1117
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1120
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1121
    const-string v3, "BDAY"

    invoke-direct {p0, p1, v3, v0}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private appendEmails(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 12
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 960
    .local p2, contentValuesListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    const-string v9, "vnd.android.cursor.item/email_v2"

    invoke-interface {p2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 962
    .local v2, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v4, 0x0

    .line 964
    .local v4, emailAddressExists:Z
    if-eqz v2, :cond_3

    .line 965
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 966
    .local v0, addressSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 967
    .local v1, contentValues:Landroid/content/ContentValues;
    const-string v9, "data2"

    invoke-virtual {v1, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 968
    .local v8, typeAsObject:Ljava/lang/Integer;
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 969
    .local v7, type:I
    :goto_1
    const-string v9, "data3"

    invoke-virtual {v1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 970
    .local v6, label:Ljava/lang/String;
    const-string v9, "data1"

    invoke-virtual {v1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 972
    .local v3, emailAddress:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 973
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 975
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 978
    const/4 v4, 0x1

    .line 979
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 980
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 981
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {p0, p1, v9, v6, v3}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardEmailLine(Ljava/lang/StringBuilder;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 968
    .end local v3           #emailAddress:Ljava/lang/String;
    .end local v6           #label:Ljava/lang/String;
    .end local v7           #type:I
    :cond_2
    const/4 v7, 0x3

    goto :goto_1

    .line 985
    .end local v0           #addressSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1           #contentValues:Landroid/content/ContentValues;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v8           #typeAsObject:Ljava/lang/Integer;
    :cond_3
    if-nez v4, :cond_4

    iget-boolean v9, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsDoCoMo:Z

    if-eqz v9, :cond_4

    .line 986
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, ""

    const-string v11, ""

    invoke-direct {p0, p1, v9, v10, v11}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardEmailLine(Ljava/lang/StringBuilder;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    :cond_4
    return-void
.end method

.method private appendIms(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 7
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1062
    .local p2, contentValuesListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    const-string v5, "vnd.android.cursor.item/im"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1064
    .local v1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v1, :cond_2

    .line 1065
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1066
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v5, "data5"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 1067
    .local v4, protocol:Ljava/lang/Integer;
    const-string v5, "data1"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1068
    .local v2, data:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1069
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1071
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1075
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_0

    .line 1076
    iget v5, p0, Lcom/android/mms/ui/VCardComposerMsg;->mVCardType:I

    invoke-static {v5}, Lcom/android/vcard/VCardConfig;->usesAndroidSpecificProperty(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1077
    const-string v5, "X-GOOGLE-TALK"

    invoke-direct {p0, p1, v5, v2}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1083
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v2           #data:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #protocol:Ljava/lang/Integer;
    :cond_2
    return-void
.end method

.method private appendNickNames(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 10
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p2, contentValuesListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 846
    const-string v9, "vnd.android.cursor.item/nickname"

    invoke-interface {p2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 848
    .local v1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v1, :cond_6

    .line 850
    iget-boolean v9, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsV30:Z

    if-eqz v9, :cond_3

    .line 851
    const-string v5, "NICKNAME"

    .line 859
    .local v5, propertyNickname:Ljava/lang/String;
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 860
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v9, "data1"

    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 862
    .local v4, nickname:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 867
    iget-boolean v9, p0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesQuotedPrintable:Z

    if-eqz v9, :cond_4

    new-array v9, v7, [Ljava/lang/String;

    aput-object v4, v9, v8

    invoke-static {v9}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    move v6, v7

    .line 870
    .local v6, reallyUseQuotedPrintable:Z
    :goto_2
    if-eqz v6, :cond_5

    .line 871
    invoke-direct {p0, v4}, Lcom/android/mms/ui/VCardComposerMsg;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 876
    .local v2, encodedNickname:Ljava/lang/String;
    :goto_3
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    invoke-direct {p0, v5}, Lcom/android/mms/ui/VCardComposerMsg;->shouldAppendCharsetAttribute(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 879
    const-string v9, ";"

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    iget-object v9, p0, Lcom/android/mms/ui/VCardComposerMsg;->mVCardAttributeCharset:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    :cond_1
    if-eqz v6, :cond_2

    .line 884
    const-string v9, ";"

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    const-string v9, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    :cond_2
    const-string v9, ":"

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    const-string v9, "\r\n"

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 852
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v2           #encodedNickname:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #nickname:Ljava/lang/String;
    .end local v5           #propertyNickname:Ljava/lang/String;
    .end local v6           #reallyUseQuotedPrintable:Z
    :cond_3
    iget-boolean v9, p0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesAndroidProperty:Z

    if-eqz v9, :cond_6

    .line 853
    const-string v5, "X-NICKNAME"

    .restart local v5       #propertyNickname:Ljava/lang/String;
    goto :goto_0

    .restart local v0       #contentValues:Landroid/content/ContentValues;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #nickname:Ljava/lang/String;
    :cond_4
    move v6, v8

    .line 867
    goto :goto_2

    .line 873
    .restart local v6       #reallyUseQuotedPrintable:Z
    :cond_5
    invoke-direct {p0, v4}, Lcom/android/mms/ui/VCardComposerMsg;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #encodedNickname:Ljava/lang/String;
    goto :goto_3

    .line 893
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v2           #encodedNickname:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #nickname:Ljava/lang/String;
    .end local v5           #propertyNickname:Ljava/lang/String;
    .end local v6           #reallyUseQuotedPrintable:Z
    :cond_6
    return-void
.end method

.method private appendNotes(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 12
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1250
    .local p2, contentValuesListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    const-string v0, "vnd.android.cursor.item/note"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 1252
    .local v7, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v7, :cond_4

    .line 1253
    iget-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mOnlyOneNoteFieldIsAvailable:Z

    if-eqz v0, :cond_7

    .line 1254
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1255
    .local v11, noteBuilder:Ljava/lang/StringBuilder;
    const/4 v8, 0x1

    .line 1256
    .local v8, first:Z
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    .line 1257
    .local v6, contentValues:Landroid/content/ContentValues;
    const-string v0, "data1"

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1258
    .local v10, note:Ljava/lang/String;
    if-nez v10, :cond_1

    .line 1259
    const-string v10, ""

    .line 1261
    :cond_1
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1262
    if-eqz v8, :cond_2

    .line 1263
    const/4 v8, 0x0

    .line 1267
    :goto_1
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1265
    :cond_2
    const/16 v0, 0xa

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1270
    .end local v6           #contentValues:Landroid/content/ContentValues;
    .end local v10           #note:Ljava/lang/String;
    :cond_3
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1274
    .local v3, noteStr:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v4, 0x1

    .line 1276
    .local v4, shouldAppendCharsetInfo:Z
    :goto_2
    iget-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesQuotedPrintable:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v5, 0x1

    .line 1279
    .local v5, reallyUseQuotedPrintable:Z
    :goto_3
    const-string v2, "NOTE"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1295
    .end local v3           #noteStr:Ljava/lang/String;
    .end local v4           #shouldAppendCharsetInfo:Z
    .end local v5           #reallyUseQuotedPrintable:Z
    .end local v8           #first:Z
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v11           #noteBuilder:Ljava/lang/StringBuilder;
    :cond_4
    return-void

    .line 1274
    .restart local v3       #noteStr:Ljava/lang/String;
    .restart local v8       #first:Z
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v11       #noteBuilder:Ljava/lang/StringBuilder;
    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    .line 1276
    .restart local v4       #shouldAppendCharsetInfo:Z
    :cond_6
    const/4 v5, 0x0

    goto :goto_3

    .line 1282
    .end local v3           #noteStr:Ljava/lang/String;
    .end local v4           #shouldAppendCharsetInfo:Z
    .end local v8           #first:Z
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v11           #noteBuilder:Ljava/lang/StringBuilder;
    :cond_7
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_8
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    .line 1283
    .restart local v6       #contentValues:Landroid/content/ContentValues;
    const-string v0, "data1"

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1284
    .restart local v3       #noteStr:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1285
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v4, 0x1

    .line 1286
    .restart local v4       #shouldAppendCharsetInfo:Z
    :goto_5
    iget-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesQuotedPrintable:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v5, 0x1

    .line 1289
    .restart local v5       #reallyUseQuotedPrintable:Z
    :goto_6
    const-string v2, "NOTE"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_4

    .line 1285
    .end local v4           #shouldAppendCharsetInfo:Z
    .end local v5           #reallyUseQuotedPrintable:Z
    :cond_9
    const/4 v4, 0x0

    goto :goto_5

    .line 1286
    .restart local v4       #shouldAppendCharsetInfo:Z
    :cond_a
    const/4 v5, 0x0

    goto :goto_6
.end method

.method private appendOrganizations(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 13
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1129
    .local p2, contentValuesListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    const-string v0, "vnd.android.cursor.item/organization"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 1131
    .local v11, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v11, :cond_8

    .line 1132
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ContentValues;

    .line 1133
    .local v10, contentValues:Landroid/content/ContentValues;
    const-string v0, "data1"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1135
    .local v3, company:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 1136
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1138
    :cond_1
    const-string v0, "data4"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1140
    .local v7, title:Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 1141
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 1144
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1145
    const-string v2, "ORG"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v4, 0x1

    :goto_1
    iget-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesQuotedPrintable:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v5, 0x1

    :goto_2
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1150
    :cond_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1151
    const-string v6, "TITLE"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v7, v0, v1

    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v8, 0x1

    :goto_3
    iget-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesQuotedPrintable:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v7, v0, v1

    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v9, 0x1

    :goto_4
    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 1145
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    .line 1151
    :cond_6
    const/4 v8, 0x0

    goto :goto_3

    :cond_7
    const/4 v9, 0x0

    goto :goto_4

    .line 1158
    .end local v3           #company:Ljava/lang/String;
    .end local v7           #title:Ljava/lang/String;
    .end local v10           #contentValues:Landroid/content/ContentValues;
    .end local v12           #i$:Ljava/util/Iterator;
    :cond_8
    return-void
.end method

.method private appendPhones(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 12
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p2, contentValuesListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    const/4 v9, 0x1

    .line 899
    const-string v10, "vnd.android.cursor.item/phone_v2"

    invoke-interface {p2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 901
    .local v1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v4, 0x0

    .line 903
    .local v4, phoneLineExists:Z
    if-eqz v1, :cond_3

    .line 904
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 905
    .local v6, phoneSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 906
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v10, "data2"

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 907
    .local v8, typeAsObject:Ljava/lang/Integer;
    const-string v10, "data3"

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 909
    .local v3, label:Ljava/lang/String;
    const-string v10, "data1"

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 910
    .local v5, phoneNumber:Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 911
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 914
    :cond_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 918
    const/4 v4, 0x1

    .line 920
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 925
    .local v7, type:I
    :goto_1
    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 926
    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 927
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {p0, p1, v10, v3, v5}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardTelephoneLine(Ljava/lang/StringBuilder;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v7           #type:I
    :cond_2
    move v7, v9

    .line 920
    goto :goto_1

    .line 932
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #label:Ljava/lang/String;
    .end local v5           #phoneNumber:Ljava/lang/String;
    .end local v6           #phoneSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8           #typeAsObject:Ljava/lang/Integer;
    :cond_3
    if-nez v4, :cond_4

    iget-boolean v10, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsDoCoMo:Z

    if-eqz v10, :cond_4

    .line 933
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, ""

    const-string v11, ""

    invoke-direct {p0, p1, v9, v10, v11}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardTelephoneLine(Ljava/lang/StringBuilder;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    :cond_4
    return-void
.end method

.method private appendPhotos(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 13
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p2, contentValuesListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    const/16 v12, 0x47

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1212
    const-string v6, "vnd.android.cursor.item/photo"

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1214
    .local v1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v1, :cond_4

    .line 1215
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1216
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v6, "data15"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 1217
    .local v2, data:[B
    if-eqz v2, :cond_0

    .line 1225
    array-length v6, v2

    if-lt v6, v11, :cond_1

    aget-byte v6, v2, v8

    if-ne v6, v12, :cond_1

    aget-byte v6, v2, v9

    const/16 v7, 0x49

    if-ne v6, v7, :cond_1

    aget-byte v6, v2, v10

    const/16 v7, 0x46

    if-ne v6, v7, :cond_1

    .line 1226
    const-string v5, "GIF"

    .line 1239
    .local v5, photoType:Ljava/lang/String;
    :goto_1
    invoke-static {v2}, Lcom/android/mms/ui/VCardComposerMsg;->encodeBase64([B)Ljava/lang/String;

    move-result-object v4

    .line 1240
    .local v4, photoString:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 1241
    invoke-direct {p0, p1, v4, v5}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardPhotoLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1227
    .end local v4           #photoString:Ljava/lang/String;
    .end local v5           #photoType:Ljava/lang/String;
    :cond_1
    array-length v6, v2

    const/4 v7, 0x4

    if-lt v6, v7, :cond_2

    aget-byte v6, v2, v8

    const/16 v7, -0x77

    if-ne v6, v7, :cond_2

    aget-byte v6, v2, v9

    const/16 v7, 0x50

    if-ne v6, v7, :cond_2

    aget-byte v6, v2, v10

    const/16 v7, 0x4e

    if-ne v6, v7, :cond_2

    aget-byte v6, v2, v11

    if-ne v6, v12, :cond_2

    .line 1232
    const-string v5, "PNG"

    .restart local v5       #photoType:Ljava/lang/String;
    goto :goto_1

    .line 1233
    .end local v5           #photoType:Ljava/lang/String;
    :cond_2
    array-length v6, v2

    if-lt v6, v10, :cond_3

    aget-byte v6, v2, v8

    const/4 v7, -0x1

    if-ne v6, v7, :cond_3

    aget-byte v6, v2, v9

    const/16 v7, -0x28

    if-ne v6, v7, :cond_3

    .line 1234
    const-string v5, "JPEG"

    .restart local v5       #photoType:Ljava/lang/String;
    goto :goto_1

    .line 1236
    .end local v5           #photoType:Ljava/lang/String;
    :cond_3
    const-string v6, "vcard.VCardComposerMsg"

    const-string v7, "Unknown photo type. Ignore."

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1245
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v2           #data:[B
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method private appendPostals(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 2
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 992
    .local p2, contentValuesListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 994
    .local v0, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v0, :cond_2

    .line 995
    iget-boolean v1, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsDoCoMo:Z

    if-eqz v1, :cond_1

    .line 996
    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/VCardComposerMsg;->appendPostalsForDoCoMo(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 1007
    :cond_0
    :goto_0
    return-void

    .line 998
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/VCardComposerMsg;->appendPostalsForGeneric(Ljava/lang/StringBuilder;Ljava/util/List;)V

    goto :goto_0

    .line 1000
    :cond_2
    iget-boolean v1, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsDoCoMo:Z

    if-eqz v1, :cond_0

    .line 1001
    const-string v1, "ADR"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1002
    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1003
    const-string v1, "HOME"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1004
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    const-string v1, "\r\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private appendPostalsForDoCoMo(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 2
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1012
    .local p2, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/mms/ui/VCardComposerMsg;->appendPostalsForDoCoMoInternal(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1028
    :cond_0
    :goto_0
    return-void

    .line 1016
    :cond_1
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/mms/ui/VCardComposerMsg;->appendPostalsForDoCoMoInternal(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/Integer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1020
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/mms/ui/VCardComposerMsg;->appendPostalsForDoCoMoInternal(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/Integer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1024
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/mms/ui/VCardComposerMsg;->appendPostalsForDoCoMoInternal(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/Integer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1027
    const-string v0, "vcard.VCardComposerMsg"

    const-string v1, "Should not come here. Must have at least one postal data."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private appendPostalsForDoCoMoInternal(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/Integer;)Z
    .locals 5
    .parameter "builder"
    .parameter
    .parameter "preferedType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/lang/Integer;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1033
    .local p2, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1034
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v4, "data2"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 1036
    .local v3, type:Ljava/lang/Integer;
    const-string v4, "data3"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1038
    .local v2, label:Ljava/lang/String;
    if-ne v3, p3, :cond_0

    .line 1039
    invoke-direct {p0, p1, v3, v2, v0}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardPostalLine(Ljava/lang/StringBuilder;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1040
    const/4 v4, 0x1

    .line 1043
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v2           #label:Ljava/lang/String;
    .end local v3           #type:Ljava/lang/Integer;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private appendPostalsForGeneric(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 5
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1049
    .local p2, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1050
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v4, "data2"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 1051
    .local v3, type:Ljava/lang/Integer;
    const-string v4, "data3"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1053
    .local v2, label:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1054
    invoke-direct {p0, p1, v3, v2, v0}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardPostalLine(Ljava/lang/StringBuilder;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/ContentValues;)V

    goto :goto_0

    .line 1057
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v2           #label:Ljava/lang/String;
    .end local v3           #type:Ljava/lang/Integer;
    :cond_1
    return-void
.end method

.method private appendStructuredNames(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 3
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 474
    .local p2, contentValuesListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    const-string v1, "vnd.android.cursor.item/name"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 476
    .local v0, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 477
    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/VCardComposerMsg;->appendStructuredNamesInternal(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 478
    :cond_1
    iget-boolean v1, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsDoCoMo:Z

    if-eqz v1, :cond_2

    .line 479
    const-string v1, "N"

    const-string v2, ""

    invoke-direct {p0, p1, v1, v2}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 480
    :cond_2
    iget-boolean v1, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsV30:Z

    if-eqz v1, :cond_0

    .line 482
    const-string v1, "N"

    const-string v2, ""

    invoke-direct {p0, p1, v1, v2}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const-string v1, "FN"

    const-string v2, ""

    invoke-direct {p0, p1, v1, v2}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private appendStructuredNamesInternal(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 37
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 512
    .local p2, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    const/16 v28, 0x0

    .line 513
    .local v28, primaryContentValues:Landroid/content/ContentValues;
    const/16 v34, 0x0

    .line 514
    .local v34, subprimaryContentValues:Landroid/content/ContentValues;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ContentValues;

    .line 515
    .local v9, contentValues:Landroid/content/ContentValues;
    if-eqz v9, :cond_0

    .line 518
    const-string v3, "is_super_primary"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    .line 520
    .local v22, isSuperPrimary:Ljava/lang/Integer;
    if-eqz v22, :cond_17

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_17

    .line 522
    move-object/from16 v28, v9

    .line 537
    .end local v9           #contentValues:Landroid/content/ContentValues;
    .end local v22           #isSuperPrimary:Ljava/lang/Integer;
    :cond_1
    if-nez v28, :cond_2

    .line 538
    if-eqz v34, :cond_19

    .line 541
    move-object/from16 v28, v34

    .line 547
    :cond_2
    :goto_1
    const-string v3, "data3"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 548
    .local v17, familyName:Ljava/lang/String;
    const-string v3, "data5"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 549
    .local v23, middleName:Ljava/lang/String;
    const-string v3, "data2"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 550
    .local v19, givenName:Ljava/lang/String;
    const-string v3, "data4"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 551
    .local v27, prefix:Ljava/lang/String;
    const-string v3, "data6"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 552
    .local v35, suffix:Ljava/lang/String;
    const-string v3, "data1"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 554
    .local v10, displayName:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 560
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesQPToPrimaryProperties:Z

    if-eqz v3, :cond_1a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/16 v36, 0x0

    aput-object v17, v3, v36

    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/16 v36, 0x0

    aput-object v19, v3, v36

    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/16 v36, 0x0

    aput-object v23, v3, v36

    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/16 v36, 0x0

    aput-object v27, v3, v36

    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/16 v36, 0x0

    aput-object v35, v3, v36

    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1a

    :cond_4
    const/16 v32, 0x1

    .line 568
    .local v32, reallyUseQuotedPrintableToName:Z
    :goto_2
    if-eqz v32, :cond_1b

    .line 569
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 570
    .local v4, encodedFamily:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 571
    .local v6, encodedGiven:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 572
    .local v5, encodedMiddle:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 573
    .local v7, encodedPrefix:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 583
    .local v8, encodedSuffix:Ljava/lang/String;
    :goto_3
    const-string v3, "N"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/16 v36, 0x0

    aput-object v17, v3, v36

    const/16 v36, 0x1

    aput-object v19, v3, v36

    const/16 v36, 0x2

    aput-object v23, v3, v36

    const/16 v36, 0x3

    aput-object v27, v3, v36

    const/16 v36, 0x4

    aput-object v35, v3, v36

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/mms/ui/VCardComposerMsg;->shouldAppendCharsetAttribute(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 586
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mVCardAttributeCharset:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    :cond_5
    if-eqz v32, :cond_6

    .line 591
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    const-string v3, "ENCODING=QUOTED-PRINTABLE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    :cond_6
    const-string v3, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    const-string v3, "\r\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mVCardType:I

    invoke-static {v3}, Lcom/android/vcard/VCardConfig;->getNameOrderType(I)I

    move-result v3

    invoke-static/range {v3 .. v8}, Lcom/android/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 610
    .local v18, fullname:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesQPToPrimaryProperties:Z

    if-eqz v3, :cond_1c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/16 v36, 0x0

    aput-object v18, v3, v36

    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1c

    const/16 v31, 0x1

    .line 613
    .local v31, reallyUseQuotedPrintableToFullname:Z
    :goto_4
    if-eqz v31, :cond_1d

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 616
    .local v12, encodedFullname:Ljava/lang/String;
    :goto_5
    const-string v3, "FN"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/mms/ui/VCardComposerMsg;->shouldAppendCharsetAttribute(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 619
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mVCardAttributeCharset:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    :cond_7
    if-eqz v31, :cond_8

    .line 624
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    const-string v3, "ENCODING=QUOTED-PRINTABLE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    :cond_8
    const-string v3, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    const-string v3, "\r\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    .end local v4           #encodedFamily:Ljava/lang/String;
    .end local v5           #encodedMiddle:Ljava/lang/String;
    .end local v6           #encodedGiven:Ljava/lang/String;
    .end local v7           #encodedPrefix:Ljava/lang/String;
    .end local v8           #encodedSuffix:Ljava/lang/String;
    .end local v12           #encodedFullname:Ljava/lang/String;
    .end local v18           #fullname:Ljava/lang/String;
    .end local v31           #reallyUseQuotedPrintableToFullname:Z
    .end local v32           #reallyUseQuotedPrintableToName:Z
    :cond_9
    :goto_6
    const-string v3, "data9"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 667
    .local v24, phoneticFamilyName:Ljava/lang/String;
    const-string v3, "data8"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 669
    .local v26, phoneticMiddleName:Ljava/lang/String;
    const-string v3, "data7"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 671
    .local v25, phoneticGivenName:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 675
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mIsJapaneseMobilePhone:Z

    if-eqz v3, :cond_b

    .line 676
    invoke-static/range {v24 .. v24}, Lcom/android/vcard/VCardUtils;->toHalfWidthString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 677
    invoke-static/range {v26 .. v26}, Lcom/android/vcard/VCardUtils;->toHalfWidthString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 678
    invoke-static/range {v25 .. v25}, Lcom/android/vcard/VCardUtils;->toHalfWidthString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 681
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mIsV30:Z

    if-eqz v3, :cond_25

    .line 682
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mVCardType:I

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-static {v3, v0, v1, v2}, Lcom/android/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 683
    .local v33, sortString:Ljava/lang/String;
    const-string v3, "SORT-STRING"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 688
    .local v16, encodedSortString:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->shouldAppendCharsetAttribute(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 689
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mVCardAttributeCharset:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    :cond_c
    const-string v3, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    const-string v3, "\r\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    .end local v16           #encodedSortString:Ljava/lang/String;
    .end local v33           #sortString:Ljava/lang/String;
    :cond_d
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesDefactProperty:Z

    if-eqz v3, :cond_16

    .line 754
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 755
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesQPToPrimaryProperties:Z

    if-eqz v3, :cond_2b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/16 v36, 0x0

    aput-object v25, v3, v36

    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2b

    const/16 v29, 0x1

    .line 760
    .local v29, reallyUseQuotedPrintable:Z
    :goto_8
    if-eqz v29, :cond_2c

    .line 761
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 766
    .local v14, encodedPhoneticGivenName:Ljava/lang/String;
    :goto_9
    const-string v3, "X-PHONETIC-FIRST-NAME"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/mms/ui/VCardComposerMsg;->shouldAppendCharsetAttribute(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 769
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mVCardAttributeCharset:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    :cond_e
    if-eqz v29, :cond_f

    .line 774
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    const-string v3, "ENCODING=QUOTED-PRINTABLE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    :cond_f
    const-string v3, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    const-string v3, "\r\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    .end local v14           #encodedPhoneticGivenName:Ljava/lang/String;
    .end local v29           #reallyUseQuotedPrintable:Z
    :cond_10
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 784
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesQPToPrimaryProperties:Z

    if-eqz v3, :cond_2d

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/16 v36, 0x0

    aput-object v26, v3, v36

    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2d

    const/16 v29, 0x1

    .line 789
    .restart local v29       #reallyUseQuotedPrintable:Z
    :goto_a
    if-eqz v29, :cond_2e

    .line 790
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 795
    .local v15, encodedPhoneticMiddleName:Ljava/lang/String;
    :goto_b
    const-string v3, "X-PHONETIC-MIDDLE-NAME"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 797
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/mms/ui/VCardComposerMsg;->shouldAppendCharsetAttribute(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 798
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mVCardAttributeCharset:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    :cond_11
    if-eqz v29, :cond_12

    .line 803
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    const-string v3, "ENCODING=QUOTED-PRINTABLE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    :cond_12
    const-string v3, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 808
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 809
    const-string v3, "\r\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    .end local v15           #encodedPhoneticMiddleName:Ljava/lang/String;
    .end local v29           #reallyUseQuotedPrintable:Z
    :cond_13
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 813
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesQPToPrimaryProperties:Z

    if-eqz v3, :cond_2f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/16 v36, 0x0

    aput-object v24, v3, v36

    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2f

    const/16 v29, 0x1

    .line 818
    .restart local v29       #reallyUseQuotedPrintable:Z
    :goto_c
    if-eqz v29, :cond_30

    .line 819
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 824
    .local v13, encodedPhoneticFamilyName:Ljava/lang/String;
    :goto_d
    const-string v3, "X-PHONETIC-LAST-NAME"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/mms/ui/VCardComposerMsg;->shouldAppendCharsetAttribute(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 827
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mVCardAttributeCharset:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    :cond_14
    if-eqz v29, :cond_15

    .line 832
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    const-string v3, "ENCODING=QUOTED-PRINTABLE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    :cond_15
    const-string v3, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    const-string v3, "\r\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    .end local v13           #encodedPhoneticFamilyName:Ljava/lang/String;
    .end local v29           #reallyUseQuotedPrintable:Z
    :cond_16
    return-void

    .line 524
    .end local v10           #displayName:Ljava/lang/String;
    .end local v17           #familyName:Ljava/lang/String;
    .end local v19           #givenName:Ljava/lang/String;
    .end local v23           #middleName:Ljava/lang/String;
    .end local v24           #phoneticFamilyName:Ljava/lang/String;
    .end local v25           #phoneticGivenName:Ljava/lang/String;
    .end local v26           #phoneticMiddleName:Ljava/lang/String;
    .end local v27           #prefix:Ljava/lang/String;
    .end local v35           #suffix:Ljava/lang/String;
    .restart local v9       #contentValues:Landroid/content/ContentValues;
    .restart local v22       #isSuperPrimary:Ljava/lang/Integer;
    :cond_17
    if-nez v28, :cond_0

    .line 527
    const-string v3, "is_primary"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    .line 529
    .local v21, isPrimary:Ljava/lang/Integer;
    if-eqz v21, :cond_18

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_18

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/mms/ui/VCardComposerMsg;->containsNonEmptyName(Landroid/content/ContentValues;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 530
    move-object/from16 v28, v9

    goto/16 :goto_0

    .line 532
    :cond_18
    if-nez v34, :cond_0

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/mms/ui/VCardComposerMsg;->containsNonEmptyName(Landroid/content/ContentValues;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 533
    move-object/from16 v34, v9

    goto/16 :goto_0

    .line 543
    .end local v9           #contentValues:Landroid/content/ContentValues;
    .end local v21           #isPrimary:Ljava/lang/Integer;
    .end local v22           #isSuperPrimary:Ljava/lang/Integer;
    :cond_19
    const-string v3, "vcard.VCardComposerMsg"

    const-string v36, "All ContentValues given from database is empty."

    move-object/from16 v0, v36

    invoke-static {v3, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    new-instance v28, Landroid/content/ContentValues;

    .end local v28           #primaryContentValues:Landroid/content/ContentValues;
    invoke-direct/range {v28 .. v28}, Landroid/content/ContentValues;-><init>()V

    .restart local v28       #primaryContentValues:Landroid/content/ContentValues;
    goto/16 :goto_1

    .line 560
    .restart local v10       #displayName:Ljava/lang/String;
    .restart local v17       #familyName:Ljava/lang/String;
    .restart local v19       #givenName:Ljava/lang/String;
    .restart local v23       #middleName:Ljava/lang/String;
    .restart local v27       #prefix:Ljava/lang/String;
    .restart local v35       #suffix:Ljava/lang/String;
    :cond_1a
    const/16 v32, 0x0

    goto/16 :goto_2

    .line 575
    .restart local v32       #reallyUseQuotedPrintableToName:Z
    :cond_1b
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 576
    .restart local v4       #encodedFamily:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 577
    .restart local v6       #encodedGiven:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 578
    .restart local v5       #encodedMiddle:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 579
    .restart local v7       #encodedPrefix:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .restart local v8       #encodedSuffix:Ljava/lang/String;
    goto/16 :goto_3

    .line 610
    .restart local v18       #fullname:Ljava/lang/String;
    :cond_1c
    const/16 v31, 0x0

    goto/16 :goto_4

    .line 613
    .restart local v31       #reallyUseQuotedPrintableToFullname:Z
    :cond_1d
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_5

    .line 631
    .end local v4           #encodedFamily:Ljava/lang/String;
    .end local v5           #encodedMiddle:Ljava/lang/String;
    .end local v6           #encodedGiven:Ljava/lang/String;
    .end local v7           #encodedPrefix:Ljava/lang/String;
    .end local v8           #encodedSuffix:Ljava/lang/String;
    .end local v18           #fullname:Ljava/lang/String;
    .end local v31           #reallyUseQuotedPrintableToFullname:Z
    .end local v32           #reallyUseQuotedPrintableToName:Z
    :cond_1e
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 632
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesQPToPrimaryProperties:Z

    if-eqz v3, :cond_21

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/16 v36, 0x0

    aput-object v10, v3, v36

    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_21

    const/16 v30, 0x1

    .line 636
    .local v30, reallyUseQuotedPrintableToDisplayName:Z
    :goto_e
    if-eqz v30, :cond_22

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/mms/ui/VCardComposerMsg;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 639
    .local v11, encodedDisplayName:Ljava/lang/String;
    :goto_f
    const-string v3, "N"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/mms/ui/VCardComposerMsg;->shouldAppendCharsetAttribute(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 642
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mVCardAttributeCharset:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    :cond_1f
    if-eqz v30, :cond_20

    .line 647
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    const-string v3, "ENCODING=QUOTED-PRINTABLE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    :cond_20
    const-string v3, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    const-string v3, "\r\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 632
    .end local v11           #encodedDisplayName:Ljava/lang/String;
    .end local v30           #reallyUseQuotedPrintableToDisplayName:Z
    :cond_21
    const/16 v30, 0x0

    goto :goto_e

    .line 636
    .restart local v30       #reallyUseQuotedPrintableToDisplayName:Z
    :cond_22
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/mms/ui/VCardComposerMsg;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_f

    .line 658
    .end local v30           #reallyUseQuotedPrintableToDisplayName:Z
    :cond_23
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mIsDoCoMo:Z

    if-eqz v3, :cond_24

    .line 659
    const-string v3, "N"

    const-string v36, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v3, v2}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 660
    :cond_24
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mIsV30:Z

    if-eqz v3, :cond_9

    .line 661
    const-string v3, "N"

    const-string v36, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v3, v2}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    const-string v3, "FN"

    const-string v36, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v3, v2}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 702
    .restart local v24       #phoneticFamilyName:Ljava/lang/String;
    .restart local v25       #phoneticGivenName:Ljava/lang/String;
    .restart local v26       #phoneticMiddleName:Ljava/lang/String;
    :cond_25
    const-string v3, "SOUND"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    const-string v3, "X-IRMC-N"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesQPToPrimaryProperties:Z

    if-eqz v3, :cond_28

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/16 v36, 0x0

    aput-object v24, v3, v36

    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/16 v36, 0x0

    aput-object v26, v3, v36

    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/16 v36, 0x0

    aput-object v25, v3, v36

    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_28

    :cond_26
    const/16 v29, 0x1

    .line 715
    .restart local v29       #reallyUseQuotedPrintable:Z
    :goto_10
    if-eqz v29, :cond_29

    .line 716
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 717
    .restart local v13       #encodedPhoneticFamilyName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 718
    .restart local v15       #encodedPhoneticMiddleName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 725
    .restart local v14       #encodedPhoneticGivenName:Ljava/lang/String;
    :goto_11
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/16 v36, 0x0

    aput-object v13, v3, v36

    const/16 v36, 0x1

    aput-object v15, v3, v36

    const/16 v36, 0x2

    aput-object v14, v3, v36

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/mms/ui/VCardComposerMsg;->shouldAppendCharsetAttribute(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 728
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mVCardAttributeCharset:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    :cond_27
    const-string v3, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    const-string v3, "\r\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 705
    .end local v13           #encodedPhoneticFamilyName:Ljava/lang/String;
    .end local v14           #encodedPhoneticGivenName:Ljava/lang/String;
    .end local v15           #encodedPhoneticMiddleName:Ljava/lang/String;
    .end local v29           #reallyUseQuotedPrintable:Z
    :cond_28
    const/16 v29, 0x0

    goto/16 :goto_10

    .line 720
    .restart local v29       #reallyUseQuotedPrintable:Z
    :cond_29
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 721
    .restart local v13       #encodedPhoneticFamilyName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 722
    .restart local v15       #encodedPhoneticMiddleName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .restart local v14       #encodedPhoneticGivenName:Ljava/lang/String;
    goto/16 :goto_11

    .line 742
    .end local v13           #encodedPhoneticFamilyName:Ljava/lang/String;
    .end local v14           #encodedPhoneticGivenName:Ljava/lang/String;
    .end local v15           #encodedPhoneticMiddleName:Ljava/lang/String;
    .end local v29           #reallyUseQuotedPrintable:Z
    :cond_2a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/ui/VCardComposerMsg;->mIsDoCoMo:Z

    if-eqz v3, :cond_d

    .line 743
    const-string v3, "SOUND"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    const-string v3, "X-IRMC-N"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    const-string v3, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    const-string v3, "\r\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 755
    :cond_2b
    const/16 v29, 0x0

    goto/16 :goto_8

    .line 763
    .restart local v29       #reallyUseQuotedPrintable:Z
    :cond_2c
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .restart local v14       #encodedPhoneticGivenName:Ljava/lang/String;
    goto/16 :goto_9

    .line 784
    .end local v14           #encodedPhoneticGivenName:Ljava/lang/String;
    .end local v29           #reallyUseQuotedPrintable:Z
    :cond_2d
    const/16 v29, 0x0

    goto/16 :goto_a

    .line 792
    .restart local v29       #reallyUseQuotedPrintable:Z
    :cond_2e
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .restart local v15       #encodedPhoneticMiddleName:Ljava/lang/String;
    goto/16 :goto_b

    .line 813
    .end local v15           #encodedPhoneticMiddleName:Ljava/lang/String;
    .end local v29           #reallyUseQuotedPrintable:Z
    :cond_2f
    const/16 v29, 0x0

    goto/16 :goto_c

    .line 821
    .restart local v29       #reallyUseQuotedPrintable:Z
    :cond_30
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/mms/ui/VCardComposerMsg;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #encodedPhoneticFamilyName:Ljava/lang/String;
    goto/16 :goto_d
.end method

.method private appendTypeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2
    .parameter "builder"
    .parameter "type"

    .prologue
    .line 1773
    iget-boolean v0, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsV30:Z

    if-eqz v0, :cond_0

    .line 1774
    const-string v0, "TYPE"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1776
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1777
    return-void
.end method

.method private appendTypeAttributes(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 4
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1760
    .local p2, types:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    .line 1761
    .local v0, first:Z
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1762
    .local v2, type:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1763
    const/4 v0, 0x0

    .line 1767
    :goto_1
    invoke-direct {p0, p1, v2}, Lcom/android/mms/ui/VCardComposerMsg;->appendTypeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    .line 1765
    :cond_0
    const-string v3, ";"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1769
    .end local v2           #type:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private appendUncommonPhoneType(Ljava/lang/StringBuilder;Ljava/lang/Integer;)V
    .locals 4
    .parameter "builder"
    .parameter "type"

    .prologue
    .line 1715
    iget-boolean v1, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsDoCoMo:Z

    if-eqz v1, :cond_0

    .line 1718
    const-string v1, "VOICE"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1727
    :goto_0
    return-void

    .line 1720
    :cond_0
    invoke-static {p2}, Lcom/android/vcard/VCardUtils;->getPhoneTypeString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 1721
    .local v0, phoneAttribute:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1722
    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/VCardComposerMsg;->appendTypeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    .line 1724
    :cond_1
    const-string v1, "vcard.VCardComposerMsg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown or unsupported (by vCard) Phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private appendVCardEmailLine(Ljava/lang/StringBuilder;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "builder"
    .parameter "typeAsObject"
    .parameter "label"
    .parameter "data"

    .prologue
    .line 1584
    const-string v2, "EMAIL"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1586
    if-nez p2, :cond_0

    .line 1587
    const/4 v0, 0x3

    .line 1592
    .local v0, typeAsPrimitive:I
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1628
    const-string v2, "vcard.VCardComposerMsg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown Email type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1629
    const-string v1, "INTERNET"

    .line 1634
    .local v1, typeAsString:Ljava/lang/String;
    :goto_1
    const-string v2, ";"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1635
    invoke-direct {p0, p1, v1}, Lcom/android/mms/ui/VCardComposerMsg;->appendTypeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1636
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1637
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1638
    const-string v2, "\r\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1639
    return-void

    .line 1589
    .end local v0           #typeAsPrimitive:I
    .end local v1           #typeAsString:Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .restart local v0       #typeAsPrimitive:I
    goto :goto_0

    .line 1597
    :pswitch_0
    const-string v2, "_AUTO_CELL"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1598
    const-string v1, "CELL"

    .restart local v1       #typeAsString:Ljava/lang/String;
    goto :goto_1

    .line 1599
    .end local v1           #typeAsString:Ljava/lang/String;
    :cond_1
    iget-boolean v2, p0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesAndroidProperty:Z

    if-eqz v2, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->containsOnlyAlphaDigitHyphen([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1600
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "X-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #typeAsString:Ljava/lang/String;
    goto :goto_1

    .line 1602
    .end local v1           #typeAsString:Ljava/lang/String;
    :cond_2
    const-string v1, "INTERNET"

    .line 1604
    .restart local v1       #typeAsString:Ljava/lang/String;
    goto :goto_1

    .line 1608
    .end local v1           #typeAsString:Ljava/lang/String;
    :pswitch_1
    const-string v1, "HOME"

    .line 1609
    .restart local v1       #typeAsString:Ljava/lang/String;
    goto :goto_1

    .line 1613
    .end local v1           #typeAsString:Ljava/lang/String;
    :pswitch_2
    const-string v1, "WORK"

    .line 1614
    .restart local v1       #typeAsString:Ljava/lang/String;
    goto :goto_1

    .line 1618
    .end local v1           #typeAsString:Ljava/lang/String;
    :pswitch_3
    const-string v1, "INTERNET"

    .line 1619
    .restart local v1       #typeAsString:Ljava/lang/String;
    goto :goto_1

    .line 1623
    .end local v1           #typeAsString:Ljava/lang/String;
    :pswitch_4
    const-string v1, "CELL"

    .line 1624
    .restart local v1       #typeAsString:Ljava/lang/String;
    goto :goto_1

    .line 1592
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "builder"
    .parameter "propertyName"
    .parameter "rawData"

    .prologue
    const/4 v4, 0x0

    .line 1731
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1732
    return-void
.end method

.method private appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2
    .parameter "builder"
    .parameter "field"
    .parameter "rawData"
    .parameter "needCharset"
    .parameter "needQuotedPrintable"

    .prologue
    .line 1736
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1737
    if-eqz p4, :cond_0

    .line 1738
    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1739
    iget-object v1, p0, Lcom/android/mms/ui/VCardComposerMsg;->mVCardAttributeCharset:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1743
    :cond_0
    if-eqz p5, :cond_1

    .line 1744
    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1745
    const-string v1, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1746
    invoke-direct {p0, p3}, Lcom/android/mms/ui/VCardComposerMsg;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1752
    .local v0, encodedData:Ljava/lang/String;
    :goto_0
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1753
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1754
    const-string v1, "\r\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1755
    return-void

    .line 1750
    .end local v0           #encodedData:Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p3}, Lcom/android/mms/ui/VCardComposerMsg;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #encodedData:Ljava/lang/String;
    goto :goto_0
.end method

.method private appendVCardPhotoLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "builder"
    .parameter "encodedData"
    .parameter "photoType"

    .prologue
    .line 1379
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1380
    .local v3, tmpBuilder:Ljava/lang/StringBuilder;
    const-string v5, "PHOTO"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1381
    const-string v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1382
    iget-boolean v5, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsV30:Z

    if-eqz v5, :cond_1

    .line 1383
    const-string v5, "ENCODING=b"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1388
    :goto_0
    const-string v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1389
    invoke-direct {p0, v3, p3}, Lcom/android/mms/ui/VCardComposerMsg;->appendTypeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1390
    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1391
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1392
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1393
    .local v4, tmpStr:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #tmpBuilder:Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1394
    .restart local v3       #tmpBuilder:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 1395
    .local v2, lineCount:I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 1396
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 1397
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1398
    add-int/lit8 v2, v2, 0x1

    .line 1399
    const/16 v5, 0x48

    if-le v2, v5, :cond_0

    .line 1400
    const-string v5, "\r\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1401
    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1402
    const/4 v2, 0x0

    .line 1396
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1385
    .end local v0           #i:I
    .end local v1           #length:I
    .end local v2           #lineCount:I
    .end local v4           #tmpStr:Ljava/lang/String;
    :cond_1
    const-string v5, "ENCODING=BASE64"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1405
    .restart local v0       #i:I
    .restart local v1       #length:I
    .restart local v2       #lineCount:I
    .restart local v4       #tmpStr:Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1406
    const-string v5, "\r\n"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1407
    const-string v5, "\r\n"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1408
    return-void
.end method

.method private appendVCardPostalLine(Ljava/lang/StringBuilder;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 18
    .parameter "builder"
    .parameter "typeAsObject"
    .parameter "label"
    .parameter "contentValues"

    .prologue
    .line 1452
    const-string v15, "ADR"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1453
    const-string v15, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1459
    const/4 v6, 0x0

    .line 1460
    .local v6, dataExists:Z
    invoke-static/range {p4 .. p4}, Lcom/android/mms/ui/VCardComposerMsg;->getVCardPostalElements(Landroid/content/ContentValues;)[Ljava/lang/String;

    move-result-object v5

    .line 1461
    .local v5, dataArray:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 1462
    .local v2, actuallyUseQuotedPrintable:Z
    const/4 v12, 0x0

    .line 1463
    .local v12, shouldAppendCharset:Z
    move-object v3, v5

    .local v3, arr$:[Ljava/lang/String;
    array-length v9, v3

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_0
    if-ge v8, v9, :cond_1

    aget-object v4, v3, v8

    .line 1464
    .local v4, data:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 1465
    const/4 v6, 0x1

    .line 1466
    if-nez v12, :cond_0

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v4, v15, v16

    invoke-static {v15}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 1467
    const/4 v12, 0x1

    .line 1469
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesQuotedPrintable:Z

    if-eqz v15, :cond_3

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v4, v15, v16

    invoke-static {v15}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 1470
    const/4 v2, 0x1

    .line 1476
    .end local v4           #data:Ljava/lang/String;
    :cond_1
    array-length v10, v5

    .line 1477
    .local v10, length:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v10, :cond_5

    .line 1478
    aget-object v4, v5, v7

    .line 1479
    .restart local v4       #data:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 1480
    if-eqz v2, :cond_4

    .line 1481
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/mms/ui/VCardComposerMsg;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v7

    .line 1477
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1463
    .end local v7           #i:I
    .end local v10           #length:I
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1483
    .restart local v7       #i:I
    .restart local v10       #length:I
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/mms/ui/VCardComposerMsg;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v7

    goto :goto_2

    .line 1489
    .end local v4           #data:Ljava/lang/String;
    :cond_5
    if-nez p2, :cond_d

    .line 1490
    const/4 v13, 0x3

    .line 1495
    .local v13, typeAsPrimitive:I
    :goto_3
    const/4 v14, 0x0

    .line 1496
    .local v14, typeAsString:Ljava/lang/String;
    packed-switch v13, :pswitch_data_0

    .line 1525
    const-string v15, "vcard.VCardComposerMsg"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unknown StructuredPostal type: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1532
    :cond_6
    :goto_4
    :pswitch_0
    const/4 v11, 0x0

    .line 1533
    .local v11, shouldAppendAttrSeparator:Z
    if-eqz v14, :cond_7

    .line 1534
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/android/mms/ui/VCardComposerMsg;->appendTypeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1535
    const/4 v11, 0x1

    .line 1537
    :cond_7
    if-eqz v6, :cond_b

    .line 1538
    if-eqz v12, :cond_9

    .line 1543
    if-eqz v11, :cond_8

    .line 1544
    const-string v15, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1546
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/VCardComposerMsg;->mVCardAttributeCharset:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1547
    const/4 v11, 0x1

    .line 1549
    :cond_9
    if-eqz v2, :cond_b

    .line 1550
    if-eqz v11, :cond_a

    .line 1551
    const-string v15, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1553
    :cond_a
    const-string v15, "ENCODING=QUOTED-PRINTABLE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1560
    :cond_b
    const-string v15, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1561
    if-eqz v6, :cond_c

    .line 1565
    const/4 v15, 0x0

    aget-object v15, v5, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1566
    const-string v15, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1567
    const/4 v15, 0x1

    aget-object v15, v5, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1568
    const-string v15, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1569
    const/4 v15, 0x2

    aget-object v15, v5, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1570
    const-string v15, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1571
    const/4 v15, 0x3

    aget-object v15, v5, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1572
    const-string v15, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1573
    const/4 v15, 0x4

    aget-object v15, v5, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1574
    const-string v15, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1575
    const/4 v15, 0x5

    aget-object v15, v5, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1576
    const-string v15, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1577
    const/4 v15, 0x6

    aget-object v15, v5, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1579
    :cond_c
    const-string v15, "\r\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1580
    return-void

    .line 1492
    .end local v11           #shouldAppendAttrSeparator:Z
    .end local v13           #typeAsPrimitive:I
    .end local v14           #typeAsString:Ljava/lang/String;
    :cond_d
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .restart local v13       #typeAsPrimitive:I
    goto/16 :goto_3

    .line 1498
    .restart local v14       #typeAsString:Ljava/lang/String;
    :pswitch_1
    const-string v14, "HOME"

    .line 1499
    goto/16 :goto_4

    .line 1502
    :pswitch_2
    const-string v14, "WORK"

    .line 1503
    goto/16 :goto_4

    .line 1507
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesAndroidProperty:Z

    if-eqz v15, :cond_6

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_6

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object p3, v15, v16

    invoke-static {v15}, Lcom/android/vcard/VCardUtils;->containsOnlyAlphaDigitHyphen([Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 1513
    const-string v15, "X-"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1514
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1515
    const-string v15, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 1496
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private appendVCardTelephoneLine(Ljava/lang/StringBuilder;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "builder"
    .parameter "typeAsObject"
    .parameter "label"
    .parameter "encodedData"

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1643
    const-string v1, "TEL"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1646
    if-nez p2, :cond_0

    .line 1648
    const/4 v0, -0x1

    .line 1654
    .local v0, typeAsPrimitive:I
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1704
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/mms/ui/VCardComposerMsg;->appendUncommonPhoneType(Ljava/lang/StringBuilder;Ljava/lang/Integer;)V

    .line 1708
    :goto_1
    :pswitch_0
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1709
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1710
    const-string v1, "\r\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1711
    return-void

    .line 1650
    .end local v0           #typeAsPrimitive:I
    :cond_0
    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1651
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .restart local v0       #typeAsPrimitive:I
    goto :goto_0

    .line 1656
    :pswitch_1
    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "HOME"

    aput-object v2, v1, v3

    const-string v2, "VOICE"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/mms/ui/VCardComposerMsg;->appendTypeAttributes(Ljava/lang/StringBuilder;Ljava/util/List;)V

    goto :goto_1

    .line 1660
    :pswitch_2
    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "WORK"

    aput-object v2, v1, v3

    const-string v2, "VOICE"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/mms/ui/VCardComposerMsg;->appendTypeAttributes(Ljava/lang/StringBuilder;Ljava/util/List;)V

    goto :goto_1

    .line 1664
    :pswitch_3
    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "HOME"

    aput-object v2, v1, v3

    const-string v2, "FAX"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/mms/ui/VCardComposerMsg;->appendTypeAttributes(Ljava/lang/StringBuilder;Ljava/util/List;)V

    goto :goto_1

    .line 1668
    :pswitch_4
    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "WORK"

    aput-object v2, v1, v3

    const-string v2, "FAX"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/mms/ui/VCardComposerMsg;->appendTypeAttributes(Ljava/lang/StringBuilder;Ljava/util/List;)V

    goto :goto_1

    .line 1672
    :pswitch_5
    const-string v1, "CELL"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1676
    :pswitch_6
    iget-boolean v1, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsDoCoMo:Z

    if-eqz v1, :cond_1

    .line 1680
    const-string v1, "VOICE"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1682
    :cond_1
    const-string v1, "PAGER"

    invoke-direct {p0, p1, v1}, Lcom/android/mms/ui/VCardComposerMsg;->appendTypeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_1

    .line 1687
    :pswitch_7
    const-string v1, "VOICE"

    invoke-direct {p0, p1, v1}, Lcom/android/mms/ui/VCardComposerMsg;->appendTypeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_1

    .line 1691
    :pswitch_8
    iget-boolean v1, p0, Lcom/android/mms/ui/VCardComposerMsg;->mUsesAndroidProperty:Z

    if-eqz v1, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-array v1, v4, [Ljava/lang/String;

    aput-object p3, v1, v3

    invoke-static {v1}, Lcom/android/vcard/VCardUtils;->containsOnlyAlphaDigitHyphen([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1693
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "X-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/mms/ui/VCardComposerMsg;->appendTypeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1696
    :cond_2
    const-string v1, "VOICE"

    invoke-direct {p0, p1, v1}, Lcom/android/mms/ui/VCardComposerMsg;->appendTypeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1654
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_8
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private appendWebsites(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 5
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1088
    .local p2, contentValuesListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    const-string v4, "vnd.android.cursor.item/website"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1090
    .local v1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v1, :cond_2

    .line 1091
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1092
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v4, "data1"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1093
    .local v3, website:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 1094
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1096
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1097
    const-string v4, "URL"

    invoke-direct {p0, p1, v4, v3}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1101
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #website:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private containsNonEmptyName(Landroid/content/ContentValues;)Z
    .locals 7
    .parameter "contentValues"

    .prologue
    .line 488
    const-string v6, "data3"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 490
    .local v1, familyName:Ljava/lang/String;
    const-string v6, "data5"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 492
    .local v3, middleName:Ljava/lang/String;
    const-string v6, "data2"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 494
    .local v2, givenName:Ljava/lang/String;
    const-string v6, "data4"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 495
    .local v4, prefix:Ljava/lang/String;
    const-string v6, "data6"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 497
    .local v5, suffix:Ljava/lang/String;
    const-string v6, "data1"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 499
    .local v0, displayName:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    const/4 v6, 0x1

    :goto_0
    return v6

    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static encodeBase64([B)Ljava/lang/String;
    .locals 7
    .parameter "data"

    .prologue
    .line 1173
    if-nez p0, :cond_0

    .line 1174
    const-string v5, ""

    .line 1207
    :goto_0
    return-object v5

    .line 1177
    :cond_0
    array-length v5, p0

    add-int/lit8 v5, v5, 0x2

    div-int/lit8 v5, v5, 0x3

    mul-int/lit8 v5, v5, 0x4

    new-array v1, v5, [C

    .line 1178
    .local v1, charBuffer:[C
    const/4 v3, 0x0

    .line 1179
    .local v3, position:I
    const/4 v0, 0x0

    .line 1180
    .local v0, _3byte:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v5, p0

    add-int/lit8 v5, v5, -0x2

    if-ge v2, v5, :cond_1

    .line 1181
    aget-byte v5, p0, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/lit8 v6, v2, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v5, v6

    add-int/lit8 v6, v2, 0x2

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    add-int v0, v5, v6

    .line 1183
    add-int/lit8 v4, v3, 0x1

    .end local v3           #position:I
    .local v4, position:I
    sget-object v5, Lcom/android/mms/ui/VCardComposerMsg;->ENCODE64:[C

    shr-int/lit8 v6, v0, 0x12

    aget-char v5, v5, v6

    aput-char v5, v1, v3

    .line 1184
    add-int/lit8 v3, v4, 0x1

    .end local v4           #position:I
    .restart local v3       #position:I
    sget-object v5, Lcom/android/mms/ui/VCardComposerMsg;->ENCODE64:[C

    shr-int/lit8 v6, v0, 0xc

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    aput-char v5, v1, v4

    .line 1185
    add-int/lit8 v4, v3, 0x1

    .end local v3           #position:I
    .restart local v4       #position:I
    sget-object v5, Lcom/android/mms/ui/VCardComposerMsg;->ENCODE64:[C

    shr-int/lit8 v6, v0, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    aput-char v5, v1, v3

    .line 1186
    add-int/lit8 v3, v4, 0x1

    .end local v4           #position:I
    .restart local v3       #position:I
    sget-object v5, Lcom/android/mms/ui/VCardComposerMsg;->ENCODE64:[C

    and-int/lit8 v6, v0, 0x3f

    aget-char v5, v5, v6

    aput-char v5, v1, v4

    .line 1180
    add-int/lit8 v2, v2, 0x3

    goto :goto_1

    .line 1189
    :cond_1
    array-length v5, p0

    rem-int/lit8 v5, v5, 0x3

    packed-switch v5, :pswitch_data_0

    .line 1207
    :goto_2
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    .line 1191
    :pswitch_0
    array-length v5, p0

    add-int/lit8 v5, v5, -0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v0, v5, 0x10

    .line 1192
    add-int/lit8 v4, v3, 0x1

    .end local v3           #position:I
    .restart local v4       #position:I
    sget-object v5, Lcom/android/mms/ui/VCardComposerMsg;->ENCODE64:[C

    shr-int/lit8 v6, v0, 0x12

    aget-char v5, v5, v6

    aput-char v5, v1, v3

    .line 1193
    add-int/lit8 v3, v4, 0x1

    .end local v4           #position:I
    .restart local v3       #position:I
    sget-object v5, Lcom/android/mms/ui/VCardComposerMsg;->ENCODE64:[C

    shr-int/lit8 v6, v0, 0xc

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    aput-char v5, v1, v4

    .line 1194
    add-int/lit8 v4, v3, 0x1

    .end local v3           #position:I
    .restart local v4       #position:I
    sget-char v5, Lcom/android/mms/ui/VCardComposerMsg;->PAD:C

    aput-char v5, v1, v3

    .line 1195
    add-int/lit8 v3, v4, 0x1

    .end local v4           #position:I
    .restart local v3       #position:I
    sget-char v5, Lcom/android/mms/ui/VCardComposerMsg;->PAD:C

    aput-char v5, v1, v4

    goto :goto_2

    .line 1199
    :pswitch_1
    array-length v5, p0

    add-int/lit8 v5, v5, -0x2

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    array-length v6, p0

    add-int/lit8 v6, v6, -0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    add-int v0, v5, v6

    .line 1201
    add-int/lit8 v4, v3, 0x1

    .end local v3           #position:I
    .restart local v4       #position:I
    sget-object v5, Lcom/android/mms/ui/VCardComposerMsg;->ENCODE64:[C

    shr-int/lit8 v6, v0, 0x12

    aget-char v5, v5, v6

    aput-char v5, v1, v3

    .line 1202
    add-int/lit8 v3, v4, 0x1

    .end local v4           #position:I
    .restart local v3       #position:I
    sget-object v5, Lcom/android/mms/ui/VCardComposerMsg;->ENCODE64:[C

    shr-int/lit8 v6, v0, 0xc

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    aput-char v5, v1, v4

    .line 1203
    add-int/lit8 v4, v3, 0x1

    .end local v3           #position:I
    .restart local v4       #position:I
    sget-object v5, Lcom/android/mms/ui/VCardComposerMsg;->ENCODE64:[C

    shr-int/lit8 v6, v0, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    aput-char v5, v1, v3

    .line 1204
    add-int/lit8 v3, v4, 0x1

    .end local v4           #position:I
    .restart local v3       #position:I
    sget-char v5, Lcom/android/mms/ui/VCardComposerMsg;->PAD:C

    aput-char v5, v1, v4

    goto :goto_2

    .line 1189
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "str"

    .prologue
    const/16 v9, 0xa

    .line 1807
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1808
    const-string v8, ""

    .line 1855
    :goto_0
    return-object v8

    .line 1812
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1813
    .local v7, tmpBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 1814
    .local v4, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_4

    .line 1815
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1816
    .local v0, ch:C
    const/16 v8, 0xd

    if-ne v0, v8, :cond_2

    .line 1817
    add-int/lit8 v8, v2, 0x1

    if-ge v8, v4, :cond_1

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_1

    .line 1818
    add-int/lit8 v2, v2, 0x1

    .line 1820
    :cond_1
    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1814
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1821
    :cond_2
    if-ne v0, v9, :cond_3

    .line 1822
    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1824
    :cond_3
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1828
    .end local v0           #ch:C
    :cond_4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1830
    new-instance v7, Ljava/lang/StringBuilder;

    .end local v7           #tmpBuilder:Ljava/lang/StringBuilder;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1831
    .restart local v7       #tmpBuilder:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 1832
    .local v3, index:I
    const/4 v5, 0x0

    .line 1833
    .local v5, lineCount:I
    const/4 v6, 0x0

    .line 1836
    .local v6, strArray:[B
    :try_start_0
    iget-object v8, p0, Lcom/android/mms/ui/VCardComposerMsg;->mCharsetString:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1842
    :cond_5
    :goto_3
    array-length v8, v6

    if-ge v3, v8, :cond_6

    .line 1843
    const-string v8, "=%02X"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aget-byte v11, v6, v3

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1844
    add-int/lit8 v3, v3, 0x1

    .line 1845
    add-int/lit8 v5, v5, 0x3

    .line 1846
    const/16 v8, 0x43

    if-lt v5, v8, :cond_5

    .line 1851
    const-string v8, "=\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1852
    const/4 v5, 0x0

    goto :goto_3

    .line 1837
    :catch_0
    move-exception v1

    .line 1838
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    const-string v8, "vcard.VCardComposerMsg"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Charset "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/ui/VCardComposerMsg;->mCharsetString:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " cannot be used. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Try default charset"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1839
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    goto :goto_3

    .line 1855
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :cond_6
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0
.end method

.method private escapeCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "unescaped"

    .prologue
    const/16 v6, 0x5c

    .line 1305
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1306
    const-string v5, ""

    .line 1374
    :goto_0
    return-object v5

    .line 1309
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1310
    .local v4, tmpBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1312
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_6

    .line 1313
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1314
    .local v0, ch:C
    sparse-switch v0, :sswitch_data_0

    .line 1369
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1312
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1316
    :sswitch_0
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1317
    const/16 v5, 0x3b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1321
    :sswitch_1
    add-int/lit8 v5, v1, 0x1

    if-ge v5, v2, :cond_2

    .line 1322
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1323
    .local v3, nextChar:C
    const/16 v5, 0xa

    if-eq v3, v5, :cond_1

    .line 1336
    .end local v3           #nextChar:C
    :cond_2
    :sswitch_2
    const-string v5, "\\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1341
    :sswitch_3
    iget-boolean v5, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsV30:Z

    if-eqz v5, :cond_3

    .line 1342
    const-string v5, "\\\\"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1351
    :cond_3
    :sswitch_4
    iget-boolean v5, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsDoCoMo:Z

    if-eqz v5, :cond_4

    .line 1352
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1353
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1355
    :cond_4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1361
    :sswitch_5
    iget-boolean v5, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsV30:Z

    if-eqz v5, :cond_5

    .line 1362
    const-string v5, "\\,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1364
    :cond_5
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1374
    .end local v0           #ch:C
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1314
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0xd -> :sswitch_1
        0x2c -> :sswitch_5
        0x3b -> :sswitch_0
        0x3c -> :sswitch_4
        0x3e -> :sswitch_4
        0x5c -> :sswitch_3
    .end sparse-switch
.end method

.method public static getVCardPostalElements(Landroid/content/ContentValues;)[Ljava/lang/String;
    .locals 8
    .parameter "contentValues"

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 1411
    const/4 v2, 0x7

    new-array v0, v2, [Ljava/lang/String;

    .line 1412
    .local v0, dataArray:[Ljava/lang/String;
    const-string v2, "data5"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    .line 1413
    aget-object v2, v0, v3

    if-nez v2, :cond_0

    .line 1414
    const-string v2, ""

    aput-object v2, v0, v3

    .line 1418
    :cond_0
    const/4 v2, 0x1

    const-string v3, ""

    aput-object v3, v0, v2

    .line 1419
    const-string v2, "data4"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 1420
    aget-object v2, v0, v4

    if-nez v2, :cond_1

    .line 1421
    const-string v2, ""

    aput-object v2, v0, v4

    .line 1425
    :cond_1
    const-string v2, "data7"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    .line 1426
    aget-object v2, v0, v5

    if-nez v2, :cond_2

    .line 1427
    const-string v2, ""

    aput-object v2, v0, v5

    .line 1430
    :cond_2
    const-string v2, "data8"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1431
    .local v1, region:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1432
    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 1437
    :goto_0
    const-string v2, "data9"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v6

    .line 1438
    aget-object v2, v0, v6

    if-nez v2, :cond_3

    .line 1439
    const-string v2, ""

    aput-object v2, v0, v6

    .line 1442
    :cond_3
    const-string v2, "data10"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v7

    .line 1443
    aget-object v2, v0, v7

    if-nez v2, :cond_4

    .line 1444
    const-string v2, ""

    aput-object v2, v0, v7

    .line 1446
    :cond_4
    return-object v0

    .line 1434
    :cond_5
    const/4 v2, 0x4

    const-string v3, ""

    aput-object v3, v0, v2

    goto :goto_0
.end method

.method private shouldAppendCharsetAttribute(Ljava/lang/String;)Z
    .locals 3
    .parameter "propertyValue"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1791
    new-array v2, v0, [Ljava/lang/String;

    aput-object p1, v2, v1

    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsV30:Z

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private shouldAppendCharsetAttribute(Ljava/util/List;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, propertyValueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1795
    const/4 v2, 0x0

    .line 1797
    .local v2, shouldAppendBasically:Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1798
    .local v1, propertyValue:Ljava/lang/String;
    new-array v5, v3, [Ljava/lang/String;

    aput-object v1, v5, v4

    invoke-static {v5}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1799
    const/4 v2, 0x1

    .line 1803
    .end local v1           #propertyValue:Ljava/lang/String;
    :cond_1
    if-eqz v2, :cond_2

    iget-boolean v5, p0, Lcom/android/mms/ui/VCardComposerMsg;->mIsV30:Z

    if-nez v5, :cond_2

    :goto_0
    return v3

    :cond_2
    move v3, v4

    goto :goto_0
.end method

.method private splitIfSeveralPhoneNumbersExist(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter "phoneNumber"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 938
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 939
    .local v4, phoneList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 940
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 942
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 943
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 944
    .local v1, ch:C
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 945
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 942
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 946
    :cond_1
    const/16 v5, 0x3b

    if-eq v1, v5, :cond_2

    const/16 v5, 0xa

    if-ne v1, v5, :cond_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 947
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 948
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #builder:Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .restart local v0       #builder:Ljava/lang/StringBuilder;
    goto :goto_1

    .line 951
    .end local v1           #ch:C
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 952
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 954
    :cond_4
    return-object v4
.end method


# virtual methods
.method public composeVCardForEmail(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .parameter "phonetype"
    .parameter "phoneName"
    .parameter "EmailAddr"
    .parameter "vcardVer21"

    .prologue
    const/4 v5, 0x0

    .line 443
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 444
    .local v1, builder:Ljava/lang/StringBuilder;
    const-string v0, "BEGIN"

    const-string v2, "VCARD"

    invoke-direct {p0, v1, v0, v2}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    if-nez p4, :cond_2

    .line 447
    const-string v0, "VERSION"

    const-string v2, "3.0"

    invoke-direct {p0, v1, v0, v2}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    :goto_0
    const/4 v4, 0x0

    .line 453
    .local v4, needCharset:Z
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    aput-object p2, v0, v5

    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 454
    const/4 v4, 0x1

    .line 459
    :cond_0
    const-string v2, "FN"

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 460
    const-string v2, "N"

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 462
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 463
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 464
    .local v6, label:Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v0, v6, p3}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardEmailLine(Ljava/lang/StringBuilder;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    .end local v6           #label:Ljava/lang/String;
    :cond_1
    const-string v0, "END"

    const-string v2, "VCARD"

    invoke-direct {p0, v1, v0, v2}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 449
    .end local v4           #needCharset:Z
    :cond_2
    const-string v0, "VERSION"

    const-string v2, "2.1"

    invoke-direct {p0, v1, v0, v2}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public composeVCardForPhoneNumber(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .parameter "phonetype"
    .parameter "phoneName"
    .parameter "phoneNumber"
    .parameter "vcardVer21"

    .prologue
    const/4 v5, 0x0

    .line 411
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 412
    .local v1, builder:Ljava/lang/StringBuilder;
    const-string v0, "BEGIN"

    const-string v2, "VCARD"

    invoke-direct {p0, v1, v0, v2}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    if-nez p4, :cond_2

    .line 415
    const-string v0, "VERSION"

    const-string v2, "3.0"

    invoke-direct {p0, v1, v0, v2}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    :goto_0
    const/4 v4, 0x0

    .line 422
    .local v4, needCharset:Z
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    aput-object p2, v0, v5

    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 423
    const/4 v4, 0x1

    .line 428
    :cond_0
    const-string v2, "FN"

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 430
    const-string v2, "N"

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 432
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 433
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 434
    .local v6, label:Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v0, v6, p3}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardTelephoneLine(Ljava/lang/StringBuilder;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    .end local v6           #label:Ljava/lang/String;
    :cond_1
    const-string v0, "END"

    const-string v2, "VCARD"

    invoke-direct {p0, v1, v0, v2}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 417
    .end local v4           #needCharset:Z
    :cond_2
    const-string v0, "VERSION"

    const-string v2, "2.1"

    invoke-direct {p0, v1, v0, v2}, Lcom/android/mms/ui/VCardComposerMsg;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
