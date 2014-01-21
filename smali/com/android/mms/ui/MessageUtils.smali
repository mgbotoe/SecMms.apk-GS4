.class public Lcom/android/mms/ui/MessageUtils;
.super Ljava/lang/Object;
.source "MessageUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageUtils$DialogSearchMenuBlockKeyListener;,
        Lcom/android/mms/ui/MessageUtils$CachedDate;,
        Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;
    }
.end annotation


# static fields
.field public static final ACTION_RECEIVED_MMS:Ljava/lang/String; = "com.sec.mms.intent.action.MMS_RECEIVED"

.field public static final ACTION_RECEIVED_SMS:Ljava/lang/String; = "com.sec.mms.intent.action.SMS_RECEIVED"

.field public static final ANONYMOUS_MESSAGE_SENDER:Ljava/lang/String; = "Anonymous"

.field private static final AUTOREJECT_AUTHORITY:Ljava/lang/String; = "com.android.phone.callsettings"

.field private static final AUTOREJECT_CHECKED:Ljava/lang/String; = "reject_checked"

.field private static final AUTOREJECT_CONTENT_URI:Landroid/net/Uri; = null

.field private static final AUTOREJECT_MATCH:Ljava/lang/String; = "reject_match"

.field private static final AUTOREJECT_MODE:Ljava/lang/String; = "autoreject_mode"

.field private static final AUTOREJECT_NUMBER:Ljava/lang/String; = "reject_number"

.field private static final AUTOREJECT_TABLE:Ljava/lang/String; = "reject_num"

.field private static final AUTOREJECT_VIDEOCALL_CONTENT_URI:Landroid/net/Uri; = null

.field private static final AUTOREJECT_VIDEOCALL_MODE:Ljava/lang/String; = "autoreject_videocall_mode"

.field private static final AUTOREJECT_VIDEOCALL_TABLE:Ljava/lang/String; = "reject_videocall_num"

.field public static final BLACK_CALL_NUM:I = 0x2

.field public static final BLACK_MESSAGE_NUM:I = 0x1

.field public static final CB_MESSAGE_SENDER:Ljava/lang/String; = "CBmessages"

.field public static final CMAS_MESSAGE_SENDER:Ljava/lang/String; = "#CMAS#CMASALL"

.field public static final CMAS_MESSAGE_SENDER_PREFIX:Ljava/lang/String; = "#CMAS#"

.field public static final CMAS_MESSAGE_SENDER_PRESIDENTIAL:Ljava/lang/String; = "#CMAS#Presidential"

.field private static final COUNT_PROJECTION:[Ljava/lang/String; = null

.field private static final DAY_UNIT_CHINA:Ljava/lang/String; = "\u65e5"

.field private static final DAY_UNIT_GERMAN:Ljava/lang/String; = "."

.field private static final DAY_UNIT_JAPAN:Ljava/lang/String; = "\u65e5"

.field private static final DAY_UNIT_KOREA:Ljava/lang/String; = "\uc77c"

.field public static final EXTRA_CALL_DIRECTCALL:Ljava/lang/String; = "android.phone.extra.CALL_DIRECTCALL"

.field public static final EXTRA_CALL_DIRECTCALL_DIRECTION:Ljava/lang/String; = "android.phone.extra.CALL_DIRECTCALL_DIRECTION"

.field public static final EXTRA_RECEIVED_USERNAME:Ljava/lang/String; = "DisplayName"

.field public static final IMAGE_COMPRESSION_QUALITY:I = 0x50

.field public static final MINIMUM_IMAGE_COMPRESSION_QUALITY:I = 0x28

.field private static MIN_MATCH_CHINA:I = 0x0

.field private static final NUMERIC_CHARS_SUGAR:[C = null

.field private static final PART_13_CHARS_UNICODE:[C = null

.field private static final PREFERENCE_NAME:Ljava/lang/String; = "com.android.mms"

.field public static final SMS_GROUP_CONTENT_URI:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "Mms/MessageUtils"

.field private static final UNKNOWN_MODE:Ljava/lang/String; = "unknown_mode"

.field private static final UNREAD_SELECTION:Ljava/lang/String; = "(read=0)"

.field private static final VIDEO_CALL_INTENT_ACTION:Ljava/lang/String; = "com.android.phone.videocall"

.field public static final VZWPHONE:Ljava/util/regex/Pattern; = null

.field public static final WAP_PUSH_MESSAGE_BY_ID_CONTENT_URI:Landroid/net/Uri; = null

.field public static final WAP_PUSH_MESSAGE_SENDER:Ljava/lang/String; = "Pushmessage"

.field public static final WHITE_CALL_NUM:I = 0x4

.field public static final WHITE_MESSAGE_NUM:I = 0x3

.field private static final YEAR_UNIT_CHINA:Ljava/lang/String; = "\u5e74"

.field private static final YEAR_UNIT_JAPAN:Ljava/lang/String; = "\u5e74"

.field private static final YEAR_UNIT_KOREA:Ljava/lang/String; = "\ub144"

.field private static mBlockChecked:[Z

.field private static mBlockCheckedBefore:[Z

.field private static mCountryDetector:Landroid/location/CountryDetector;

.field private static mCountryISO:Ljava/lang/String;

.field public static mExternalSdCardMounted:Z

.field public static mExternalSdCardStoragePath:Ljava/lang/String;

.field public static mIsHeadsetPlugged:Z

.field public static mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

.field public static mStorageListener:Landroid/os/storage/StorageEventListener;

.field public static mStorageManager:Landroid/os/storage/StorageManager;

.field private static mWindowManager:Landroid/view/IWindowManager;

.field private static numericSugarMap:Ljava/util/HashMap;

.field private static part13charsMap_UNICIDE:Ljava/util/HashMap;

.field private static sDateOrder:[C

.field private static sDefaultContactImage:[Landroid/graphics/drawable/Drawable;

.field private static sDefaultContactImageId:[Ljava/lang/String;

.field private static sLocalNumber:Ljava/lang/String;

.field private static sNow:Ljava/util/Calendar;

.field private static sOldDateOrderValue:Ljava/lang/String;

.field private static final sRecipientAddress:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mBlockContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 195
    new-instance v2, Lcom/android/mms/ui/MessageUtils$DialogSearchMenuBlockKeyListener;

    invoke-direct {v2, v5}, Lcom/android/mms/ui/MessageUtils$DialogSearchMenuBlockKeyListener;-><init>(Lcom/android/mms/ui/MessageUtils$1;)V

    sput-object v2, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 197
    sput-boolean v6, Lcom/android/mms/ui/MessageUtils;->mIsHeadsetPlugged:Z

    .line 236
    sget-object v2, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "wap-push-messages"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Lcom/android/mms/ui/MessageUtils;->WAP_PUSH_MESSAGE_BY_ID_CONTENT_URI:Landroid/net/Uri;

    .line 241
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "group"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Lcom/android/mms/ui/MessageUtils;->SMS_GROUP_CONTENT_URI:Landroid/net/Uri;

    .line 264
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v2, Lcom/android/mms/ui/MessageUtils;->sRecipientAddress:Ljava/util/Map;

    .line 273
    const/16 v2, 0xa

    new-array v2, v2, [C

    fill-array-data v2, :array_0

    sput-object v2, Lcom/android/mms/ui/MessageUtils;->NUMERIC_CHARS_SUGAR:[C

    .line 277
    new-instance v2, Ljava/util/HashMap;

    sget-object v3, Lcom/android/mms/ui/MessageUtils;->NUMERIC_CHARS_SUGAR:[C

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    sput-object v2, Lcom/android/mms/ui/MessageUtils;->numericSugarMap:Ljava/util/HashMap;

    .line 280
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/android/mms/ui/MessageUtils;->NUMERIC_CHARS_SUGAR:[C

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 281
    sget-object v2, Lcom/android/mms/ui/MessageUtils;->numericSugarMap:Ljava/util/HashMap;

    sget-object v3, Lcom/android/mms/ui/MessageUtils;->NUMERIC_CHARS_SUGAR:[C

    aget-char v3, v3, v0

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    sget-object v4, Lcom/android/mms/ui/MessageUtils;->NUMERIC_CHARS_SUGAR:[C

    aget-char v4, v4, v0

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 286
    :cond_0
    const/16 v2, 0x4d

    new-array v2, v2, [C

    fill-array-data v2, :array_1

    sput-object v2, Lcom/android/mms/ui/MessageUtils;->PART_13_CHARS_UNICODE:[C

    .line 299
    new-instance v2, Ljava/util/HashMap;

    sget-object v3, Lcom/android/mms/ui/MessageUtils;->PART_13_CHARS_UNICODE:[C

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    sput-object v2, Lcom/android/mms/ui/MessageUtils;->part13charsMap_UNICIDE:Ljava/util/HashMap;

    .line 302
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    sget-object v2, Lcom/android/mms/ui/MessageUtils;->PART_13_CHARS_UNICODE:[C

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 303
    sget-object v2, Lcom/android/mms/ui/MessageUtils;->part13charsMap_UNICIDE:Ljava/util/HashMap;

    sget-object v3, Lcom/android/mms/ui/MessageUtils;->PART_13_CHARS_UNICODE:[C

    aget-char v3, v3, v1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    sget-object v4, Lcom/android/mms/ui/MessageUtils;->PART_13_CHARS_UNICODE:[C

    aget-char v4, v4, v1

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 308
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    sput-object v2, Lcom/android/mms/ui/MessageUtils;->sNow:Ljava/util/Calendar;

    .line 310
    const-string v2, "null"

    sput-object v2, Lcom/android/mms/ui/MessageUtils;->sOldDateOrderValue:Ljava/lang/String;

    .line 313
    new-instance v2, Lcom/android/mms/ui/MessageUtils$1;

    invoke-direct {v2}, Lcom/android/mms/ui/MessageUtils$1;-><init>()V

    sput-object v2, Lcom/android/mms/ui/MessageUtils;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 317
    sput-object v5, Lcom/android/mms/ui/MessageUtils;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 318
    const-string v2, ""

    sput-object v2, Lcom/android/mms/ui/MessageUtils;->mExternalSdCardStoragePath:Ljava/lang/String;

    .line 319
    sput-boolean v6, Lcom/android/mms/ui/MessageUtils;->mExternalSdCardMounted:Z

    .line 323
    new-array v2, v7, [Z

    fill-array-data v2, :array_2

    sput-object v2, Lcom/android/mms/ui/MessageUtils;->mBlockCheckedBefore:[Z

    .line 324
    new-array v2, v7, [Z

    fill-array-data v2, :array_3

    sput-object v2, Lcom/android/mms/ui/MessageUtils;->mBlockChecked:[Z

    .line 326
    const/16 v2, 0xb

    sput v2, Lcom/android/mms/ui/MessageUtils;->MIN_MATCH_CHINA:I

    .line 339
    const-string v2, "content://com.android.phone.callsettings/reject_num"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Lcom/android/mms/ui/MessageUtils;->AUTOREJECT_CONTENT_URI:Landroid/net/Uri;

    .line 343
    const-string v2, "content://com.android.phone.callsettings/reject_videocall_num"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Lcom/android/mms/ui/MessageUtils;->AUTOREJECT_VIDEOCALL_CONTENT_URI:Landroid/net/Uri;

    .line 349
    sput-object v5, Lcom/android/mms/ui/MessageUtils;->sDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    .line 350
    sput-object v5, Lcom/android/mms/ui/MessageUtils;->sDefaultContactImageId:[Ljava/lang/String;

    .line 352
    const-string v2, "(\\+[0-9]+[\\- \\.]*)?(\\([0-9]+\\)[\\- \\.]*)?([0-9][0-9\\- \\.]*[0-9])"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    sput-object v2, Lcom/android/mms/ui/MessageUtils;->VZWPHONE:Ljava/util/regex/Pattern;

    .line 362
    sput-object v5, Lcom/android/mms/ui/MessageUtils;->mCountryDetector:Landroid/location/CountryDetector;

    .line 363
    const-string v2, "KR"

    sput-object v2, Lcom/android/mms/ui/MessageUtils;->mCountryISO:Ljava/lang/String;

    .line 6154
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, " count(*) "

    aput-object v3, v2, v6

    sput-object v2, Lcom/android/mms/ui/MessageUtils;->COUNT_PROJECTION:[Ljava/lang/String;

    return-void

    .line 273
    :array_0
    .array-data 0x2
        0x2dt 0x0t
        0x2et 0x0t
        0x28t 0x0t
        0x29t 0x0t
        0x20t 0x0t
        0x2ft 0x0t
        0x5ct 0x0t
        0x2at 0x0t
        0x23t 0x0t
        0x2bt 0x0t
    .end array-data

    .line 286
    :array_1
    .array-data 0x2
        0x60t 0x24t
        0x61t 0x24t
        0x62t 0x24t
        0x63t 0x24t
        0x64t 0x24t
        0x65t 0x24t
        0x66t 0x24t
        0x67t 0x24t
        0x68t 0x24t
        0x69t 0x24t
        0x6at 0x24t
        0x6bt 0x24t
        0x6ct 0x24t
        0x6dt 0x24t
        0x6et 0x24t
        0x6ft 0x24t
        0x70t 0x24t
        0x71t 0x24t
        0x72t 0x24t
        0x73t 0x24t
        0x60t 0x21t
        0x61t 0x21t
        0x62t 0x21t
        0x63t 0x21t
        0x64t 0x21t
        0x65t 0x21t
        0x66t 0x21t
        0x67t 0x21t
        0x68t 0x21t
        0x69t 0x21t
        0x6at 0x21t
        0x49t 0x33t
        0x14t 0x33t
        0x22t 0x33t
        0x4dt 0x33t
        0x18t 0x33t
        0x27t 0x33t
        0x3t 0x33t
        0x36t 0x33t
        0x51t 0x33t
        0x57t 0x33t
        0xdt 0x33t
        0x26t 0x33t
        0x23t 0x33t
        0x2bt 0x33t
        0x4at 0x33t
        0x3bt 0x33t
        0x9ct 0x33t
        0x9dt 0x33t
        0x9et 0x33t
        0x8et 0x33t
        0x8ft 0x33t
        0xc4t 0x33t
        0xa1t 0x33t
        0x6bt 0x21t
        0x7bt 0x33t
        0x1dt 0x30t
        0x1ft 0x30t
        0x16t 0x21t
        0xcdt 0x33t
        0x21t 0x21t
        0xa4t 0x32t
        0xa5t 0x32t
        0xa6t 0x32t
        0xa7t 0x32t
        0xa8t 0x32t
        0x31t 0x32t
        0x32t 0x32t
        0x39t 0x32t
        0x7et 0x33t
        0x7dt 0x33t
        0x7ct 0x33t
        0x2et 0x22t
        0x1ft 0x22t
        0xbft 0x22t
        0x56t 0x27t
        0x1et 0x26t
    .end array-data

    .line 323
    nop

    :array_2
    .array-data 0x1
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 324
    :array_3
    .array-data 0x1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 358
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 360
    return-void
.end method

.method public static CheckAvailbleCallRejectList(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 5293
    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "reject_number"

    aput-object v0, v2, v9

    .line 5296
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.phone.callsettings/reject_num"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 5300
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 5301
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 5302
    .local v8, nRejectDBsize:I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 5304
    const/4 v7, 0x0

    .line 5305
    .local v7, max_rejectDB_size:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "autoreject_maxcount"

    const/16 v3, 0x64

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 5308
    if-lt v8, v7, :cond_0

    .line 5312
    const-string v0, "Mms/MessageUtils"

    const-string v1, "CheckAvailbleCallRejectList false"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v9

    .line 5318
    .end local v7           #max_rejectDB_size:I
    .end local v8           #nRejectDBsize:I
    :goto_0
    return v0

    .line 5317
    :cond_0
    const-string v0, "Mms/MessageUtils"

    const-string v1, "CheckAvailbleCallRejectList true"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v10

    .line 5318
    goto :goto_0
.end method

.method public static GetStrFitsInPixel(Ljava/lang/String;Landroid/graphics/Paint;I)Ljava/lang/String;
    .locals 5
    .parameter "str"
    .parameter "paint"
    .parameter "width"

    .prologue
    const/4 v4, 0x0

    .line 4575
    const-string v3, "W"

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v0, v3

    .line 4576
    .local v0, charW:I
    div-int v1, p2, v0

    .line 4577
    .local v1, cnt:I
    move v2, v1

    .line 4580
    .local v2, ret:I
    :goto_0
    invoke-virtual {p1, p0, v4, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v3

    float-to-int v3, v3

    if-ge p2, v3, :cond_2

    .line 4581
    if-ge v2, v1, :cond_1

    .line 4584
    add-int/lit8 v1, v1, -0x1

    .line 4601
    :cond_0
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 4589
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4591
    :cond_2
    if-gt v2, v1, :cond_0

    .line 4594
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static GetStrPixelWidth(Ljava/lang/String;Landroid/graphics/Paint;)I
    .locals 2
    .parameter "str"
    .parameter "paint"

    .prologue
    .line 4568
    const/4 v0, 0x0

    .line 4569
    .local v0, ret:I
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v0, v1

    .line 4570
    return v0
.end method

.method public static HasKeyboard(Landroid/content/Context;)Z
    .locals 2
    .parameter "mContext"

    .prologue
    .line 6394
    invoke-static {p0}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v0

    .line 6396
    .local v0, mKeyboard:I
    and-int/lit8 v1, v0, 0x7

    if-eqz v1, :cond_0

    .line 6397
    const/4 v1, 0x1

    .line 6398
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static LanguageSize(Ljava/lang/String;)I
    .locals 3
    .parameter "locale"

    .prologue
    .line 4096
    const-string v0, "Mms/MessageUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "System locale = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4097
    const-string v0, "de"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4098
    const/4 v0, 0x1

    .line 4170
    :goto_0
    return v0

    .line 4099
    :cond_0
    const-string v0, "ru"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4100
    const/4 v0, 0x2

    goto :goto_0

    .line 4101
    :cond_1
    const-string v0, "bg"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4102
    const/4 v0, 0x3

    goto :goto_0

    .line 4103
    :cond_2
    const-string v0, "pt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4104
    const/4 v0, 0x4

    goto :goto_0

    .line 4105
    :cond_3
    const-string v0, "ro"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4106
    const/4 v0, 0x5

    goto :goto_0

    .line 4107
    :cond_4
    const-string v0, "el"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4108
    const/4 v0, 0x6

    goto :goto_0

    .line 4109
    :cond_5
    const-string v0, "uk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4110
    const/4 v0, 0x7

    goto :goto_0

    .line 4111
    :cond_6
    const-string v0, "lt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4112
    const/16 v0, 0x8

    goto :goto_0

    .line 4113
    :cond_7
    const-string v0, "hu"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4114
    const/16 v0, 0x9

    goto :goto_0

    .line 4115
    :cond_8
    const-string v0, "cs"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4116
    const/16 v0, 0xa

    goto :goto_0

    .line 4117
    :cond_9
    const-string v0, "es"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4118
    const/16 v0, 0xb

    goto :goto_0

    .line 4119
    :cond_a
    const-string v0, "fr"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4120
    const/16 v0, 0xc

    goto :goto_0

    .line 4121
    :cond_b
    const-string v0, "it"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4122
    const/16 v0, 0xd

    goto :goto_0

    .line 4123
    :cond_c
    const-string v0, "sk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4124
    const/16 v0, 0xe

    goto/16 :goto_0

    .line 4125
    :cond_d
    const-string v0, "et"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4126
    const/16 v0, 0xf

    goto/16 :goto_0

    .line 4127
    :cond_e
    const-string v0, "tr"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4128
    const/16 v0, 0x10

    goto/16 :goto_0

    .line 4129
    :cond_f
    const-string v0, "sr"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4130
    const/16 v0, 0x11

    goto/16 :goto_0

    .line 4131
    :cond_10
    const-string v0, "nl"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4132
    const/16 v0, 0x12

    goto/16 :goto_0

    .line 4133
    :cond_11
    const-string v0, "hr"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 4134
    const/16 v0, 0x13

    goto/16 :goto_0

    .line 4135
    :cond_12
    const-string v0, "fi"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 4136
    const/16 v0, 0x14

    goto/16 :goto_0

    .line 4137
    :cond_13
    const-string v0, "da"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4138
    const/16 v0, 0x15

    goto/16 :goto_0

    .line 4139
    :cond_14
    const-string v0, "is"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 4140
    const/16 v0, 0x16

    goto/16 :goto_0

    .line 4141
    :cond_15
    const-string v0, "ga"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 4142
    const/16 v0, 0x17

    goto/16 :goto_0

    .line 4143
    :cond_16
    const-string v0, "kk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4144
    const/16 v0, 0x18

    goto/16 :goto_0

    .line 4145
    :cond_17
    const-string v0, "lv"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 4146
    const/16 v0, 0x19

    goto/16 :goto_0

    .line 4147
    :cond_18
    const-string v0, "mk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 4148
    const/16 v0, 0x1a

    goto/16 :goto_0

    .line 4149
    :cond_19
    const-string v0, "no"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 4150
    const/16 v0, 0x1b

    goto/16 :goto_0

    .line 4151
    :cond_1a
    const-string v0, "pl"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 4152
    const/16 v0, 0x1c

    goto/16 :goto_0

    .line 4153
    :cond_1b
    const-string v0, "sl"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 4154
    const/16 v0, 0x1d

    goto/16 :goto_0

    .line 4155
    :cond_1c
    const-string v0, "sv"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 4156
    const/16 v0, 0x1e

    goto/16 :goto_0

    .line 4157
    :cond_1d
    const-string v0, "ko"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 4158
    const/16 v0, 0x1f

    goto/16 :goto_0

    .line 4159
    :cond_1e
    const-string v0, "vi"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 4160
    const/16 v0, 0x20

    goto/16 :goto_0

    .line 4161
    :cond_1f
    const-string v0, "th"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 4162
    const/16 v0, 0x21

    goto/16 :goto_0

    .line 4163
    :cond_20
    const-string v0, "ms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 4164
    const/16 v0, 0x22

    goto/16 :goto_0

    .line 4165
    :cond_21
    const-string v0, "id"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 4166
    const/16 v0, 0x23

    goto/16 :goto_0

    .line 4167
    :cond_22
    const-string v0, "ja"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 4168
    const/16 v0, 0x24

    goto/16 :goto_0

    .line 4170
    :cond_23
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public static SaveBitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 6
    .parameter "bitmap"
    .parameter "strFilePath"

    .prologue
    .line 5956
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5957
    .local v1, fileCacheItem:Ljava/io/File;
    const/4 v2, 0x0

    .line 5959
    .local v2, out:Ljava/io/OutputStream;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 5960
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 5964
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 5965
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5967
    .end local v2           #out:Ljava/io/OutputStream;
    .local v3, out:Ljava/io/OutputStream;
    :try_start_1
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p0, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 5972
    if-eqz v3, :cond_1

    .line 5973
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_0
    move-object v2, v3

    .line 5979
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    :cond_2
    :goto_1
    return-void

    .line 5968
    :catch_0
    move-exception v0

    .line 5969
    .local v0, e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5972
    if-eqz v2, :cond_2

    .line 5973
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 5975
    :catch_1
    move-exception v0

    .line 5976
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 5971
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 5972
    :goto_3
    if-eqz v2, :cond_3

    .line 5973
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 5971
    :cond_3
    :goto_4
    throw v4

    .line 5975
    :catch_2
    move-exception v0

    .line 5976
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 5975
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catch_3
    move-exception v0

    .line 5976
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 5971
    .end local v0           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_3

    .line 5968
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_2
.end method

.method public static SpamMessageFilterForVIPMode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "number"
    .parameter "text"

    .prologue
    const/4 v5, 0x1

    .line 5522
    const/4 v1, 0x0

    .line 5523
    .local v1, isSpam:Z
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isVIPModeOn(Landroid/content/Context;)I

    move-result v0

    .line 5525
    .local v0, MessageBlockMode:I
    const-string v2, "Mms/MessageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SpamMessageFilterForVIPMode - number : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5528
    if-ne v0, v5, :cond_1

    .line 5529
    const/4 v1, 0x1

    .line 5550
    :cond_0
    :goto_0
    const-string v2, "Mms/MessageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SpamMessageFilterForVIPMode: isSpam = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5552
    return v1

    .line 5530
    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 5531
    if-eqz p1, :cond_2

    .line 5532
    invoke-static {p0, p1}, Lcom/android/mms/ui/MessageUtils;->isVIPModeBlackNumberMessage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v5, :cond_2

    .line 5533
    const/4 v1, 0x1

    .line 5537
    :cond_2
    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    .line 5538
    invoke-static {p0, p2}, Lcom/android/mms/ui/MessageUtils;->isVIPModeBlackStringMessage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v5, :cond_0

    .line 5539
    const/4 v1, 0x1

    goto :goto_0

    .line 5542
    :cond_3
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 5543
    if-eqz p1, :cond_0

    .line 5544
    invoke-static {p0, p1}, Lcom/android/mms/ui/MessageUtils;->isVIPModeWhiteNumberMessage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5545
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static SpamNumberisAlreadInUse(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "address"

    .prologue
    const/4 v0, 0x0

    .line 5221
    invoke-static {p0, v0, p1}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->checkAlreadyInUse(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5222
    const/4 v0, 0x1

    .line 5225
    :cond_0
    return v0
.end method

.method static synthetic access$100()[Z
    .locals 1

    .prologue
    .line 184
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->mBlockCheckedBefore:[Z

    return-object v0
.end method

.method static synthetic access$200()[Z
    .locals 1

    .prologue
    .line 184
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->mBlockChecked:[Z

    return-object v0
.end method

.method public static calibrationDone(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 2
    .parameter "activity"
    .parameter "name"
    .parameter "clibration"

    .prologue
    .line 5837
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getSharedPreference(Landroid/app/Activity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5838
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 5839
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 5840
    return-void
.end method

.method public static canAddToContacts(Lcom/android/mms/data/Contact;)Z
    .locals 4
    .parameter "contact"

    .prologue
    const/4 v2, 0x0

    .line 2885
    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2886
    .local v1, name:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2887
    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2888
    .local v0, c:C
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isSpecialChar(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2902
    .end local v0           #c:C
    :cond_0
    :goto_0
    return v2

    .line 2892
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2893
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2894
    .restart local v0       #c:C
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isSpecialChar(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2899
    .end local v0           #c:C
    :cond_2
    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isValidMmsAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2902
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static checkArrayIndex(I[F)Z
    .locals 2
    .parameter "index"
    .parameter "array"

    .prologue
    const/4 v0, 0x0

    .line 4961
    if-nez p1, :cond_1

    .line 4967
    :cond_0
    :goto_0
    return v0

    .line 4964
    :cond_1
    if-ltz p0, :cond_0

    array-length v1, p1

    if-ge p0, v1, :cond_0

    .line 4967
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static checkArrayIndex(I[I)Z
    .locals 2
    .parameter "index"
    .parameter "array"

    .prologue
    const/4 v0, 0x0

    .line 4941
    if-nez p1, :cond_1

    .line 4947
    :cond_0
    :goto_0
    return v0

    .line 4944
    :cond_1
    if-ltz p0, :cond_0

    array-length v1, p1

    if-ge p0, v1, :cond_0

    .line 4947
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static checkArrayIndex(I[Ljava/lang/String;)Z
    .locals 2
    .parameter "index"
    .parameter "array"

    .prologue
    const/4 v0, 0x0

    .line 4951
    if-nez p1, :cond_1

    .line 4957
    :cond_0
    :goto_0
    return v0

    .line 4954
    :cond_1
    if-ltz p0, :cond_0

    array-length v1, p1

    if-ge p0, v1, :cond_0

    .line 4957
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static checkCallBlockAlreadyInUse(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 13
    .parameter "context"
    .parameter "address"
    .parameter "isVideocall"

    .prologue
    const/4 v12, 0x0

    const/4 v4, 0x0

    .line 5435
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v11, v12

    .line 5483
    :goto_0
    return v11

    .line 5438
    :cond_1
    const/4 v11, 0x0

    .line 5439
    .local v11, retValue:Z
    const/4 v7, 0x0

    .line 5440
    .local v7, cur:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 5441
    .local v8, nReject_match:I
    const/4 v10, 0x1

    .line 5442
    .local v10, reject_checked:I
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 5443
    .local v6, FIND_WHERE:Ljava/lang/StringBuffer;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "reject_number"

    aput-object v0, v2, v12

    .line 5448
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lcom/android/mms/ui/MessageUtils;->MIN_MATCH_CHINA:I

    if-lt v0, v1, :cond_2

    .line 5449
    const-string v0, "reject_number"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5450
    const-string v0, " LIKE \'%"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/android/mms/ui/MessageUtils;->MIN_MATCH_CHINA:I

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5457
    :goto_1
    const-string v0, " AND reject_match = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5458
    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 5459
    const-string v0, " AND reject_checked = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5460
    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 5462
    if-nez p2, :cond_3

    .line 5463
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/ui/MessageUtils;->AUTOREJECT_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 5467
    :goto_2
    if-nez v7, :cond_4

    .line 5468
    const-string v0, "Mms/MessageUtils"

    const-string v1, "checkCallBlockAlreadyInUse : false, cursor is null"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v11, v12

    .line 5469
    goto :goto_0

    .line 5453
    :cond_2
    const-string v0, "reject_number"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5454
    const-string v0, "="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 5465
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/ui/MessageUtils;->AUTOREJECT_VIDEOCALL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    goto :goto_2

    .line 5471
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5472
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_7

    .line 5474
    :cond_5
    const-string v0, "reject_number"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 5475
    .local v9, rejectNumber:Ljava/lang/String;
    invoke-static {v9, p1}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5476
    const-string v0, "Mms/MessageUtils"

    const-string v1, "checkCallBlockAlreadyInUse : true"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5477
    const/4 v11, 0x1

    .line 5479
    :cond_6
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 5481
    .end local v9           #rejectNumber:Ljava/lang/String;
    :cond_7
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 5482
    const/4 v7, 0x0

    .line 5483
    goto/16 :goto_0
.end method

.method public static checkRingtoneIsValid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "ringtoneStr"

    .prologue
    .line 6455
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isValideFile(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 6469
    .end local p1
    .local v2, ringtoneStr:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 6459
    .end local v2           #ringtoneStr:Ljava/lang/String;
    .restart local p1
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 6460
    .local v0, ringTone:Landroid/media/Ringtone;
    if-nez v0, :cond_1

    .line 6461
    const/4 v3, 0x2

    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 6462
    .local v1, ringtone:Landroid/net/Uri;
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 6464
    const-string v3, "Mms/MessageUtils"

    const-string v4, "Selected ringtone is invalid"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1           #ringtone:Landroid/net/Uri;
    :goto_1
    move-object v2, p1

    .line 6469
    .end local p1
    .restart local v2       #ringtoneStr:Ljava/lang/String;
    goto :goto_0

    .line 6466
    .end local v2           #ringtoneStr:Ljava/lang/String;
    .restart local p1
    :cond_1
    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    goto :goto_1
.end method

.method private static confirmReadReportDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 2
    .parameter "context"
    .parameter "positiveListener"
    .parameter "negativeListener"
    .parameter "cancelListener"

    .prologue
    .line 2316
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2317
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2318
    const v1, 0x7f0c00c1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2319
    const v1, 0x7f0c00c2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2320
    const v1, 0x7f0c004f

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2321
    const v1, 0x7f0c0050

    invoke-virtual {v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2322
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 2323
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2324
    return-void
.end method

.method public static convertCharToSpace(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "msgText"

    .prologue
    const v10, 0xdfff

    const v9, 0xd800

    .line 3494
    if-eqz p0, :cond_0

    .line 3495
    const-string v6, "Mms/MessageUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[convertCharaterforNTT] msgText.length() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3497
    :cond_0
    move-object v0, p0

    .line 3498
    .local v0, Tempbuff:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3499
    .local v3, stringBuilder:Ljava/lang/StringBuilder;
    const/16 v4, 0x20

    .line 3500
    .local v4, v:C
    const/16 v5, 0x20

    .line 3502
    .local v5, v1:C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_b

    .line 3503
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 3504
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_1

    .line 3505
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 3508
    :cond_1
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    sget-object v6, Lcom/android/mms/ui/MessageUtils;->PART_13_CHARS_UNICODE:[C

    array-length v6, v6

    if-ge v2, v6, :cond_2

    .line 3509
    sget-object v6, Lcom/android/mms/ui/MessageUtils;->part13charsMap_UNICIDE:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 3510
    const/16 v4, 0x20

    .line 3515
    :cond_2
    const/16 v6, 0xd

    if-eq v4, v6, :cond_3

    const/16 v6, 0xa

    if-ne v4, v6, :cond_4

    .line 3516
    :cond_3
    const/16 v4, 0x20

    .line 3520
    :cond_4
    if-gt v9, v4, :cond_7

    if-lt v10, v4, :cond_7

    if-gt v9, v5, :cond_7

    if-lt v10, v5, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_7

    .line 3524
    const v6, 0xdbba

    if-ne v6, v4, :cond_8

    .line 3525
    const v6, 0xdf1a

    if-ne v6, v5, :cond_6

    .line 3526
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3527
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3528
    add-int/lit8 v1, v1, 0x1

    .line 3502
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3508
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3532
    :cond_6
    const/16 v4, 0x20

    .line 3533
    add-int/lit8 v1, v1, 0x1

    .line 3554
    :cond_7
    :goto_3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 3535
    :cond_8
    const v6, 0xdbb9

    if-ne v6, v4, :cond_a

    .line 3536
    const v6, 0xdd23

    if-ne v6, v5, :cond_9

    .line 3537
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3538
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3539
    add-int/lit8 v1, v1, 0x1

    .line 3540
    goto :goto_2

    .line 3543
    :cond_9
    const/16 v4, 0x20

    .line 3544
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 3548
    :cond_a
    const/16 v4, 0x20

    .line 3549
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 3556
    .end local v2           #j:I
    :cond_b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3557
    const-string v6, "Mms/MessageUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[convertCharaterforNTT] stringBuilder "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 3559
    return-object p0
.end method

.method public static copyBackgroundFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16
    .parameter "pTargetFileName"
    .parameter "pSource"
    .parameter "pTarget"

    .prologue
    .line 6579
    const/4 v7, 0x0

    .line 6580
    .local v7, bSave:Z
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v12

    .line 6581
    .local v12, mImageOutputUri:Landroid/net/Uri;
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6582
    .local v15, sourceFile:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6583
    const/4 v2, 0x0

    .line 6634
    :goto_0
    return v2

    .line 6585
    :cond_0
    const/4 v10, 0x0

    .line 6586
    .local v10, inputStream:Ljava/io/FileInputStream;
    const/4 v13, 0x0

    .line 6587
    .local v13, outputStream:Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 6588
    .local v1, fcin:Ljava/nio/channels/FileChannel;
    const/4 v6, 0x0

    .line 6591
    .local v6, fcout:Ljava/nio/channels/FileChannel;
    :try_start_0
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v15}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6592
    .end local v10           #inputStream:Ljava/io/FileInputStream;
    .local v11, inputStream:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v14, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v14, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_d

    .line 6595
    .end local v13           #outputStream:Ljava/io/FileOutputStream;
    .local v14, outputStream:Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v11}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 6596
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 6598
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    .line 6599
    .local v4, size:J
    const-wide/16 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_e

    .line 6600
    const/4 v7, 0x1

    .line 6605
    if-eqz v6, :cond_1

    .line 6606
    :try_start_3
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9

    .line 6611
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 6612
    :try_start_4
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a

    .line 6617
    :cond_2
    :goto_2
    if-eqz v14, :cond_3

    .line 6618
    :try_start_5
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_b

    .line 6623
    :cond_3
    :goto_3
    if-eqz v11, :cond_4

    .line 6624
    :try_start_6
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_c

    :cond_4
    :goto_4
    move-object v13, v14

    .end local v14           #outputStream:Ljava/io/FileOutputStream;
    .restart local v13       #outputStream:Ljava/io/FileOutputStream;
    move-object v10, v11

    .line 6629
    .end local v4           #size:J
    .end local v11           #inputStream:Ljava/io/FileInputStream;
    .restart local v10       #inputStream:Ljava/io/FileInputStream;
    :cond_5
    :goto_5
    new-instance v9, Ljava/io/File;

    invoke-virtual {v12}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6630
    .local v9, f:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 6631
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_6
    move v2, v7

    .line 6634
    goto :goto_0

    .line 6601
    .end local v9           #f:Ljava/io/File;
    :catch_0
    move-exception v8

    .line 6602
    .local v8, e:Ljava/lang/Exception;
    :goto_6
    :try_start_7
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 6605
    if-eqz v6, :cond_7

    .line 6606
    :try_start_8
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 6611
    :cond_7
    :goto_7
    if-eqz v1, :cond_8

    .line 6612
    :try_start_9
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 6617
    :cond_8
    :goto_8
    if-eqz v13, :cond_9

    .line 6618
    :try_start_a
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 6623
    :cond_9
    :goto_9
    if-eqz v10, :cond_5

    .line 6624
    :try_start_b
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_5

    .line 6625
    :catch_1
    move-exception v2

    goto :goto_5

    .line 6604
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 6605
    :goto_a
    if-eqz v6, :cond_a

    .line 6606
    :try_start_c
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    .line 6611
    :cond_a
    :goto_b
    if-eqz v1, :cond_b

    .line 6612
    :try_start_d
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    .line 6617
    :cond_b
    :goto_c
    if-eqz v13, :cond_c

    .line 6618
    :try_start_e
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    .line 6623
    :cond_c
    :goto_d
    if-eqz v10, :cond_d

    .line 6624
    :try_start_f
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    .line 6604
    :cond_d
    :goto_e
    throw v2

    .line 6607
    :catch_2
    move-exception v3

    goto :goto_b

    .line 6613
    :catch_3
    move-exception v3

    goto :goto_c

    .line 6619
    :catch_4
    move-exception v3

    goto :goto_d

    .line 6625
    :catch_5
    move-exception v3

    goto :goto_e

    .line 6607
    .restart local v8       #e:Ljava/lang/Exception;
    :catch_6
    move-exception v2

    goto :goto_7

    .line 6613
    :catch_7
    move-exception v2

    goto :goto_8

    .line 6619
    :catch_8
    move-exception v2

    goto :goto_9

    .line 6607
    .end local v8           #e:Ljava/lang/Exception;
    .end local v10           #inputStream:Ljava/io/FileInputStream;
    .end local v13           #outputStream:Ljava/io/FileOutputStream;
    .restart local v4       #size:J
    .restart local v11       #inputStream:Ljava/io/FileInputStream;
    .restart local v14       #outputStream:Ljava/io/FileOutputStream;
    :catch_9
    move-exception v2

    goto :goto_1

    .line 6613
    :catch_a
    move-exception v2

    goto :goto_2

    .line 6619
    :catch_b
    move-exception v2

    goto :goto_3

    .line 6625
    :catch_c
    move-exception v2

    goto :goto_4

    .line 6604
    .end local v4           #size:J
    .end local v14           #outputStream:Ljava/io/FileOutputStream;
    .restart local v13       #outputStream:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v2

    move-object v10, v11

    .end local v11           #inputStream:Ljava/io/FileInputStream;
    .restart local v10       #inputStream:Ljava/io/FileInputStream;
    goto :goto_a

    .end local v10           #inputStream:Ljava/io/FileInputStream;
    .end local v13           #outputStream:Ljava/io/FileOutputStream;
    .restart local v11       #inputStream:Ljava/io/FileInputStream;
    .restart local v14       #outputStream:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v2

    move-object v13, v14

    .end local v14           #outputStream:Ljava/io/FileOutputStream;
    .restart local v13       #outputStream:Ljava/io/FileOutputStream;
    move-object v10, v11

    .end local v11           #inputStream:Ljava/io/FileInputStream;
    .restart local v10       #inputStream:Ljava/io/FileInputStream;
    goto :goto_a

    .line 6601
    .end local v10           #inputStream:Ljava/io/FileInputStream;
    .restart local v11       #inputStream:Ljava/io/FileInputStream;
    :catch_d
    move-exception v8

    move-object v10, v11

    .end local v11           #inputStream:Ljava/io/FileInputStream;
    .restart local v10       #inputStream:Ljava/io/FileInputStream;
    goto :goto_6

    .end local v10           #inputStream:Ljava/io/FileInputStream;
    .end local v13           #outputStream:Ljava/io/FileOutputStream;
    .restart local v11       #inputStream:Ljava/io/FileInputStream;
    .restart local v14       #outputStream:Ljava/io/FileOutputStream;
    :catch_e
    move-exception v8

    move-object v13, v14

    .end local v14           #outputStream:Ljava/io/FileOutputStream;
    .restart local v13       #outputStream:Ljava/io/FileOutputStream;
    move-object v10, v11

    .end local v11           #inputStream:Ljava/io/FileInputStream;
    .restart local v10       #inputStream:Ljava/io/FileInputStream;
    goto :goto_6
.end method

.method public static copyPartDrmCheck(Landroid/content/Context;Lcom/google/android/mms/pdu/PduPart;Ljava/lang/String;)Z
    .locals 30
    .parameter "context"
    .parameter "part"
    .parameter "fallback"

    .prologue
    .line 6256
    const/16 v29, 0x0

    .line 6257
    .local v29, uri:Landroid/net/Uri;
    new-instance v28, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v2

    move-object/from16 v0, v28

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 6258
    .local v28, type:Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Lcom/android/mms/drm/DrmUtils;->isDrmType(Ljava/lang/String;)Z

    move-result v22

    .line 6259
    .local v22, isDrm:Z
    const/4 v12, 0x0

    .line 6260
    .local v12, drmFilePath:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 6263
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_0

    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 6264
    :cond_0
    const/16 v26, 0x0

    .line 6268
    if-eqz v10, :cond_1

    .line 6269
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 6270
    const/4 v10, 0x0

    .line 6382
    :cond_1
    :goto_0
    return v26

    .line 6265
    :cond_2
    :try_start_1
    const-string v2, "_data"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 6266
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v29

    .line 6268
    if-eqz v10, :cond_3

    .line 6269
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 6270
    const/4 v10, 0x0

    .line 6274
    :cond_3
    if-eqz v22, :cond_4

    .line 6275
    invoke-static {}, Lcom/android/mms/drm/DrmWrapper;->getDrmClient()Landroid/drm/DrmManagerClient;

    move-result-object v2

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v28

    .line 6278
    :cond_4
    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 6280
    const/16 v26, 0x1

    goto :goto_0

    .line 6268
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_5

    .line 6269
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 6270
    const/4 v10, 0x0

    .line 6268
    :cond_5
    throw v2

    .line 6285
    :cond_6
    const/16 v21, 0x0

    .line 6286
    .local v21, input:Ljava/io/InputStream;
    const/16 v18, 0x0

    .line 6288
    .local v18, fout:Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v21

    .line 6289
    move-object/from16 v0, v21

    instance-of v2, v0, Ljava/io/FileInputStream;

    if-eqz v2, :cond_13

    .line 6290
    move-object/from16 v0, v21

    check-cast v0, Ljava/io/FileInputStream;

    move-object/from16 v17, v0

    .line 6292
    .local v17, fin:Ljava/io/FileInputStream;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v23

    .line 6293
    .local v23, location:[B
    if-nez v23, :cond_7

    .line 6294
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v23

    .line 6296
    :cond_7
    if-nez v23, :cond_8

    .line 6297
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v23

    .line 6301
    :cond_8
    if-nez v23, :cond_c

    .line 6303
    move-object/from16 v16, p2

    .line 6309
    .local v16, fileName:Ljava/lang/String;
    :goto_1
    new-instance v24, Ljava/io/File;

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6310
    .local v24, originalFile:Ljava/io/File;
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    .line 6316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    sget-object v2, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 6321
    .local v11, dir:Ljava/lang/String;
    const/16 v2, 0x2e

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v20

    .local v20, index:I
    const/4 v2, -0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_e

    .line 6323
    invoke-static {}, Lcom/android/mms/util/MessageMimeTypeMap;->getSingleton()Lcom/android/mms/util/MessageMimeTypeMap;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lcom/android/mms/util/MessageMimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 6328
    .local v14, extension:Ljava/lang/String;
    :goto_3
    if-eqz v22, :cond_9

    .line 6329
    const-string v2, "dcf"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 6330
    const-string v14, "dcf"

    .line 6333
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Lcom/android/mms/drm/DrmUtils;->getUniqueDestination(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    .line 6336
    .local v15, file:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v25

    .line 6337
    .local v25, parentFile:Ljava/io/File;
    if-eqz v25, :cond_f

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_f

    .line 6338
    const-string v2, "Mms/MessageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[MMS] copyPart: mkdirs for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9

    .line 6339
    const/4 v2, 0x0

    .line 6360
    const/16 v26, 0x1

    .line 6361
    .local v26, returnValue:Z
    if-eqz v21, :cond_a

    .line 6363
    :try_start_3
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 6370
    :cond_a
    :goto_4
    if-eqz v18, :cond_b

    .line 6372
    :try_start_4
    throw v18
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 6379
    :cond_b
    :goto_5
    if-eqz v26, :cond_1

    move/from16 v26, v2

    .line 6339
    goto/16 :goto_0

    .line 6307
    .end local v11           #dir:Ljava/lang/String;
    .end local v14           #extension:Ljava/lang/String;
    .end local v15           #file:Ljava/io/File;
    .end local v16           #fileName:Ljava/lang/String;
    .end local v20           #index:I
    .end local v24           #originalFile:Ljava/io/File;
    .end local v25           #parentFile:Ljava/io/File;
    .end local v26           #returnValue:Z
    :cond_c
    :try_start_5
    new-instance v16, Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .restart local v16       #fileName:Ljava/lang/String;
    goto/16 :goto_1

    .line 6316
    .restart local v24       #originalFile:Ljava/io/File;
    :cond_d
    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    goto/16 :goto_2

    .line 6325
    .restart local v11       #dir:Ljava/lang/String;
    .restart local v20       #index:I
    :cond_e
    add-int/lit8 v2, v20, 0x1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 6326
    .restart local v14       #extension:Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_3

    .line 6342
    .restart local v15       #file:Ljava/io/File;
    .restart local v25       #parentFile:Ljava/io/File;
    :cond_f
    new-instance v19, Ljava/io/FileOutputStream;

    move-object/from16 v0, v19

    invoke-direct {v0, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9

    .line 6344
    .end local v18           #fout:Ljava/io/FileOutputStream;
    .local v19, fout:Ljava/io/FileOutputStream;
    const/16 v2, 0x1f40

    :try_start_6
    new-array v9, v2, [B

    .line 6345
    .local v9, buffer:[B
    const/16 v27, 0x0

    .line 6346
    .local v27, size:I
    :goto_6
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/io/FileInputStream;->read([B)I

    move-result v27

    const/4 v2, -0x1

    move/from16 v0, v27

    if-eq v0, v2, :cond_12

    .line 6347
    const/4 v2, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v9, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_6

    .line 6355
    .end local v9           #buffer:[B
    .end local v27           #size:I
    :catch_0
    move-exception v13

    move-object/from16 v18, v19

    .line 6357
    .end local v11           #dir:Ljava/lang/String;
    .end local v14           #extension:Ljava/lang/String;
    .end local v15           #file:Ljava/io/File;
    .end local v16           #fileName:Ljava/lang/String;
    .end local v17           #fin:Ljava/io/FileInputStream;
    .end local v19           #fout:Ljava/io/FileOutputStream;
    .end local v20           #index:I
    .end local v23           #location:[B
    .end local v24           #originalFile:Ljava/io/File;
    .end local v25           #parentFile:Ljava/io/File;
    .local v13, e:Ljava/io/IOException;
    .restart local v18       #fout:Ljava/io/FileOutputStream;
    :goto_7
    :try_start_7
    const-string v2, "Mms/MessageUtils"

    const-string v3, "IOException caught while opening or reading stream"

    invoke-static {v2, v3, v13}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 6358
    const/4 v2, 0x0

    .line 6360
    const/16 v26, 0x1

    .line 6361
    .restart local v26       #returnValue:Z
    if-eqz v21, :cond_10

    .line 6363
    :try_start_8
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 6370
    :cond_10
    :goto_8
    if-eqz v18, :cond_11

    .line 6372
    :try_start_9
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 6379
    :cond_11
    :goto_9
    if-eqz v26, :cond_1

    move/from16 v26, v2

    .line 6358
    goto/16 :goto_0

    .line 6352
    .end local v13           #e:Ljava/io/IOException;
    .end local v18           #fout:Ljava/io/FileOutputStream;
    .end local v26           #returnValue:Z
    .restart local v9       #buffer:[B
    .restart local v11       #dir:Ljava/lang/String;
    .restart local v14       #extension:Ljava/lang/String;
    .restart local v15       #file:Ljava/io/File;
    .restart local v16       #fileName:Ljava/lang/String;
    .restart local v17       #fin:Ljava/io/FileInputStream;
    .restart local v19       #fout:Ljava/io/FileOutputStream;
    .restart local v20       #index:I
    .restart local v23       #location:[B
    .restart local v24       #originalFile:Ljava/io/File;
    .restart local v25       #parentFile:Ljava/io/File;
    .restart local v27       #size:I
    :cond_12
    :try_start_a
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-static {v15}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    move-object/from16 v18, v19

    .line 6360
    .end local v9           #buffer:[B
    .end local v11           #dir:Ljava/lang/String;
    .end local v14           #extension:Ljava/lang/String;
    .end local v15           #file:Ljava/io/File;
    .end local v16           #fileName:Ljava/lang/String;
    .end local v17           #fin:Ljava/io/FileInputStream;
    .end local v19           #fout:Ljava/io/FileOutputStream;
    .end local v20           #index:I
    .end local v23           #location:[B
    .end local v24           #originalFile:Ljava/io/File;
    .end local v25           #parentFile:Ljava/io/File;
    .end local v27           #size:I
    .restart local v18       #fout:Ljava/io/FileOutputStream;
    :cond_13
    const/16 v26, 0x1

    .line 6361
    .restart local v26       #returnValue:Z
    if-eqz v21, :cond_14

    .line 6363
    :try_start_b
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 6370
    :cond_14
    :goto_a
    if-eqz v18, :cond_15

    .line 6372
    :try_start_c
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 6379
    :cond_15
    :goto_b
    if-eqz v26, :cond_1

    .line 6382
    const/16 v26, 0x1

    goto/16 :goto_0

    .line 6360
    :cond_16
    throw v2

    .end local v26           #returnValue:Z
    :catchall_1
    move-exception v2

    :goto_c
    const/16 v26, 0x1

    .line 6361
    .restart local v26       #returnValue:Z
    if-eqz v21, :cond_17

    .line 6363
    :try_start_d
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1

    .line 6370
    :cond_17
    :goto_d
    if-eqz v18, :cond_18

    .line 6372
    :try_start_e
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2

    .line 6379
    :cond_18
    :goto_e
    if-nez v26, :cond_16

    goto/16 :goto_0

    .line 6364
    :catch_1
    move-exception v13

    .line 6366
    .restart local v13       #e:Ljava/io/IOException;
    const-string v3, "Mms/MessageUtils"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v3, v4, v13}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6367
    const/16 v26, 0x0

    goto :goto_d

    .line 6373
    .end local v13           #e:Ljava/io/IOException;
    :catch_2
    move-exception v13

    .line 6375
    .restart local v13       #e:Ljava/io/IOException;
    const-string v3, "Mms/MessageUtils"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v3, v4, v13}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6376
    const/16 v26, 0x0

    goto :goto_e

    .line 6364
    :catch_3
    move-exception v13

    .line 6366
    const-string v3, "Mms/MessageUtils"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v3, v4, v13}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6367
    const/16 v26, 0x0

    goto :goto_8

    .line 6373
    :catch_4
    move-exception v13

    .line 6375
    const-string v3, "Mms/MessageUtils"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v3, v4, v13}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6376
    const/16 v26, 0x0

    goto :goto_9

    .line 6364
    .end local v13           #e:Ljava/io/IOException;
    .restart local v11       #dir:Ljava/lang/String;
    .restart local v14       #extension:Ljava/lang/String;
    .restart local v15       #file:Ljava/io/File;
    .restart local v16       #fileName:Ljava/lang/String;
    .restart local v17       #fin:Ljava/io/FileInputStream;
    .restart local v20       #index:I
    .restart local v23       #location:[B
    .restart local v24       #originalFile:Ljava/io/File;
    .restart local v25       #parentFile:Ljava/io/File;
    :catch_5
    move-exception v13

    .line 6366
    .restart local v13       #e:Ljava/io/IOException;
    const-string v3, "Mms/MessageUtils"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v3, v4, v13}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6367
    const/16 v26, 0x0

    goto/16 :goto_4

    .line 6373
    .end local v13           #e:Ljava/io/IOException;
    :catch_6
    move-exception v13

    .line 6375
    .restart local v13       #e:Ljava/io/IOException;
    const-string v3, "Mms/MessageUtils"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v3, v4, v13}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6376
    const/16 v26, 0x0

    goto/16 :goto_5

    .line 6364
    .end local v11           #dir:Ljava/lang/String;
    .end local v13           #e:Ljava/io/IOException;
    .end local v14           #extension:Ljava/lang/String;
    .end local v15           #file:Ljava/io/File;
    .end local v16           #fileName:Ljava/lang/String;
    .end local v17           #fin:Ljava/io/FileInputStream;
    .end local v20           #index:I
    .end local v23           #location:[B
    .end local v24           #originalFile:Ljava/io/File;
    .end local v25           #parentFile:Ljava/io/File;
    :catch_7
    move-exception v13

    .line 6366
    .restart local v13       #e:Ljava/io/IOException;
    const-string v2, "Mms/MessageUtils"

    const-string v3, "IOException caught while closing stream"

    invoke-static {v2, v3, v13}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6367
    const/16 v26, 0x0

    goto :goto_a

    .line 6373
    .end local v13           #e:Ljava/io/IOException;
    :catch_8
    move-exception v13

    .line 6375
    .restart local v13       #e:Ljava/io/IOException;
    const-string v2, "Mms/MessageUtils"

    const-string v3, "IOException caught while closing stream"

    invoke-static {v2, v3, v13}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6376
    const/16 v26, 0x0

    goto :goto_b

    .line 6360
    .end local v13           #e:Ljava/io/IOException;
    .end local v18           #fout:Ljava/io/FileOutputStream;
    .end local v26           #returnValue:Z
    .restart local v11       #dir:Ljava/lang/String;
    .restart local v14       #extension:Ljava/lang/String;
    .restart local v15       #file:Ljava/io/File;
    .restart local v16       #fileName:Ljava/lang/String;
    .restart local v17       #fin:Ljava/io/FileInputStream;
    .restart local v19       #fout:Ljava/io/FileOutputStream;
    .restart local v20       #index:I
    .restart local v23       #location:[B
    .restart local v24       #originalFile:Ljava/io/File;
    .restart local v25       #parentFile:Ljava/io/File;
    :catchall_2
    move-exception v2

    move-object/from16 v18, v19

    .end local v19           #fout:Ljava/io/FileOutputStream;
    .restart local v18       #fout:Ljava/io/FileOutputStream;
    goto :goto_c

    .line 6355
    .end local v11           #dir:Ljava/lang/String;
    .end local v14           #extension:Ljava/lang/String;
    .end local v15           #file:Ljava/io/File;
    .end local v16           #fileName:Ljava/lang/String;
    .end local v17           #fin:Ljava/io/FileInputStream;
    .end local v20           #index:I
    .end local v23           #location:[B
    .end local v24           #originalFile:Ljava/io/File;
    .end local v25           #parentFile:Ljava/io/File;
    :catch_9
    move-exception v13

    goto/16 :goto_7
.end method

.method public static createAddContactIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 3
    .parameter "uri"

    .prologue
    .line 6079
    const/4 v0, 0x0

    .line 6080
    .local v0, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getContactReplacePackageAs()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.jcontacts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6081
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "com.android.jcontacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 6082
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "com.android.jcontacts"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6086
    :goto_0
    return-object v0

    .line 6084
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_0
.end method

.method public static createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "address"

    .prologue
    const/4 v2, 0x0

    .line 6070
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6071
    const-string v1, "mailto"

    invoke-static {v1, p0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 6075
    .local v0, uri:Landroid/net/Uri;
    :goto_0
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->createAddContactIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    return-object v1

    .line 6073
    .end local v0           #uri:Landroid/net/Uri;
    :cond_0
    const-string v1, "tel"

    invoke-static {v1, p0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .restart local v0       #uri:Landroid/net/Uri;
    goto :goto_0
.end method

.method public static createLocalProfileIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 6109
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 6110
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "newLocalProfile"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6111
    return-object v0
.end method

.method public static createVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 4193
    const/4 v0, 0x0

    .line 4194
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 4196
    .local v1, retriever:Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {v1, p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 4197
    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 4218
    :try_start_1
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4223
    :goto_0
    return-object v0

    .line 4217
    :catchall_0
    move-exception v2

    .line 4218
    :try_start_2
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 4217
    :goto_1
    throw v2

    .line 4214
    :catch_0
    move-exception v2

    .line 4218
    :try_start_3
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 4219
    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v3

    goto :goto_1
.end method

.method public static createVideoThumbnailAt(Landroid/content/Context;Landroid/net/Uri;J)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "context"
    .parameter "uri"
    .parameter "position"

    .prologue
    .line 4227
    const/4 v0, 0x0

    .line 4228
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 4230
    .local v1, retriever:Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {v1, p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 4231
    invoke-virtual {v1, p2, p3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 4237
    :try_start_1
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4242
    :goto_0
    return-object v0

    .line 4236
    :catchall_0
    move-exception v2

    .line 4237
    :try_start_2
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 4236
    :goto_1
    throw v2

    .line 4233
    :catch_0
    move-exception v2

    .line 4237
    :try_start_3
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 4238
    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v3

    goto :goto_1
.end method

.method public static createblockNumberSettingDialog(Landroid/content/Context;Lcom/android/mms/data/Contact;)V
    .locals 10
    .parameter "context"
    .parameter "contact"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 5086
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5087
    .local v1, b:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 5088
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 5090
    invoke-static {}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->fillIfCountChanged()V

    .line 5092
    invoke-static {p0}, Lcom/android/mms/util/TelephonyUtils;->isVoiceCallAvailabe(Landroid/content/Context;)Z

    move-result v4

    .line 5093
    .local v4, isVoiceCallAvailabe:Z
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVideoCall()Z

    move-result v3

    .line 5096
    .local v3, isVTCallAvailabe:Z
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v7, v5}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->checkAlreadyEnabledandUsed(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 5097
    sget-object v5, Lcom/android/mms/ui/MessageUtils;->mBlockCheckedBefore:[Z

    sget-object v6, Lcom/android/mms/ui/MessageUtils;->mBlockChecked:[Z

    aput-boolean v7, v6, v7

    aput-boolean v7, v5, v7

    .line 5101
    :goto_0
    if-eqz v4, :cond_0

    .line 5103
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v7}, Lcom/android/mms/ui/MessageUtils;->checkCallBlockAlreadyInUse(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_2

    .line 5104
    sget-object v5, Lcom/android/mms/ui/MessageUtils;->mBlockCheckedBefore:[Z

    sget-object v6, Lcom/android/mms/ui/MessageUtils;->mBlockChecked:[Z

    aput-boolean v7, v6, v8

    aput-boolean v7, v5, v8

    .line 5108
    :goto_1
    if-eqz v3, :cond_0

    .line 5110
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v8}, Lcom/android/mms/ui/MessageUtils;->checkCallBlockAlreadyInUse(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_3

    .line 5111
    sget-object v5, Lcom/android/mms/ui/MessageUtils;->mBlockCheckedBefore:[Z

    sget-object v6, Lcom/android/mms/ui/MessageUtils;->mBlockChecked:[Z

    aput-boolean v7, v6, v9

    aput-boolean v7, v5, v9

    .line 5117
    :cond_0
    :goto_2
    if-eqz v4, :cond_5

    .line 5119
    if-eqz v3, :cond_4

    .line 5120
    const v5, 0x7f08002f

    sget-object v6, Lcom/android/mms/ui/MessageUtils;->mBlockChecked:[Z

    new-instance v7, Lcom/android/mms/ui/MessageUtils$15;

    invoke-direct {v7}, Lcom/android/mms/ui/MessageUtils$15;-><init>()V

    invoke-virtual {v1, v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5169
    :goto_3
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5170
    .local v0, a:Ljava/lang/String;
    const v5, 0x7f0c00e9

    new-instance v6, Lcom/android/mms/ui/MessageUtils$18;

    invoke-direct {v6, p0, p1}, Lcom/android/mms/ui/MessageUtils$18;-><init>(Landroid/content/Context;Lcom/android/mms/data/Contact;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5208
    const v5, 0x7f0c0050

    new-instance v6, Lcom/android/mms/ui/MessageUtils$19;

    invoke-direct {v6}, Lcom/android/mms/ui/MessageUtils$19;-><init>()V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5215
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 5216
    .local v2, blockNumberSettingDialog:Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 5217
    return-void

    .line 5099
    .end local v0           #a:Ljava/lang/String;
    .end local v2           #blockNumberSettingDialog:Landroid/app/AlertDialog;
    :cond_1
    sget-object v5, Lcom/android/mms/ui/MessageUtils;->mBlockCheckedBefore:[Z

    sget-object v6, Lcom/android/mms/ui/MessageUtils;->mBlockChecked:[Z

    aput-boolean v8, v6, v7

    aput-boolean v8, v5, v7

    goto :goto_0

    .line 5106
    :cond_2
    sget-object v5, Lcom/android/mms/ui/MessageUtils;->mBlockCheckedBefore:[Z

    sget-object v6, Lcom/android/mms/ui/MessageUtils;->mBlockChecked:[Z

    aput-boolean v8, v6, v8

    aput-boolean v8, v5, v8

    goto :goto_1

    .line 5113
    :cond_3
    sget-object v5, Lcom/android/mms/ui/MessageUtils;->mBlockCheckedBefore:[Z

    sget-object v6, Lcom/android/mms/ui/MessageUtils;->mBlockChecked:[Z

    aput-boolean v8, v6, v9

    aput-boolean v8, v5, v9

    goto :goto_2

    .line 5137
    :cond_4
    const v5, 0x7f08002e

    sget-object v6, Lcom/android/mms/ui/MessageUtils;->mBlockChecked:[Z

    new-instance v7, Lcom/android/mms/ui/MessageUtils$16;

    invoke-direct {v7}, Lcom/android/mms/ui/MessageUtils$16;-><init>()V

    invoke-virtual {v1, v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_3

    .line 5155
    :cond_5
    const v5, 0x7f08002d

    sget-object v6, Lcom/android/mms/ui/MessageUtils;->mBlockChecked:[Z

    new-instance v7, Lcom/android/mms/ui/MessageUtils$17;

    invoke-direct {v7}, Lcom/android/mms/ui/MessageUtils$17;-><init>()V

    invoke-virtual {v1, v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_3
.end method

.method public static doBoost(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "duringTime"

    .prologue
    .line 6140
    if-nez p0, :cond_0

    .line 6152
    :goto_0
    return-void

    .line 6144
    :cond_0
    new-instance v0, Landroid/os/DVFSHelper;

    const/16 v2, 0xc

    invoke-direct {v0, p0, v2}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    .line 6145
    .local v0, cpuBooster:Landroid/os/DVFSHelper;
    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v1

    .line 6146
    .local v1, supportedCPUFreqTable:[I
    if-eqz v1, :cond_1

    .line 6147
    const-string v2, "CPU"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 6150
    :cond_1
    invoke-virtual {v0, p1}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 6151
    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    goto :goto_0
.end method

.method public static existInVIPModeList(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 12
    .parameter "context"
    .parameter "address"
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 5721
    const/4 v11, 0x0

    .line 5723
    .local v11, result:Z
    const-string v6, "com.sec.android.app.firewall"

    .line 5724
    .local v6, AUTHORITY:Ljava/lang/String;
    const-string v8, "numbers"

    .line 5725
    .local v8, AUTOREJECT_NUMBER:Ljava/lang/String;
    const-string v7, "checked"

    .line 5726
    .local v7, AUTOREJECT_CHECKED:Ljava/lang/String;
    const/4 v9, 0x0

    .line 5728
    .local v9, AUTOREJECT_TABLE:Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 5743
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.sec.android.app.firewall/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 5745
    .local v1, AUTOREJECT_CONTENT_URI:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "numbers="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "checked"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 5752
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_1

    .line 5753
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 5754
    const/4 v11, 0x1

    .line 5756
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 5761
    :goto_1
    const-string v0, "Mms/MessageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "existInVIPModeList - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5763
    return v11

    .line 5730
    .end local v1           #AUTOREJECT_CONTENT_URI:Landroid/net/Uri;
    .end local v10           #cursor:Landroid/database/Cursor;
    :pswitch_0
    const-string v9, "black_msg_num"

    .line 5731
    goto :goto_0

    .line 5733
    :pswitch_1
    const-string v9, "black_call_num"

    .line 5734
    goto :goto_0

    .line 5736
    :pswitch_2
    const-string v9, "white_msg_num"

    .line 5737
    goto :goto_0

    .line 5739
    :pswitch_3
    const-string v9, "white_call_num"

    goto :goto_0

    .line 5758
    .restart local v1       #AUTOREJECT_CONTENT_URI:Landroid/net/Uri;
    .restart local v10       #cursor:Landroid/database/Cursor;
    :cond_1
    const-string v0, "Mms/MessageUtils"

    const-string v2, "existInVIPModeList - cursor is null"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5728
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static extractEncStr(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "value"

    .prologue
    .line 2620
    if-eqz p1, :cond_0

    .line 2621
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    .line 2623
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static extractEncStrFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;
    .locals 5
    .parameter "cursor"
    .parameter "columnRawBytes"
    .parameter "columnCharset"

    .prologue
    .line 2603
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2604
    .local v1, rawBytes:Ljava/lang/String;
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 2606
    .local v0, charset:I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2607
    const-string v1, ""

    .line 2615
    .end local v1           #rawBytes:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 2608
    .restart local v1       #rawBytes:Ljava/lang/String;
    :cond_0
    if-eqz v0, :cond_1

    const/16 v2, 0x6a

    if-ne v0, v2, :cond_2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-ne p1, v2, :cond_2

    .line 2609
    :cond_1
    const-string v2, "Mms/MessageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extractEncStrFromCursor() : return rawBytes = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2615
    :cond_2
    new-instance v2, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-static {v1}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static extractIdsToAddresses(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/StringBuilder;
    .locals 18
    .parameter "context"
    .parameter "recipients"
    .parameter "allowQuery"

    .prologue
    .line 1635
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1636
    .local v8, addressBuf:Ljava/lang/StringBuilder;
    const-string v1, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 1637
    .local v15, recipientIds:[Ljava/lang/String;
    const/4 v11, 0x1

    .line 1638
    .local v11, firstItem:Z
    move-object v9, v15

    .local v9, arr$:[Ljava/lang/String;
    array-length v13, v9

    .local v13, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_0
    if-ge v12, v13, :cond_6

    aget-object v14, v9, v12

    .line 1639
    .local v14, recipientId:Ljava/lang/String;
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->sRecipientAddress:Ljava/util/Map;

    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 1641
    .local v17, value:Ljava/lang/String;
    if-nez v17, :cond_3

    .line 1642
    if-nez p2, :cond_1

    .line 1646
    const/4 v8, 0x0

    .line 1675
    .end local v8           #addressBuf:Ljava/lang/StringBuilder;
    .end local v14           #recipientId:Ljava/lang/String;
    .end local v17           #value:Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v8

    .line 1648
    .restart local v8       #addressBuf:Ljava/lang/StringBuilder;
    .restart local v14       #recipientId:Ljava/lang/String;
    .restart local v17       #value:Ljava/lang/String;
    :cond_1
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    .line 1649
    .local v16, s:Ljava/lang/StringBuffer;
    const-string v1, "content://mms-sms/canonical-address/"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1651
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1653
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_3

    .line 1655
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1656
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1657
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->sRecipientAddress:Ljava/util/Map;

    move-object/from16 v0, v17

    invoke-interface {v1, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1660
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1664
    .end local v3           #uri:Landroid/net/Uri;
    .end local v10           #c:Landroid/database/Cursor;
    .end local v16           #s:Ljava/lang/StringBuffer;
    :cond_3
    if-nez v17, :cond_4

    .line 1638
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1660
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v10       #c:Landroid/database/Cursor;
    .restart local v16       #s:Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1667
    .end local v3           #uri:Landroid/net/Uri;
    .end local v10           #c:Landroid/database/Cursor;
    .end local v16           #s:Ljava/lang/StringBuffer;
    :cond_4
    if-eqz v11, :cond_5

    .line 1668
    const/4 v11, 0x0

    .line 1672
    :goto_3
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1670
    :cond_5
    const-string v1, ";"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1675
    .end local v14           #recipientId:Ljava/lang/String;
    .end local v17           #value:Ljava/lang/String;
    :cond_6
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v8, 0x0

    goto :goto_1
.end method

.method public static extractNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "address"

    .prologue
    .line 3196
    const-string v2, ""

    .line 3199
    .local v2, number:Ljava/lang/String;
    if-nez p0, :cond_0

    move-object v3, v2

    .line 3216
    .end local v2           #number:Ljava/lang/String;
    .local v3, number:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 3201
    .end local v3           #number:Ljava/lang/String;
    .restart local v2       #number:Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    move-object v3, v2

    .line 3202
    .end local v2           #number:Ljava/lang/String;
    .restart local v3       #number:Ljava/lang/String;
    goto :goto_0

    .line 3204
    .end local v3           #number:Ljava/lang/String;
    .restart local v2       #number:Ljava/lang/String;
    :cond_1
    const/16 v5, 0x3c

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 3205
    .local v4, startIdx:I
    const/16 v5, 0x3e

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 3207
    .local v0, endIdx:I
    if-gez v4, :cond_3

    const/4 v4, 0x0

    .line 3208
    :goto_1
    if-gez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 3210
    :cond_2
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .end local v0           #endIdx:I
    .end local v4           #startIdx:I
    :goto_2
    move-object v3, v2

    .line 3216
    .end local v2           #number:Ljava/lang/String;
    .restart local v3       #number:Ljava/lang/String;
    goto :goto_0

    .line 3207
    .end local v3           #number:Ljava/lang/String;
    .restart local v0       #endIdx:I
    .restart local v2       #number:Ljava/lang/String;
    .restart local v4       #startIdx:I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3212
    .end local v0           #endIdx:I
    .end local v4           #startIdx:I
    :catch_0
    move-exception v1

    .line 3213
    .local v1, ex:Ljava/lang/StringIndexOutOfBoundsException;
    const-string v5, "Mms/MessageUtils"

    const-string v6, "Illegal name and number format!"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3214
    invoke-virtual {v1}, Ljava/lang/StringIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_2
.end method

.method public static extractUris([Landroid/text/style/URLSpan;)Ljava/util/ArrayList;
    .locals 4
    .parameter "spans"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/text/style/URLSpan;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2628
    array-length v2, p0

    .line 2629
    .local v2, size:I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2631
    .local v0, accumulator:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 2632
    aget-object v3, p0, v1

    invoke-virtual {v3}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2631
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2634
    :cond_0
    return-object v0
.end method

.method public static findCmasServiceCategoryFromServiceCategory(I)I
    .locals 8
    .parameter "ServiceCategory"

    .prologue
    const/16 v7, 0x1004

    const/16 v6, 0x1003

    const/16 v5, 0x1002

    const/16 v4, 0x1001

    const/16 v3, 0x1000

    .line 4665
    const/4 v0, 0x0

    .line 4667
    .local v0, type:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    .line 4668
    if-ne v3, p0, :cond_1

    .line 4669
    const v0, 0x7f0c01c5

    .line 4692
    :cond_0
    :goto_0
    const-string v1, "Mms/MessageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findCmasServiceCategoryFromServiceCategory() type is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4694
    return v0

    .line 4670
    :cond_1
    if-ne v4, p0, :cond_2

    .line 4671
    const v0, 0x7f0c01c6

    goto :goto_0

    .line 4672
    :cond_2
    if-ne v5, p0, :cond_3

    .line 4673
    const v0, 0x7f0c01c7

    goto :goto_0

    .line 4674
    :cond_3
    if-ne v6, p0, :cond_4

    .line 4675
    const v0, 0x7f0c01c8

    goto :goto_0

    .line 4676
    :cond_4
    if-ne v7, p0, :cond_0

    .line 4677
    const v0, 0x7f0c01f1

    goto :goto_0

    .line 4680
    :cond_5
    if-ne v3, p0, :cond_6

    .line 4681
    const v0, 0x7f0c01e9

    goto :goto_0

    .line 4682
    :cond_6
    if-ne v4, p0, :cond_7

    .line 4683
    const v0, 0x7f0c01eb

    goto :goto_0

    .line 4684
    :cond_7
    if-ne v5, p0, :cond_8

    .line 4685
    const v0, 0x7f0c01ed

    goto :goto_0

    .line 4686
    :cond_8
    if-ne v6, p0, :cond_9

    .line 4687
    const v0, 0x7f0c01ef

    goto :goto_0

    .line 4688
    :cond_9
    if-ne v7, p0, :cond_0

    .line 4689
    const v0, 0x7f0c01f1

    goto :goto_0
.end method

.method public static formatDate(J)Ljava/lang/String;
    .locals 10
    .parameter "when"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 1386
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1387
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1388
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 1389
    .local v3, year:I
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    .line 1390
    .local v2, month:I
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1392
    .local v1, day:I
    const-string v4, "%d/%02d/%02d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static formatDate(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "when"

    .prologue
    .line 1418
    const/16 v0, 0x14

    invoke-static {p0, p1, p2, v0}, Lcom/android/mms/ui/MessageUtils;->formatDateTime2(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDateTime(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "when"

    .prologue
    .line 1422
    const/16 v0, 0x15

    invoke-static {p0, p1, p2, v0}, Lcom/android/mms/ui/MessageUtils;->formatDateTime2(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static formatDateTime2(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 24
    .parameter "context"
    .parameter "when"
    .parameter "formatFlags"

    .prologue
    .line 1428
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v10

    .line 1432
    .local v10, order:[C
    const-string v7, "dMy"

    .line 1433
    .local v7, defaultDateFormat:Ljava/lang/String;
    if-nez v10, :cond_0

    .line 1434
    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v10

    .line 1436
    :cond_0
    move-wide/from16 v0, p1

    move/from16 v2, p3

    invoke-static {v0, v1, v2, v10}, Lcom/android/mms/ui/MessageUtils$CachedDate;->equals(JI[C)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 1437
    invoke-static {}, Lcom/android/mms/ui/MessageUtils$CachedDate;->getDateTime()Ljava/lang/String;

    move-result-object v6

    .line 1546
    :goto_0
    return-object v6

    .line 1440
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    .line 1441
    .local v5, currentLanguage:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 1442
    .local v11, result:Ljava/lang/StringBuffer;
    and-int/lit8 v20, p3, 0x1

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    const/4 v14, 0x1

    .line 1443
    .local v14, showTime:Z
    :goto_1
    and-int/lit8 v20, p3, 0x4

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    const/4 v15, 0x1

    .line 1444
    .local v15, showYear:Z
    :goto_2
    and-int/lit8 v20, p3, 0x10

    const/16 v21, 0x10

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    const/4 v13, 0x1

    .line 1445
    .local v13, showDate:Z
    :goto_3
    const/16 v4, 0xb00

    .line 1448
    .local v4, baseFormatFlags:I
    if-eqz v14, :cond_2

    .line 1449
    const/16 v20, 0xb01

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1454
    :cond_2
    if-nez v15, :cond_6

    if-nez v13, :cond_6

    .line 1455
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1456
    .local v6, dateTime:Ljava/lang/String;
    move-wide/from16 v0, p1

    move/from16 v2, p3

    invoke-static {v0, v1, v2, v10, v6}, Lcom/android/mms/ui/MessageUtils$CachedDate;->update(JI[CLjava/lang/String;)V

    goto :goto_0

    .line 1442
    .end local v4           #baseFormatFlags:I
    .end local v6           #dateTime:Ljava/lang/String;
    .end local v13           #showDate:Z
    .end local v14           #showTime:Z
    .end local v15           #showYear:Z
    :cond_3
    const/4 v14, 0x0

    goto :goto_1

    .line 1443
    .restart local v14       #showTime:Z
    :cond_4
    const/4 v15, 0x0

    goto :goto_2

    .line 1444
    .restart local v15       #showYear:Z
    :cond_5
    const/4 v13, 0x0

    goto :goto_3

    .line 1461
    .restart local v4       #baseFormatFlags:I
    .restart local v13       #showDate:Z
    :cond_6
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v0, v14, :cond_7

    .line 1462
    const-string v20, ", "

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1466
    :cond_7
    sget-object v20, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual/range {v20 .. v20}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_8

    sget-object v20, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual/range {v20 .. v20}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 1467
    :cond_8
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1470
    :cond_9
    const-string v19, ""

    .line 1471
    .local v19, strY:Ljava/lang/String;
    const-string v18, ""

    .line 1472
    .local v18, strM:Ljava/lang/String;
    const-string v17, ""

    .line 1474
    .local v17, strD:Ljava/lang/String;
    sget-object v21, Lcom/android/mms/ui/MessageUtils;->sNow:Ljava/util/Calendar;

    monitor-enter v21

    .line 1475
    :try_start_0
    sget-object v20, Lcom/android/mms/ui/MessageUtils;->sNow:Ljava/util/Calendar;

    move-object/from16 v0, v20

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1478
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isLocaleRTL()Z

    move-result v20

    if-eqz v20, :cond_b

    .line 1479
    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string v20, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v12, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1480
    .local v12, sdf:Ljava/text/SimpleDateFormat;
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const-string v22, "-"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 1481
    .local v16, str:[Ljava/lang/String;
    if-eqz v15, :cond_a

    .line 1482
    const/16 v20, 0x0

    aget-object v19, v16, v20

    .line 1483
    :cond_a
    if-eqz v13, :cond_b

    .line 1484
    const/16 v20, 0x2

    aget-object v17, v16, v20

    .line 1488
    .end local v12           #sdf:Ljava/text/SimpleDateFormat;
    .end local v16           #str:[Ljava/lang/String;
    :cond_b
    if-eqz v15, :cond_c

    .line 1489
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isLocaleRTL()Z

    move-result v20

    if-nez v20, :cond_c

    .line 1490
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v22, Lcom/android/mms/ui/MessageUtils;->sNow:Ljava/util/Calendar;

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/util/Calendar;->get(I)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getYearUnit()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1493
    :cond_c
    if-eqz v13, :cond_d

    .line 1494
    sget-object v20, Lcom/android/mms/ui/MessageUtils;->sNow:Ljava/util/Calendar;

    const/16 v22, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v20

    const/high16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v18

    .line 1495
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isLocaleRTL()Z

    move-result v20

    if-nez v20, :cond_d

    .line 1496
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v22, Lcom/android/mms/ui/MessageUtils;->sNow:Ljava/util/Calendar;

    const/16 v23, 0x5

    invoke-virtual/range {v22 .. v23}, Ljava/util/Calendar;->get(I)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getDayUnit()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1499
    :cond_d
    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1501
    const-string v8, ""

    .line 1503
    .local v8, delimeter:Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_4
    array-length v0, v10

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v9, v0, :cond_f

    .line 1504
    aget-char v20, v10, v9

    sparse-switch v20, :sswitch_data_0

    .line 1503
    :cond_e
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 1499
    .end local v8           #delimeter:Ljava/lang/String;
    .end local v9           #i:I
    :catchall_0
    move-exception v20

    :try_start_1
    monitor-exit v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v20

    .line 1506
    .restart local v8       #delimeter:Ljava/lang/String;
    .restart local v9       #i:I
    :sswitch_0
    if-eqz v15, :cond_e

    .line 1507
    invoke-virtual {v11, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1508
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1509
    const-string v8, " "

    goto :goto_5

    .line 1513
    :sswitch_1
    if-eqz v13, :cond_e

    .line 1514
    invoke-virtual {v11, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1515
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1516
    const-string v8, " "

    goto :goto_5

    .line 1520
    :sswitch_2
    if-eqz v13, :cond_e

    .line 1521
    invoke-virtual {v11, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1522
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1523
    const-string v8, " "

    goto :goto_5

    .line 1530
    :cond_f
    sget-object v20, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual/range {v20 .. v20}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_11

    .line 1531
    if-eqz v14, :cond_10

    .line 1532
    const-string v20, ", "

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    const/16 v21, 0xb01

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1543
    :cond_10
    :goto_6
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1544
    .restart local v6       #dateTime:Ljava/lang/String;
    move-wide/from16 v0, p1

    move/from16 v2, p3

    invoke-static {v0, v1, v2, v10, v6}, Lcom/android/mms/ui/MessageUtils$CachedDate;->update(JI[CLjava/lang/String;)V

    goto/16 :goto_0

    .line 1536
    .end local v6           #dateTime:Ljava/lang/String;
    :cond_11
    sget-object v20, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual/range {v20 .. v20}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_10

    .line 1537
    if-eqz v14, :cond_10

    .line 1538
    const-string v20, " "

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    const/16 v21, 0xb01

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 1504
    :sswitch_data_0
    .sparse-switch
        0x4d -> :sswitch_1
        0x64 -> :sswitch_2
        0x79 -> :sswitch_0
    .end sparse-switch
.end method

.method public static formatMessage_smiley(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "text"

    .prologue
    .line 4362
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 4364
    .local v0, buf:Landroid/text/SpannableStringBuilder;
    invoke-static {}, Lcom/android/mms/util/SmileyParser;->getInstance()Lcom/android/mms/util/SmileyParser;

    move-result-object v1

    .line 4366
    .local v1, parser:Lcom/android/mms/util/SmileyParser;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4367
    invoke-virtual {v1, p0}, Lcom/android/mms/util/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 4370
    :cond_0
    return-object v0
.end method

.method public static formatTime(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "when"

    .prologue
    .line 1414
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/mms/ui/MessageUtils;->formatDateTime2(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "when"

    .prologue
    .line 1350
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "when"
    .parameter "fullFormat"

    .prologue
    .line 1354
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 1355
    .local v2, then:Landroid/text/format/Time;
    invoke-virtual {v2, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 1356
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 1357
    .local v1, now:Landroid/text/format/Time;
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 1361
    const/16 v0, 0xb00

    .line 1364
    .local v0, format_flags:I
    iget v3, v2, Landroid/text/format/Time;->year:I

    iget v4, v1, Landroid/text/format/Time;->year:I

    if-eq v3, v4, :cond_1

    .line 1365
    or-int/lit8 v0, v0, 0x14

    .line 1377
    :goto_0
    if-eqz p3, :cond_0

    .line 1378
    or-int/lit8 v0, v0, 0x11

    .line 1381
    :cond_0
    invoke-static {p0, p1, p2, v0}, Lcom/android/mms/ui/MessageUtils;->formatDateTime2(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1366
    :cond_1
    iget v3, v2, Landroid/text/format/Time;->yearDay:I

    iget v4, v1, Landroid/text/format/Time;->yearDay:I

    if-eq v3, v4, :cond_2

    .line 1368
    or-int/lit8 v0, v0, 0x10

    goto :goto_0

    .line 1371
    :cond_2
    or-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getAddressByThreadId(Landroid/content/Context;J)Ljava/lang/String;
    .locals 12
    .parameter "context"
    .parameter "threadId"

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x1

    .line 3395
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "recipient_ids"

    aput-object v0, v3, v1

    const-string v0, "display_recipient_ids"

    aput-object v0, v3, v11

    .line 3400
    .local v3, projection:[Ljava/lang/String;
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    .line 3401
    .local v8, builder:Landroid/net/Uri$Builder;
    const-string v0, "simple"

    const-string v1, "true"

    invoke-virtual {v8, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3402
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 3405
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_2

    .line 3407
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v11, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3408
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 3409
    .local v10, recipientIds:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3410
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 3412
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v10, v0}, Lcom/android/mms/ui/MessageUtils;->getRecipientsByIds(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 3413
    .local v7, address:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 3418
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3421
    .end local v7           #address:Ljava/lang/String;
    .end local v10           #recipientIds:Ljava/lang/String;
    :goto_0
    return-object v7

    .line 3418
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v7, v5

    .line 3421
    goto :goto_0
.end method

.method public static getAppRestrictBackground(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 6690
    const/4 v0, 0x0

    return v0
.end method

.method public static getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "context"
    .parameter "package_name"

    .prologue
    .line 4927
    const/4 v0, 0x0

    .line 4929
    .local v0, appIcon:Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    move-object v3, v0

    .line 4937
    :goto_0
    return-object v3

    .line 4930
    :catch_0
    move-exception v1

    .line 4931
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    goto :goto_0

    .line 4932
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 4933
    .local v2, ex:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->writeHprofDataToFile()V

    .line 4934
    const-string v3, "Mms/MessageUtils"

    const-string v4, "OutOfMemoryError caught @ getPackageManager().getApplicationIcon and throw"

    invoke-static {v3, v4, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4935
    throw v2
.end method

.method public static getAttachmentType(Lcom/android/mms/model/SlideshowModel;)I
    .locals 6
    .parameter "model"

    .prologue
    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1302
    if-nez p0, :cond_1

    .line 1346
    :cond_0
    :goto_0
    return v2

    .line 1306
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    .line 1307
    .local v0, numberOfSlides:I
    if-le v0, v4, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->hasLocation()Z

    move-result v5

    if-nez v5, :cond_2

    move v2, v3

    .line 1308
    goto :goto_0

    .line 1310
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->hasLocation()Z

    move-result v5

    if-ne v5, v4, :cond_3

    .line 1311
    const/16 v2, 0xa

    goto :goto_0

    .line 1313
    :cond_3
    if-ne v0, v4, :cond_0

    .line 1315
    invoke-virtual {p0, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 1320
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v5

    if-lez v5, :cond_4

    .line 1321
    const/4 v2, 0x5

    goto :goto_0

    .line 1324
    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1325
    const/4 v2, 0x2

    goto :goto_0

    .line 1328
    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v5

    if-eqz v5, :cond_6

    move v2, v3

    .line 1330
    goto :goto_0

    .line 1333
    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1334
    const/4 v2, 0x3

    goto :goto_0

    .line 1337
    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v3

    if-eqz v3, :cond_8

    move v2, v4

    .line 1338
    goto :goto_0

    .line 1341
    :cond_8
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0
.end method

.method public static getAutoSmsEnabled(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 4971
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "autosms_enable"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4974
    .local v0, autoSmsEnable:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 4975
    const-string v1, "Enabled"

    invoke-static {p0, v1}, Lcom/android/mms/ui/MessageUtils;->setAutoSmsEnabled(Landroid/content/Context;Ljava/lang/String;)V

    .line 4976
    new-instance v0, Ljava/lang/String;

    .end local v0           #autoSmsEnable:Ljava/lang/String;
    const-string v1, "Enabled"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 4979
    :cond_0
    return-object v0
.end method

.method public static getAutoSmsType(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 4987
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "autosms_type"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4989
    .local v0, autoSmsType:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 4990
    const-string v1, "0"

    invoke-static {p0, v1}, Lcom/android/mms/ui/MessageUtils;->setAutoSmsType(Landroid/content/Context;Ljava/lang/String;)V

    .line 4991
    new-instance v0, Ljava/lang/String;

    .end local v0           #autoSmsType:Ljava/lang/String;
    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 4994
    :cond_0
    return-object v0
.end method

.method public static getAvailableStorage()J
    .locals 8

    .prologue
    .line 3566
    const/4 v1, 0x0

    .line 3569
    .local v1, storageDirectory:Ljava/lang/String;
    const-string v1, "/data"

    .line 3570
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 3571
    .local v0, stat:Landroid/os/StatFs;
    const-string v2, "Mms/MessageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Available Storage Size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v6, v6

    mul-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3575
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    return-wide v2
.end method

.method public static getBitmapFromFile(Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "strFilePath"
    .parameter "delete"

    .prologue
    const/4 v3, 0x0

    .line 5931
    if-nez p0, :cond_1

    move-object v1, v3

    .line 5951
    :cond_0
    :goto_0
    return-object v1

    .line 5935
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5936
    .local v2, file:Ljava/io/File;
    const/4 v1, 0x0

    .line 5938
    .local v1, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    move-object v1, v3

    .line 5939
    goto :goto_0

    .line 5942
    :cond_2
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 5944
    .local v0, bfo:Landroid/graphics/BitmapFactory$Options;
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 5946
    if-eqz p1, :cond_0

    .line 5947
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 5948
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private static getCertainityTextID(I)I
    .locals 1
    .parameter "msgCertainity"

    .prologue
    .line 4826
    const v0, 0x7f0c01e4

    .line 4829
    .local v0, id:I
    packed-switch p0, :pswitch_data_0

    .line 4842
    :goto_0
    return v0

    .line 4834
    :pswitch_0
    const v0, 0x7f0c01e2

    .line 4835
    goto :goto_0

    .line 4838
    :pswitch_1
    const v0, 0x7f0c01e3

    goto :goto_0

    .line 4829
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getCheckedOnOff(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 2
    .parameter "activity"
    .parameter "name"

    .prologue
    .line 5823
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getSharedPreference(Landroid/app/Activity;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getCidTextIndex(Lcom/android/mms/model/SlideshowModel;)I
    .locals 14
    .parameter "mModel"

    .prologue
    .line 3940
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3941
    .local v2, cidIndex:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    .line 3942
    .local v0, SlideModelSize:I
    const/4 v5, 0x0

    .line 3943
    .local v5, index:I
    const/4 v1, 0x0

    .line 3944
    .local v1, arraySize:I
    const/4 v8, 0x0

    .line 3946
    .local v8, mint:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_4

    .line 3947
    invoke-virtual {p0, v4}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v9

    .line 3948
    .local v9, temp:Lcom/android/mms/model/SlideModel;
    const/4 v10, 0x0

    .line 3949
    .local v10, text:Lcom/android/mms/model/TextModel;
    if-eqz v9, :cond_0

    .line 3950
    invoke-virtual {v9}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v10

    .line 3951
    :cond_0
    if-eqz v10, :cond_2

    .line 3952
    invoke-virtual {v10}, Lcom/android/mms/model/TextModel;->getSrc()Ljava/lang/String;

    move-result-object v7

    .line 3954
    .local v7, mString:Ljava/lang/String;
    const-string v11, "cid:"

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 3955
    const-string v11, "cid:"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 3960
    :cond_1
    :goto_1
    :try_start_0
    const-string v11, "text_"

    const-string v12, ""

    invoke-virtual {v7, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    const-string v12, ".txt"

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 3964
    :goto_2
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3946
    .end local v7           #mString:Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3956
    .restart local v7       #mString:Ljava/lang/String;
    :cond_3
    const-string v11, "Cid:"

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 3957
    const-string v11, "Cid:"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 3961
    :catch_0
    move-exception v3

    .line 3962
    .local v3, e:Ljava/lang/NumberFormatException;
    move v8, v4

    goto :goto_2

    .line 3968
    .end local v3           #e:Ljava/lang/NumberFormatException;
    .end local v7           #mString:Ljava/lang/String;
    .end local v9           #temp:Lcom/android/mms/model/SlideModel;
    .end local v10           #text:Lcom/android/mms/model/TextModel;
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3970
    if-lez v1, :cond_7

    .line 3971
    const/4 v6, 0x0

    .local v6, j:I
    :goto_3
    if-ge v6, v1, :cond_6

    .line 3972
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-gt v5, v11, :cond_5

    .line 3973
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 3971
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 3976
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 3978
    .end local v6           #j:I
    :cond_7
    return v5
.end method

.method private static getCmaeCategoryTextID(I)I
    .locals 3
    .parameter "msgCategory"

    .prologue
    const/4 v2, 0x4

    .line 4846
    const v0, 0x7f0c01e4

    .line 4848
    .local v0, id:I
    packed-switch p0, :pswitch_data_0

    .line 4923
    :goto_0
    return v0

    .line 4852
    :pswitch_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 4853
    const v0, 0x7f0c01f6

    goto :goto_0

    .line 4855
    :cond_0
    const v0, 0x7f0c01ca

    .line 4856
    goto :goto_0

    .line 4859
    :pswitch_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 4860
    const v0, 0x7f0c01f7

    goto :goto_0

    .line 4862
    :cond_1
    const v0, 0x7f0c01cb

    .line 4863
    goto :goto_0

    .line 4867
    :pswitch_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 4868
    const v0, 0x7f0c01f8

    goto :goto_0

    .line 4870
    :cond_2
    const v0, 0x7f0c01cc

    .line 4871
    goto :goto_0

    .line 4876
    :pswitch_3
    const v0, 0x7f0c01cd

    .line 4877
    goto :goto_0

    .line 4880
    :pswitch_4
    const v0, 0x7f0c01ce

    .line 4881
    goto :goto_0

    .line 4884
    :pswitch_5
    const v0, 0x7f0c01cf

    .line 4885
    goto :goto_0

    .line 4888
    :pswitch_6
    const v0, 0x7f0c01d0

    .line 4889
    goto :goto_0

    .line 4892
    :pswitch_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 4893
    const v0, 0x7f0c01fa

    goto :goto_0

    .line 4895
    :cond_3
    const v0, 0x7f0c01d1

    .line 4896
    goto :goto_0

    .line 4900
    :pswitch_8
    const v0, 0x7f0c01d2

    .line 4901
    goto :goto_0

    .line 4905
    :pswitch_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 4906
    const v0, 0x7f0c01fb

    goto :goto_0

    .line 4908
    :cond_4
    const v0, 0x7f0c01d3

    .line 4909
    goto :goto_0

    .line 4915
    :pswitch_a
    const v0, 0x7f0c01d4

    .line 4916
    goto :goto_0

    .line 4919
    :pswitch_b
    const v0, 0x7f0c01d5

    goto :goto_0

    .line 4848
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static getCmasServiceCategory(I)I
    .locals 8
    .parameter "threadtype"

    .prologue
    const/16 v7, 0x68

    const/16 v6, 0x67

    const/16 v5, 0x66

    const/16 v4, 0x65

    const/16 v3, 0x64

    .line 4699
    const/4 v0, 0x0

    .line 4700
    .local v0, type:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_6

    .line 4701
    if-ne p0, v3, :cond_1

    .line 4702
    const v0, 0x7f0c01c5

    .line 4730
    :cond_0
    :goto_0
    const-string v1, "Mms/MessageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCmasServiceCategory() type is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4732
    return v0

    .line 4703
    :cond_1
    if-ne p0, v4, :cond_2

    .line 4704
    const v0, 0x7f0c01c6

    goto :goto_0

    .line 4705
    :cond_2
    if-ne p0, v5, :cond_3

    .line 4706
    const v0, 0x7f0c01c7

    goto :goto_0

    .line 4707
    :cond_3
    if-ne p0, v6, :cond_4

    .line 4708
    const v0, 0x7f0c01c8

    goto :goto_0

    .line 4709
    :cond_4
    if-ne p0, v7, :cond_5

    .line 4710
    const v0, 0x7f0c01f1

    goto :goto_0

    .line 4711
    :cond_5
    const/16 v1, 0x6e

    if-ne p0, v1, :cond_0

    .line 4712
    const v0, 0x7f0c01b9

    goto :goto_0

    .line 4715
    :cond_6
    if-ne p0, v3, :cond_7

    .line 4716
    const v0, 0x7f0c01e9

    goto :goto_0

    .line 4717
    :cond_7
    if-ne p0, v4, :cond_8

    .line 4718
    const v0, 0x7f0c01eb

    goto :goto_0

    .line 4719
    :cond_8
    if-ne p0, v5, :cond_9

    .line 4720
    const v0, 0x7f0c01ed

    goto :goto_0

    .line 4721
    :cond_9
    if-ne p0, v6, :cond_a

    .line 4722
    const v0, 0x7f0c01ef

    goto :goto_0

    .line 4723
    :cond_a
    if-ne p0, v7, :cond_b

    .line 4724
    const v0, 0x7f0c01f1

    goto :goto_0

    .line 4725
    :cond_b
    const/16 v1, 0x6e

    if-ne p0, v1, :cond_0

    .line 4726
    const v0, 0x7f0c01b9

    goto :goto_0
.end method

.method public static getCmasServiceCategoryStringId(Ljava/lang/String;)I
    .locals 6
    .parameter "address"

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x6

    .line 4619
    const-string v1, "Debug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCmasServiceCategory() address is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4621
    const/4 v0, 0x0

    .line 4622
    .local v0, type:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    if-eq v1, v4, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 4623
    :cond_0
    const v0, 0x7f0c0418

    .line 4625
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_8

    .line 4626
    const-string v1, "Presidential"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4627
    const v0, 0x7f0c01c5

    .line 4658
    :cond_2
    :goto_0
    const-string v1, "Mms/MessageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCmasServiceCategory() type is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4660
    return v0

    .line 4628
    :cond_3
    const-string v1, "Extreme"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4629
    const v0, 0x7f0c01c6

    goto :goto_0

    .line 4630
    :cond_4
    const-string v1, "Severe"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4631
    const v0, 0x7f0c01c7

    goto :goto_0

    .line 4632
    :cond_5
    const-string v1, "Amber"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4633
    const v0, 0x7f0c01c8

    goto :goto_0

    .line 4634
    :cond_6
    const-string v1, "CMASALL"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4635
    const v0, 0x7f0c01b9

    goto :goto_0

    .line 4636
    :cond_7
    const-string v1, "Test"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4637
    const v0, 0x7f0c01f1

    goto :goto_0

    .line 4640
    :cond_8
    const-string v1, "Presidential"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 4641
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    if-eq v1, v4, :cond_9

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    if-ne v1, v5, :cond_a

    .line 4642
    :cond_9
    const v0, 0x7f0c0418

    goto :goto_0

    .line 4644
    :cond_a
    const v0, 0x7f0c01e9

    goto :goto_0

    .line 4645
    :cond_b
    const-string v1, "Extreme"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 4646
    const v0, 0x7f0c01eb

    goto :goto_0

    .line 4647
    :cond_c
    const-string v1, "Severe"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 4648
    const v0, 0x7f0c01ed

    goto/16 :goto_0

    .line 4649
    :cond_d
    const-string v1, "Amber"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 4650
    const v0, 0x7f0c01ef

    goto/16 :goto_0

    .line 4651
    :cond_e
    const-string v1, "CMASALL"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 4652
    const v0, 0x7f0c01b9

    goto/16 :goto_0

    .line 4653
    :cond_f
    const-string v1, "Test"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4654
    const v0, 0x7f0c01f1

    goto/16 :goto_0
.end method

.method public static getContactImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "context"
    .parameter "position"

    .prologue
    .line 6494
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->initContactImage(Landroid/content/Context;)V

    .line 6496
    const/4 v0, 0x0

    .line 6497
    .local v0, imageNum:I
    if-lez p1, :cond_0

    .line 6498
    rem-int/lit8 v0, p1, 0x5

    .line 6500
    :cond_0
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->sDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public static getContactImageId(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "position"

    .prologue
    .line 6504
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->initContactImage(Landroid/content/Context;)V

    .line 6506
    const/4 v0, 0x0

    .line 6507
    .local v0, imageNum:I
    if-lez p1, :cond_0

    .line 6508
    rem-int/lit8 v0, p1, 0x5

    .line 6510
    :cond_0
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->sDefaultContactImageId:[Ljava/lang/String;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public static getConvName(Ljava/lang/String;CILandroid/graphics/Paint;)Ljava/lang/String;
    .locals 4
    .parameter "recipientsSepByComma"
    .parameter "delimiter"
    .parameter "maxWidth"
    .parameter "paint"

    .prologue
    .line 4475
    if-nez p0, :cond_1

    .line 4476
    const-string p0, ""

    .line 4487
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 4478
    .restart local p0
    :cond_1
    const-string v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4481
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4482
    .local v1, rcptList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 4484
    .local v2, strs:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 4485
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4484
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4487
    :cond_2
    invoke-static {v1, p1, p2, p3}, Lcom/android/mms/ui/MessageUtils;->getConvName(Ljava/util/List;CILandroid/graphics/Paint;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getConvName(Ljava/util/List;CILandroid/graphics/Paint;)Ljava/lang/String;
    .locals 14
    .parameter
    .parameter "delimiter"
    .parameter "maxWidth"
    .parameter "paint"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;CI",
            "Landroid/graphics/Paint;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 4492
    .local p0, recipients:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-gtz p2, :cond_0

    .line 4493
    const-string v10, ""

    .line 4564
    :goto_0
    return-object v10

    .line 4495
    :cond_0
    if-nez p0, :cond_1

    .line 4496
    const/4 v10, 0x0

    goto :goto_0

    .line 4498
    :cond_1
    if-nez p3, :cond_2

    .line 4499
    new-instance p3, Landroid/graphics/Paint;

    .end local p3
    invoke-direct/range {p3 .. p3}, Landroid/graphics/Paint;-><init>()V

    .line 4501
    .restart local p3
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    .line 4502
    const/4 v10, 0x0

    invoke-interface {p0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    goto :goto_0

    .line 4504
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v10

    new-array v5, v10, [Ljava/lang/String;

    .line 4505
    .local v5, mRcpts:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v10

    if-ge v2, v10, :cond_4

    .line 4506
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    aput-object v10, v5, v2

    .line 4505
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4508
    :cond_4
    const-string v10, "%c "

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 4511
    .local v4, mDelimiter:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4512
    .local v1, convName:Ljava/lang/StringBuilder;
    array-length v6, v5

    .line 4514
    .local v6, recipientNum:I
    if-gtz v6, :cond_5

    .line 4515
    const-string v10, ""

    goto :goto_0

    .line 4518
    :cond_5
    move v2, v6

    :goto_2
    if-ltz v2, :cond_6

    .line 4519
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #convName:Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4522
    .restart local v1       #convName:Ljava/lang/StringBuilder;
    if-nez v2, :cond_8

    .line 4523
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c01b1

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "..."

    aput-object v13, v11, v12

    const/4 v12, 0x1

    add-int/lit8 v13, v6, -0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 4527
    .local v8, tmp:Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-static {v8, v0}, Lcom/android/mms/ui/MessageUtils;->GetStrPixelWidth(Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v10

    sub-int v7, p2, v10

    .line 4528
    .local v7, remain:I
    if-lez v7, :cond_7

    .line 4530
    const/4 v10, 0x0

    aget-object v10, v5, v10

    move-object/from16 v0, p3

    invoke-static {v10, v0, v7}, Lcom/android/mms/ui/MessageUtils;->GetStrFitsInPixel(Ljava/lang/String;Landroid/graphics/Paint;I)Ljava/lang/String;

    move-result-object v9

    .line 4531
    .local v9, tmp2:Ljava/lang/String;
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4564
    .end local v7           #remain:I
    .end local v8           #tmp:Ljava/lang/String;
    .end local v9           #tmp2:Ljava/lang/String;
    :cond_6
    :goto_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 4533
    .restart local v7       #remain:I
    .restart local v8       #tmp:Ljava/lang/String;
    :cond_7
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 4539
    .end local v7           #remain:I
    .end local v8           #tmp:Ljava/lang/String;
    :cond_8
    if-ne v2, v6, :cond_a

    .line 4540
    const/4 v3, 0x0

    .local v3, j:I
    :goto_4
    if-ge v3, v2, :cond_d

    .line 4541
    if-lez v3, :cond_9

    .line 4542
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4544
    :cond_9
    aget-object v10, v5, v3

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4540
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 4548
    .end local v3           #j:I
    :cond_a
    const/4 v3, 0x0

    .restart local v3       #j:I
    :goto_5
    if-ge v3, v2, :cond_c

    .line 4549
    if-lez v3, :cond_b

    .line 4550
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4552
    :cond_b
    aget-object v10, v5, v3

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4548
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 4555
    :cond_c
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c01b1

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, ""

    aput-object v13, v11, v12

    const/4 v12, 0x1

    sub-int v13, v6, v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4560
    :cond_d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-static {v10, v0}, Lcom/android/mms/ui/MessageUtils;->GetStrPixelWidth(Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v10

    move/from16 v0, p2

    if-ge v0, v10, :cond_6

    .line 4518
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_2
.end method

.method public static getCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5906
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->mCountryISO:Ljava/lang/String;

    return-object v0
.end method

.method private static getDateFormatOrder(Landroid/content/Context;)[C
    .locals 3
    .parameter "context"

    .prologue
    .line 1591
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1594
    .local v0, newDateOrderValue:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1595
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v1

    sput-object v1, Lcom/android/mms/ui/MessageUtils;->sDateOrder:[C

    .line 1596
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->sDateOrder:[C

    .line 1604
    :goto_0
    return-object v1

    .line 1599
    :cond_0
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->sOldDateOrderValue:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1600
    sput-object v0, Lcom/android/mms/ui/MessageUtils;->sOldDateOrderValue:Ljava/lang/String;

    .line 1601
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v1

    sput-object v1, Lcom/android/mms/ui/MessageUtils;->sDateOrder:[C

    .line 1604
    :cond_1
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->sDateOrder:[C

    goto :goto_0
.end method

.method public static getDayOfWeekString(I)Ljava/lang/String;
    .locals 3
    .parameter "dow"

    .prologue
    .line 1399
    const/4 v2, 0x7

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .line 1408
    .local v0, list:[I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 1410
    .local v1, r:Landroid/content/res/Resources;
    add-int/lit8 v2, p0, -0x1

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1399
    nop

    :array_0
    .array-data 0x4
        0xact 0x0t 0x4t 0x1t
        0xadt 0x0t 0x4t 0x1t
        0xaet 0x0t 0x4t 0x1t
        0xaft 0x0t 0x4t 0x1t
        0xb0t 0x0t 0x4t 0x1t
        0xb1t 0x0t 0x4t 0x1t
        0xb2t 0x0t 0x4t 0x1t
    .end array-data
.end method

.method private static getDayUnit()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1569
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1570
    .local v0, currentLanguage:Ljava/lang/String;
    const-string v1, ""

    .line 1572
    .local v1, dayUnit:Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1573
    const-string v1, "\uc77c"

    .line 1585
    :cond_0
    :goto_0
    return-object v1

    .line 1574
    :cond_1
    sget-object v2, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1575
    const-string v1, "\u65e5"

    goto :goto_0

    .line 1576
    :cond_2
    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1580
    :cond_3
    const-string v1, "\u65e5"

    goto :goto_0

    .line 1581
    :cond_4
    sget-object v2, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1583
    :cond_5
    const-string v1, "."

    goto :goto_0
.end method

.method public static getDrmMimeSavedStringRsrc(Landroid/content/Context;JZ)I
    .locals 3
    .parameter "context"
    .parameter "msgId"
    .parameter "success"

    .prologue
    const v0, 0x7f0c0374

    .line 6386
    invoke-static {p0, p1, p2}, Lcom/android/mms/ui/MessageUtils;->isDrmRingtoneWithRights(Landroid/content/Context;J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6387
    if-eqz p3, :cond_0

    const v0, 0x7f0c0373

    .line 6390
    :cond_0
    :goto_0
    return v0

    .line 6389
    :cond_1
    const-string v1, "Mms/MessageUtils"

    const-string v2, "isDrmRingtoneWithRights(msgId) : false "

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getErrorDialog(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 3
    .parameter "context"
    .parameter "icon"
    .parameter "title"
    .parameter "message"

    .prologue
    .line 4349
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4351
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    if-eqz p1, :cond_0

    .line 4353
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 4354
    :cond_0
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 4355
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4357
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private static getErrorStringID(I)I
    .locals 1
    .parameter "errorId"

    .prologue
    const v0, 0x7f0c0331

    .line 564
    sparse-switch p0, :sswitch_data_0

    .line 604
    :goto_0
    :sswitch_0
    return v0

    .line 570
    :sswitch_1
    const v0, 0x7f0c0338

    goto :goto_0

    .line 574
    :sswitch_2
    const v0, 0x7f0c0332

    goto :goto_0

    .line 579
    :sswitch_3
    const v0, 0x7f0c0333

    goto :goto_0

    .line 583
    :sswitch_4
    const v0, 0x7f0c0334

    goto :goto_0

    .line 587
    :sswitch_5
    const v0, 0x7f0c0337

    goto :goto_0

    .line 590
    :sswitch_6
    const v0, 0x7f0c0335

    goto :goto_0

    .line 594
    :sswitch_7
    const v0, 0x7f0c0336

    goto :goto_0

    .line 564
    nop

    :sswitch_data_0
    .sparse-switch
        0x81 -> :sswitch_0
        0x82 -> :sswitch_1
        0x83 -> :sswitch_2
        0x84 -> :sswitch_3
        0x85 -> :sswitch_4
        0x86 -> :sswitch_5
        0x87 -> :sswitch_6
        0x88 -> :sswitch_7
        0xc1 -> :sswitch_3
        0xc3 -> :sswitch_5
        0xe1 -> :sswitch_1
        0xe2 -> :sswitch_2
        0xe3 -> :sswitch_3
        0xe4 -> :sswitch_4
        0xe5 -> :sswitch_7
    .end sparse-switch
.end method

.method public static getExpiryTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 5017
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 5019
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "pref_key_mms_expiry_time"

    const-string v2, "3"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getExpiryTimeLong(Landroid/content/Context;)J
    .locals 9
    .parameter "context"

    .prologue
    const-wide/32 v4, 0x2a300

    const-wide/16 v6, 0x0

    .line 5024
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getExpiryTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 5025
    .local v0, expiryTime:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 5026
    .local v1, expiryTimeIndex:I
    const-wide/16 v2, 0x0

    .line 5028
    .local v2, timeValue:J
    packed-switch v1, :pswitch_data_0

    .line 5036
    const-string v6, "Mms/MessageUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[getExpiryTimeLong] expiryTimeIndex = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5040
    :goto_0
    :pswitch_0
    return-wide v4

    .line 5029
    :pswitch_1
    const-wide/16 v4, 0xe10

    goto :goto_0

    .line 5030
    :pswitch_2
    const-wide/16 v4, 0x5460

    goto :goto_0

    .line 5031
    :pswitch_3
    const-wide/32 v4, 0x15180

    goto :goto_0

    :pswitch_4
    move-wide v4, v6

    .line 5033
    goto :goto_0

    :pswitch_5
    move-wide v4, v6

    .line 5034
    goto :goto_0

    .line 5028
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static getExternalSdCardStoragePath()Ljava/lang/String;
    .locals 8

    .prologue
    .line 4376
    sget-object v6, Lcom/android/mms/ui/MessageUtils;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v6, :cond_0

    .line 4377
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v6

    const-string v7, "storage"

    invoke-virtual {v6, v7}, Lcom/android/mms/MmsApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageManager;

    sput-object v6, Lcom/android/mms/ui/MessageUtils;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 4378
    sget-object v6, Lcom/android/mms/ui/MessageUtils;->mStorageManager:Landroid/os/storage/StorageManager;

    sget-object v7, Lcom/android/mms/ui/MessageUtils;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v6, v7}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 4380
    :cond_0
    sget-object v6, Lcom/android/mms/ui/MessageUtils;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v6}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 4381
    .local v4, storageVolumes:[Landroid/os/storage/StorageVolume;
    array-length v1, v4

    .line 4382
    .local v1, length:I
    const-string v2, ""

    .line 4383
    .local v2, storagePath:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 4384
    aget-object v3, v4, v0

    .line 4385
    .local v3, storageVolume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v5

    .line 4386
    .local v5, subsystem:Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 4387
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 4388
    const-string v6, "sd"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4389
    sput-object v2, Lcom/android/mms/ui/MessageUtils;->mExternalSdCardStoragePath:Ljava/lang/String;

    .line 4383
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4394
    .end local v3           #storageVolume:Landroid/os/storage/StorageVolume;
    .end local v5           #subsystem:Ljava/lang/String;
    :cond_2
    sget-object v6, Lcom/android/mms/ui/MessageUtils;->mExternalSdCardStoragePath:Ljava/lang/String;

    return-object v6
.end method

.method public static getFileNameFromUri(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .parameter "activity"
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 6858
    const-string v8, ""

    .line 6859
    .local v8, name:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 6860
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "_display_name"

    aput-object v1, v2, v4

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 6862
    .local v7, metadataCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 6864
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6865
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 6868
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 6882
    :cond_1
    :goto_0
    return-object v8

    .line 6868
    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    .line 6871
    :cond_2
    if-eqz p1, :cond_1

    .line 6872
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 6873
    .local v9, path:Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 6874
    const/16 v1, 0x2f

    invoke-virtual {v9, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 6875
    .local v6, index:I
    if-ltz v6, :cond_1

    add-int/lit8 v1, v6, 0x1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 6876
    add-int/lit8 v1, v6, 0x1

    invoke-virtual {v9, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method public static getFirstAttachmentType(Lcom/android/mms/model/SlideshowModel;)I
    .locals 5
    .parameter "model"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4314
    if-nez p0, :cond_1

    .line 4341
    :cond_0
    :goto_0
    return v2

    .line 4318
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    .line 4319
    .local v0, numberOfSlides:I
    if-lt v0, v3, :cond_0

    .line 4320
    invoke-virtual {p0, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 4321
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4322
    const/4 v2, 0x2

    goto :goto_0

    .line 4325
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4326
    const/4 v2, 0x4

    goto :goto_0

    .line 4329
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4330
    const/4 v2, 0x3

    goto :goto_0

    .line 4333
    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v4

    if-eqz v4, :cond_5

    move v2, v3

    .line 4334
    goto :goto_0

    .line 4337
    :cond_5
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0
.end method

.method public static getFormattedNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "number"

    .prologue
    .line 5883
    const/4 v1, 0x0

    .line 5884
    .local v1, formattedNumber:Ljava/lang/String;
    if-nez p0, :cond_1

    .line 5885
    const/4 p0, 0x0

    .line 5902
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 5890
    .restart local p0
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->isKORRTSRejectEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5891
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5899
    :goto_1
    if-eqz v1, :cond_0

    move-object p0, v1

    .line 5902
    goto :goto_0

    .line 5893
    :cond_2
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 5894
    .local v0, CountryIso:Ljava/lang/String;
    invoke-static {p0, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public static getKTSMSDeliveryReadReportsEnable()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 6664
    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableKTSMSReadConfirm()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6665
    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->isKTSIM()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 6670
    .local v0, ex:Ljava/lang/Exception;
    :cond_0
    :goto_0
    return v1

    .line 6669
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 6670
    .restart local v0       #ex:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static getLocalNumber()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1969
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sLocalNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1970
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/MmsApp;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->sLocalNumber:Ljava/lang/String;

    .line 1972
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sLocalNumber:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1973
    const-string v0, ""

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->sLocalNumber:Ljava/lang/String;

    .line 1977
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1978
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sLocalNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sLocalNumber:Ljava/lang/String;

    const-string v1, "+82"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1979
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/mms/ui/MessageUtils;->sLocalNumber:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->sLocalNumber:Ljava/lang/String;

    .line 1981
    :cond_1
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sLocalNumber:Ljava/lang/String;

    return-object v0
.end method

.method public static getMaxLengthEmailAdress(Lcom/android/mms/data/ContactList;)I
    .locals 9
    .parameter "recipients"

    .prologue
    .line 6974
    const/4 v3, 0x0

    .line 6976
    .local v3, mMaxEmailLen:I
    if-nez p0, :cond_0

    .line 6977
    const-string v7, "Mms/MessageUtils"

    const-string v8, "recipients is null"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    .line 7004
    .end local v3           #mMaxEmailLen:I
    .local v4, mMaxEmailLen:I
    :goto_0
    return v4

    .line 6981
    .end local v4           #mMaxEmailLen:I
    .restart local v3       #mMaxEmailLen:I
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isAliasEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 6982
    invoke-virtual {p0}, Lcom/android/mms/data/ContactList;->containsEmail()Z

    move-result v7

    if-nez v7, :cond_2

    move v4, v3

    .line 6983
    .end local v3           #mMaxEmailLen:I
    .restart local v4       #mMaxEmailLen:I
    goto :goto_0

    .line 6985
    .end local v4           #mMaxEmailLen:I
    .restart local v3       #mMaxEmailLen:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/data/ContactList;->containsEmail()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/data/ContactList;->containsAlias()Z

    move-result v7

    if-nez v7, :cond_2

    move v4, v3

    .line 6986
    .end local v3           #mMaxEmailLen:I
    .restart local v4       #mMaxEmailLen:I
    goto :goto_0

    .line 6989
    .end local v4           #mMaxEmailLen:I
    .restart local v3       #mMaxEmailLen:I
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v6

    .line 6991
    .local v6, numbers:[Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->isAliasEnabled()Z

    move-result v7

    if-nez v7, :cond_4

    .line 6992
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_7

    aget-object v5, v0, v1

    .line 6993
    .local v5, number:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v3, :cond_3

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 6994
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    .line 6992
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6997
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v5           #number:Ljava/lang/String;
    :cond_4
    move-object v0, v6

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v2, v0

    .restart local v2       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_2
    if-ge v1, v2, :cond_7

    aget-object v5, v0, v1

    .line 6998
    .restart local v5       #number:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v3, :cond_6

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 7000
    :cond_5
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    .line 6997
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v5           #number:Ljava/lang/String;
    :cond_7
    move v4, v3

    .line 7004
    .end local v3           #mMaxEmailLen:I
    .restart local v4       #mMaxEmailLen:I
    goto :goto_0
.end method

.method public static getMenuItemActionForOrientation()I
    .locals 2

    .prologue
    const/4 v0, 0x2

    .line 7031
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenOrientation()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 7032
    const/4 v0, 0x6

    .line 7034
    :cond_0
    return v0
.end method

.method public static getMessageDetails(Landroid/content/Context;Landroid/database/Cursor;ILcom/android/mms/ui/MessageItem;ZZ)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "cursor"
    .parameter "size"
    .parameter "msgItem"
    .parameter "isView"
    .parameter "bFailed"

    .prologue
    const/4 v3, 0x0

    .line 410
    if-nez p1, :cond_0

    .line 411
    const/4 v0, 0x0

    .line 429
    :goto_0
    return-object v0

    .line 412
    :cond_0
    const-string v0, "mms"

    iget-object v1, p3, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 413
    iget v6, p3, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    .line 414
    .local v6, type:I
    packed-switch v6, :pswitch_data_0

    .line 421
    :pswitch_0
    const-string v0, "Mms/MessageUtils"

    const-string v1, "No details could be retrieved."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const-string v0, ""

    goto :goto_0

    .line 416
    :pswitch_1
    invoke-static {p0, p1, v3, p3}, Lcom/android/mms/ui/MessageUtils;->getNotificationIndDetails(Landroid/content/Context;Landroid/database/Cursor;ZLcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p5

    .line 419
    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/MessageUtils;->getMultimediaMessageDetails(Landroid/content/Context;Landroid/database/Cursor;IZLcom/android/mms/ui/MessageItem;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 425
    .end local v6           #type:I
    :cond_1
    iget-boolean v0, p3, Lcom/android/mms/ui/MessageItem;->mIsCMASSms:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    .line 426
    :cond_2
    invoke-static {p0, p1, p4, p3}, Lcom/android/mms/ui/MessageUtils;->getSAEAlertMessageDetails(Landroid/content/Context;Landroid/database/Cursor;ZLcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 429
    :cond_3
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, p1, p4, p3, v0}, Lcom/android/mms/ui/MessageUtils;->getTextMessageDetails(Landroid/content/Context;Landroid/database/Cursor;ZLcom/android/mms/ui/MessageItem;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 414
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getMimeTypeFromUri(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;
    .locals 16
    .parameter "activity"
    .parameter "uri"

    .prologue
    .line 6783
    const-string v12, ""

    .line 6784
    .local v12, filePath:Ljava/lang/String;
    const/4 v7, 0x0

    .line 6785
    .local v7, cursor:Landroid/database/Cursor;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v15

    .line 6786
    .local v15, scheme:Ljava/lang/String;
    const-string v0, "content"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 6788
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "mime_type"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 6793
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_3

    .line 6794
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6795
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 6797
    const-string v0, "mime_type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 6798
    .local v8, dbMimeType:Ljava/lang/String;
    if-eqz v8, :cond_2

    const-string v0, ""

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6799
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6810
    if-eqz v7, :cond_0

    .line 6811
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v13, v8

    .line 6854
    .end local v8           #dbMimeType:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v13

    .line 6804
    .restart local v8       #dbMimeType:Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v0, "Mms/MessageUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The actual path is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 6810
    .end local v8           #dbMimeType:Ljava/lang/String;
    :cond_3
    if-eqz v7, :cond_4

    .line 6811
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 6819
    :cond_4
    :goto_1
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6821
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 6824
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_5

    .line 6825
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6826
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v12

    .line 6829
    :cond_5
    if-eqz v7, :cond_6

    .line 6830
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 6835
    :cond_6
    const-string v13, ""

    .line 6837
    .local v13, mimeType:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6841
    invoke-static {}, Lcom/android/mms/util/MessageMimeTypeMap;->getSingleton()Lcom/android/mms/util/MessageMimeTypeMap;

    move-result-object v14

    .line 6842
    .local v14, mimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;
    invoke-static {v12}, Lcom/android/mms/util/MessageMimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 6844
    .local v11, extension:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6847
    const/16 v0, 0x2e

    invoke-virtual {v12, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    .line 6848
    .local v9, dotPos:I
    if-ltz v9, :cond_7

    .line 6849
    add-int/lit8 v0, v9, 0x1

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 6852
    .end local v9           #dotPos:I
    :cond_7
    invoke-virtual {v14, v11}, Lcom/android/mms/util/MessageMimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 6854
    goto :goto_0

    .line 6806
    .end local v11           #extension:Ljava/lang/String;
    .end local v13           #mimeType:Ljava/lang/String;
    .end local v14           #mimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;
    :catch_0
    move-exception v10

    .line 6807
    .local v10, e:Landroid/database/sqlite/SQLiteException;
    :try_start_3
    const-string v0, "Mms/MessageUtils"

    const-string v1, "Catch a SQLiteException: "

    invoke-static {v0, v1, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 6808
    const/4 v13, 0x0

    .line 6810
    if-eqz v7, :cond_1

    .line 6811
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 6810
    .end local v10           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_8

    .line 6811
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 6810
    :cond_8
    throw v0

    .line 6814
    :cond_9
    const-string v0, "file"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6815
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 6829
    :catchall_1
    move-exception v0

    if-eqz v7, :cond_a

    .line 6830
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 6829
    :cond_a
    throw v0
.end method

.method public static getMmsDeliveryTimeLong(Landroid/content/Context;)J
    .locals 6
    .parameter "context"

    .prologue
    const-wide/16 v2, 0x0

    .line 5069
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 5070
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v4, "pref_key_mms_delivery_time"

    sget-object v5, Lcom/android/mms/ui/MessagingPreferenceActivity;->DEFAULT_MMS_DELIVERY_TIME:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5072
    .local v0, deivery_time:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 5079
    :goto_0
    :pswitch_0
    return-wide v2

    .line 5074
    :pswitch_1
    const-wide/16 v2, 0xe10

    goto :goto_0

    .line 5075
    :pswitch_2
    const-wide/16 v2, 0x5460

    goto :goto_0

    .line 5076
    :pswitch_3
    const-wide/32 v2, 0x15180

    goto :goto_0

    .line 5077
    :pswitch_4
    const-wide/32 v2, 0x93a80

    goto :goto_0

    .line 5072
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getMmsPiority(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 5053
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 5055
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v2, "pref_key_mmspriority"

    sget-object v3, Lcom/android/mms/ui/MessagingPreferenceActivity;->DEFAULT_MMS_PRIORITY:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5057
    .local v1, priority:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 5063
    sget-object v2, Lcom/android/mms/ui/MessagingPreferenceActivity;->DEFAULT_MMS_PRIORITY:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :goto_0
    return v2

    .line 5058
    :pswitch_0
    const/16 v2, 0x82

    goto :goto_0

    .line 5059
    :pswitch_1
    const/16 v2, 0x81

    goto :goto_0

    .line 5060
    :pswitch_2
    const/16 v2, 0x80

    goto :goto_0

    .line 5057
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getMmsRecipients(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)Ljava/util/ArrayList;
    .locals 8
    .parameter "context"
    .parameter "msgItem"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/mms/ui/MessageItem;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5852
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5854
    .local v0, arrayAddress:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    iget-wide v4, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 5855
    iget-wide v4, p1, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    invoke-static {p0, v4, v5}, Lcom/android/mms/ui/MessageUtils;->getAddressByThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    .line 5856
    .local v3, szRecipients:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5857
    const-string v4, ";"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 5858
    .local v1, dests:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 5859
    aget-object v4, v1, v2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5858
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5863
    .end local v1           #dests:[Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #szRecipients:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static getMmsReportAllowed(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 5004
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 5005
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v2, "pref_key_send_mms_delivery_reports"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 5007
    .local v0, ReportAlloed:Z
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 5008
    const/16 v2, 0x80

    .line 5010
    :goto_0
    return v2

    :cond_0
    const/16 v2, 0x81

    goto :goto_0
.end method

.method private static getMultimediaMessageDetails(Landroid/content/Context;Landroid/database/Cursor;IZLcom/android/mms/ui/MessageItem;Z)Ljava/lang/String;
    .locals 41
    .parameter "context"
    .parameter "cursor"
    .parameter "size"
    .parameter "isView"
    .parameter "msgItem"
    .parameter "bFailed"

    .prologue
    .line 611
    const/16 v34, 0x0

    .line 612
    .local v34, type:I
    if-eqz p3, :cond_0

    .line 613
    const/16 v37, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    .line 617
    :goto_0
    const/16 v37, 0x82

    move/from16 v0, v34

    move/from16 v1, v37

    if-ne v0, v1, :cond_1

    .line 618
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->getNotificationIndDetails(Landroid/content/Context;Landroid/database/Cursor;ZLcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v37

    .line 879
    :goto_1
    return-object v37

    .line 615
    :cond_0
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    move/from16 v34, v0

    goto :goto_0

    .line 621
    :cond_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 622
    .local v12, details:Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    .line 623
    .local v24, res:Landroid/content/res/Resources;
    const-wide/16 v16, 0x0

    .line 624
    .local v16, id:J
    if-eqz p3, :cond_4

    .line 625
    const/16 v37, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 629
    :goto_2
    const/16 v35, 0x0

    .line 630
    .local v35, uri:Landroid/net/Uri;
    invoke-virtual/range {p4 .. p4}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v37

    if-eqz v37, :cond_5

    .line 631
    sget-object v37, Landroid/provider/Telephony$SpamMms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v37

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v35

    .line 638
    :goto_3
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v19

    check-cast v19, Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 645
    .local v19, msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    const v37, 0x7f0c007e

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    const/16 v37, 0x20

    move/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 647
    const v37, 0x7f0c0080

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    const/4 v5, 0x0

    .line 651
    .local v5, address:Ljava/lang/String;
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/google/android/mms/pdu/RetrieveConf;

    move/from16 v37, v0

    if-eqz v37, :cond_2

    move-object/from16 v37, v19

    .line 653
    check-cast v37, Lcom/google/android/mms/pdu/RetrieveConf;

    invoke-virtual/range {v37 .. v37}, Lcom/google/android/mms/pdu/RetrieveConf;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->extractEncStr(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v14

    .line 654
    .local v14, from:Ljava/lang/String;
    const/16 v37, 0xa

    move/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 655
    const v37, 0x7f0c0082

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    const/16 v37, 0x20

    move/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 658
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v37

    if-eqz v37, :cond_7

    .line 659
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v37

    if-nez v37, :cond_6

    invoke-static {v14}, Lcom/android/mms/ui/MessageUtils;->getNameWithPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 665
    .local v4, _address:Ljava/lang/String;
    :goto_4
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    .end local v4           #_address:Ljava/lang/String;
    .end local v14           #from:Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v37

    if-nez v37, :cond_a

    .line 670
    const/16 v37, 0xa

    move/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 671
    const v37, 0x7f0c0083

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    const/16 v37, 0x20

    move/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 674
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v33

    .line 675
    .local v33, to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    .line 677
    .local v29, sbTo:Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .line 678
    .local v11, countTo:I
    if-eqz v33, :cond_c

    .line 679
    move-object/from16 v6, v33

    .local v6, arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    array-length v0, v6

    move/from16 v18, v0

    .local v18, len$:I
    const/4 v15, 0x0

    .local v15, i$:I
    :goto_5
    move/from16 v0, v18

    if-ge v15, v0, :cond_9

    aget-object v23, v6, v15

    .line 680
    .local v23, recipient:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-lez v11, :cond_3

    .line 681
    const-string v37, ", "

    move-object/from16 v0, v29

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    :cond_3
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Lcom/android/mms/ui/MessageUtils;->getNameWithPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v29

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    add-int/lit8 v11, v11, 0x1

    .line 679
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 627
    .end local v5           #address:Ljava/lang/String;
    .end local v6           #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v11           #countTo:I
    .end local v15           #i$:I
    .end local v18           #len$:I
    .end local v19           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .end local v23           #recipient:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v29           #sbTo:Ljava/lang/StringBuilder;
    .end local v33           #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v35           #uri:Landroid/net/Uri;
    :cond_4
    move-object/from16 v0, p4

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    move-wide/from16 v16, v0

    goto/16 :goto_2

    .line 633
    .restart local v35       #uri:Landroid/net/Uri;
    :cond_5
    sget-object v37, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v37

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v35

    goto/16 :goto_3

    .line 639
    :catch_0
    move-exception v13

    .line 640
    .local v13, e:Lcom/google/android/mms/MmsException;
    const-string v37, "Mms/MessageUtils"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Failed to load the message: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-static {v0, v1, v13}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 641
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    const v38, 0x7f0c007c

    invoke-virtual/range {v37 .. v38}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    goto/16 :goto_1

    .line 659
    .end local v13           #e:Lcom/google/android/mms/MmsException;
    .restart local v5       #address:Ljava/lang/String;
    .restart local v14       #from:Ljava/lang/String;
    .restart local v19       #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :cond_6
    const v37, 0x7f0c013b

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4

    .line 662
    :cond_7
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v37

    if-nez v37, :cond_8

    invoke-static {v14}, Lcom/android/mms/ui/MessageUtils;->getNameWithPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #_address:Ljava/lang/String;
    :goto_6
    goto/16 :goto_4

    .end local v4           #_address:Ljava/lang/String;
    :cond_8
    const v37, 0x7f0c004e

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    .line 686
    .end local v14           #from:Ljava/lang/String;
    .restart local v6       #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v11       #countTo:I
    .restart local v15       #i$:I
    .restart local v18       #len$:I
    .restart local v29       #sbTo:Ljava/lang/StringBuilder;
    .restart local v33       #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_9
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 692
    .end local v6           #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v15           #i$:I
    .end local v18           #len$:I
    :goto_7
    if-eqz v5, :cond_d

    .line 693
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    .end local v11           #countTo:I
    .end local v29           #sbTo:Ljava/lang/StringBuilder;
    .end local v33           #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_a
    :goto_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableReplyAll()Z

    move-result v37

    if-eqz v37, :cond_12

    .line 699
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    .line 700
    .local v28, sbReply:Ljava/lang/StringBuilder;
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/google/android/mms/pdu/RetrieveConf;

    move/from16 v37, v0

    if-eqz v37, :cond_e

    move-object/from16 v37, v19

    .line 701
    check-cast v37, Lcom/google/android/mms/pdu/RetrieveConf;

    invoke-virtual/range {v37 .. v37}, Lcom/google/android/mms/pdu/RetrieveConf;->getCc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v7

    .line 703
    .local v7, cc:[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v10, 0x0

    .line 704
    .local v10, countReply:I
    if-eqz v7, :cond_e

    .line 705
    const/16 v37, 0xa

    move/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 706
    const v37, 0x7f0c0084

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    const/16 v37, 0x20

    move/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 709
    move-object v6, v7

    .restart local v6       #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    array-length v0, v6

    move/from16 v18, v0

    .restart local v18       #len$:I
    const/4 v15, 0x0

    .restart local v15       #i$:I
    :goto_9
    move/from16 v0, v18

    if-ge v15, v0, :cond_e

    aget-object v23, v6, v15

    .line 710
    .restart local v23       #recipient:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-lez v10, :cond_b

    .line 711
    const-string v37, ", "

    move-object/from16 v0, v28

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    :cond_b
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Lcom/android/mms/ui/MessageUtils;->getNameWithPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v28

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    add-int/lit8 v10, v10, 0x1

    .line 709
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    .line 689
    .end local v6           #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v7           #cc:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v10           #countReply:I
    .end local v15           #i$:I
    .end local v18           #len$:I
    .end local v23           #recipient:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v28           #sbReply:Ljava/lang/StringBuilder;
    .restart local v11       #countTo:I
    .restart local v29       #sbTo:Ljava/lang/StringBuilder;
    .restart local v33       #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_c
    const v37, 0x7f0c0122

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_7

    .line 695
    :cond_d
    const-string v37, "Mms/MessageUtils"

    const-string v38, "recipient list is empty!"

    invoke-static/range {v37 .. v38}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 719
    .end local v11           #countTo:I
    .end local v29           #sbTo:Ljava/lang/StringBuilder;
    .end local v33           #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v28       #sbReply:Ljava/lang/StringBuilder;
    :cond_e
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->length()I

    move-result v37

    if-lez v37, :cond_11

    .line 720
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    .end local v28           #sbReply:Ljava/lang/StringBuilder;
    :cond_f
    :goto_a
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/google/android/mms/pdu/SendReq;

    move/from16 v37, v0

    if-eqz v37, :cond_17

    .line 753
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    .local v26, sbBcc:Ljava/lang/StringBuilder;
    move-object/from16 v37, v19

    .line 754
    check-cast v37, Lcom/google/android/mms/pdu/SendReq;

    invoke-virtual/range {v37 .. v37}, Lcom/google/android/mms/pdu/SendReq;->getBcc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v36

    .line 756
    .local v36, values:[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v8, 0x0

    .line 758
    .local v8, countBcc:I
    if-eqz v36, :cond_17

    .line 759
    const/16 v37, 0xa

    move/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 760
    const v37, 0x7f0c0085

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    const/16 v37, 0x20

    move/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 763
    move-object/from16 v6, v36

    .restart local v6       #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    array-length v0, v6

    move/from16 v18, v0

    .restart local v18       #len$:I
    const/4 v15, 0x0

    .restart local v15       #i$:I
    :goto_b
    move/from16 v0, v18

    if-ge v15, v0, :cond_16

    aget-object v23, v6, v15

    .line 764
    .restart local v23       #recipient:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-lez v8, :cond_10

    .line 765
    const-string v37, ", "

    move-object/from16 v0, v26

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    :cond_10
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Lcom/android/mms/ui/MessageUtils;->getNameWithPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v26

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    add-int/lit8 v8, v8, 0x1

    .line 763
    add-int/lit8 v15, v15, 0x1

    goto :goto_b

    .line 722
    .end local v6           #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v8           #countBcc:I
    .end local v15           #i$:I
    .end local v18           #len$:I
    .end local v23           #recipient:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v26           #sbBcc:Ljava/lang/StringBuilder;
    .end local v36           #values:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v28       #sbReply:Ljava/lang/StringBuilder;
    :cond_11
    const-string v37, "Mms/MessageUtils"

    const-string v38, "recipient list is empty!"

    invoke-static/range {v37 .. v38}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 724
    .end local v28           #sbReply:Ljava/lang/StringBuilder;
    :cond_12
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v37

    if-eqz v37, :cond_f

    .line 726
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    .line 727
    .local v27, sbGroup:Ljava/lang/StringBuilder;
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getCc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v7

    .line 729
    .restart local v7       #cc:[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v9, 0x0

    .line 730
    .local v9, countGroup:I
    if-eqz v7, :cond_14

    .line 731
    const/16 v37, 0xa

    move/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 732
    const v37, 0x7f0c0084

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    const/16 v37, 0x20

    move/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 735
    move-object v6, v7

    .restart local v6       #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    array-length v0, v6

    move/from16 v18, v0

    .restart local v18       #len$:I
    const/4 v15, 0x0

    .restart local v15       #i$:I
    :goto_c
    move/from16 v0, v18

    if-ge v15, v0, :cond_14

    aget-object v23, v6, v15

    .line 736
    .restart local v23       #recipient:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-lez v9, :cond_13

    .line 737
    const-string v37, ", "

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    :cond_13
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Lcom/android/mms/ui/MessageUtils;->getNameWithPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    add-int/lit8 v9, v9, 0x1

    .line 735
    add-int/lit8 v15, v15, 0x1

    goto :goto_c

    .line 744
    .end local v6           #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v15           #i$:I
    .end local v18           #len$:I
    .end local v23           #recipient:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_14
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->length()I

    move-result v37

    if-lez v37, :cond_15

    .line 745
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    .line 747
    :cond_15
    const-string v37, "Mms/MessageUtils"

    const-string v38, "**********CC fields is empty*********"

    invoke-static/range {v37 .. v38}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 771
    .end local v7           #cc:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v9           #countGroup:I
    .end local v27           #sbGroup:Ljava/lang/StringBuilder;
    .restart local v6       #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v8       #countBcc:I
    .restart local v15       #i$:I
    .restart local v18       #len$:I
    .restart local v26       #sbBcc:Ljava/lang/StringBuilder;
    .restart local v36       #values:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_16
    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v37, v0

    if-lez v37, :cond_1e

    .line 772
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    .end local v6           #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v8           #countBcc:I
    .end local v15           #i$:I
    .end local v18           #len$:I
    .end local v26           #sbBcc:Ljava/lang/StringBuilder;
    .end local v36           #values:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_17
    :goto_d
    const/16 v37, 0xa

    move/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 781
    const/16 v20, 0x0

    .line 782
    .local v20, msgBox:I
    if-eqz p3, :cond_1f

    .line 783
    const/16 v37, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 787
    :goto_e
    const/16 v37, 0x3

    move/from16 v0, v20

    move/from16 v1, v37

    if-ne v0, v1, :cond_20

    .line 788
    const v37, 0x7f0c0088

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    :goto_f
    const/16 v37, 0x20

    move/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 801
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getDate()J

    move-result-wide v37

    const-wide/16 v39, 0x3e8

    mul-long v37, v37, v39

    const/16 v39, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v37

    move/from16 v3, v39

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    const/16 v37, 0xa

    move/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 805
    const v37, 0x7f0c0089

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    const/16 v37, 0x20

    move/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 808
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v32

    .line 809
    .local v32, subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v32, :cond_23

    .line 810
    invoke-virtual/range {v32 .. v32}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v31

    .line 812
    .local v31, subStr:Ljava/lang/String;
    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v37

    add-int p2, p2, v37

    .line 813
    move-object/from16 v0, v31

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 818
    .end local v31           #subStr:Ljava/lang/String;
    :goto_10
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsPriority()Z

    move-result v37

    if-nez v37, :cond_18

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsDetailVzw()Z

    move-result v37

    if-eqz v37, :cond_19

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v37

    if-eqz v37, :cond_19

    .line 820
    :cond_18
    const/16 v37, 0xa

    move/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 821
    const v37, 0x7f0c008b

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    const/16 v37, 0x20

    move/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 823
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsPriority()Z

    move-result v37

    if-eqz v37, :cond_25

    .line 824
    invoke-virtual/range {p4 .. p4}, Lcom/android/mms/ui/MessageItem;->getReserved()J

    move-result-wide v37

    const-wide/16 v39, 0x1

    cmp-long v37, v37, v39

    if-nez v37, :cond_24

    .line 825
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->getMmsPiority(Landroid/content/Context;)I

    move-result v37

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->getPriorityDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    :cond_19
    :goto_11
    const/16 v37, 0xa

    move/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 835
    const v37, 0x7f0c008a

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    const/16 v37, 0x20

    move/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 837
    move/from16 v0, p2

    add-int/lit16 v0, v0, 0x3ff

    move/from16 v37, v0

    move/from16 v0, v37

    div-int/lit16 v0, v0, 0x400

    move/from16 v37, v0

    move/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 839
    const/16 v37, 0x200e

    move/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 840
    const v37, 0x7f0c0011

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsDetailVzw()Z

    move-result v37

    if-eqz v37, :cond_1b

    .line 843
    const/16 v37, 0x4

    move/from16 v0, v20

    move/from16 v1, v37

    if-ne v0, v1, :cond_27

    .line 844
    invoke-static/range {v35 .. v35}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v21

    .line 845
    .local v21, msgId:J
    const/16 v25, 0x0

    .line 848
    .local v25, respStatus:I
    const-string v37, "\n"

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    const v37, 0x7f0c00a3

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    const/16 v37, 0x20

    move/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 851
    if-eqz p5, :cond_1a

    .line 852
    const v37, 0x7f0c0137

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    :cond_1a
    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->getResponseStatus(Landroid/content/Context;J)I

    move-result v25

    .line 856
    if-lez v25, :cond_26

    .line 857
    const-string v37, "\n"

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    invoke-static/range {v25 .. v25}, Lcom/android/mms/ui/MessageUtils;->getErrorStringID(I)I

    move-result v37

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 872
    .end local v21           #msgId:J
    .end local v25           #respStatus:I
    :cond_1b
    :goto_12
    const/16 v37, 0x80

    move/from16 v0, v34

    move/from16 v1, v37

    if-ne v0, v1, :cond_1d

    const-wide/16 v37, 0x0

    cmp-long v37, v16, v37

    if-lez v37, :cond_1d

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v37

    if-eqz v37, :cond_1c

    move-object/from16 v0, p4

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mReserved:J

    move-wide/from16 v37, v0

    const-wide/16 v39, 0x1

    cmp-long v37, v37, v39

    if-eqz v37, :cond_1d

    .line 874
    :cond_1c
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/DeliveryReadReport;->getMmsReportText(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v30

    .line 875
    .local v30, statusStr:Ljava/lang/String;
    if-eqz v30, :cond_1d

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSDeliveryReportsEnabled()Z

    move-result v37

    if-eqz v37, :cond_1d

    .line 876
    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    .end local v30           #statusStr:Ljava/lang/String;
    :cond_1d
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    goto/16 :goto_1

    .line 774
    .end local v20           #msgBox:I
    .end local v32           #subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v6       #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v8       #countBcc:I
    .restart local v15       #i$:I
    .restart local v18       #len$:I
    .restart local v26       #sbBcc:Ljava/lang/StringBuilder;
    .restart local v36       #values:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_1e
    const-string v37, "Mms/MessageUtils"

    const-string v38, "**********Bcc fields is empty*********"

    invoke-static/range {v37 .. v38}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 785
    .end local v6           #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v8           #countBcc:I
    .end local v15           #i$:I
    .end local v18           #len$:I
    .end local v26           #sbBcc:Ljava/lang/StringBuilder;
    .end local v36           #values:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v20       #msgBox:I
    :cond_1f
    invoke-virtual/range {p4 .. p4}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v20

    goto/16 :goto_e

    .line 789
    :cond_20
    const/16 v37, 0x1

    move/from16 v0, v20

    move/from16 v1, v37

    if-ne v0, v1, :cond_22

    .line 791
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableServerTimeLabel()Z

    move-result v37

    if-eqz v37, :cond_21

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsServerTime()Z

    move-result v37

    if-eqz v37, :cond_21

    .line 792
    const v37, 0x7f0c0086

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f

    .line 794
    :cond_21
    const v37, 0x7f0c0087

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f

    .line 797
    :cond_22
    const v37, 0x7f0c0086

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f

    .line 815
    .restart local v32       #subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_23
    const v37, 0x7f0c014c

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    .line 827
    :cond_24
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getPriority()I

    move-result v37

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->getPriorityDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_11

    .line 829
    :cond_25
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getPriority()I

    move-result v37

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->getPriorityDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_11

    .line 859
    .restart local v21       #msgId:J
    .restart local v25       #respStatus:I
    :cond_26
    if-nez p5, :cond_1b

    .line 860
    const v37, 0x7f0c009d

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_12

    .line 862
    .end local v21           #msgId:J
    .end local v25           #respStatus:I
    :cond_27
    const/16 v37, 0x2

    move/from16 v0, v20

    move/from16 v1, v37

    if-ne v0, v1, :cond_1b

    .line 864
    const-string v37, "\n"

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    const v37, 0x7f0c00a3

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 866
    const/16 v37, 0x20

    move/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 867
    const v37, 0x7f0c0339

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_12
.end method

.method public static getNameWithPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "phone"

    .prologue
    .line 517
    invoke-static {p0}, Lcom/android/mms/data/Contact;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 519
    .local v0, name:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePhoneNumberFormattingInMsg()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 520
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getFormattedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 523
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p0, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 532
    .end local p0
    :cond_1
    :goto_0
    return-object p0

    .line 526
    .restart local p0
    :cond_2
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isLocaleRTL()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 527
    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isTextRTL(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 528
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(\u200e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u200f)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 530
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(\u200e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u200f)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 532
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static getNotificationIndDetails(Landroid/content/Context;Landroid/database/Cursor;ZLcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 21
    .parameter "context"
    .parameter "cursor"
    .parameter "isView"
    .parameter "msgItem"

    .prologue
    .line 436
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 437
    .local v5, details:Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 438
    .local v11, res:Landroid/content/res/Resources;
    const-wide/16 v8, 0x0

    .line 439
    .local v8, id:J
    if-eqz p2, :cond_0

    .line 440
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 444
    :goto_0
    const/4 v13, 0x0

    .line 445
    .local v13, uri:Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 446
    sget-object v14, Landroid/provider/Telephony$SpamMms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v14, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    .line 452
    :goto_1
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v14

    invoke-virtual {v14, v13}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v10

    check-cast v10, Lcom/google/android/mms/pdu/NotificationInd;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    .local v10, nInd:Lcom/google/android/mms/pdu/NotificationInd;
    const v14, 0x7f0c007e

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    const/16 v14, 0x20

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 461
    const v14, 0x7f0c0081

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    invoke-virtual {v10}, Lcom/google/android/mms/pdu/NotificationInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/mms/ui/MessageUtils;->extractEncStr(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v7

    .line 466
    .local v7, from:Ljava/lang/String;
    const/16 v14, 0xa

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 467
    const v14, 0x7f0c0082

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    const/16 v14, 0x20

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 470
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 471
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    invoke-static {v7}, Lcom/android/mms/ui/MessageUtils;->getNameWithPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 478
    .local v4, _address:Ljava/lang/String;
    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    const/16 v14, 0xa

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 482
    const v14, 0x7f0c0010

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v10}, Lcom/google/android/mms/pdu/NotificationInd;->getExpiry()J

    move-result-wide v17

    const-wide/16 v19, 0x3e8

    mul-long v17, v17, v19

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v11, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    const/16 v14, 0xa

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 487
    const v14, 0x7f0c0089

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    const/16 v14, 0x20

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 490
    invoke-virtual {v10}, Lcom/google/android/mms/pdu/NotificationInd;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v12

    .line 491
    .local v12, subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v12, :cond_5

    .line 492
    invoke-virtual {v12}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    :goto_3
    const/16 v14, 0xa

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 507
    const v14, 0x7f0c008a

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    const/16 v14, 0x20

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 509
    invoke-virtual {v10}, Lcom/google/android/mms/pdu/NotificationInd;->getMessageSize()J

    move-result-wide v14

    const-wide/16 v16, 0x3ff

    add-long v14, v14, v16

    const-wide/16 v16, 0x400

    div-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    const/16 v14, 0x200e

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 511
    const v14, 0x7f0c0011

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .end local v4           #_address:Ljava/lang/String;
    .end local v7           #from:Ljava/lang/String;
    .end local v10           #nInd:Lcom/google/android/mms/pdu/NotificationInd;
    .end local v12           #subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    :goto_4
    return-object v14

    .line 442
    .end local v13           #uri:Landroid/net/Uri;
    :cond_0
    move-object/from16 v0, p3

    iget-wide v8, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    goto/16 :goto_0

    .line 448
    .restart local v13       #uri:Landroid/net/Uri;
    :cond_1
    sget-object v14, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v14, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    goto/16 :goto_1

    .line 453
    :catch_0
    move-exception v6

    .line 454
    .local v6, e:Lcom/google/android/mms/MmsException;
    const-string v14, "Mms/MessageUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed to load the message: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 455
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c007c

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_4

    .line 471
    .end local v6           #e:Lcom/google/android/mms/MmsException;
    .restart local v7       #from:Ljava/lang/String;
    .restart local v10       #nInd:Lcom/google/android/mms/pdu/NotificationInd;
    :cond_2
    const v14, 0x7f0c013b

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    .line 474
    :cond_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4

    invoke-static {v7}, Lcom/android/mms/ui/MessageUtils;->getNameWithPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #_address:Ljava/lang/String;
    :goto_5
    goto/16 :goto_2

    .end local v4           #_address:Ljava/lang/String;
    :cond_4
    const v14, 0x7f0c004e

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    .line 494
    .restart local v4       #_address:Ljava/lang/String;
    .restart local v12       #subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_5
    const v14, 0x7f0c014c

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3
.end method

.method public static getPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "address"

    .prologue
    .line 2934
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2935
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 2937
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 2938
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2941
    .local v1, c:C
    const/16 v4, 0x2b

    if-ne v1, v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 2942
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2937
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2946
    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2947
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2951
    :cond_2
    sget-object v4, Lcom/android/mms/ui/MessageUtils;->numericSugarMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 2955
    .end local v1           #c:C
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static getPriorityDescription(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "PriorityValue"

    .prologue
    .line 1289
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1290
    .local v0, res:Landroid/content/res/Resources;
    packed-switch p1, :pswitch_data_0

    .line 1297
    :pswitch_0
    const v1, 0x7f0c008d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 1292
    :pswitch_1
    const v1, 0x7f0c008c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1294
    :pswitch_2
    const v1, 0x7f0c008e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1290
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getPriorityType(Landroid/content/Context;J)I
    .locals 6
    .parameter "context"
    .parameter "msgId"

    .prologue
    .line 3265
    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 3269
    .local v2, uri:Landroid/net/Uri;
    :try_start_0
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v1

    check-cast v1, Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3275
    .local v1, msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getPriority()I

    move-result v3

    .end local v1           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :goto_0
    return v3

    .line 3270
    :catch_0
    move-exception v0

    .line 3271
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v3, "Mms/MessageUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to load the message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3272
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public static getRecipientIdsByThreadId(Landroid/content/Context;J)Ljava/lang/String;
    .locals 11
    .parameter "context"
    .parameter "threadId"

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x1

    .line 3367
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "recipient_ids"

    aput-object v0, v3, v1

    const-string v0, "display_recipient_ids"

    aput-object v0, v3, v10

    .line 3372
    .local v3, projection:[Ljava/lang/String;
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 3373
    .local v7, builder:Landroid/net/Uri$Builder;
    const-string v0, "simple"

    const-string v1, "true"

    invoke-virtual {v7, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3374
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3377
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 3379
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3380
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3381
    .local v9, recipientIds:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3382
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 3387
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3391
    .end local v9           #recipientIds:Ljava/lang/String;
    :goto_0
    return-object v9

    .line 3387
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v9, v5

    .line 3391
    goto :goto_0
.end method

.method public static getRecipientsByIds(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "recipientIds"
    .parameter "allowQuery"

    .prologue
    .line 1615
    sget-object v2, Lcom/android/mms/ui/MessageUtils;->sRecipientAddress:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1616
    .local v1, value:Ljava/lang/String;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 1630
    :goto_0
    return-object v2

    .line 1619
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1620
    invoke-static {p0, p1, p2}, Lcom/android/mms/ui/MessageUtils;->extractIdsToAddresses(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1621
    .local v0, addressBuf:Ljava/lang/StringBuilder;
    if-nez v0, :cond_1

    .line 1623
    const-string v2, ""

    goto :goto_0

    .line 1625
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1629
    .end local v0           #addressBuf:Ljava/lang/StringBuilder;
    :goto_1
    sget-object v2, Lcom/android/mms/ui/MessageUtils;->sRecipientAddress:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 1630
    goto :goto_0

    .line 1627
    :cond_2
    const-string v1, ""

    goto :goto_1
.end method

.method public static getRecipientsFromPDU(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "uri"
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 544
    :try_start_0
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v1

    check-cast v1, Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    .line 553
    .local v1, msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    instance-of v4, v1, Lcom/google/android/mms/pdu/SendReq;

    if-eqz v4, :cond_0

    .line 554
    check-cast v1, Lcom/google/android/mms/pdu/SendReq;

    .end local v1           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/SendReq;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    .line 555
    .local v2, values:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v2, :cond_0

    array-length v4, v2

    if-lez v4, :cond_0

    .line 557
    invoke-static {v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->concat([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v3

    .line 560
    .end local v2           #values:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_0
    :goto_0
    return-object v3

    .line 545
    :catch_0
    move-exception v0

    .line 546
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v4, "Mms/MessageUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to load the message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 548
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    :catch_1
    move-exception v0

    .line 549
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v4, "Mms/MessageUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ClassCastException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getReplyAllCount(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;Ljava/util/ArrayList;)Z
    .locals 20
    .parameter "context"
    .parameter "mMsgItem"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/mms/ui/MessageItem;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2002
    .local p2, numberList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .line 2003
    .local v11, msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    const/4 v2, 0x0

    .line 2004
    .local v2, IsReplyAllAvaiable:Z
    const/4 v6, 0x0

    .line 2005
    .local v6, count:I
    sget-object v17, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    move-wide/from16 v18, v0

    invoke-static/range {v17 .. v19}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v16

    .line 2007
    .local v16, uri:Landroid/net/Uri;
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    move-object v11, v0
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2012
    :goto_0
    if-nez v11, :cond_0

    .line 2013
    const/16 v17, 0x0

    .line 2070
    .end local v11           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :goto_1
    return v17

    .line 2008
    .restart local v11       #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :catch_0
    move-exception v7

    .line 2009
    .local v7, e:Lcom/google/android/mms/MmsException;
    const-string v17, "Mms/MessageUtils"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Failed to load the message: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2016
    .end local v7           #e:Lcom/google/android/mms/MmsException;
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->clear()V

    .line 2017
    instance-of v0, v11, Lcom/google/android/mms/pdu/RetrieveConf;

    move/from16 v17, v0

    if-eqz v17, :cond_7

    move-object/from16 v17, v11

    .line 2018
    check-cast v17, Lcom/google/android/mms/pdu/RetrieveConf;

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/mms/pdu/RetrieveConf;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v14

    .line 2020
    .local v14, to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v14, :cond_3

    .line 2021
    move-object v4, v14

    .local v4, arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    array-length v10, v4

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_2
    if-ge v9, v10, :cond_3

    aget-object v12, v4, v9

    .line 2023
    .local v12, recipient:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {v12}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/mms/ui/MessageUtils;->isLocalNumber(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 2021
    :cond_1
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 2026
    :cond_2
    invoke-virtual {v12}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v13

    .line 2027
    .local v13, recipientName:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 2028
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2029
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 2034
    .end local v4           #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v9           #i$:I
    .end local v10           #len$:I
    .end local v12           #recipient:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v13           #recipientName:Ljava/lang/String;
    :cond_3
    check-cast v11, Lcom/google/android/mms/pdu/RetrieveConf;

    .end local v11           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/RetrieveConf;->getCc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    .line 2035
    .local v5, cc:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v5, :cond_7

    .line 2036
    move-object v4, v5

    .restart local v4       #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    array-length v10, v4

    .restart local v10       #len$:I
    const/4 v9, 0x0

    .restart local v9       #i$:I
    :goto_4
    if-ge v9, v10, :cond_7

    aget-object v12, v4, v9

    .line 2038
    .restart local v12       #recipient:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {v12}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/mms/ui/MessageUtils;->isLocalNumber(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 2036
    :cond_4
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 2041
    :cond_5
    invoke-virtual {v12}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v13

    .line 2042
    .restart local v13       #recipientName:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 2043
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2044
    if-nez v2, :cond_6

    .line 2045
    const/4 v2, 0x1

    .line 2047
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 2053
    .end local v4           #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v5           #cc:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v9           #i$:I
    .end local v10           #len$:I
    .end local v12           #recipient:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v13           #recipientName:Ljava/lang/String;
    .end local v14           #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_7
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    .line 2054
    .local v8, fromName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 2055
    .local v3, alreadyAdded:Z
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 2056
    .local v15, toNums:Ljava/lang/String;
    invoke-static {v15, v8}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 2057
    const/4 v3, 0x1

    .line 2061
    .end local v15           #toNums:Ljava/lang/String;
    :cond_9
    if-nez v3, :cond_a

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_a

    invoke-static {v8}, Lcom/android/mms/ui/MessageUtils;->isLocalNumber(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_a

    .line 2062
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2063
    add-int/lit8 v6, v6, 0x1

    .line 2066
    :cond_a
    const/16 v17, 0x1

    move/from16 v0, v17

    if-le v6, v0, :cond_b

    if-nez v2, :cond_b

    .line 2067
    const/4 v2, 0x1

    :cond_b
    move/from16 v17, v2

    .line 2070
    goto/16 :goto_1
.end method

.method public static getResponseStatus(Landroid/content/Context;J)I
    .locals 9
    .parameter "context"
    .parameter "msgID"

    .prologue
    .line 3582
    const/4 v8, 0x0

    .line 3583
    .local v8, respStatus:I
    const/4 v7, 0x0

    .line 3586
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3588
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3589
    const-string v0, "resp_st"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 3592
    :cond_0
    if-eqz v7, :cond_1

    .line 3593
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3597
    :cond_1
    if-eqz v8, :cond_2

    .line 3598
    const-string v0, "Mms/MessageUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response status is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3601
    :cond_2
    return v8

    .line 3592
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 3593
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3592
    :cond_3
    throw v0
.end method

.method private static getResponseTypeTextID(I)I
    .locals 3
    .parameter "msgResponseType"

    .prologue
    const/4 v2, 0x4

    .line 4773
    const v0, 0x7f0c01e4

    .line 4775
    .local v0, id:I
    packed-switch p0, :pswitch_data_0

    .line 4822
    :goto_0
    return v0

    .line 4779
    :pswitch_0
    const v0, 0x7f0c01d6

    .line 4780
    goto :goto_0

    .line 4783
    :pswitch_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 4784
    const v0, 0x7f0c01fc

    goto :goto_0

    .line 4786
    :cond_0
    const v0, 0x7f0c01d7

    .line 4787
    goto :goto_0

    .line 4790
    :pswitch_2
    const v0, 0x7f0c01d8

    .line 4791
    goto :goto_0

    .line 4795
    :pswitch_3
    const v0, 0x7f0c01d9

    .line 4796
    goto :goto_0

    .line 4800
    :pswitch_4
    const v0, 0x7f0c01da

    .line 4801
    goto :goto_0

    .line 4804
    :pswitch_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 4805
    const v0, 0x7f0c01f9

    goto :goto_0

    .line 4807
    :cond_1
    const v0, 0x7f0c01db

    .line 4808
    goto :goto_0

    .line 4814
    :pswitch_6
    const v0, 0x7f0c01dc

    .line 4815
    goto :goto_0

    .line 4818
    :pswitch_7
    const v0, 0x7f0c01dd

    goto :goto_0

    .line 4775
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private static getSAEAlertMessageDetails(Landroid/content/Context;Landroid/database/Cursor;ZLcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 11
    .parameter "context"
    .parameter "cursor"
    .parameter "isView"
    .parameter "msgItem"

    .prologue
    const/16 v10, 0xa

    const/4 v9, 0x1

    const/16 v8, 0x20

    .line 1234
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1235
    .local v2, details:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1237
    .local v4, res:Landroid/content/res/Resources;
    const v6, 0x7f0c007e

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1238
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1239
    const v6, 0x7f0c01ba

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1241
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1242
    const/4 v5, 0x0

    .line 1243
    .local v5, smsType:I
    if-eqz p2, :cond_1

    .line 1245
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_0

    .line 1246
    invoke-virtual {p3}, Lcom/android/mms/ui/MessageItem;->getBoxId()I
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 1256
    :goto_0
    invoke-static {v5}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1257
    const v6, 0x7f0c0083

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1261
    :goto_1
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1262
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SAE "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0c01e7

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1265
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1266
    const v6, 0x7f0c0087

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1267
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1269
    const-wide/16 v0, 0x0

    .line 1270
    .local v0, date:J
    if-eqz p2, :cond_3

    .line 1272
    const/4 v6, 0x3

    :try_start_1
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    .line 1279
    :goto_2
    invoke-static {p0, v0, v1, v9}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1285
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 1248
    .end local v0           #date:J
    :cond_0
    const/4 v6, 0x1

    :try_start_2
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v5

    goto :goto_0

    .line 1250
    :catch_0
    move-exception v3

    .line 1251
    .local v3, e:Landroid/database/CursorIndexOutOfBoundsException;
    const-string v6, "Mms/MessageUtils"

    const-string v7, "CursorIndexOutOfBoundsException - cursor.getInt(MessageOptions.COLUMN_SMS_TYPE)"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1254
    .end local v3           #e:Landroid/database/CursorIndexOutOfBoundsException;
    :cond_1
    invoke-virtual {p3}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v5

    goto :goto_0

    .line 1259
    :cond_2
    const v6, 0x7f0c0082

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1273
    .restart local v0       #date:J
    :catch_1
    move-exception v3

    .line 1274
    .local v3, e:Ljava/lang/IllegalStateException;
    const-string v6, "Mms/MessageUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IllegalStateException "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1277
    .end local v3           #e:Ljava/lang/IllegalStateException;
    :cond_3
    iget-wide v0, p3, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    goto :goto_2
.end method

.method public static getScaleFactor(IIII)F
    .locals 5
    .parameter "input_w"
    .parameter "input_h"
    .parameter "target_w"
    .parameter "target_h"

    .prologue
    .line 7088
    const/high16 v2, 0x3f80

    .line 7089
    .local v2, scaleFactor_W:F
    const/high16 v1, 0x3f80

    .line 7090
    .local v1, scaleFactor_H:F
    const/high16 v0, 0x3f80

    .line 7092
    .local v0, scaleFactor:F
    int-to-float v3, p2

    int-to-float v4, p0

    div-float v2, v3, v4

    .line 7094
    int-to-float v3, p3

    int-to-float v4, p1

    div-float v1, v3, v4

    .line 7096
    cmpg-float v3, v2, v1

    if-gez v3, :cond_0

    .line 7097
    move v0, v2

    .line 7102
    :goto_0
    return v0

    .line 7099
    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static getScreenHeight()I
    .locals 3

    .prologue
    .line 4070
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Lcom/android/mms/MmsApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 4072
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    return v1
.end method

.method public static getScreenOrientation()I
    .locals 2

    .prologue
    .line 4076
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/MmsApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 4077
    .local v0, orientation:I
    return v0
.end method

.method public static getScreenWidth()I
    .locals 3

    .prologue
    .line 4058
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Lcom/android/mms/MmsApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 4060
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    return v1
.end method

.method public static getSenderInformation(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "msgItem"

    .prologue
    const/4 v3, 0x0

    const/16 v8, 0x20

    const/16 v7, 0xa

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 367
    .local v1, info:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 368
    .local v2, res:Landroid/content/res/Resources;
    const/16 v0, 0xb15

    .line 370
    .local v0, format_flags:I
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isWpm()Z

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v4, p1, Lcom/android/mms/ui/MessageItem;->mIsCbSms:Z

    if-eqz v4, :cond_1

    .line 404
    :cond_0
    :goto_0
    return-object v3

    .line 373
    :cond_1
    iget-object v4, p1, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 374
    const v3, 0x7f0c0357

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 378
    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    iget-wide v3, p1, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    .line 384
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 385
    const v3, 0x7f0c00e3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 389
    iget-wide v3, p1, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    invoke-static {p0, v3, v4, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    :cond_2
    const-string v3, "mms"

    iget-object v4, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 393
    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 394
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 395
    const v3, 0x7f0c0089

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 397
    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 401
    :cond_4
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static getSeverityTextID(I)I
    .locals 1
    .parameter "msgSeverity"

    .prologue
    .line 4736
    const v0, 0x7f0c01e4

    .line 4740
    .local v0, id:I
    packed-switch p0, :pswitch_data_0

    .line 4751
    :goto_0
    return v0

    .line 4743
    :pswitch_0
    const v0, 0x7f0c01de

    .line 4744
    goto :goto_0

    .line 4747
    :pswitch_1
    const v0, 0x7f0c01df

    goto :goto_0

    .line 4740
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getSharedPreference(Landroid/app/Activity;)Landroid/content/SharedPreferences;
    .locals 2
    .parameter "activity"

    .prologue
    .line 5819
    const-string v0, "com.android.mms"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static getTextMessageDetails(Landroid/content/Context;Landroid/database/Cursor;ZLcom/android/mms/ui/MessageItem;Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 38
    .parameter "context"
    .parameter "cursor"
    .parameter "isView"
    .parameter "msgItem"
    .parameter "bFailed"

    .prologue
    .line 885
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 886
    .local v19, details:Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v36

    .line 889
    .local v36, res:Landroid/content/res/Resources;
    const/16 v24, 0x0

    .line 892
    .local v24, isCmas:Z
    const v3, 0x7f0c007e

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    const/16 v3, 0x20

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 894
    const v3, 0x7f0c007f

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 897
    const/16 v3, 0xa

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 898
    const/16 v37, 0x0

    .line 899
    .local v37, smsType:I
    if-eqz p2, :cond_2

    .line 901
    :try_start_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 902
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->getBoxId()I
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v37

    .line 912
    :goto_0
    invoke-static/range {v37 .. v37}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 913
    const v3, 0x7f0c0083

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 914
    const-string v3, "\u202a"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    :goto_1
    const/16 v3, 0x20

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 921
    const/4 v9, 0x0

    .line 922
    .local v9, _address:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 924
    .local v10, addr:Ljava/lang/StringBuilder;
    const/4 v15, 0x0

    .line 925
    .local v15, cursorGroupId:Landroid/database/Cursor;
    const-wide/16 v32, 0x0

    .line 927
    .local v32, nGroupId:J
    :try_start_1
    const-string v3, "group_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    .line 928
    const-wide/16 v3, 0x0

    cmp-long v3, v32, v3

    if-lez v3, :cond_16

    .line 929
    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "address"

    aput-object v4, v5, v3

    .line 932
    .local v5, PROJECTION_Sms:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "group_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v32

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 934
    if-eqz v15, :cond_16

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_16

    .line 935
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 938
    const/16 v23, 0x0

    .local v23, i:I
    :goto_2
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v3

    move/from16 v0, v23

    if-ge v0, v3, :cond_15

    .line 940
    :try_start_2
    const-string v3, "address"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 941
    .local v12, addrNum:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/mms/ui/MessageUtils;->getNameWithPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 942
    .local v11, addrContact:Ljava/lang/String;
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 943
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    .line 944
    invoke-interface {v15}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_0

    .line 945
    const-string v3, ", "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 938
    .end local v11           #addrContact:Ljava/lang/String;
    .end local v12           #addrNum:Ljava/lang/String;
    :cond_0
    :goto_3
    add-int/lit8 v23, v23, 0x1

    goto :goto_2

    .line 904
    .end local v5           #PROJECTION_Sms:[Ljava/lang/String;
    .end local v9           #_address:Ljava/lang/String;
    .end local v10           #addr:Ljava/lang/StringBuilder;
    .end local v15           #cursorGroupId:Landroid/database/Cursor;
    .end local v23           #i:I
    .end local v32           #nGroupId:J
    :cond_1
    const/4 v3, 0x1

    :try_start_3
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_3
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v37

    goto/16 :goto_0

    .line 906
    :catch_0
    move-exception v20

    .line 907
    .local v20, e:Landroid/database/CursorIndexOutOfBoundsException;
    const-string v3, "Mms/MessageUtils"

    const-string v4, "CursorIndexOutOfBoundsException - cursor.getInt(MessageOptions.COLUMN_SMS_TYPE)"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 910
    .end local v20           #e:Landroid/database/CursorIndexOutOfBoundsException;
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v37

    goto/16 :goto_0

    .line 916
    :cond_3
    const v3, 0x7f0c0082

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    const-string v3, "\u202a"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 946
    .restart local v5       #PROJECTION_Sms:[Ljava/lang/String;
    .restart local v9       #_address:Ljava/lang/String;
    .restart local v10       #addr:Ljava/lang/StringBuilder;
    .restart local v15       #cursorGroupId:Landroid/database/Cursor;
    .restart local v23       #i:I
    .restart local v32       #nGroupId:J
    :catch_1
    move-exception v21

    .line 947
    .local v21, ex:Ljava/lang/Exception;
    :try_start_4
    const-string v3, "Mms/MessageUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 954
    .end local v5           #PROJECTION_Sms:[Ljava/lang/String;
    .end local v21           #ex:Ljava/lang/Exception;
    .end local v23           #i:I
    :catch_2
    move-exception v21

    .line 955
    .restart local v21       #ex:Ljava/lang/Exception;
    :try_start_5
    const-string v3, "Mms/MessageUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 957
    if-eqz v15, :cond_4

    .line 958
    .end local v21           #ex:Ljava/lang/Exception;
    :goto_4
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 961
    :cond_4
    const-wide/16 v3, 0x0

    cmp-long v3, v32, v3

    if-gtz v3, :cond_5

    .line 963
    :try_start_6
    const-string v3, "address"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-result-object v9

    .line 980
    :goto_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 982
    const v3, 0x7f0c013b

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1004
    :cond_5
    :goto_6
    if-eqz v9, :cond_6

    .line 1005
    const-string v3, "#CMAS#"

    invoke-virtual {v9, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    .line 1006
    :cond_6
    if-eqz v24, :cond_1f

    .line 1007
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_1d

    .line 1008
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SAE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0c01e7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1016
    :goto_7
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1020
    :goto_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1021
    const/16 v3, 0xa

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1022
    const v3, 0x7f0c008b

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1023
    const/16 v3, 0x20

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1024
    const/16 v34, 0x0

    .line 1026
    .local v34, priority:I
    if-eqz v24, :cond_20

    .line 1027
    const/16 v34, 0x4

    .line 1039
    :cond_8
    :goto_9
    const/4 v3, 0x2

    move/from16 v0, v34

    if-ne v0, v3, :cond_21

    .line 1040
    const v3, 0x7f0c008c

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1046
    .end local v34           #priority:I
    :cond_9
    :goto_a
    const/16 v3, 0xa

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1047
    const/4 v3, 0x3

    move/from16 v0, v37

    if-ne v0, v3, :cond_22

    .line 1048
    const v3, 0x7f0c0088

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1059
    :goto_b
    const/16 v3, 0x20

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1061
    const-wide/16 v16, 0x0

    .line 1062
    .local v16, date:J
    if-eqz p2, :cond_25

    .line 1064
    const/4 v3, 0x3

    :try_start_7
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_7

    move-result-wide v16

    .line 1073
    :goto_c
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1090
    invoke-static/range {v37 .. v37}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v0, p3

    iget-wide v3, v0, Lcom/android/mms/ui/MessageItem;->mReserved:J

    const-wide/16 v6, 0x1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_c

    .line 1092
    :cond_a
    const-string v18, ""

    .line 1093
    .local v18, deliveryStatus:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isGroupSms()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 1094
    move-object/from16 v0, p3

    iget-wide v3, v0, Lcom/android/mms/ui/MessageItem;->mGroupId:J

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/android/mms/ui/DeliveryReadReport;->getGroupSmsDeliveryReportText(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v18

    .line 1112
    :cond_b
    :goto_d
    if-eqz v18, :cond_c

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSMSDeliveryReportsEnabled()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1113
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1144
    .end local v18           #deliveryStatus:Ljava/lang/String;
    :cond_c
    invoke-static {}, Lcom/android/mms/MmsConfig;->isKORCMASFeatureEnabled()Z

    move-result v3

    if-nez v3, :cond_14

    if-eqz v24, :cond_14

    .line 1146
    const/16 v25, -0x1

    .line 1147
    .local v25, msgCategory:I
    const/16 v29, -0x1

    .line 1148
    .local v29, msgResponseType:I
    const/16 v30, -0x1

    .line 1149
    .local v30, msgSeverity:I
    const/16 v31, -0x1

    .line 1150
    .local v31, msgUrgency:I
    const/16 v26, -0x1

    .line 1153
    .local v26, msgCertainity:I
    :try_start_8
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_d

    .line 1155
    const/16 v3, 0xb

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    .line 1156
    const/16 v3, 0xc

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    .line 1157
    const/16 v3, 0xa

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 1158
    const/16 v3, 0xd

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 1159
    const/16 v3, 0x9

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_8
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_9

    move-result v25

    .line 1166
    :cond_d
    :goto_e
    const/16 v3, 0xa

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1167
    const/4 v3, -0x1

    move/from16 v0, v30

    if-eq v0, v3, :cond_e

    .line 1169
    const v3, 0x7f0c01c2

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1170
    invoke-static/range {v30 .. v30}, Lcom/android/mms/ui/MessageUtils;->getSeverityTextID(I)I

    move-result v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1171
    const/16 v3, 0xa

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1175
    :cond_e
    const/4 v3, -0x1

    move/from16 v0, v31

    if-eq v0, v3, :cond_f

    .line 1176
    const v3, 0x7f0c01c3

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1177
    invoke-static/range {v31 .. v31}, Lcom/android/mms/ui/MessageUtils;->getUrgencyTextID(I)I

    move-result v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1178
    const/16 v3, 0xa

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1182
    :cond_f
    const/4 v3, -0x1

    move/from16 v0, v29

    if-eq v0, v3, :cond_10

    .line 1183
    const v3, 0x7f0c01c1

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1184
    invoke-static/range {v29 .. v29}, Lcom/android/mms/ui/MessageUtils;->getResponseTypeTextID(I)I

    move-result v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1185
    const/16 v3, 0xa

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1189
    :cond_10
    const/4 v3, -0x1

    move/from16 v0, v26

    if-eq v0, v3, :cond_11

    .line 1190
    const v3, 0x7f0c01c4

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1191
    invoke-static/range {v26 .. v26}, Lcom/android/mms/ui/MessageUtils;->getCertainityTextID(I)I

    move-result v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1192
    const/16 v3, 0xa

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1196
    :cond_11
    const/4 v3, -0x1

    move/from16 v0, v25

    if-eq v0, v3, :cond_12

    .line 1197
    const v3, 0x7f0c01bf

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1198
    invoke-static/range {v25 .. v25}, Lcom/android/mms/ui/MessageUtils;->getCmaeCategoryTextID(I)I

    move-result v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1199
    const/16 v3, 0xa

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1202
    :cond_12
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_14

    .line 1203
    const-wide/16 v27, 0x0

    .line 1205
    .local v27, msgExpiry:J
    :try_start_9
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_13

    .line 1207
    const/16 v3, 0x10

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_9
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_a

    move-result-wide v27

    .line 1213
    :cond_13
    :goto_f
    const-wide/16 v3, 0x0

    cmp-long v3, v3, v27

    if-eqz v3, :cond_28

    .line 1214
    new-instance v22, Ljava/text/SimpleDateFormat;

    const-string v3, "MMM dd, yyyy, h:mmaa"

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1215
    .local v22, formatter1:Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v14

    .line 1216
    .local v14, calendar1:Ljava/util/Calendar;
    move-wide/from16 v0, v27

    invoke-virtual {v14, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1217
    const-string v3, "Mms/MessageUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, v27

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    const v3, 0x7f0c01f5

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1220
    invoke-virtual {v14}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1230
    .end local v14           #calendar1:Ljava/util/Calendar;
    .end local v22           #formatter1:Ljava/text/SimpleDateFormat;
    .end local v25           #msgCategory:I
    .end local v26           #msgCertainity:I
    .end local v27           #msgExpiry:J
    .end local v29           #msgResponseType:I
    .end local v30           #msgSeverity:I
    .end local v31           #msgUrgency:I
    :cond_14
    :goto_10
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 951
    .end local v16           #date:J
    .restart local v5       #PROJECTION_Sms:[Ljava/lang/String;
    .restart local v23       #i:I
    :cond_15
    :try_start_a
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    move-result-object v9

    .line 957
    .end local v5           #PROJECTION_Sms:[Ljava/lang/String;
    .end local v23           #i:I
    :cond_16
    if-eqz v15, :cond_4

    goto/16 :goto_4

    :catchall_0
    move-exception v3

    if-eqz v15, :cond_17

    .line 958
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 957
    :cond_17
    throw v3

    .line 964
    :catch_3
    move-exception v21

    .line 966
    .restart local v21       #ex:Ljava/lang/Exception;
    if-eqz p2, :cond_18

    .line 968
    const/4 v3, 0x2

    :try_start_b
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_5

    .line 972
    :cond_18
    const/4 v3, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_b
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_4

    move-result-object v9

    goto/16 :goto_5

    .line 975
    :catch_4
    move-exception v20

    .line 976
    .restart local v20       #e:Landroid/database/CursorIndexOutOfBoundsException;
    const-string v3, "Mms/MessageUtils"

    const-string v4, "CursorIndexOutOfBoundsException - cursor.getInt(MessageOptions.COLUMN_SMS_ADDRESS)"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 984
    .end local v20           #e:Landroid/database/CursorIndexOutOfBoundsException;
    .end local v21           #ex:Ljava/lang/Exception;
    :cond_19
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v3

    if-eqz v3, :cond_1c

    move-object/from16 v0, p3

    iget-wide v3, v0, Lcom/android/mms/ui/MessageItem;->mReserved:J

    const-wide/16 v6, 0x1

    cmp-long v3, v3, v6

    if-nez v3, :cond_1c

    .line 987
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 988
    .local v13, address:Ljava/lang/StringBuilder;
    const-string v3, ";"

    invoke-virtual {v9, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v35

    .line 989
    .local v35, recipient:[Ljava/lang/String;
    const/16 v23, 0x0

    .restart local v23       #i:I
    :goto_11
    move-object/from16 v0, v35

    array-length v3, v0

    move/from16 v0, v23

    if-ge v0, v3, :cond_1b

    .line 990
    aget-object v3, v35, v23

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->getNameWithPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 991
    .restart local v11       #addrContact:Ljava/lang/String;
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 992
    move-object/from16 v0, v35

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, v23

    if-eq v0, v3, :cond_1a

    .line 993
    const-string v3, ", "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    :cond_1a
    add-int/lit8 v23, v23, 0x1

    goto :goto_11

    .line 995
    .end local v11           #addrContact:Ljava/lang/String;
    :cond_1b
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 996
    goto/16 :goto_6

    .line 998
    .end local v13           #address:Ljava/lang/StringBuilder;
    .end local v23           #i:I
    .end local v35           #recipient:[Ljava/lang/String;
    :cond_1c
    invoke-static {v9}, Lcom/android/mms/ui/MessageUtils;->getNameWithPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_6

    .line 1009
    :cond_1d
    invoke-static {}, Lcom/android/mms/MmsConfig;->isKORCMASFeatureEnabled()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 1010
    const v3, 0x7f0c01ba

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_7

    .line 1013
    :cond_1e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#CMAS#"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v9, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0c01e7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_7

    .line 1018
    :cond_1f
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 1030
    .restart local v34       #priority:I
    :cond_20
    :try_start_c
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_8

    .line 1032
    const/4 v3, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_c .. :try_end_c} :catch_5

    move-result v34

    goto/16 :goto_9

    .line 1034
    :catch_5
    move-exception v20

    .line 1035
    .restart local v20       #e:Landroid/database/CursorIndexOutOfBoundsException;
    const-string v3, "Mms/MessageUtils"

    const-string v4, "CursorIndexOutOfBoundsException - cursor.getString(MessageOptions.COLUMN_SMS_PRIORITY)"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1042
    .end local v20           #e:Landroid/database/CursorIndexOutOfBoundsException;
    :cond_21
    const v3, 0x7f0c008d

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    .line 1049
    .end local v34           #priority:I
    :cond_22
    const/4 v3, 0x1

    move/from16 v0, v37

    if-ne v0, v3, :cond_24

    .line 1051
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableServerTimeLabel()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsServerTime()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 1052
    const v3, 0x7f0c0086

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 1054
    :cond_23
    const v3, 0x7f0c0087

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 1057
    :cond_24
    const v3, 0x7f0c0086

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 1065
    .restart local v16       #date:J
    :catch_6
    move-exception v20

    .line 1066
    .local v20, e:Ljava/lang/IllegalStateException;
    const-string v3, "Mms/MessageUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IllegalStateException "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 1067
    .end local v20           #e:Ljava/lang/IllegalStateException;
    :catch_7
    move-exception v20

    .line 1068
    .local v20, e:Landroid/database/CursorIndexOutOfBoundsException;
    const-string v3, "Mms/MessageUtils"

    const-string v4, "CursorIndexOutOfBoundsException - cursor.getLong(MessageOptions.COLUMN_SMS_DATE)"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 1071
    .end local v20           #e:Landroid/database/CursorIndexOutOfBoundsException;
    :cond_25
    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    move-wide/from16 v16, v0

    goto/16 :goto_c

    .line 1096
    .restart local v18       #deliveryStatus:Ljava/lang/String;
    :cond_26
    if-eqz p2, :cond_27

    .line 1098
    :try_start_d
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_b

    .line 1100
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/android/mms/ui/DeliveryReadReport;->getSmsDeliveryReportText(Landroid/content/Context;J)Ljava/lang/String;
    :try_end_d
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_d .. :try_end_d} :catch_8

    move-result-object v18

    goto/16 :goto_d

    .line 1103
    :catch_8
    move-exception v20

    .line 1104
    .restart local v20       #e:Landroid/database/CursorIndexOutOfBoundsException;
    const-string v3, "Mms/MessageUtils"

    const-string v4, "CursorIndexOutOfBoundsException - cursor.getLong(MessageOptions.COLUMN_ID)"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 1107
    .end local v20           #e:Landroid/database/CursorIndexOutOfBoundsException;
    :cond_27
    move-object/from16 v0, p3

    iget-wide v3, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/android/mms/ui/DeliveryReadReport;->getSmsDeliveryReportText(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_d

    .line 1161
    .end local v18           #deliveryStatus:Ljava/lang/String;
    .restart local v25       #msgCategory:I
    .restart local v26       #msgCertainity:I
    .restart local v29       #msgResponseType:I
    .restart local v30       #msgSeverity:I
    .restart local v31       #msgUrgency:I
    :catch_9
    move-exception v20

    .line 1162
    .restart local v20       #e:Landroid/database/CursorIndexOutOfBoundsException;
    const-string v3, "Mms/MessageUtils"

    const-string v4, "CursorIndexOutOfBoundsException - CMAS message"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 1209
    .end local v20           #e:Landroid/database/CursorIndexOutOfBoundsException;
    .restart local v27       #msgExpiry:J
    :catch_a
    move-exception v20

    .line 1210
    .restart local v20       #e:Landroid/database/CursorIndexOutOfBoundsException;
    const-string v3, "Mms/MessageUtils"

    const-string v4, "CursorIndexOutOfBoundsException - cursor.getLong(COLUMN_SMS_CMAS_EXPIRES)"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 1222
    .end local v20           #e:Landroid/database/CursorIndexOutOfBoundsException;
    :cond_28
    const-string v3, "Mms/MessageUtils"

    const-string v4, "msgExpiry is null"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    const v3, 0x7f0c01f5

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1225
    const v3, 0x7f0c01e5

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_10
.end method

.method private static getUrgencyTextID(I)I
    .locals 1
    .parameter "msgUrgency"

    .prologue
    .line 4755
    const v0, 0x7f0c01e4

    .line 4757
    .local v0, id:I
    packed-switch p0, :pswitch_data_0

    .line 4769
    :goto_0
    return v0

    .line 4761
    :pswitch_0
    const v0, 0x7f0c01e0

    .line 4762
    goto :goto_0

    .line 4765
    :pswitch_1
    const v0, 0x7f0c01e1

    goto :goto_0

    .line 4757
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getViewTitleString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "msgId"

    .prologue
    .line 3279
    const-wide/16 v5, 0x0

    cmp-long v5, p1, v5

    if-gez v5, :cond_0

    .line 3280
    const-string v2, ""

    .line 3306
    :goto_0
    return-object v2

    .line 3282
    :cond_0
    const-string v2, ""

    .line 3283
    .local v2, result:Ljava/lang/String;
    sget-object v5, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 3287
    .local v4, uri:Landroid/net/Uri;
    :try_start_0
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v1

    check-cast v1, Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3293
    .local v1, msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    instance-of v5, v1, Lcom/google/android/mms/pdu/RetrieveConf;

    if-eqz v5, :cond_1

    .line 3295
    check-cast v1, Lcom/google/android/mms/pdu/RetrieveConf;

    .end local v1           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/RetrieveConf;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/mms/ui/MessageUtils;->extractEncStr(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 3288
    :catch_0
    move-exception v0

    .line 3289
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v5, "Mms/MessageUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to load the message: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3290
    const-string v2, ""

    goto :goto_0

    .line 3298
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    .restart local v1       #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v3

    .line 3299
    .local v3, to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v3, :cond_2

    .line 3300
    invoke-static {v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->concat([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 3302
    :cond_2
    const-string v5, "Mms/MessageUtils"

    const-string v6, "getViewTitleString : recipient list is empty!"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getViewTitleStrings(Landroid/content/Context;J)Ljava/util/ArrayList;
    .locals 12
    .parameter "context"
    .parameter "msgId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3310
    const-wide/16 v9, 0x0

    cmp-long v9, p1, v9

    if-gez v9, :cond_1

    .line 3311
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3363
    :cond_0
    :goto_0
    return-object v6

    .line 3313
    :cond_1
    const-string v5, ""

    .line 3314
    .local v5, result:Ljava/lang/String;
    sget-object v9, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 3318
    .local v8, uri:Landroid/net/Uri;
    :try_start_0
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v4

    check-cast v4, Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3324
    .local v4, msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3325
    .local v6, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    instance-of v9, v4, Lcom/google/android/mms/pdu/RetrieveConf;

    if-eqz v9, :cond_2

    .line 3327
    check-cast v4, Lcom/google/android/mms/pdu/RetrieveConf;

    .end local v4           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/RetrieveConf;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/mms/ui/MessageUtils;->extractEncStr(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v5

    .line 3328
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3319
    .end local v6           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 3320
    .local v2, e:Lcom/google/android/mms/MmsException;
    const-string v9, "Mms/MessageUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to load the message: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3321
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 3332
    .end local v2           #e:Lcom/google/android/mms/MmsException;
    .restart local v4       #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .restart local v6       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v7

    .line 3333
    .local v7, to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v7, :cond_3

    .line 3334
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v9, v7

    if-ge v3, v9, :cond_4

    .line 3335
    aget-object v9, v7, v3

    invoke-virtual {v9}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3334
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3338
    .end local v3           #i:I
    :cond_3
    const-string v9, "Mms/MessageUtils"

    const-string v10, "getViewTitleString : recipient list is empty!"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3342
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 3344
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getCc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    .line 3345
    .local v1, cc:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v1, :cond_5

    .line 3346
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_2
    array-length v9, v1

    if-ge v3, v9, :cond_5

    .line 3347
    aget-object v9, v1, v3

    invoke-virtual {v9}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3346
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3351
    .end local v3           #i:I
    :cond_5
    instance-of v9, v4, Lcom/google/android/mms/pdu/SendReq;

    if-eqz v9, :cond_0

    .line 3352
    check-cast v4, Lcom/google/android/mms/pdu/SendReq;

    .end local v4           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/SendReq;->getBcc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    .line 3353
    .local v0, bcc:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v0, :cond_0

    .line 3354
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_3
    array-length v9, v0

    if-ge v3, v9, :cond_0

    .line 3355
    aget-object v9, v0, v3

    invoke-virtual {v9}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3354
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method private static getYearUnit()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1551
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1552
    .local v0, currentLanguage:Ljava/lang/String;
    const-string v1, ""

    .line 1554
    .local v1, yearUnit:Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1555
    const-string v1, "\ub144"

    .line 1564
    :cond_0
    :goto_0
    return-object v1

    .line 1556
    :cond_1
    sget-object v2, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1557
    const-string v1, "\u5e74"

    goto :goto_0

    .line 1558
    :cond_2
    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1562
    :cond_3
    const-string v1, "\u5e74"

    goto :goto_0
.end method

.method public static handleReadReport(Landroid/content/Context;JILjava/lang/Runnable;Z)V
    .locals 21
    .parameter "context"
    .parameter "threadId"
    .parameter "status"
    .parameter "callback"
    .parameter "needDelay"

    .prologue
    .line 2076
    new-instance v19, Ljava/lang/StringBuilder;

    const/16 v3, 0x32

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2077
    .local v19, sb:Ljava/lang/StringBuilder;
    const-string v3, "m_type"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x84

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "seen"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=0 AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "rr"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2081
    const-wide/16 v3, -0x1

    cmp-long v3, p1, v3

    if-eqz v3, :cond_0

    .line 2082
    const-string v3, " AND "

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "thread_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2084
    :cond_0
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2086
    .local v7, selection:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v10, "_id"

    aput-object v10, v6, v3

    const/4 v3, 0x1

    const-string v10, "m_id"

    aput-object v10, v6, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v9}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 2091
    .local v15, c:Landroid/database/Cursor;
    if-nez v15, :cond_2

    .line 2171
    :cond_1
    :goto_0
    return-void

    .line 2095
    :cond_2
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 2096
    .local v9, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 2099
    .local v12, readReportDataMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/data/ReadReportData;>;"
    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_4

    .line 2103
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 2105
    if-eqz p4, :cond_3

    .line 2106
    invoke-interface/range {p4 .. p4}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2123
    :cond_3
    if-eqz v15, :cond_1

    .line 2124
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2111
    :cond_4
    :goto_1
    :try_start_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2112
    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v20

    .line 2114
    .local v20, uri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsReadReportPdu()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2115
    const/4 v3, 0x1

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/mms/util/AddressUtils;->getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v9, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2123
    .end local v20           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v3

    if-eqz v15, :cond_5

    .line 2124
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 2123
    :cond_5
    throw v3

    .line 2118
    .restart local v20       #uri:Landroid/net/Uri;
    :cond_6
    :try_start_2
    new-instance v18, Lcom/android/mms/data/ReadReportData;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/mms/data/ReadReportData;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 2119
    .local v18, reportData:Lcom/android/mms/data/ReadReportData;
    const/4 v3, 0x1

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-interface {v12, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2123
    .end local v18           #reportData:Lcom/android/mms/data/ReadReportData;
    .end local v20           #uri:Landroid/net/Uri;
    :cond_7
    if-eqz v15, :cond_8

    .line 2124
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 2128
    :cond_8
    new-instance v8, Lcom/android/mms/ui/MessageUtils$5;

    move-object/from16 v10, p0

    move/from16 v11, p3

    move-object/from16 v13, p4

    move/from16 v14, p5

    invoke-direct/range {v8 .. v14}, Lcom/android/mms/ui/MessageUtils$5;-><init>(Ljava/util/Map;Landroid/content/Context;ILjava/util/Map;Ljava/lang/Runnable;Z)V

    .line 2152
    .local v8, positiveListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v17, Lcom/android/mms/ui/MessageUtils$6;

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessageUtils$6;-><init>(Ljava/lang/Runnable;)V

    .line 2161
    .local v17, negativeListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v16, Lcom/android/mms/ui/MessageUtils$7;

    move-object/from16 v0, v16

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessageUtils$7;-><init>(Ljava/lang/Runnable;)V

    .line 2170
    .local v16, cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-static {v0, v8, v1, v2}, Lcom/android/mms/ui/MessageUtils;->confirmReadReportDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_0
.end method

.method public static handleReadReportDataOne(Landroid/content/Context;JILjava/lang/Runnable;)V
    .locals 18
    .parameter "context"
    .parameter "messageId"
    .parameter "status"
    .parameter "callback"

    .prologue
    .line 2246
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-gtz v3, :cond_1

    .line 2247
    if-eqz p4, :cond_0

    .line 2248
    invoke-interface/range {p4 .. p4}, Ljava/lang/Runnable;->run()V

    .line 2312
    :cond_0
    :goto_0
    return-void

    .line 2252
    :cond_1
    new-instance v16, Ljava/lang/StringBuilder;

    const/16 v3, 0x32

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2253
    .local v16, sb:Ljava/lang/StringBuilder;
    const-string v3, "m_type"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x84

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "seen"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=0 AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "rr"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2257
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2259
    .local v7, selection:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v8, "m_id"

    aput-object v8, v6, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v9}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2264
    .local v10, c:Landroid/database/Cursor;
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 2267
    .local v14, readReportDataMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/data/ReadReportData;>;"
    if-eqz v10, :cond_2

    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_4

    .line 2268
    :cond_2
    if-eqz p4, :cond_3

    .line 2269
    invoke-interface/range {p4 .. p4}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2278
    :cond_3
    if-eqz v10, :cond_0

    .line 2279
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2273
    :cond_4
    :try_start_1
    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v17

    .line 2275
    .local v17, uri:Landroid/net/Uri;
    new-instance v15, Lcom/android/mms/data/ReadReportData;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v15, v0, v1}, Lcom/android/mms/data/ReadReportData;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 2276
    .local v15, reportData:Lcom/android/mms/data/ReadReportData;
    const/4 v3, 0x0

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v14, v3, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2278
    if-eqz v10, :cond_5

    .line 2279
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2282
    :cond_5
    new-instance v13, Lcom/android/mms/ui/MessageUtils$11;

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v13, v0, v14, v1, v2}, Lcom/android/mms/ui/MessageUtils$11;-><init>(Landroid/content/Context;Ljava/util/Map;ILjava/lang/Runnable;)V

    .line 2293
    .local v13, positiveListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v12, Lcom/android/mms/ui/MessageUtils$12;

    move-object/from16 v0, p4

    invoke-direct {v12, v0}, Lcom/android/mms/ui/MessageUtils$12;-><init>(Ljava/lang/Runnable;)V

    .line 2302
    .local v12, negativeListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v11, Lcom/android/mms/ui/MessageUtils$13;

    move-object/from16 v0, p4

    invoke-direct {v11, v0}, Lcom/android/mms/ui/MessageUtils$13;-><init>(Ljava/lang/Runnable;)V

    .line 2311
    .local v11, cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    move-object/from16 v0, p0

    invoke-static {v0, v13, v12, v11}, Lcom/android/mms/ui/MessageUtils;->confirmReadReportDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_0

    .line 2278
    .end local v11           #cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    .end local v12           #negativeListener:Landroid/content/DialogInterface$OnClickListener;
    .end local v13           #positiveListener:Landroid/content/DialogInterface$OnClickListener;
    .end local v15           #reportData:Lcom/android/mms/data/ReadReportData;
    .end local v17           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v3

    if-eqz v10, :cond_6

    .line 2279
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2278
    :cond_6
    throw v3
.end method

.method public static handleReadReportOne(Landroid/content/Context;JILjava/lang/Runnable;)V
    .locals 18
    .parameter "context"
    .parameter "messageId"
    .parameter "status"
    .parameter "callback"

    .prologue
    .line 2177
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_1

    .line 2178
    if-eqz p4, :cond_0

    .line 2179
    invoke-interface/range {p4 .. p4}, Ljava/lang/Runnable;->run()V

    .line 2241
    :cond_0
    :goto_0
    return-void

    .line 2184
    :cond_1
    new-instance v16, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2185
    .local v16, sb:Ljava/lang/StringBuilder;
    const-string v2, "m_type"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x84

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "seen"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=0 AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "rr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2189
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2191
    .local v6, selection:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v8, "m_id"

    aput-object v8, v5, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 2196
    .local v13, c:Landroid/database/Cursor;
    if-eqz v13, :cond_2

    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2197
    :cond_2
    if-eqz p4, :cond_3

    .line 2198
    invoke-interface/range {p4 .. p4}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2207
    :cond_3
    if-eqz v13, :cond_0

    .line 2208
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2202
    :cond_4
    :try_start_1
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v17

    .line 2203
    .local v17, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/mms/util/AddressUtils;->getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    .line 2204
    .local v9, address:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v10

    .line 2207
    .local v10, mmsId:Ljava/lang/String;
    if-eqz v13, :cond_5

    .line 2208
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 2211
    :cond_5
    new-instance v7, Lcom/android/mms/ui/MessageUtils$8;

    move-object/from16 v8, p0

    move/from16 v11, p3

    move-object/from16 v12, p4

    invoke-direct/range {v7 .. v12}, Lcom/android/mms/ui/MessageUtils$8;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    .line 2222
    .local v7, positiveListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v15, Lcom/android/mms/ui/MessageUtils$9;

    move-object/from16 v0, p4

    invoke-direct {v15, v0}, Lcom/android/mms/ui/MessageUtils$9;-><init>(Ljava/lang/Runnable;)V

    .line 2231
    .local v15, negativeListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v14, Lcom/android/mms/ui/MessageUtils$10;

    move-object/from16 v0, p4

    invoke-direct {v14, v0}, Lcom/android/mms/ui/MessageUtils$10;-><init>(Ljava/lang/Runnable;)V

    .line 2240
    .local v14, cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    move-object/from16 v0, p0

    invoke-static {v0, v7, v15, v14}, Lcom/android/mms/ui/MessageUtils;->confirmReadReportDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_0

    .line 2207
    .end local v7           #positiveListener:Landroid/content/DialogInterface$OnClickListener;
    .end local v9           #address:Ljava/lang/String;
    .end local v10           #mmsId:Ljava/lang/String;
    .end local v14           #cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    .end local v15           #negativeListener:Landroid/content/DialogInterface$OnClickListener;
    .end local v17           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v2

    if-eqz v13, :cond_6

    .line 2208
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 2207
    :cond_6
    throw v2
.end method

.method public static handleReadReportOneForMmsWithoutConfirmDlg(Landroid/content/Context;JILjava/lang/Runnable;)V
    .locals 15
    .parameter "context"
    .parameter "messageId"
    .parameter "status"
    .parameter "callback"

    .prologue
    .line 2404
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_1

    .line 2405
    if-eqz p4, :cond_0

    .line 2406
    invoke-interface/range {p4 .. p4}, Ljava/lang/Runnable;->run()V

    .line 2450
    :cond_0
    :goto_0
    return-void

    .line 2412
    :cond_1
    new-instance v13, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v13, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2413
    .local v13, sb:Ljava/lang/StringBuilder;
    const-string v2, "m_type"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x84

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "seen"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=0 AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "rr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2417
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2419
    .local v6, selection:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v7, "m_id"

    aput-object v7, v5, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2424
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_2

    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2425
    :cond_2
    if-eqz p4, :cond_3

    .line 2426
    invoke-interface/range {p4 .. p4}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2436
    :cond_3
    if-eqz v10, :cond_0

    .line 2437
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2431
    :cond_4
    :try_start_1
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    .line 2432
    .local v14, uri:Landroid/net/Uri;
    invoke-static {p0, v14}, Lcom/android/mms/util/AddressUtils;->getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    .line 2433
    .local v9, address:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v12

    .line 2436
    .local v12, mmsId:Ljava/lang/String;
    if-eqz v10, :cond_5

    .line 2437
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2442
    :cond_5
    :try_start_2
    move/from16 v0, p3

    invoke-static {p0, v9, v12, v0}, Lcom/android/mms/transaction/MmsMessageSender;->sendReadRec(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2447
    :goto_1
    if-eqz p4, :cond_0

    .line 2448
    invoke-interface/range {p4 .. p4}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 2436
    .end local v9           #address:Ljava/lang/String;
    .end local v12           #mmsId:Ljava/lang/String;
    .end local v14           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_6

    .line 2437
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2436
    :cond_6
    throw v2

    .line 2443
    .restart local v9       #address:Ljava/lang/String;
    .restart local v12       #mmsId:Ljava/lang/String;
    .restart local v14       #uri:Landroid/net/Uri;
    :catch_0
    move-exception v11

    .line 2444
    .local v11, ex:Ljava/lang/Exception;
    const-string v2, "Mms/MessageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send readConfirm MMS message, mmsId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static handleReadReportOneForSmsWithoutConfirmDlg(Landroid/content/Context;JILjava/lang/Runnable;)V
    .locals 20
    .parameter "context"
    .parameter "messageId"
    .parameter "status"
    .parameter "callback"

    .prologue
    .line 2334
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_1

    .line 2335
    if-eqz p4, :cond_0

    .line 2336
    invoke-interface/range {p4 .. p4}, Ljava/lang/Runnable;->run()V

    .line 2394
    :cond_0
    :goto_0
    return-void

    .line 2341
    :cond_1
    const-string v14, ""

    .line 2342
    .local v14, address:Ljava/lang/String;
    const-string v10, ""

    .line 2343
    .local v10, body:Ljava/lang/String;
    const-string v18, ""

    .line 2344
    .local v18, readConfirmId:Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2345
    .local v19, sb:Ljava/lang/StringBuilder;
    const-string v2, "svc_cmd"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "seen"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=0 AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2348
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2350
    .local v6, selection:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v8, "address"

    aput-object v8, v5, v2

    const/4 v2, 0x1

    const-string v8, "body"

    aput-object v8, v5, v2

    const/4 v2, 0x2

    const-string v8, "svc_cmd_content"

    aput-object v8, v5, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 2356
    .local v15, c:Landroid/database/Cursor;
    if-eqz v15, :cond_2

    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2357
    :cond_2
    if-eqz p4, :cond_3

    .line 2358
    invoke-interface/range {p4 .. p4}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2369
    :cond_3
    if-eqz v15, :cond_0

    .line 2370
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2363
    :cond_4
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 2364
    const/4 v2, 0x1

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2365
    const/4 v2, 0x2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v18

    .line 2369
    if-eqz v15, :cond_5

    .line 2370
    :goto_1
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 2374
    :cond_5
    move-object/from16 v0, p0

    invoke-static {v0, v14}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v11

    .line 2375
    .local v11, threadId:J
    const/4 v2, 0x1

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v14, v9, v2

    .line 2377
    .local v9, dests:[Ljava/lang/String;
    new-instance v7, Lcom/android/mms/transaction/SmsMessageSender;

    const/16 v13, 0x81

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v13}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JI)V

    .line 2378
    .local v7, sender:Lcom/android/mms/transaction/MessageSender;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2379
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getKTSMSDeliveryReadReportsEnable()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v2, v7

    .line 2380
    check-cast v2, Lcom/android/mms/transaction/SmsMessageSender;

    const/4 v3, 0x4

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Lcom/android/mms/transaction/SmsMessageSender;->setServiceCommand(ILjava/lang/String;)V

    .line 2386
    :cond_6
    :try_start_2
    invoke-interface {v7, v11, v12}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2391
    :goto_2
    if-eqz p4, :cond_0

    .line 2392
    invoke-interface/range {p4 .. p4}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 2366
    .end local v7           #sender:Lcom/android/mms/transaction/MessageSender;
    .end local v9           #dests:[Ljava/lang/String;
    .end local v11           #threadId:J
    :catch_0
    move-exception v17

    .line 2367
    .local v17, e1:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2369
    if-eqz v15, :cond_5

    goto :goto_1

    .end local v17           #e1:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v15, :cond_7

    .line 2370
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 2369
    :cond_7
    throw v2

    .line 2387
    .restart local v7       #sender:Lcom/android/mms/transaction/MessageSender;
    .restart local v9       #dests:[Ljava/lang/String;
    .restart local v11       #threadId:J
    :catch_1
    move-exception v16

    .line 2388
    .local v16, e:Ljava/lang/Exception;
    const-string v2, "Mms/MessageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send SMS readConfirm message, threadId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public static handleReadReportWithoutConfirmDlg(Landroid/content/Context;JILjava/lang/Runnable;Z)V
    .locals 35
    .parameter "context"
    .parameter "threadId"
    .parameter "status"
    .parameter "callback"
    .parameter "needDelay"

    .prologue
    .line 2460
    const-string v32, ""

    .line 2461
    .local v32, szAddress:Ljava/lang/String;
    new-instance v26, Ljava/util/HashMap;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashMap;-><init>()V

    .line 2462
    .local v26, mapMms:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v27, Ljava/util/HashMap;

    invoke-direct/range {v27 .. v27}, Ljava/util/HashMap;-><init>()V

    .line 2465
    .local v27, mapSms:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v30, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    move-object/from16 v0, v30

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2466
    .local v30, sbMms:Ljava/lang/StringBuilder;
    const-string v2, "m_type"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x84

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "seen"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=0 AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "rr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2470
    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-eqz v2, :cond_0

    .line 2471
    const-string v2, " AND "

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "thread_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2473
    :cond_0
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2475
    .local v6, selectionMms:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v2

    const/4 v2, 0x1

    const-string v7, "m_id"

    aput-object v7, v5, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 2480
    .local v19, cMms:Landroid/database/Cursor;
    if-eqz v19, :cond_4

    .line 2482
    :try_start_0
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v28

    .line 2483
    .local v28, nTotalMmsCount:I
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2484
    if-lez v28, :cond_3

    .line 2485
    const/16 v24, 0x0

    .local v24, i:I
    :goto_0
    move/from16 v0, v24

    move/from16 v1, v28

    if-ge v0, v1, :cond_3

    .line 2486
    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2485
    :cond_1
    add-int/lit8 v24, v24, 0x1

    goto :goto_0

    .line 2489
    :cond_2
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v34

    .line 2490
    .local v34, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Lcom/android/mms/util/AddressUtils;->getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v32

    .line 2491
    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2492
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_1

    .line 2500
    .end local v24           #i:I
    .end local v34           #uri:Landroid/net/Uri;
    :cond_3
    if-eqz v19, :cond_4

    .line 2501
    .end local v28           #nTotalMmsCount:I
    :goto_1
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 2508
    :cond_4
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getKTSMSDeliveryReadReportsEnable()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2509
    new-instance v31, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    move-object/from16 v0, v31

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2510
    .local v31, sbSms:Ljava/lang/StringBuilder;
    const-string v2, "svc_cmd"

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "seen"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2513
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_5

    .line 2514
    const-string v2, " AND "

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "thread_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2516
    :cond_5
    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2518
    .local v11, selectionSms:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v10, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "address"

    aput-object v3, v10, v2

    const/4 v2, 0x1

    const-string v3, "body"

    aput-object v3, v10, v2

    const/4 v2, 0x2

    const-string v3, "svc_cmd_content"

    aput-object v3, v10, v2

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v7, p0

    invoke-static/range {v7 .. v13}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 2523
    .local v20, cSms:Landroid/database/Cursor;
    if-eqz v20, :cond_a

    .line 2525
    :try_start_1
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v29

    .line 2526
    .local v29, nTotalSmsCount:I
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2527
    if-lez v29, :cond_9

    .line 2528
    const/16 v24, 0x0

    .restart local v24       #i:I
    :goto_2
    move/from16 v0, v24

    move/from16 v1, v29

    if-ge v0, v1, :cond_9

    .line 2529
    const/4 v2, 0x2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-eqz v2, :cond_8

    .line 2528
    :cond_6
    add-int/lit8 v24, v24, 0x1

    goto :goto_2

    .line 2497
    .end local v11           #selectionSms:Ljava/lang/String;
    .end local v20           #cSms:Landroid/database/Cursor;
    .end local v24           #i:I
    .end local v29           #nTotalSmsCount:I
    .end local v31           #sbSms:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v21

    .line 2498
    .local v21, e:Ljava/lang/Exception;
    :try_start_2
    const-string v2, "Mms/MessageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleReadReportForThreadMsg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v21 .. v21}, Lcom/android/mms/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2500
    if-eqz v19, :cond_4

    goto/16 :goto_1

    .end local v21           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v19, :cond_7

    .line 2501
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 2500
    :cond_7
    throw v2

    .line 2532
    .restart local v11       #selectionSms:Ljava/lang/String;
    .restart local v20       #cSms:Landroid/database/Cursor;
    .restart local v24       #i:I
    .restart local v29       #nTotalSmsCount:I
    .restart local v31       #sbSms:Ljava/lang/StringBuilder;
    :cond_8
    const/4 v2, 0x0

    :try_start_3
    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 2533
    const/4 v2, 0x2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2536
    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v2

    if-nez v2, :cond_c

    .line 2547
    .end local v24           #i:I
    :cond_9
    :goto_3
    if-eqz v20, :cond_a

    .line 2548
    .end local v29           #nTotalSmsCount:I
    :goto_4
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 2555
    .end local v11           #selectionSms:Ljava/lang/String;
    .end local v20           #cSms:Landroid/database/Cursor;
    .end local v31           #sbSms:Ljava/lang/StringBuilder;
    :cond_a
    invoke-interface/range {v26 .. v26}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_e

    invoke-interface/range {v27 .. v27}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_e

    .line 2556
    if-eqz p4, :cond_b

    .line 2557
    invoke-interface/range {p4 .. p4}, Ljava/lang/Runnable;->run()V

    .line 2598
    :cond_b
    :goto_5
    return-void

    .line 2539
    .restart local v11       #selectionSms:Ljava/lang/String;
    .restart local v20       #cSms:Landroid/database/Cursor;
    .restart local v24       #i:I
    .restart local v29       #nTotalSmsCount:I
    .restart local v31       #sbSms:Ljava/lang/StringBuilder;
    :cond_c
    :try_start_4
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result v2

    if-nez v2, :cond_6

    goto :goto_3

    .line 2544
    .end local v24           #i:I
    .end local v29           #nTotalSmsCount:I
    :catch_1
    move-exception v21

    .line 2545
    .restart local v21       #e:Ljava/lang/Exception;
    :try_start_5
    const-string v2, "Mms/MessageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleReadReportForThreadMsg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v21 .. v21}, Lcom/android/mms/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2547
    if-eqz v20, :cond_a

    goto :goto_4

    .end local v21           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    if-eqz v20, :cond_d

    .line 2548
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 2547
    :cond_d
    throw v2

    .line 2562
    .end local v11           #selectionSms:Ljava/lang/String;
    .end local v20           #cSms:Landroid/database/Cursor;
    .end local v31           #sbSms:Ljava/lang/StringBuilder;
    :cond_e
    move-object/from16 v33, v32

    .line 2565
    .local v33, szDestAddr:Ljava/lang/String;
    :try_start_6
    invoke-interface/range {v26 .. v26}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_10

    .line 2566
    invoke-interface/range {v26 .. v26}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Map$Entry;

    .line 2567
    .local v22, entryMms:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-static {v0, v2, v3, v1}, Lcom/android/mms/transaction/MmsMessageSender;->sendReadRec(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2568
    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_6

    .line 2585
    .end local v22           #entryMms:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v25           #i$:Ljava/util/Iterator;
    :catch_2
    move-exception v21

    .line 2586
    .restart local v21       #e:Ljava/lang/Exception;
    const-string v2, "Mms/MessageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send readConfirm thread message, threadId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-static {v2, v3, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2589
    .end local v21           #e:Ljava/lang/Exception;
    :cond_f
    if-eqz p4, :cond_b

    .line 2590
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/android/mms/ui/MessageUtils$14;

    move-object/from16 v0, p4

    invoke-direct {v5, v0}, Lcom/android/mms/ui/MessageUtils$14;-><init>(Ljava/lang/Runnable;)V

    if-eqz p5, :cond_11

    const-wide/16 v2, 0x7d0

    :goto_7
    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_5

    .line 2571
    :cond_10
    :try_start_7
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getKTSMSDeliveryReadReportsEnable()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2572
    invoke-interface/range {v27 .. v27}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_f

    .line 2573
    invoke-static/range {v33 .. v33}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 2574
    const/4 v2, 0x1

    new-array v14, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v33, v14, v2

    .line 2575
    .local v14, dests:[Ljava/lang/String;
    invoke-interface/range {v27 .. v27}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .restart local v25       #i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Map$Entry;

    .line 2576
    .local v23, entrySms:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v12, Lcom/android/mms/transaction/SmsMessageSender;

    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    const/16 v18, 0x81

    move-object/from16 v13, p0

    move-wide/from16 v16, p1

    invoke-direct/range {v12 .. v18}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JI)V

    .line 2578
    .local v12, sender:Lcom/android/mms/transaction/MessageSender;
    move-object v0, v12

    check-cast v0, Lcom/android/mms/transaction/SmsMessageSender;

    move-object v2, v0

    const/4 v4, 0x4

    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Lcom/android/mms/transaction/SmsMessageSender;->setServiceCommand(ILjava/lang/String;)V

    .line 2580
    move-wide/from16 v0, p1

    invoke-interface {v12, v0, v1}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_8

    .line 2590
    .end local v12           #sender:Lcom/android/mms/transaction/MessageSender;
    .end local v14           #dests:[Ljava/lang/String;
    .end local v23           #entrySms:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v25           #i$:Ljava/util/Iterator;
    :cond_11
    const-wide/16 v2, 0x0

    goto :goto_7
.end method

.method public static hasNonGSMCharater(Ljava/lang/String;)Z
    .locals 8
    .parameter "msgText"

    .prologue
    .line 3425
    move-object v0, p0

    .line 3426
    .local v0, Tempbuff:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3429
    .local v2, stringBuilder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 3430
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 3432
    .local v4, v:C
    invoke-static {v4}, Lcom/android/internal/telephony/GsmAlphabet;->convertEachCharacter(C)C

    move-result v3

    .line 3433
    .local v3, temp:C
    const v5, 0xfeff

    if-ne v5, v3, :cond_0

    .line 3435
    const/16 v3, 0x3f

    .line 3436
    const/4 v5, 0x1

    .line 3444
    .end local v3           #temp:C
    .end local v4           #v:C
    :goto_1
    return v5

    .line 3439
    .restart local v3       #temp:C
    .restart local v4       #v:C
    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3429
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3442
    .end local v3           #temp:C
    .end local v4           #v:C
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3443
    const-string v5, "Mms/MessageUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[hasNonGSMCharater] stringBuilder "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 3444
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static hasNonGSMCharaterExceptKorean(Ljava/lang/String;)Z
    .locals 8
    .parameter "msgText"

    .prologue
    .line 3449
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3451
    .local v2, stringBuilder:Ljava/lang/StringBuilder;
    if-eqz p0, :cond_4

    .line 3452
    const-string v5, "Mms/MessageUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[hasNonGSMCharater] msgText.length() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3454
    move-object v0, p0

    .line 3457
    .local v0, Tempbuff:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 3458
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 3461
    .local v4, v:C
    const/16 v5, 0x3130

    if-ge v5, v4, :cond_0

    const/16 v5, 0x318d

    if-lt v4, v5, :cond_1

    :cond_0
    const v5, 0xabff

    if-ge v5, v4, :cond_2

    const v5, 0xd7a4

    if-ge v4, v5, :cond_2

    .line 3457
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3466
    :cond_2
    invoke-static {v4}, Lcom/android/mms/ui/GreekInputHandler;->isGreekSmallLetter(C)Z

    move-result v5

    if-nez v5, :cond_1

    .line 3469
    invoke-static {v4}, Lcom/android/mms/ui/GreekInputHandler;->isAccentedGerrkCahr(C)Z

    move-result v5

    if-nez v5, :cond_1

    .line 3473
    invoke-static {v4}, Lcom/android/internal/telephony/GsmAlphabet;->convertEachCharacter(C)C

    move-result v3

    .line 3474
    .local v3, temp:C
    const v5, 0xfeff

    if-ne v5, v3, :cond_3

    .line 3476
    const/16 v3, 0x3f

    .line 3477
    const/4 v5, 0x1

    .line 3488
    .end local v0           #Tempbuff:Ljava/lang/String;
    .end local v1           #i:I
    .end local v3           #temp:C
    .end local v4           #v:C
    :goto_2
    return v5

    .line 3481
    .restart local v0       #Tempbuff:Ljava/lang/String;
    .restart local v1       #i:I
    .restart local v3       #temp:C
    .restart local v4       #v:C
    :cond_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3485
    .end local v0           #Tempbuff:Ljava/lang/String;
    .end local v1           #i:I
    .end local v3           #temp:C
    .end local v4           #v:C
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3486
    const-string v5, "Mms/MessageUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[hasNonGSMCharater] stringBuilder "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 3488
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public static haveEmailContact(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11
    .parameter "context"
    .parameter "emailAddress"

    .prologue
    const/4 v10, 0x1

    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 7008
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-array v3, v10, [Ljava/lang/String;

    const-string v0, "display_name"

    aput-object v0, v3, v9

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 7014
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_4

    .line 7016
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7017
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 7018
    .local v8, name:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 7023
    if-eqz v7, :cond_1

    .line 7024
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v10

    .line 7027
    .end local v8           #name:Ljava/lang/String;
    :goto_0
    return v0

    .line 7023
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 7024
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 7023
    :cond_2
    throw v0

    :cond_3
    if-eqz v7, :cond_4

    .line 7024
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v9

    .line 7027
    goto :goto_0
.end method

.method public static declared-synchronized initContactImage(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 6474
    const-class v2, Lcom/android/mms/ui/MessageUtils;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->sDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 6475
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 6477
    .local v0, resources:Landroid/content/res/Resources;
    const/4 v1, 0x5

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    sput-object v1, Lcom/android/mms/ui/MessageUtils;->sDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    .line 6478
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->sDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    const v4, 0x7f0201ff

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v1, v3

    .line 6479
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->sDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x1

    const v4, 0x7f020200

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v1, v3

    .line 6480
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->sDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x2

    const v4, 0x7f020201

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v1, v3

    .line 6481
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->sDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x3

    const v4, 0x7f020202

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v1, v3

    .line 6482
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->sDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x4

    const v4, 0x7f020203

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v1, v3

    .line 6484
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcom/android/mms/ui/MessageUtils;->sDefaultContactImageId:[Ljava/lang/String;

    .line 6485
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->sDefaultContactImageId:[Ljava/lang/String;

    const/4 v3, 0x0

    const v4, 0x7f0201ff

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 6486
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->sDefaultContactImageId:[Ljava/lang/String;

    const/4 v3, 0x1

    const v4, 0x7f020200

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 6487
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->sDefaultContactImageId:[Ljava/lang/String;

    const/4 v3, 0x2

    const v4, 0x7f020201

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 6488
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->sDefaultContactImageId:[Ljava/lang/String;

    const/4 v3, 0x3

    const v4, 0x7f020202

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 6489
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->sDefaultContactImageId:[Ljava/lang/String;

    const/4 v3, 0x4

    const v4, 0x7f020203

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6491
    .end local v0           #resources:Landroid/content/res/Resources;
    :cond_0
    monitor-exit v2

    return-void

    .line 6474
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static initOldDateOrder()V
    .locals 2

    .prologue
    .line 1608
    const-string v0, "Mms/MessageUtils"

    const-string v1, "initDateOrder"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1609
    const-string v0, "null"

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->sOldDateOrderValue:Ljava/lang/String;

    .line 1610
    return-void
.end method

.method public static isAlias(Ljava/lang/String;)Z
    .locals 3
    .parameter "string"

    .prologue
    const/4 v1, 0x0

    .line 2803
    invoke-static {}, Lcom/android/mms/MmsConfig;->isAliasEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2831
    :cond_0
    :goto_0
    return v1

    .line 2807
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2816
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isVzwPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2821
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isAlphaNumeric(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2825
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2827
    .local v0, len:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAliasMinChars()I

    move-result v2

    if-lt v0, v2, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getAliasMaxChars()I

    move-result v2

    if-gt v0, v2, :cond_0

    .line 2830
    const-string v1, "Mms/MessageUtils"

    const-string v2, "isAlias() returning true."

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2831
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isAliasAddress(Lcom/android/mms/data/ContactList;)Z
    .locals 7
    .parameter "recipients"

    .prologue
    const/4 v5, 0x0

    .line 5768
    invoke-static {}, Lcom/android/mms/MmsConfig;->isAliasEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    .line 5777
    :cond_0
    :goto_0
    return v5

    .line 5771
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v4

    .line 5773
    .local v4, numbers:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 5774
    .local v3, number:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 5775
    const/4 v5, 0x1

    goto :goto_0

    .line 5773
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isAllowTextMessaging(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 5843
    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 5844
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    if-nez v0, :cond_0

    .line 5845
    const/4 v1, 0x1

    .line 5847
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowTextMessaging(Landroid/content/ComponentName;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isAlphaNumeric(Ljava/lang/String;)Z
    .locals 4
    .parameter "s"

    .prologue
    .line 2863
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 2864
    .local v1, chars:[C
    const/4 v2, 0x0

    .local v2, x:I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_4

    .line 2865
    aget-char v0, v1, v2

    .line 2867
    .local v0, c:C
    const/16 v3, 0x61

    if-lt v0, v3, :cond_1

    const/16 v3, 0x7a

    if-gt v0, v3, :cond_1

    .line 2864
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2870
    :cond_1
    const/16 v3, 0x41

    if-lt v0, v3, :cond_2

    const/16 v3, 0x5a

    if-le v0, v3, :cond_0

    .line 2873
    :cond_2
    const/16 v3, 0x30

    if-lt v0, v3, :cond_3

    const/16 v3, 0x39

    if-le v0, v3, :cond_0

    .line 2877
    :cond_3
    const/4 v3, 0x0

    .line 2879
    .end local v0           #c:C
    :goto_1
    return v3

    :cond_4
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public static isAlphabet(Ljava/lang/String;)Z
    .locals 4
    .parameter "s"

    .prologue
    .line 2844
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 2845
    .local v1, chars:[C
    const/4 v2, 0x0

    .local v2, x:I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_3

    .line 2846
    aget-char v0, v1, v2

    .line 2848
    .local v0, c:C
    const/16 v3, 0x61

    if-lt v0, v3, :cond_1

    const/16 v3, 0x7a

    if-gt v0, v3, :cond_1

    .line 2845
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2851
    :cond_1
    const/16 v3, 0x41

    if-lt v0, v3, :cond_2

    const/16 v3, 0x5a

    if-le v0, v3, :cond_0

    .line 2854
    :cond_2
    const/16 v3, 0x20

    if-eq v0, v3, :cond_0

    const/16 v3, 0x2d

    if-eq v0, v3, :cond_0

    const/16 v3, 0xd

    if-eq v0, v3, :cond_0

    .line 2857
    const/4 v3, 0x0

    .line 2859
    .end local v0           #c:C
    :goto_1
    return v3

    :cond_3
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public static isAnimatedImage(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    .locals 10
    .parameter "contentResolver"
    .parameter "uri"

    .prologue
    const/4 v6, 0x0

    .line 3995
    const/4 v3, 0x0

    .line 3996
    .local v3, is:Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 3997
    .local v0, byteInputStream:Ljava/io/ByteArrayInputStream;
    const/4 v5, 0x0

    .line 4000
    .local v5, streamSize:I
    const/4 v4, 0x0

    .line 4003
    .local v4, movie:Landroid/graphics/Movie;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 4004
    if-nez v3, :cond_2

    .line 4005
    const-string v7, "Mms/MessageUtils"

    const-string v8, "openInputStream is null so return false"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3

    .line 4025
    if-eqz v3, :cond_0

    .line 4027
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9

    .line 4034
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 4036
    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a

    .line 4047
    :cond_1
    :goto_1
    return v6

    .line 4009
    :cond_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_3

    move-result v5

    .line 4015
    :goto_2
    :try_start_4
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-static {v3, v5}, Lcom/android/mms/ui/MessageUtils;->streamToBytes(Ljava/io/InputStream;I)[B

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_3

    .line 4017
    .end local v0           #byteInputStream:Ljava/io/ByteArrayInputStream;
    .local v1, byteInputStream:Ljava/io/ByteArrayInputStream;
    :try_start_5
    invoke-static {v1}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_d

    move-result-object v4

    .line 4025
    if-eqz v3, :cond_3

    .line 4027
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b

    .line 4034
    :cond_3
    :goto_3
    if-eqz v1, :cond_4

    .line 4036
    :try_start_7
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_c

    :cond_4
    :goto_4
    move-object v0, v1

    .line 4045
    .end local v1           #byteInputStream:Ljava/io/ByteArrayInputStream;
    .restart local v0       #byteInputStream:Ljava/io/ByteArrayInputStream;
    :cond_5
    :goto_5
    if-eqz v4, :cond_1

    .line 4047
    invoke-virtual {v4}, Landroid/graphics/Movie;->duration()I

    move-result v7

    if-lez v7, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    .line 4010
    :catch_0
    move-exception v2

    .line 4012
    .local v2, e:Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_2

    .line 4019
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 4021
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_6
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 4025
    if-eqz v3, :cond_6

    .line 4027
    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 4034
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :cond_6
    :goto_7
    if-eqz v0, :cond_5

    .line 4036
    :try_start_b
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_5

    .line 4037
    :catch_2
    move-exception v2

    .line 4039
    .local v2, e:Ljava/io/IOException;
    :goto_8
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 4022
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 4023
    .local v2, e:Ljava/lang/OutOfMemoryError;
    :goto_9
    :try_start_c
    const-string v7, "Mms/MessageUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OutOfMemoryError : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 4025
    if-eqz v3, :cond_7

    .line 4027
    :try_start_d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    .line 4034
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    :cond_7
    :goto_a
    if-eqz v0, :cond_5

    .line 4036
    :try_start_e
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    goto :goto_5

    .line 4037
    :catch_4
    move-exception v2

    goto :goto_8

    .line 4025
    :catchall_0
    move-exception v6

    :goto_b
    if-eqz v3, :cond_8

    .line 4027
    :try_start_f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    .line 4034
    :cond_8
    :goto_c
    if-eqz v0, :cond_9

    .line 4036
    :try_start_10
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6

    .line 4025
    :cond_9
    :goto_d
    throw v6

    .line 4028
    :catch_5
    move-exception v2

    .line 4030
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 4037
    .end local v2           #e:Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 4039
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 4028
    .local v2, e:Ljava/io/FileNotFoundException;
    :catch_7
    move-exception v2

    .line 4030
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 4028
    .local v2, e:Ljava/lang/OutOfMemoryError;
    :catch_8
    move-exception v2

    .line 4030
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 4028
    .end local v2           #e:Ljava/io/IOException;
    :catch_9
    move-exception v2

    .line 4030
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 4037
    .end local v2           #e:Ljava/io/IOException;
    :catch_a
    move-exception v2

    .line 4039
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 4028
    .end local v0           #byteInputStream:Ljava/io/ByteArrayInputStream;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #byteInputStream:Ljava/io/ByteArrayInputStream;
    :catch_b
    move-exception v2

    .line 4030
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 4037
    .end local v2           #e:Ljava/io/IOException;
    :catch_c
    move-exception v2

    .line 4039
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 4025
    .end local v2           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1           #byteInputStream:Ljava/io/ByteArrayInputStream;
    .restart local v0       #byteInputStream:Ljava/io/ByteArrayInputStream;
    goto :goto_b

    .line 4022
    .end local v0           #byteInputStream:Ljava/io/ByteArrayInputStream;
    .restart local v1       #byteInputStream:Ljava/io/ByteArrayInputStream;
    :catch_d
    move-exception v2

    move-object v0, v1

    .end local v1           #byteInputStream:Ljava/io/ByteArrayInputStream;
    .restart local v0       #byteInputStream:Ljava/io/ByteArrayInputStream;
    goto :goto_9

    .line 4019
    .end local v0           #byteInputStream:Ljava/io/ByteArrayInputStream;
    .restart local v1       #byteInputStream:Ljava/io/ByteArrayInputStream;
    :catch_e
    move-exception v2

    move-object v0, v1

    .end local v1           #byteInputStream:Ljava/io/ByteArrayInputStream;
    .restart local v0       #byteInputStream:Ljava/io/ByteArrayInputStream;
    goto :goto_6
.end method

.method public static isAnimationEnable()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 4175
    const/4 v1, 0x0

    .line 4177
    .local v1, val:F
    invoke-static {}, Lcom/android/mms/MmsConfig;->getGUITunningForSysPerformance()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4188
    :cond_0
    :goto_0
    return v2

    .line 4180
    :cond_1
    const-string v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    sput-object v3, Lcom/android/mms/ui/MessageUtils;->mWindowManager:Landroid/view/IWindowManager;

    .line 4182
    :try_start_0
    sget-object v3, Lcom/android/mms/ui/MessageUtils;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/IWindowManager;->getAnimationScale(I)F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4188
    float-to-double v3, v1

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 4183
    :catch_0
    move-exception v0

    .line 4185
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isArabic(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 3633
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isArabic(I)Z

    move-result v0

    return v0
.end method

.method public static isArabic(I)Z
    .locals 3
    .parameter "codePoint"

    .prologue
    const/4 v1, 0x1

    .line 3644
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 3645
    .local v0, block:Ljava/lang/Character$UnicodeBlock;
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->ARABIC:Ljava/lang/Character$UnicodeBlock;

    if-ne v0, v2, :cond_1

    .line 3662
    :cond_0
    :goto_0
    return v1

    .line 3648
    :cond_1
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->ARABIC_PRESENTATION_FORMS_A:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v2, :cond_0

    .line 3651
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->ARABIC_PRESENTATION_FORMS_B:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v2, :cond_0

    .line 3655
    const/16 v2, 0x750

    if-lt p0, v2, :cond_2

    const/16 v2, 0x77f

    if-le p0, v2, :cond_0

    .line 3659
    :cond_2
    const v2, 0x10a60

    if-lt p0, v2, :cond_3

    const v2, 0x10a7f

    if-le p0, v2, :cond_0

    .line 3662
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isAttachSupportedType(Ljava/lang/String;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 6886
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6887
    const-string v0, "image/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "video/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "audio/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/mms/model/MediaModel;->isVItem(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/ogg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6889
    :cond_0
    const/4 v0, 0x1

    .line 6892
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAvailableApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "package_name"

    .prologue
    const/4 v1, 0x1

    .line 4607
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4613
    :goto_0
    return v1

    .line 4610
    :catch_0
    move-exception v0

    .line 4611
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isCBMessageAddress(Ljava/lang/String;)Z
    .locals 1
    .parameter "address"

    .prologue
    .line 3062
    const-string v0, "CBmessages"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3063
    const/4 v0, 0x1

    .line 3065
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCalibrationDone(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 2
    .parameter "activity"
    .parameter "name"

    .prologue
    .line 5833
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getSharedPreference(Landroid/app/Activity;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isContactMessage(Ljava/lang/String;)Z
    .locals 5
    .parameter "message"

    .prologue
    const/16 v4, 0x1b

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 6676
    if-nez p0, :cond_1

    .line 6686
    :cond_0
    :goto_0
    return v1

    .line 6680
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 6682
    .local v0, len:I
    if-le v0, v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_0

    move v1, v2

    .line 6683
    goto :goto_0
.end method

.method public static isContainKoreanChar(Ljava/lang/String;)Z
    .locals 4
    .parameter "msgText"

    .prologue
    .line 3606
    const/4 v2, 0x0

    .line 3608
    .local v2, textLength:I
    if-eqz p0, :cond_0

    .line 3609
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 3611
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_4

    .line 3612
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 3617
    .local v1, indexCahr:C
    const/16 v3, 0x3130

    if-ge v3, v1, :cond_1

    const/16 v3, 0x318d

    if-lt v1, v3, :cond_2

    :cond_1
    const v3, 0xabff

    if-ge v3, v1, :cond_3

    const v3, 0xd7a4

    if-ge v1, v3, :cond_3

    .line 3619
    :cond_2
    const/4 v3, 0x1

    .line 3622
    .end local v1           #indexCahr:C
    :goto_1
    return v3

    .line 3611
    .restart local v1       #indexCahr:C
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3622
    .end local v1           #indexCahr:C
    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static isContentUri(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 3853
    if-nez p0, :cond_0

    .line 3854
    const/4 v0, 0x0

    .line 3857
    :goto_0
    return v0

    :cond_0
    const-string v0, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static isContentUriAvailable(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 9
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 3863
    if-nez p1, :cond_0

    .line 3870
    :goto_0
    return v8

    .line 3867
    :cond_0
    const/4 v6, 0x0

    .line 3869
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3870
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_2

    move v0, v7

    .line 3872
    :goto_1
    if-eqz v6, :cond_1

    .line 3873
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v8, v0

    .line 3870
    goto :goto_0

    :cond_2
    move v0, v8

    goto :goto_1

    .line 3872
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 3873
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3872
    :cond_3
    throw v0
.end method

.method public static isDrmRingtoneWithRights(Landroid/content/Context;J)Z
    .locals 18
    .parameter "context"
    .parameter "msgId"

    .prologue
    .line 6187
    const/4 v9, 0x0

    .line 6189
    .local v9, body:Lcom/google/android/mms/pdu/PduBody;
    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/model/SlideshowModel;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 6194
    :goto_0
    if-nez v9, :cond_1

    .line 6195
    const/4 v2, 0x0

    .line 6225
    :cond_0
    :goto_1
    return v2

    .line 6191
    :catch_0
    move-exception v12

    .line 6192
    .local v12, e:Lcom/google/android/mms/MmsException;
    const-string v2, "Mms/MessageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDrmRingtoneWithRights can\'t load pdu body: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6198
    .end local v12           #e:Lcom/google/android/mms/MmsException;
    :cond_1
    invoke-virtual {v9}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v16

    .line 6199
    .local v16, partNum:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_2
    move/from16 v0, v16

    if-ge v13, v0, :cond_7

    .line 6200
    invoke-virtual {v9, v13}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v15

    .line 6201
    .local v15, part:Lcom/google/android/mms/pdu/PduPart;
    new-instance v17, Ljava/lang/String;

    invoke-virtual {v15}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v2

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 6202
    .local v17, type:Ljava/lang/String;
    const/4 v11, 0x0

    .line 6204
    .local v11, drmFilePath:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/android/mms/drm/DrmUtils;->isDrmType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 6205
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v15}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 6208
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_2

    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    .line 6209
    :cond_2
    const/4 v2, 0x0

    .line 6212
    if-eqz v10, :cond_0

    .line 6213
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 6214
    const/4 v10, 0x0

    goto :goto_1

    .line 6210
    :cond_3
    :try_start_2
    const-string v2, "_data"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v11

    .line 6212
    if-eqz v10, :cond_4

    .line 6213
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 6214
    const/4 v10, 0x0

    .line 6217
    :cond_4
    invoke-static {}, Lcom/android/mms/drm/DrmWrapper;->getDrmClient()Landroid/drm/DrmManagerClient;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 6219
    .local v14, mimeType:Ljava/lang/String;
    invoke-static {v14}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/mms/drm/DrmUtils;->haveRightsForAction(Landroid/net/Uri;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 6221
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 6212
    .end local v14           #mimeType:Ljava/lang/String;
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_5

    .line 6213
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 6214
    const/4 v10, 0x0

    .line 6212
    :cond_5
    throw v2

    .line 6199
    .end local v10           #c:Landroid/database/Cursor;
    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 6225
    .end local v11           #drmFilePath:Ljava/lang/String;
    .end local v15           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v17           #type:Ljava/lang/String;
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_1
.end method

.method public static isEmailAddress(Ljava/lang/String;)Z
    .locals 2
    .parameter "address"

    .prologue
    .line 3113
    if-eqz p0, :cond_0

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3114
    const/4 v0, 0x0

    .line 3117
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isEmergencyContact(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 13
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 6417
    sget-object v3, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "emergency"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "primary_phones"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 6420
    .local v1, uri:Landroid/net/Uri;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 6422
    .local v10, numbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-array v2, v11, [Ljava/lang/String;

    const-string v3, "data1"

    aput-object v3, v2, v12

    .line 6425
    .local v2, PROJECTION:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 6427
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 6429
    .local v6, c:Landroid/database/Cursor;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 6433
    :goto_0
    if-eqz v6, :cond_1

    .line 6435
    const/4 v3, -0x1

    :try_start_1
    invoke-interface {v6, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 6436
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6437
    const-string v3, "data1"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 6440
    :catchall_0
    move-exception v3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v3

    .line 6430
    :catch_0
    move-exception v7

    .line 6431
    .local v7, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 6440
    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 6444
    :cond_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    .line 6446
    .local v9, length:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    if-ge v8, v9, :cond_3

    .line 6447
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, p1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v11

    .line 6451
    :goto_3
    return v3

    .line 6446
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    move v3, v12

    .line 6451
    goto :goto_3
.end method

.method public static isExternalSdCardMounted()Z
    .locals 9

    .prologue
    .line 4398
    sget-object v7, Lcom/android/mms/ui/MessageUtils;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v7, :cond_0

    .line 4399
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v7

    const-string v8, "storage"

    invoke-virtual {v7, v8}, Lcom/android/mms/MmsApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/storage/StorageManager;

    sput-object v7, Lcom/android/mms/ui/MessageUtils;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 4400
    sget-object v7, Lcom/android/mms/ui/MessageUtils;->mStorageManager:Landroid/os/storage/StorageManager;

    sget-object v8, Lcom/android/mms/ui/MessageUtils;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v7, v8}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 4402
    :cond_0
    sget-object v7, Lcom/android/mms/ui/MessageUtils;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v7}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 4403
    .local v5, storageVolumes:[Landroid/os/storage/StorageVolume;
    array-length v1, v5

    .line 4404
    .local v1, length:I
    const-string v3, ""

    .line 4405
    .local v3, storagePath:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 4406
    aget-object v4, v5, v0

    .line 4407
    .local v4, storageVolume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v6

    .line 4408
    .local v6, subsystem:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 4409
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 4410
    sget-object v7, Lcom/android/mms/ui/MessageUtils;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v7, v3}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4411
    .local v2, state:Ljava/lang/String;
    const-string v7, "sd"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4412
    const-string v7, "mounted"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 4413
    const/4 v7, 0x1

    sput-boolean v7, Lcom/android/mms/ui/MessageUtils;->mExternalSdCardMounted:Z

    .line 4405
    .end local v2           #state:Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4415
    .restart local v2       #state:Ljava/lang/String;
    :cond_2
    const/4 v7, 0x0

    sput-boolean v7, Lcom/android/mms/ui/MessageUtils;->mExternalSdCardMounted:Z

    goto :goto_1

    .line 4420
    .end local v2           #state:Ljava/lang/String;
    .end local v4           #storageVolume:Landroid/os/storage/StorageVolume;
    .end local v6           #subsystem:Ljava/lang/String;
    :cond_3
    sget-boolean v7, Lcom/android/mms/ui/MessageUtils;->mExternalSdCardMounted:Z

    return v7
.end method

.method public static isHebrew(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 3673
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isHebrew(I)Z

    move-result v0

    return v0
.end method

.method public static isHebrew(I)Z
    .locals 3
    .parameter "codePoint"

    .prologue
    const/4 v1, 0x1

    .line 3684
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 3685
    .local v0, block:Ljava/lang/Character$UnicodeBlock;
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->HEBREW:Ljava/lang/Character$UnicodeBlock;

    if-ne v0, v2, :cond_1

    .line 3692
    :cond_0
    :goto_0
    return v1

    .line 3689
    :cond_1
    const v2, 0xfb1d

    if-lt p0, v2, :cond_2

    const v2, 0xfb4f

    if-le p0, v2, :cond_0

    .line 3692
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "action"

    .prologue
    .line 5867
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 5868
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5869
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 5870
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isInternationalRoaming(Landroid/content/Context;)Z
    .locals 10
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 6744
    const/4 v2, 0x0

    .line 6745
    .local v2, isInternationalRoaming:Z
    const/4 v1, 0x0

    .line 6747
    .local v1, internationalSmsGuardEnabled:Z
    invoke-static {}, Lcom/android/mms/MmsConfig;->isCDMANetworkRegistered()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 6748
    const-string v7, "Mms/MessageUtils"

    const-string v8, "isInternationalRoaming CDMA Network"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6749
    const-string v7, "phone"

    invoke-static {v7}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 6752
    .local v3, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v3, :cond_0

    .line 6753
    :try_start_0
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->IsInternationalRoaming()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 6758
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "roam_guard_sms_international"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_1

    move v1, v5

    .line 6771
    .end local v3           #phone:Lcom/android/internal/telephony/ITelephony;
    :goto_1
    const-string v7, "Mms/MessageUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isInternationalRoaming : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6772
    const-string v7, "Mms/MessageUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "internationalSmsGuardEnabled : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6774
    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    .line 6777
    :goto_2
    return v5

    .line 6755
    .restart local v3       #phone:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 6756
    .local v0, e:Landroid/os/RemoteException;
    const-string v7, "Mms/MessageUtils"

    const-string v8, "isInternationalRoaming RemoteException"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    move v1, v6

    .line 6758
    goto :goto_1

    .line 6761
    .end local v3           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_2
    const-string v7, "Mms/MessageUtils"

    const-string v8, "isInternationalRoaming GSM Network"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6762
    const-string v7, "phone"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 6764
    .local v4, telephony:Landroid/telephony/TelephonyManager;
    if-eqz v4, :cond_3

    .line 6765
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    .line 6767
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "sprint_gsm_sms_guard"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_4

    move v1, v5

    :goto_3
    goto :goto_1

    :cond_4
    move v1, v6

    goto :goto_3

    .end local v4           #telephony:Landroid/telephony/TelephonyManager;
    :cond_5
    move v5, v6

    .line 6777
    goto :goto_2
.end method

.method public static isInvalidRecipientsAsKTSMSDeliveryReadReport(ZLcom/android/mms/data/Conversation;Lcom/android/mms/data/ContactList;)Z
    .locals 8
    .parameter "editorVisible"
    .parameter "conv"
    .parameter "list"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 6898
    const/4 v1, 0x0

    .line 6899
    .local v1, cList:Lcom/android/mms/data/ContactList;
    if-eqz p0, :cond_1

    .line 6900
    move-object v1, p2

    .line 6905
    :goto_0
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v7

    if-lez v7, :cond_5

    .line 6906
    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 6907
    .local v0, c:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    .line 6909
    .local v4, number:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 6912
    invoke-static {v4}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 6913
    const-string v6, "Mms/MessageUtils"

    const-string v7, "isInvalidRecipientsAsDeliveryReadReport() return true[length is invalided]"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6933
    .end local v0           #c:Lcom/android/mms/data/Contact;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #number:Ljava/lang/String;
    :goto_1
    return v5

    .line 6902
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    goto :goto_0

    .line 6917
    .restart local v0       #c:Lcom/android/mms/data/Contact;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #number:Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 6918
    .local v3, length:I
    const-string v7, "+"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 6919
    add-int/lit8 v3, v3, -0x1

    .line 6923
    :cond_3
    const/4 v7, 0x2

    if-lt v3, v7, :cond_4

    const/16 v7, 0xe

    if-le v3, v7, :cond_0

    .line 6924
    :cond_4
    const-string v6, "Mms/MessageUtils"

    const-string v7, "isInvalidRecipientsAsDeliveryReadReport() return true[length is invalided]"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 6929
    .end local v0           #c:Lcom/android/mms/data/Contact;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #length:I
    .end local v4           #number:Ljava/lang/String;
    :cond_5
    const-string v5, "Mms/MessageUtils"

    const-string v7, "isInvalidRecipientsAsDeliveryReadReport() return false [recipientCount is 0]"

    invoke-static {v5, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 6930
    goto :goto_1

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_6
    move v5, v6

    .line 6933
    goto :goto_1
.end method

.method public static isLocalNumber(Ljava/lang/String;)Z
    .locals 2
    .parameter "number"

    .prologue
    const/4 v0, 0x0

    .line 1985
    if-nez p0, :cond_1

    .line 1997
    :cond_0
    :goto_0
    return v0

    .line 1993
    :cond_1
    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 1997
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getLocalNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isLocaleRTL()Z
    .locals 1

    .prologue
    .line 3725
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isLocaleRTL(Ljava/util/Locale;)Z

    move-result v0

    return v0
.end method

.method public static isLocaleRTL(Ljava/util/Locale;)Z
    .locals 9
    .parameter "locale"

    .prologue
    .line 3737
    const-string v0, "ar"

    .line 3739
    .local v0, ISO639_ARABIC:Ljava/lang/String;
    const-string v3, "fa"

    .line 3741
    .local v3, ISO639_PERSIAN:Ljava/lang/String;
    const-string v1, "he"

    .line 3744
    .local v1, ISO639_HEBREW:Ljava/lang/String;
    const-string v2, "iw"

    .line 3746
    .local v2, ISO639_HEBREW_FORMER:Ljava/lang/String;
    const-string v6, "ji"

    .line 3748
    .local v6, ISO639_YIDDISH_FORMER:Ljava/lang/String;
    const-string v4, "ur"

    .line 3750
    .local v4, ISO639_URDU:Ljava/lang/String;
    const-string v5, "yi"

    .line 3752
    .local v5, ISO639_YIDDISH:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    .line 3753
    .local v7, iso639:Ljava/lang/String;
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    const/4 v8, 0x1

    :goto_0
    return v8

    :cond_1
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public static isLockmessage(Ljava/lang/String;JLandroid/content/ContentResolver;)J
    .locals 11
    .parameter "type"
    .parameter "msgId"
    .parameter "contentResolver"

    .prologue
    const-wide/16 v9, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 3221
    const-wide/16 v7, 0x0

    .line 3223
    .local v7, islocked:J
    const-string v0, "mms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3224
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "locked"

    aput-object v0, v2, v4

    .line 3227
    .local v2, PROJECTION:[Ljava/lang/String;
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .local v1, messageUri:Landroid/net/Uri;
    move-object v0, p3

    move-object v4, v3

    move-object v5, v3

    .line 3228
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3229
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 3231
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 3236
    if-eqz v6, :cond_0

    .line 3237
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move-wide v3, v9

    .line 3260
    :goto_0
    return-wide v3

    .line 3233
    :cond_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3234
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v7

    .line 3236
    if-eqz v6, :cond_2

    .line 3237
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move-wide v3, v7

    .line 3260
    goto :goto_0

    .line 3236
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 3237
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3236
    :cond_3
    throw v0

    .line 3242
    .end local v1           #messageUri:Landroid/net/Uri;
    .end local v2           #PROJECTION:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_4
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "locked"

    aput-object v0, v2, v4

    .line 3245
    .restart local v2       #PROJECTION:[Ljava/lang/String;
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .restart local v1       #messageUri:Landroid/net/Uri;
    move-object v0, p3

    move-object v4, v3

    move-object v5, v3

    .line 3246
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3247
    .restart local v6       #cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 3249
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    if-nez v0, :cond_6

    .line 3254
    if-eqz v6, :cond_5

    .line 3255
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    move-wide v3, v9

    .line 3250
    goto :goto_0

    .line 3251
    :cond_6
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3252
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v7

    .line 3254
    if-eqz v6, :cond_2

    .line 3255
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 3254
    :catchall_1
    move-exception v0

    if-eqz v6, :cond_7

    .line 3255
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3254
    :cond_7
    throw v0
.end method

.method public static isMessageExist(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 8
    .parameter "context"
    .parameter "msgUri"

    .prologue
    const/4 v2, 0x0

    .line 6555
    const/4 v7, 0x0

    .line 6557
    .local v7, result:Z
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 6558
    :cond_0
    const/4 v7, 0x1

    .line 6573
    :goto_0
    const-string v0, "Mms/MessageUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMessageExist(),return="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6574
    return v7

    .line 6560
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 6562
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_2

    .line 6563
    const/4 v7, 0x0

    goto :goto_0

    .line 6566
    :cond_2
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 6568
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static isNameAndNumber(Ljava/lang/String;)Z
    .locals 5
    .parameter "address"

    .prologue
    const/4 v3, 0x0

    .line 3175
    const-string v4, " <"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 3176
    .local v2, startIdx:I
    const/16 v4, 0x3e

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 3177
    .local v0, endIdx:I
    const/4 v1, -0x1

    .line 3179
    .local v1, notFound:I
    if-ne v2, v1, :cond_1

    .line 3184
    :cond_0
    :goto_0
    return v3

    .line 3181
    :cond_1
    if-eq v0, v1, :cond_2

    if-le v0, v2, :cond_0

    .line 3182
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static isNumberCanAddToContact(Ljava/lang/String;)Z
    .locals 4
    .parameter "number"

    .prologue
    const/4 v1, 0x0

    .line 2906
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2922
    :cond_0
    :goto_0
    return v1

    .line 2909
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2910
    .local v0, c:C
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isSpecialChar(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2913
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2914
    const-string v2, "Mms/MessageUtils"

    const-string v3, "alias number just return false meaning cannot add contact"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2919
    :cond_2
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isValidMmsAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2922
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 6
    .parameter "s"

    .prologue
    const/4 v4, 0x0

    .line 5781
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 5794
    :cond_0
    :goto_0
    return v4

    .line 5784
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 5785
    .local v1, chars:[C
    array-length v3, v1

    .line 5787
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 5788
    aget-char v0, v1, v2

    .line 5789
    .local v0, c:C
    const/16 v5, 0x30

    if-lt v0, v5, :cond_0

    const/16 v5, 0x39

    if-gt v0, v5, :cond_0

    .line 5787
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5794
    .end local v0           #c:C
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static isPhoneNumber(Ljava/lang/String;)Z
    .locals 6
    .parameter "s"

    .prologue
    const/4 v4, 0x0

    .line 5798
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 5813
    :cond_0
    :goto_0
    return v4

    .line 5801
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 5802
    .local v1, chars:[C
    array-length v3, v1

    .line 5804
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 5805
    aget-char v0, v1, v2

    .line 5806
    .local v0, c:C
    const/16 v5, 0x30

    if-lt v0, v5, :cond_3

    const/16 v5, 0x39

    if-gt v0, v5, :cond_3

    .line 5804
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5808
    :cond_3
    const/16 v5, 0x2a

    if-eq v0, v5, :cond_2

    const/16 v5, 0x23

    if-ne v0, v5, :cond_0

    goto :goto_2

    .line 5813
    .end local v0           #c:C
    :cond_4
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static isSpecialChar(C)Z
    .locals 5
    .parameter "c"

    .prologue
    const/16 v4, 0x25

    const/16 v3, 0x24

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2926
    invoke-static {}, Lcom/android/mms/MmsConfig;->isKORRTSRejectEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2927
    if-eq p0, v4, :cond_0

    if-ne p0, v3, :cond_1

    :cond_0
    move v0, v1

    .line 2929
    :cond_1
    :goto_0
    return v0

    :cond_2
    const/16 v2, 0x2a

    if-eq p0, v2, :cond_3

    if-eq p0, v4, :cond_3

    if-ne p0, v3, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static isSupportedUri(Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "ClipLabel"

    .prologue
    .line 5997
    if-eqz p0, :cond_0

    const-string v0, "selectedFTPUri"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "selectedCloudUri"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6000
    :cond_1
    const/4 v0, 0x0

    .line 6002
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isTextRTL(Ljava/lang/CharSequence;)Z
    .locals 7
    .parameter "text"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3702
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 3703
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 3704
    .local v3, len:I
    const/4 v2, 0x0

    .line 3705
    .local v2, i:I
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 3706
    .local v0, c:I
    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v1

    .line 3707
    .local v1, directionality:B
    :goto_0
    const/16 v6, 0xd

    if-eq v1, v6, :cond_1

    const/16 v6, 0x30

    if-lt v0, v6, :cond_0

    const/16 v6, 0x39

    if-le v0, v6, :cond_1

    :cond_0
    const/16 v6, 0x20

    if-ne v0, v6, :cond_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v3, :cond_2

    .line 3708
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 3709
    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v1

    goto :goto_0

    .line 3711
    :cond_2
    if-eq v1, v5, :cond_3

    const/4 v6, 0x2

    if-eq v1, v6, :cond_3

    const/16 v6, 0x10

    if-eq v1, v6, :cond_3

    const/16 v6, 0x11

    if-ne v1, v6, :cond_4

    :cond_3
    move v4, v5

    .line 3716
    .end local v0           #c:I
    .end local v1           #directionality:B
    .end local v2           #i:I
    .end local v3           #len:I
    :cond_4
    return v4
.end method

.method public static isVIPModeBlackNumberMessage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 18
    .parameter "context"
    .parameter "address"

    .prologue
    .line 5587
    const/4 v15, 0x0

    .line 5588
    .local v15, result:Z
    const/16 v17, -0x1

    .line 5590
    .local v17, strategy:I
    const-string v7, "com.sec.android.app.firewall"

    .line 5592
    .local v7, AUTHORITY:Ljava/lang/String;
    const-string v11, "black_msg_num"

    .line 5593
    .local v11, AUTOREJECT_TABLE:Ljava/lang/String;
    const-string v10, "numbers"

    .line 5594
    .local v10, AUTOREJECT_NUMBER:Ljava/lang/String;
    const-string v8, "checked"

    .line 5595
    .local v8, AUTOREJECT_CHECKED:Ljava/lang/String;
    const-string v9, "criteria"

    .line 5597
    .local v9, AUTOREJECT_CRITERIA:Ljava/lang/String;
    const-string v1, "content://com.sec.android.app.firewall/black_msg_num"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 5599
    .local v2, AUTOREJECT_CONTENT_URI:Landroid/net/Uri;
    if-eqz p1, :cond_0

    const-string v1, ""

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move/from16 v16, v15

    .line 5648
    .end local v15           #result:Z
    .local v16, result:I
    :goto_0
    return v16

    .line 5603
    .end local v16           #result:I
    .restart local v15       #result:Z
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "checked=1"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 5604
    .local v12, cursor:Landroid/database/Cursor;
    if-eqz v12, :cond_5

    .line 5605
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5606
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v13, v1, :cond_3

    .line 5607
    const-string v1, "numbers"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 5608
    .local v14, rejectNumber:Ljava/lang/String;
    const-string v1, "criteria"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 5610
    const-string v1, "Mms/MessageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVIPModeBlackNumberMessage - rejectNumber : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5611
    const-string v1, "Mms/MessageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFirewallRejectNumberMessage - criteria : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5612
    packed-switch v17, :pswitch_data_0

    .line 5635
    :cond_2
    :goto_2
    const/4 v1, 0x1

    if-ne v15, v1, :cond_4

    .line 5641
    .end local v14           #rejectNumber:Ljava/lang/String;
    :cond_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 5646
    .end local v13           #i:I
    :goto_3
    const-string v1, "Mms/MessageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVIPModeBlackNumberMessage - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v16, v15

    .line 5648
    .restart local v16       #result:I
    goto/16 :goto_0

    .line 5614
    .end local v16           #result:I
    .restart local v13       #i:I
    .restart local v14       #rejectNumber:Ljava/lang/String;
    :pswitch_0
    move-object/from16 v0, p1

    invoke-static {v14, v0}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5615
    const/4 v15, 0x1

    goto :goto_2

    .line 5619
    :pswitch_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5620
    const/4 v15, 0x1

    goto :goto_2

    .line 5624
    :pswitch_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5625
    const/4 v15, 0x1

    goto :goto_2

    .line 5629
    :pswitch_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5630
    const/4 v15, 0x1

    goto :goto_2

    .line 5638
    :cond_4
    const/4 v14, 0x0

    .line 5639
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    .line 5606
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 5643
    .end local v13           #i:I
    .end local v14           #rejectNumber:Ljava/lang/String;
    :cond_5
    const-string v1, "Mms/MessageUtils"

    const-string v3, "isVIPModeBlackNumberMessage - cursor is null"

    invoke-static {v1, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 5612
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static isVIPModeBlackStringMessage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 14
    .parameter "context"
    .parameter "text"

    .prologue
    const/4 v2, 0x0

    .line 5652
    const/4 v13, 0x0

    .line 5654
    .local v13, result:Z
    const-string v6, "com.sec.android.app.firewall"

    .line 5656
    .local v6, AUTHORITY:Ljava/lang/String;
    const-string v8, "black_msg_str"

    .line 5657
    .local v8, AUTOREJECT_TABLE:Ljava/lang/String;
    const-string v9, "text"

    .line 5658
    .local v9, AUTOREJECT_TEXT:Ljava/lang/String;
    const-string v7, "checked"

    .line 5660
    .local v7, AUTOREJECT_CHECKED:Ljava/lang/String;
    const-string v0, "content://com.sec.android.app.firewall/black_msg_str"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 5662
    .local v1, AUTOREJECT_CONTENT_URI:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "checked=1"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 5663
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_2

    .line 5664
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5665
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v11, v0, :cond_0

    .line 5666
    const-string v0, "text"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 5667
    .local v12, rejectString:Ljava/lang/String;
    const-string v0, "Mms/MessageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVIPModeBlackStringMessage - rejectNumber : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5668
    invoke-virtual {p1, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5669
    const/4 v13, 0x1

    .line 5675
    .end local v12           #rejectString:Ljava/lang/String;
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 5680
    .end local v11           #i:I
    :goto_1
    const-string v0, "Mms/MessageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVIPModeBlackStringMessage - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5682
    return v13

    .line 5672
    .restart local v11       #i:I
    .restart local v12       #rejectString:Ljava/lang/String;
    :cond_1
    const/4 v12, 0x0

    .line 5673
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 5665
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 5677
    .end local v11           #i:I
    .end local v12           #rejectString:Ljava/lang/String;
    :cond_2
    const-string v0, "Mms/MessageUtils"

    const-string v2, "isVIPModeBlackStringMessage - cursor is null"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static isVIPModeOn(Landroid/content/Context;)I
    .locals 14
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 5556
    const-string v6, "com.sec.android.app.firewall"

    .line 5557
    .local v6, AUTHORITY:Ljava/lang/String;
    const-string v7, "mode"

    .line 5558
    .local v7, MODE_TABLE:Ljava/lang/String;
    const-string v9, "vip_mode"

    .line 5559
    .local v9, VIPMODE_MODE:Ljava/lang/String;
    const-string v10, "black_msg"

    .line 5560
    .local v10, VIP_MODE1:Ljava/lang/String;
    const-string v11, "white_msg"

    .line 5561
    .local v11, VIP_MODE2:Ljava/lang/String;
    const-string v0, "content://com.sec.android.app.firewall/mode"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 5563
    .local v1, MODE_CONTENT_URI:Landroid/net/Uri;
    const/4 v13, 0x0

    .line 5564
    .local v13, vipmodeOnOff:I
    const/4 v8, 0x0

    .line 5566
    .local v8, MessageBlockMode:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 5567
    .local v12, cursor:Landroid/database/Cursor;
    if-eqz v12, :cond_1

    .line 5568
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5569
    const-string v0, "vip_mode"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 5570
    const-string v0, "Mms/MessageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "firewallOnOff = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5572
    const/4 v0, 0x1

    if-ne v13, v0, :cond_2

    .line 5573
    const-string v0, "black_msg"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 5578
    :cond_0
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 5579
    const/4 v12, 0x0

    .line 5581
    :cond_1
    const-string v0, "Mms/MessageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MessageBlockMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5583
    return v8

    .line 5574
    :cond_2
    const/4 v0, 0x2

    if-ne v13, v0, :cond_0

    .line 5575
    const-string v0, "white_msg"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    goto :goto_0
.end method

.method public static isVIPModeWhiteNumberMessage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 14
    .parameter "context"
    .parameter "address"

    .prologue
    const/4 v2, 0x0

    .line 5686
    const/4 v13, 0x0

    .line 5688
    .local v13, result:Z
    const-string v6, "com.sec.android.app.firewall"

    .line 5690
    .local v6, AUTHORITY:Ljava/lang/String;
    const-string v9, "white_msg_num"

    .line 5691
    .local v9, AUTOREJECT_TABLE:Ljava/lang/String;
    const-string v8, "numbers"

    .line 5692
    .local v8, AUTOREJECT_NUMBER:Ljava/lang/String;
    const-string v7, "checked"

    .line 5694
    .local v7, AUTOREJECT_CHECKED:Ljava/lang/String;
    const-string v0, "content://com.sec.android.app.firewall/white_msg_num"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 5696
    .local v1, AUTOREJECT_CONTENT_URI:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "checked=1"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 5698
    .local v11, cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_2

    .line 5699
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5700
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v12, v0, :cond_0

    .line 5701
    const-string v0, "numbers"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 5702
    .local v10, acceptNumber:Ljava/lang/String;
    const-string v0, "Mms/MessageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVIPModeWhiteNumberMessage - acceptNumber : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5703
    invoke-static {v10, p1}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5704
    const/4 v13, 0x1

    .line 5710
    .end local v10           #acceptNumber:Ljava/lang/String;
    :cond_0
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 5715
    .end local v12           #i:I
    :goto_1
    const-string v0, "Mms/MessageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVIPModeWhiteNumberMessage - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5717
    return v13

    .line 5707
    .restart local v10       #acceptNumber:Ljava/lang/String;
    .restart local v12       #i:I
    :cond_1
    const/4 v10, 0x0

    .line 5708
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 5700
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 5712
    .end local v10           #acceptNumber:Ljava/lang/String;
    .end local v12           #i:I
    :cond_2
    const-string v0, "Mms/MessageUtils"

    const-string v2, "isVIPModeWhiteNumberMessage - cursor is null"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static isValidAddress(Ljava/lang/String;Z)Z
    .locals 5
    .parameter "number"
    .parameter "isMms"

    .prologue
    const/4 v1, 0x1

    const/4 v4, -0x1

    const/4 v0, 0x0

    .line 2996
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinRecipientLength()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 3036
    :cond_0
    :goto_0
    return v0

    .line 3000
    :cond_1
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3001
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SKT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KOR_OPEN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3002
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxRecipientLength()I

    move-result v2

    if-le v2, v4, :cond_3

    .line 3003
    const-string v2, "+"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3004
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxRecipientLength()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-gt v2, v3, :cond_0

    .line 3019
    :cond_3
    if-eqz p1, :cond_6

    .line 3020
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isValidMmsAddress(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 3007
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxRecipientLength()I

    move-result v3

    if-le v2, v3, :cond_3

    goto :goto_0

    .line 3012
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxRecipientLength()I

    move-result v2

    if-le v2, v4, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxRecipientLength()I

    move-result v3

    if-le v2, v3, :cond_3

    goto :goto_0

    .line 3023
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIS41Email()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 3024
    :cond_7
    const-string v2, "Mms/MessageUtils"

    const-string v3, "IS41 Email : isValidAddress"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3030
    invoke-static {}, Lcom/android/mms/MmsConfig;->isAliasEnabled()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3031
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isWellFormedSmsAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_8
    move v0, v1

    goto/16 :goto_0

    .line 3033
    :cond_9
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isWellFormedSmsAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_a
    move v0, v1

    goto/16 :goto_0

    .line 3036
    :cond_b
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isValidSmsAddress(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public static isValidMmsAddress(Ljava/lang/String;)Z
    .locals 2
    .parameter "address"

    .prologue
    .line 3057
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->parseMmsAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3058
    .local v0, retVal:Ljava/lang/String;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isValidSmsAddress(Ljava/lang/String;)Z
    .locals 3
    .parameter "address"

    .prologue
    .line 3125
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3126
    const/4 v0, 0x0

    .line 3130
    :goto_0
    return v0

    .line 3129
    :cond_0
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->parseSmsAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3130
    .local v1, retVal:Ljava/lang/String;
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static isValidSmsEmailAddress(Ljava/lang/String;Z)Z
    .locals 2
    .parameter "number"
    .parameter "isMms"

    .prologue
    .line 3043
    const-string v0, "Mms/MessageUtils"

    const-string v1, "IS41 Email : isValidAddress"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3045
    if-eqz p1, :cond_0

    .line 3046
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isValidMmsAddress(Ljava/lang/String;)Z

    move-result v0

    .line 3048
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isWellFormedSmsAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValideFile(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 6
    .parameter "context"
    .parameter "fileUri"

    .prologue
    .line 6514
    const/4 v2, 0x0

    .line 6515
    .local v2, valid:Z
    const/4 v1, 0x0

    .line 6518
    .local v1, fileStream:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 6519
    const/4 v2, 0x1

    .line 6521
    const-string v3, "Mms/MessageUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Valid file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6526
    if-eqz v1, :cond_0

    .line 6528
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 6536
    :cond_0
    :goto_0
    return v2

    .line 6522
    :catch_0
    move-exception v0

    .line 6523
    .local v0, e:Ljava/io/FileNotFoundException;
    const/4 v2, 0x0

    .line 6524
    :try_start_2
    const-string v3, "Mms/MessageUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6526
    if-eqz v1, :cond_0

    .line 6528
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 6529
    :catch_1
    move-exception v0

    .line 6531
    .local v0, e:Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 6526
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_1

    .line 6528
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 6526
    :cond_1
    :goto_2
    throw v3

    .line 6529
    :catch_2
    move-exception v0

    .line 6531
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 6529
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public static isValideFile(Ljava/lang/String;)Z
    .locals 5
    .parameter "fileName"

    .prologue
    .line 6540
    const/4 v1, 0x0

    .line 6541
    .local v1, valid:Z
    const/4 v0, 0x0

    .line 6543
    .local v0, file:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    .end local v0           #file:Ljava/io/File;
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6544
    .restart local v0       #file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6545
    const/4 v1, 0x1

    .line 6546
    const-string v2, "Mms/MessageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Valid file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6551
    :goto_0
    return v1

    .line 6548
    :cond_0
    const-string v2, "Mms/MessageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isVzwPhoneNumber(Ljava/lang/String;)Z
    .locals 2
    .parameter "number"

    .prologue
    .line 2835
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2836
    const/4 v1, 0x0

    .line 2840
    :goto_0
    return v1

    .line 2839
    :cond_0
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->VZWPHONE:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2840
    .local v0, match:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_0
.end method

.method public static isWVGAModel()Z
    .locals 5

    .prologue
    const/16 v4, 0x320

    const/16 v3, 0x1e0

    .line 7038
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 7039
    .local v0, metrics:Landroid/util/DisplayMetrics;
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Lcom/android/mms/MmsApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 7042
    if-eqz v0, :cond_2

    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v2, 0xf0

    if-ne v1, v2, :cond_2

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v1, v3, :cond_0

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-eq v1, v4, :cond_1

    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v1, v4, :cond_2

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v1, v3, :cond_2

    .line 7045
    :cond_1
    const/4 v1, 0x1

    .line 7047
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isWapBrowserAvailable(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    .line 6639
    const/4 v4, 0x0

    .line 6641
    .local v4, isInstalled:Z
    const-string v1, "com.lguplus.litebrowser"

    .line 6642
    .local v1, appID:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 6643
    .local v5, pm:Landroid/content/pm/PackageManager;
    const/16 v6, 0x80

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    .line 6646
    .local v3, installedPkgList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 6647
    .local v0, a:Landroid/content/pm/ApplicationInfo;
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.lguplus.litebrowser"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 6648
    const/4 v4, 0x1

    .line 6656
    .end local v0           #a:Landroid/content/pm/ApplicationInfo;
    :cond_0
    return v4

    .line 6653
    .restart local v0       #a:Landroid/content/pm/ApplicationInfo;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static isWapPushMessageAddress(Ljava/lang/String;)Z
    .locals 1
    .parameter "address"

    .prologue
    .line 3069
    const-string v0, "Pushmessage"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3070
    const/4 v0, 0x1

    .line 3072
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static joinContents(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "delimiter"
    .parameter "tokens"

    .prologue
    .line 7110
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 7111
    .local v4, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 7113
    .local v1, firstTime:Z
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v5, v0, v2

    .line 7114
    .local v5, token:Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 7113
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7118
    :cond_1
    if-eqz v1, :cond_2

    .line 7119
    const/4 v1, 0x0

    .line 7123
    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 7121
    :cond_2
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 7125
    .end local v5           #token:Ljava/lang/String;
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static makeCall(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "number"

    .prologue
    .line 4247
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/android/mms/ui/MessageUtils;->makeCall(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V

    .line 4248
    return-void
.end method

.method public static makeCall(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "number"
    .parameter "direction"

    .prologue
    .line 4251
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/android/mms/ui/MessageUtils;->makeCall(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V

    .line 4252
    return-void
.end method

.method public static makeCall(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .parameter "context"
    .parameter "number"
    .parameter "ipCall"

    .prologue
    .line 4255
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/mms/ui/MessageUtils;->makeCall(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V

    .line 4256
    return-void
.end method

.method public static makeCall(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "number"
    .parameter "ipCall"
    .parameter "direction"

    .prologue
    const/4 v5, 0x1

    .line 4263
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4294
    :goto_0
    return-void

    .line 4265
    :cond_0
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    .line 4266
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4267
    .local v0, PhoneNumber:[Ljava/lang/String;
    aget-object p1, v0, v5

    .line 4270
    .end local v0           #PhoneNumber:[Ljava/lang/String;
    :cond_1
    const-string v2, "Mms/MessageUtils"

    const-string v3, "Make a call"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4272
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, p1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4273
    .local v1, callIntent:Landroid/content/Intent;
    sget-boolean v2, Lcom/android/mms/util/DirectCallingManager;->mCheckTwiceEvent:Z

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDocomoAccountAsDefault()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4274
    :cond_2
    const-string v2, "android.phone.extra.CALL_DIRECTCALL"

    const-string v3, "Messaging"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4284
    :cond_3
    if-eqz p2, :cond_4

    .line 4285
    const-string v2, "ipcall"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4288
    :cond_4
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 4289
    const-string v2, "android.phone.extra.CALL_DIRECTCALL_DIRECTION"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4292
    :cond_5
    const/high16 v2, 0x1400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4293
    invoke-static {p0, v1}, Lcom/android/mms/util/PackageInfo;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public static makeVideoCall(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "number"

    .prologue
    .line 4299
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4310
    :goto_0
    return-void

    .line 4301
    :cond_0
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    .line 4302
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4303
    .local v0, PhoneNumber:[Ljava/lang/String;
    const/4 v2, 0x1

    aget-object p1, v0, v2

    .line 4306
    .end local v0           #PhoneNumber:[Ljava/lang/String;
    :cond_1
    const-string v2, "Mms/MessageUtils"

    const-string v3, "Make a video call"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4307
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.phone.videocall"

    const-string v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, p1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4308
    .local v1, videoCallIntent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4309
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static markMmsAsRead(Landroid/content/Context;J)V
    .locals 5
    .parameter "context"
    .parameter "msgId"

    .prologue
    const/4 v4, 0x1

    .line 7064
    const-string v2, "Mms/MessageUtils"

    const-string v3, "markMmsAsRead()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7066
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 7068
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 7069
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "read"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7071
    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(read=0) AND _id ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 7072
    return-void
.end method

.method public static markSmsAsRead(Landroid/content/Context;J)V
    .locals 5
    .parameter "context"
    .parameter "msgId"

    .prologue
    const/4 v4, 0x1

    .line 7053
    const-string v2, "Mms/MessageUtils"

    const-string v3, "markSmsAsRead()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7055
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 7057
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 7058
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "read"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7060
    sget-object v2, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(read=0) AND _id ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 7061
    return-void
.end method

.method public static markWpmAsRead(Landroid/content/Context;J)V
    .locals 6
    .parameter "context"
    .parameter "msgId"

    .prologue
    const/4 v5, 0x1

    .line 7075
    const-string v3, "Mms/MessageUtils"

    const-string v4, "markMmsAsRead()"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7077
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 7079
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 7080
    .local v1, values:Landroid/content/ContentValues;
    const-string v3, "read"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7082
    sget-object v3, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "wap-push-messages"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 7083
    .local v2, wpmUri:Landroid/net/Uri;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(read=0) AND _id ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 7084
    return-void
.end method

.method public static openComposerWithDropObject(Landroid/net/Uri;Landroid/content/ClipData;Landroid/content/ClipDescription;)V
    .locals 5
    .parameter "recipient"
    .parameter "clipData"
    .parameter "clipDescription"

    .prologue
    .line 5982
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 5983
    .local v1, context:Landroid/content/Context;
    const-string v3, "Mms/MessageUtils"

    const-string v4, "openComposerWithDropImage"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5985
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5986
    .local v2, intent:Landroid/content/Intent;
    const/4 v3, 0x0

    invoke-static {p0, v2, p1, p2, v3}, Lcom/android/mms/ui/MessageUtils;->setIntentforDrop(Landroid/net/Uri;Landroid/content/Intent;Landroid/content/ClipData;Landroid/content/ClipDescription;Landroid/app/Activity;)Z

    move-result v0

    .line 5987
    .local v0, DropResult:Z
    if-nez v0, :cond_0

    .line 5988
    const v3, 0x7f0c014d

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 5994
    :goto_0
    return-void

    .line 5991
    :cond_0
    const/high16 v3, 0x1400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5992
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static openMedia(Landroid/content/Context;Lcom/android/mms/model/SlideModel;Lcom/android/mms/model/MediaModel;)V
    .locals 2
    .parameter "context"
    .parameter "slide"
    .parameter "mm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3810
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3811
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getDrmObject()Lcom/android/mms/drm/DrmWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/drm/DrmWrapper;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 3816
    .local v0, contentType:Ljava/lang/String;
    :goto_0
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isContentUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/mms/ui/MessageUtils;->isContentUriAvailable(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3827
    :goto_1
    return-void

    .line 3813
    .end local v0           #contentType:Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #contentType:Ljava/lang/String;
    goto :goto_0

    .line 3820
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    const-string v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3821
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/android/mms/util/PackageInfo;->callGallery(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_1

    .line 3822
    :cond_2
    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3823
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/android/mms/util/PackageInfo;->callVideoPlayer(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_1

    .line 3825
    :cond_3
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/android/mms/util/PackageInfo;->callProperActivity(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static openMedia(Landroid/content/Context;Lcom/android/mms/model/SlideModel;Lcom/android/mms/model/MediaModel;Z)V
    .locals 2
    .parameter "context"
    .parameter "slide"
    .parameter "mm"
    .parameter "editingMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3831
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3832
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getDrmObject()Lcom/android/mms/drm/DrmWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/drm/DrmWrapper;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 3837
    .local v0, contentType:Ljava/lang/String;
    :goto_0
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isContentUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/mms/ui/MessageUtils;->isContentUriAvailable(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3850
    :goto_1
    return-void

    .line 3834
    .end local v0           #contentType:Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #contentType:Ljava/lang/String;
    goto :goto_0

    .line 3841
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    const-string v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3842
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1, v0, p3}, Lcom/android/mms/util/PackageInfo;->callGallery(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Z)V

    goto :goto_1

    .line 3843
    :cond_2
    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3844
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/android/mms/util/PackageInfo;->callVideoPlayer(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_1

    .line 3845
    :cond_3
    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3846
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/android/mms/util/PackageInfo;->callMusicPlayer(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_1

    .line 3848
    :cond_4
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/android/mms/util/PackageInfo;->callProperActivity(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static openModel(Landroid/content/Context;Lcom/android/mms/model/Model;)V
    .locals 9
    .parameter "context"
    .parameter "model"

    .prologue
    .line 3879
    if-nez p1, :cond_0

    .line 3936
    :goto_0
    return-void

    .line 3883
    :cond_0
    const/4 v1, 0x0

    .line 3884
    .local v1, contentType:Ljava/lang/String;
    const/4 v6, 0x0

    .line 3885
    .local v6, uri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v7

    if-eqz v7, :cond_1

    instance-of v7, p1, Lcom/samsung/mms/model/LocationVcardModel;

    if-eqz v7, :cond_1

    move-object v4, p1

    .line 3886
    check-cast v4, Lcom/samsung/mms/model/LocationVcardModel;

    .line 3888
    .local v4, locModel:Lcom/samsung/mms/model/LocationVcardModel;
    const-string v7, "Mms/MessageUtils"

    const-string v8, "Launching location activity"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3889
    new-instance v3, Landroid/content/Intent;

    const-class v7, Lcom/samsung/mms/location/LocationMapActivity;

    invoke-direct {v3, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3890
    .local v3, intent:Landroid/content/Intent;
    const-string v7, "extra_startup_flag"

    const/4 v8, 0x4

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3891
    const-string v7, "extra_map_url"

    invoke-virtual {v4}, Lcom/samsung/mms/model/LocationVcardModel;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3892
    const-string v7, "extra_selected_place"

    invoke-virtual {v4}, Lcom/samsung/mms/model/LocationVcardModel;->getPlaceBytes()[B

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 3893
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 3896
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #locModel:Lcom/samsung/mms/model/LocationVcardModel;
    :cond_1
    instance-of v7, p1, Lcom/android/mms/model/MediaModel;

    if-eqz v7, :cond_5

    move-object v5, p1

    .line 3897
    check-cast v5, Lcom/android/mms/model/MediaModel;

    .line 3899
    .local v5, media:Lcom/android/mms/model/MediaModel;
    :try_start_0
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3900
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getDrmObject()Lcom/android/mms/drm/DrmWrapper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/drm/DrmWrapper;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 3904
    :goto_1
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 3915
    .end local v5           #media:Lcom/android/mms/model/MediaModel;
    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    if-nez v6, :cond_6

    .line 3916
    :cond_3
    const-string v7, "Mms/MessageUtils"

    const-string v8, "can\'t get model data"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3902
    .restart local v5       #media:Lcom/android/mms/model/MediaModel;
    :cond_4
    :try_start_1
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1

    .line 3905
    :catch_0
    move-exception v2

    .line 3906
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 3909
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #media:Lcom/android/mms/model/MediaModel;
    :cond_5
    instance-of v7, p1, Lcom/android/mms/model/AttachmentModel;

    if-eqz v7, :cond_2

    move-object v0, p1

    .line 3910
    check-cast v0, Lcom/android/mms/model/AttachmentModel;

    .line 3911
    .local v0, attachment:Lcom/android/mms/model/AttachmentModel;
    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 3912
    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getUri()Landroid/net/Uri;

    move-result-object v6

    goto :goto_2

    .line 3920
    .end local v0           #attachment:Lcom/android/mms/model/AttachmentModel;
    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 3922
    const-string v7, "image"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 3923
    invoke-static {p0, v6, v1}, Lcom/android/mms/util/PackageInfo;->callGallery(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3924
    :cond_7
    const-string v7, "video"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 3925
    invoke-static {p0, v6, v1}, Lcom/android/mms/util/PackageInfo;->callVideoPlayer(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3926
    :cond_8
    const-string v7, "text/x-vcard"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 3927
    invoke-static {p0, v6, v1}, Lcom/android/mms/util/PackageInfo;->openVContact(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3928
    :cond_9
    const-string v7, "text/x-vcalendar"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 3929
    invoke-static {p0, v6, v1}, Lcom/android/mms/util/PackageInfo;->callCalendarImport(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3930
    :cond_a
    const-string v7, "text/x-vtodo"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 3931
    invoke-static {p0, v6, v1}, Lcom/android/mms/util/PackageInfo;->callTaskImport(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3933
    :cond_b
    invoke-static {p0, v6, v1}, Lcom/android/mms/util/PackageInfo;->callProperActivity(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static parseMmsAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "address"

    .prologue
    const/4 v1, 0x0

    .line 3082
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3107
    .end local p0
    .local v0, retVal:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 3086
    .end local v0           #retVal:Ljava/lang/String;
    .restart local p0
    :cond_1
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isNameAndNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3087
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->extractNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3091
    :cond_2
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->parsePhoneNumberForMms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3093
    .restart local v0       #retVal:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object p0, v1

    .line 3094
    goto :goto_0

    .line 3097
    :cond_3
    if-eqz v0, :cond_4

    move-object p0, v0

    .line 3098
    goto :goto_0

    .line 3102
    :cond_4
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object p0, v1

    .line 3107
    goto :goto_0
.end method

.method private static parsePhoneNumberForMms(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "address"

    .prologue
    const/4 v5, 0x0

    .line 2964
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2991
    :goto_0
    return-object v5

    .line 2968
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2969
    .local v1, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 2970
    .local v0, addressChar:[C
    array-length v4, v0

    .line 2973
    .local v4, len:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_4

    .line 2974
    aget-char v2, v0, v3

    .line 2977
    .local v2, c:C
    const/16 v6, 0x2b

    if-ne v2, v6, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 2978
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2973
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2982
    :cond_2
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2983
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2987
    :cond_3
    sget-object v6, Lcom/android/mms/ui/MessageUtils;->numericSugarMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_0

    .line 2991
    .end local v2           #c:C
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static parseSmsAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "address"

    .prologue
    const/4 v1, 0x0

    .line 3140
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isNameAndNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3141
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->extractNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3145
    :cond_0
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->parsePhoneNumberForMms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3147
    .local v0, retVal:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 3161
    .end local v0           #retVal:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v0

    .line 3151
    .restart local v0       #retVal:Ljava/lang/String;
    :cond_2
    if-nez v0, :cond_1

    .line 3156
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v0, p0

    .line 3157
    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 3161
    goto :goto_0
.end method

.method public static pickAttachmentImageOrVideoFile(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 2
    .parameter "act"
    .parameter "contentType"
    .parameter "requestCode"

    .prologue
    .line 1754
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1755
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 1756
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1757
    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1759
    :cond_0
    return-void
.end method

.method public static queryCount(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)I
    .locals 9
    .parameter "resolver"
    .parameter "threadUri"
    .parameter "selection"

    .prologue
    const/4 v8, 0x0

    .line 6157
    const/4 v7, 0x0

    .line 6158
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 6161
    .local v6, count:I
    :try_start_0
    sget-object v2, Lcom/android/mms/ui/MessageUtils;->COUNT_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 6162
    if-nez v7, :cond_1

    .line 6165
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v8

    .line 6168
    :goto_0
    return v0

    .line 6163
    :cond_1
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    .line 6165
    :cond_2
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v6

    .line 6168
    goto :goto_0

    .line 6165
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static queryCount(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .parameter "resolver"
    .parameter "threadUri"
    .parameter "projection"
    .parameter "selection"

    .prologue
    .line 6172
    const/4 v7, 0x0

    .line 6173
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 6176
    .local v6, count:I
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 6177
    if-nez v7, :cond_1

    const/4 v0, 0x0

    .line 6180
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 6183
    :cond_0
    :goto_0
    return v0

    .line 6178
    :cond_1
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    .line 6180
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v6

    .line 6183
    goto :goto_0

    .line 6180
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static recordSound(Landroid/content/Context;ILcom/android/mms/model/SlideshowModel;Z)V
    .locals 7
    .parameter "context"
    .parameter "requestCode"
    .parameter "slideshow"
    .parameter "toReplaceMedia"

    .prologue
    const/4 v6, 0x0

    .line 1692
    instance-of v4, p0, Landroid/app/Activity;

    if-eqz v4, :cond_1

    .line 1695
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1701
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "com.sec.android.app.voicerecorder"

    const-string v5, "com.sec.android.app.voicerecorder.VoiceRecorder"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1703
    const-string v4, "location"

    const/4 v5, 0x2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1705
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v1

    .line 1707
    .local v1, maxContentSize:I
    if-eqz p2, :cond_5

    .line 1709
    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->getRemainContentsSize()I

    move-result v2

    .line 1710
    .local v2, remainSize:I
    const/4 v3, 0x0

    .line 1711
    .local v3, slideSize:I
    invoke-virtual {p2, v6}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1712
    invoke-virtual {p2, v6}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v3

    .line 1714
    :cond_0
    if-eqz p3, :cond_4

    .line 1715
    if-lez v3, :cond_3

    .line 1716
    add-int v4, v2, v3

    if-ge v4, v1, :cond_2

    .line 1717
    const-string v4, "remain_size"

    add-int v5, v2, v3

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1730
    .end local v2           #remainSize:I
    .end local v3           #slideSize:I
    :goto_0
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1732
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #maxContentSize:I
    :cond_1
    return-void

    .line 1719
    .restart local v0       #intent:Landroid/content/Intent;
    .restart local v1       #maxContentSize:I
    .restart local v2       #remainSize:I
    .restart local v3       #slideSize:I
    .restart local p0
    :cond_2
    const-string v4, "remain_size"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 1721
    :cond_3
    const-string v4, "remain_size"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 1725
    :cond_4
    const-string v4, "remain_size"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 1728
    .end local v2           #remainSize:I
    .end local v3           #slideSize:I
    :cond_5
    const-string v4, "remain_size"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static registerAsCallBlockNumber(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 7
    .parameter "context"
    .parameter "address"
    .parameter "isVideocall"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 5342
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 5343
    .local v2, values:Landroid/content/ContentValues;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5345
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v5, "reject_number"

    invoke-virtual {v2, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5346
    const-string v5, "reject_checked"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5347
    const-string v5, "reject_match"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5351
    invoke-static {p0, p1}, Lcom/android/mms/ui/MessageUtils;->CheckAvailbleCallRejectList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 5352
    const v5, 0x7f0c017b

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5353
    const v5, 0x7f0c030d

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 5354
    const v5, 0x7f0c03b5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 5355
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 5356
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 5366
    :goto_0
    return v3

    .line 5360
    :cond_0
    if-nez p2, :cond_1

    .line 5361
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/android/mms/ui/MessageUtils;->AUTOREJECT_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v5, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    :goto_1
    move v3, v4

    .line 5366
    goto :goto_0

    .line 5363
    .end local v1           #uri:Landroid/net/Uri;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/android/mms/ui/MessageUtils;->AUTOREJECT_VIDEOCALL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v5, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .restart local v1       #uri:Landroid/net/Uri;
    goto :goto_1
.end method

.method public static registerAsSpamNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .parameter "context"
    .parameter "address"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 5229
    const/4 v1, 0x0

    .line 5231
    .local v1, isUpdated:Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5232
    const v3, 0x7f0c0298

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 5233
    const/4 v1, 0x0

    .line 5270
    :goto_0
    invoke-static {p0, v7}, Lcom/android/mms/ui/MessagingPreferenceActivity;->changeSpamOption(Landroid/content/Context;Z)Z

    .line 5272
    return v1

    .line 5237
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackList()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5238
    invoke-static {p0, v6, p1, v7, v6}, Lcom/android/mms/spam/SpamFilter;->insert(Landroid/content/Context;ILjava/lang/String;ZI)Landroid/net/Uri;

    .line 5239
    const/4 v1, 0x1

    goto :goto_0

    .line 5242
    :cond_1
    invoke-static {p0, v6, p1}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->checkAlreadyInUse(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5243
    const v3, 0x7f0c028d

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 5244
    const/4 v1, 0x0

    goto :goto_0

    .line 5245
    :cond_2
    invoke-static {p1}, Lcom/android/mms/util/TelephonyUtils;->isAvaliableNumber(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 5246
    const v3, 0x7f0c0287

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 5247
    const/4 v1, 0x0

    goto :goto_0

    .line 5248
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForKor()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_4

    .line 5249
    const v3, 0x7f0c0291

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 5250
    const/4 v1, 0x0

    goto :goto_0

    .line 5252
    :cond_4
    invoke-static {p0, v6, p1, v7, v6}, Lcom/android/mms/spam/SpamFilter;->insert(Landroid/content/Context;ILjava/lang/String;ZI)Landroid/net/Uri;

    .line 5253
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForKor()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 5255
    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 5256
    .local v2, sharedPref:Landroid/content/SharedPreferences;
    const-string v3, "pref_key_spam_option_enable"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_5

    .line 5257
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "pref_key_spam_option_enable"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5263
    .end local v2           #sharedPref:Landroid/content/SharedPreferences;
    :cond_5
    :goto_1
    const v3, 0x7f0c0408

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 5264
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 5259
    :catch_0
    move-exception v0

    .line 5260
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static registerToCalendar(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4
    .parameter "activity"
    .parameter "calendarstr"

    .prologue
    .line 5874
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5875
    .local v0, Calendarintent:Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.item/event"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 5876
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5877
    const-string v1, "allDay"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5878
    const-string v1, "edit_mode"

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 5879
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 5880
    return-void
.end method

.method public static resizeImageAsync(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;ZZ)V
    .locals 9
    .parameter "context"
    .parameter "imageUri"
    .parameter "handler"
    .parameter "cb"
    .parameter "append"
    .parameter "sendMultiple"

    .prologue
    .line 1897
    new-instance v7, Lcom/android/mms/ui/MessageUtils$3;

    invoke-direct {v7, p0}, Lcom/android/mms/ui/MessageUtils$3;-><init>(Landroid/content/Context;)V

    .line 1903
    .local v7, showProgress:Ljava/lang/Runnable;
    const-wide/16 v0, 0x3e8

    invoke-virtual {p2, v7, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1905
    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/android/mms/ui/MessageUtils$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/MessageUtils$4;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;ZZ)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 1925
    return-void
.end method

.method public static saveRingtone(Landroid/content/Context;J)Z
    .locals 10
    .parameter "context"
    .parameter "msgId"

    .prologue
    .line 6229
    const/4 v5, 0x1

    .line 6230
    .local v5, result:Z
    const/4 v0, 0x0

    .line 6232
    .local v0, body:Lcom/google/android/mms/pdu/PduBody;
    :try_start_0
    sget-object v7, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/mms/model/SlideshowModel;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 6237
    :goto_0
    if-nez v0, :cond_0

    .line 6238
    const/4 v7, 0x0

    .line 6252
    :goto_1
    return v7

    .line 6234
    :catch_0
    move-exception v1

    .line 6235
    .local v1, e:Lcom/google/android/mms/MmsException;
    const-string v7, "Mms/MessageUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "copyToDrmProvider can\'t load pdu body: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6241
    .end local v1           #e:Lcom/google/android/mms/MmsException;
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v4

    .line 6242
    .local v4, partNum:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v4, :cond_2

    .line 6243
    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v3

    .line 6244
    .local v3, part:Lcom/google/android/mms/pdu/PduPart;
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    .line 6246
    .local v6, type:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/mms/drm/DrmUtils;->isDrmType(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 6249
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v3, v7}, Lcom/android/mms/ui/MessageUtils;->copyPartDrmCheck(Landroid/content/Context;Lcom/google/android/mms/pdu/PduPart;Ljava/lang/String;)Z

    move-result v7

    and-int/2addr v5, v7

    .line 6242
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v3           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v6           #type:Ljava/lang/String;
    :cond_2
    move v7, v5

    .line 6252
    goto :goto_1
.end method

.method public static searchShortStr(Landroid/content/Context;Ljava/lang/String;)Lcom/android/mms/data/ContactList;
    .locals 12
    .parameter "context"
    .parameter "key"

    .prologue
    const/4 v4, 0x1

    .line 6937
    const/4 v9, 0x0

    .line 6938
    .local v9, rItem:Lcom/android/mms/data/ContactList;
    const/4 v6, 0x0

    .line 6940
    .local v6, cur:Landroid/database/Cursor;
    const-string v0, "content://com.android.contacts/contacts/speeddial"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 6941
    .local v1, uri:Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "display_name"

    aput-object v3, v2, v0

    const-string v0, "number"

    aput-object v0, v2, v4

    .line 6946
    .local v2, projection:[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key_number=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 6954
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6955
    const-string v0, "display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 6956
    .local v11, strName:Ljava/lang/String;
    const-string v0, "number"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 6957
    .local v10, strData:Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 6958
    .local v8, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6959
    const/4 v0, 0x1

    invoke-static {v8, v0}, Lcom/android/mms/data/Contact;->getByIds(Ljava/util/ArrayList;Z)Lcom/android/mms/data/ContactList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 6964
    .end local v8           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10           #strData:Ljava/lang/String;
    .end local v11           #strName:Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_1

    .line 6965
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 6966
    :goto_0
    const/4 v6, 0x0

    .line 6970
    :cond_1
    return-object v9

    .line 6961
    :catch_0
    move-exception v7

    .line 6962
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "Mms/MessageUtils"

    const-string v3, "searchShortKey()"

    invoke-static {v0, v3, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6964
    if-eqz v6, :cond_1

    .line 6965
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 6964
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 6965
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 6966
    const/4 v6, 0x0

    .line 6964
    :cond_2
    throw v0
.end method

.method public static selectAudio(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "requestCode"

    .prologue
    const/4 v2, 0x0

    .line 1679
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 1680
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1681
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1682
    const-string v1, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1683
    const-string v1, "android.intent.extra.ringtone.INCLUDE_DRM"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1684
    const-string v1, "android.intent.extra.ringtone.TITLE"

    const v2, 0x7f0c00ce

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1686
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1688
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static selectImage(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "requestCode"

    .prologue
    .line 1739
    const-string v0, "image/*"

    invoke-static {p0, p1, v0}, Lcom/android/mms/ui/MessageUtils;->selectMediaByType(Landroid/content/Context;ILjava/lang/String;)V

    .line 1740
    return-void
.end method

.method private static selectMediaByType(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "requestCode"
    .parameter "contentType"

    .prologue
    .line 1743
    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 1744
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1745
    .local v0, innerIntent:Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1746
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 1747
    .local v1, wrapperIntent:Landroid/content/Intent;
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1749
    .end local v0           #innerIntent:Landroid/content/Intent;
    .end local v1           #wrapperIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static selectVideo(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "requestCode"

    .prologue
    .line 1735
    const-string v0, "video/*"

    invoke-static {p0, p1, v0}, Lcom/android/mms/ui/MessageUtils;->selectMediaByType(Landroid/content/Context;ILjava/lang/String;)V

    .line 1736
    return-void
.end method

.method public static sendNotiToOtherApp(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "uri"
    .parameter "number"
    .parameter "msgType"

    .prologue
    .line 5489
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNotificationBoradcastReceivedMsg()Z

    move-result v4

    if-nez v4, :cond_1

    .line 5517
    :cond_0
    :goto_0
    return-void

    .line 5492
    :cond_1
    const/4 v1, 0x0

    .line 5493
    .local v1, intentNoti:Landroid/content/Intent;
    const/4 v2, 0x0

    .line 5494
    .local v2, szAddr:Ljava/lang/String;
    const-string v4, "mms"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5495
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intentNoti:Landroid/content/Intent;
    const-string v4, "com.sec.mms.intent.action.MMS_RECEIVED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5496
    .restart local v1       #intentNoti:Landroid/content/Intent;
    invoke-static {p0, p1}, Lcom/android/mms/util/AddressUtils;->getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 5505
    :goto_1
    move-object v3, v2

    .line 5506
    .local v3, szDisplayName:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 5507
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c013b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 5515
    :cond_2
    :goto_2
    const-string v4, "DisplayName"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5516
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 5498
    .end local v3           #szDisplayName:Ljava/lang/String;
    :cond_3
    const-string v4, "sms"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5499
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intentNoti:Landroid/content/Intent;
    const-string v4, "com.sec.mms.intent.action.SMS_RECEIVED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5500
    .restart local v1       #intentNoti:Landroid/content/Intent;
    move-object v2, p2

    goto :goto_1

    .line 5509
    .restart local v3       #szDisplayName:Ljava/lang/String;
    :cond_4
    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 5510
    .local v0, cacheContact:Lcom/android/mms/data/Contact;
    if-eqz v0, :cond_2

    .line 5512
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNameAndNumber()Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method

.method public static setAutoSmsEnabled(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "enabled"

    .prologue
    .line 4983
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "autosms_enable"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4984
    return-void
.end method

.method public static setAutoSmsType(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "type"

    .prologue
    .line 4998
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "autosms_type"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4999
    return-void
.end method

.method public static setChameleonPreset(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 6708
    const/4 v0, 0x0

    .line 6728
    .local v0, ret_val:Z
    return v0
.end method

.method public static setCheckedOnOff(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 2
    .parameter "activity"
    .parameter "name"
    .parameter "isChecked"

    .prologue
    .line 5827
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getSharedPreference(Landroid/app/Activity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5828
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 5829
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 5830
    return-void
.end method

.method public static setCountryDetector()V
    .locals 2

    .prologue
    .line 5924
    const-string v0, "Mms/MessageUtils"

    const-string v1, "setCountryDetector : update country detector info "

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5925
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "country_detector"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/CountryDetector;

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->mCountryDetector:Landroid/location/CountryDetector;

    .line 5926
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->updateCountryIso()V

    .line 5927
    return-void
.end method

.method public static setExpiryTime(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "expiryTime"

    .prologue
    .line 5044
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5046
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_key_mms_expiry_time"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5047
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static setIndicatorBar(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    const/16 v2, 0x400

    .line 4082
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4083
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 4088
    :goto_0
    return-void

    .line 4085
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0
.end method

.method public static setIntentforDrop(Landroid/net/Uri;Landroid/content/Intent;Landroid/content/ClipData;Landroid/content/ClipDescription;Landroid/app/Activity;)Z
    .locals 11
    .parameter "recipientUri"
    .parameter "intent"
    .parameter "clipData"
    .parameter "clipDescription"
    .parameter "mActivity"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 6006
    invoke-virtual {p2}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 6007
    .local v0, count:I
    const/4 v2, 0x0

    .line 6008
    .local v2, item:Landroid/content/ClipData$Item;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 6009
    .local v5, mSelectedUri:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 6010
    .local v4, mSelectedString:Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 6011
    .local v6, textSting:Ljava/lang/String;
    const/4 v3, 0x0

    .line 6012
    .local v3, mContentType:Ljava/lang/String;
    const-string v7, "dropObject"

    invoke-virtual {p1, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6014
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 6015
    invoke-virtual {p2, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    .line 6017
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string v10, "android.intent.extra.STREAM"

    invoke-virtual {v7, v10}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    if-eqz v7, :cond_3

    .line 6018
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string v10, "android.intent.extra.STREAM"

    invoke-virtual {v7, v10}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6024
    :cond_0
    :goto_1
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 6025
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 6026
    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6027
    :cond_1
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6014
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6019
    :cond_3
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 6020
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6031
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v10, ""

    if-eq v7, v10, :cond_5

    .line 6032
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 6033
    const-string v7, "android.intent.extra.TEXT"

    invoke-virtual {p1, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6036
    :cond_5
    if-ne v0, v9, :cond_e

    .line 6037
    const-string v7, "android.intent.action.SEND"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6038
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_7

    .line 6039
    invoke-virtual {p3, v8}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v7

    const-string v10, "text/x-vCard"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 6040
    invoke-virtual {p3, v8}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v3

    .line 6044
    :cond_6
    :goto_2
    const-string v10, "android.intent.extra.STREAM"

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Parcelable;

    invoke-virtual {p1, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6047
    :cond_7
    if-eqz v3, :cond_b

    .line 6048
    if-eqz p0, :cond_a

    .line 6049
    invoke-virtual {p1, p0, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 6056
    :cond_8
    :goto_3
    if-eqz p4, :cond_c

    move v10, v9

    :goto_4
    if-nez v3, :cond_d

    move v7, v9

    :goto_5
    and-int/2addr v7, v10

    if-eqz v7, :cond_10

    if-nez v6, :cond_10

    move v7, v8

    .line 6064
    :goto_6
    return v7

    .line 6041
    :cond_9
    if-eqz p4, :cond_6

    .line 6042
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    invoke-static {p4, v7}, Lcom/android/mms/ui/MessageUtils;->getMimeTypeFromUri(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 6051
    :cond_a
    invoke-virtual {p1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 6052
    :cond_b
    if-eqz p0, :cond_8

    .line 6053
    invoke-virtual {p1, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_3

    :cond_c
    move v10, v8

    .line 6056
    goto :goto_4

    :cond_d
    move v7, v8

    goto :goto_5

    .line 6059
    :cond_e
    const-string v7, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6060
    if-eqz p0, :cond_f

    .line 6061
    invoke-virtual {p1, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 6062
    :cond_f
    const-string v7, "android.intent.extra.STREAM"

    invoke-virtual {p1, v7, v5}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :cond_10
    move v7, v9

    .line 6064
    goto :goto_6
.end method

.method public static setMaximumLengthforWB(Landroid/widget/EditText;I)V
    .locals 2
    .parameter "editText"
    .parameter "maxLength"

    .prologue
    .line 7129
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->getInputExtras(Z)Landroid/os/Bundle;

    move-result-object v0

    .line 7130
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "maxLength"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7131
    return-void
.end method

.method public static showDiscardDraftConfirmDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnKeyListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .locals 4
    .parameter "context"
    .parameter "clickListener"
    .parameter "listener"

    .prologue
    .line 1930
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1931
    const-string v1, "GATE"

    const-string v2, "<GATE-M>MSG_DISCARD</GATE-M>"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0038

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0039

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c004f

    invoke-virtual {v1, v2, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0050

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1940
    .local v0, dlg:Landroid/app/AlertDialog;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1942
    return-object v0
.end method

.method public static showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog;
    .locals 4
    .parameter "context"
    .parameter "title"
    .parameter "message"
    .parameter "listener"
    .parameter "cancellistener"
    .parameter "dismissListener"

    .prologue
    .line 1818
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1820
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c004f

    invoke-virtual {v2, v3, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1826
    new-instance v2, Lcom/android/mms/ui/MessageUtils$2;

    invoke-direct {v2}, Lcom/android/mms/ui/MessageUtils$2;-><init>()V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1838
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1839
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1841
    invoke-virtual {v1, p5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1843
    return-object v1
.end method

.method public static showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 2
    .parameter "context"
    .parameter "title"
    .parameter "message"
    .parameter "listener"
    .parameter "cancellistener"

    .prologue
    .line 1808
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c004f

    invoke-virtual {v0, v1, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1812
    return-void
.end method

.method public static showInputMothodConfirmDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .parameter "context"
    .parameter "listener_send"

    .prologue
    .line 1960
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c012c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c012d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c012e

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c012f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1964
    return-void
.end method

.method public static showLinksContextMenu(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "activity"
    .parameter "url"
    .parameter "text"

    .prologue
    .line 6090
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6105
    :cond_0
    :goto_0
    return-void

    .line 6093
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "link_action"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_0

    .line 6098
    :try_start_0
    invoke-static {p1, p2}, Lcom/samsung/mms/ui/LinkActionChooserFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DialogFragment;

    move-result-object v1

    .line 6099
    .local v1, fg:Landroid/app/DialogFragment;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "link_action"

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6101
    .end local v1           #fg:Landroid/app/DialogFragment;
    :catch_0
    move-exception v0

    .line 6102
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v2, "Mms/MessageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static showPDPResetDialog(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 6733
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPDP_PARAM(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6734
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setPDP_PARAM(Landroid/content/Context;Z)V

    .line 6735
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/PDPResetDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6737
    .local v0, pdpResetDialogIntent:Landroid/content/Intent;
    const/high16 v1, 0x1800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6738
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 6740
    .end local v0           #pdpResetDialogIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static showSaveDraftConfirmDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .parameter "context"
    .parameter "listener_yes"
    .parameter "listener_no"

    .prologue
    .line 1948
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c00e7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00e8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00ea

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00eb

    invoke-virtual {v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0050

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1954
    return-void
.end method

.method static streamToBytes(Ljava/io/InputStream;I)[B
    .locals 3
    .parameter "is"
    .parameter "streamSize"

    .prologue
    .line 3985
    new-array v0, p1, [B

    .line 3987
    .local v0, buffer:[B
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v2, p1}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3991
    :goto_0
    return-object v0

    .line 3988
    :catch_0
    move-exception v1

    .line 3989
    .local v1, e1:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static unregisterAsCallBlockNumber(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 18
    .parameter "context"
    .parameter "address"
    .parameter "isVideocall"

    .prologue
    .line 5370
    if-eqz p0, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5371
    :cond_0
    const/16 v16, 0x0

    .line 5430
    :goto_0
    return v16

    .line 5372
    :cond_1
    const/4 v14, 0x0

    .line 5373
    .local v14, nReject_match:I
    const/4 v15, 0x1

    .line 5374
    .local v15, reject_checked:I
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 5376
    .local v9, FIND_WHERE:Ljava/lang/StringBuffer;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 5377
    .local v13, idsBuilder:Ljava/lang/StringBuilder;
    const/16 v16, 0x0

    .line 5378
    .local v16, retValue:Z
    const/4 v12, 0x0

    .line 5379
    .local v12, id:I
    const-string v17, ""

    .line 5380
    .local v17, spamAddress:Ljava/lang/String;
    const-string v8, "_id"

    .line 5381
    .local v8, AUTOREJECT_ID:Ljava/lang/String;
    const/4 v11, 0x0

    .line 5383
    .local v11, cur:Landroid/database/Cursor;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    sget v3, Lcom/android/mms/ui/MessageUtils;->MIN_MATCH_CHINA:I

    if-lt v2, v3, :cond_2

    .line 5384
    const-string v2, "reject_number"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5385
    const-string v2, " LIKE \'%"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5386
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/android/mms/ui/MessageUtils;->MIN_MATCH_CHINA:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5392
    :goto_1
    const-string v2, " AND reject_match = "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5393
    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 5394
    const-string v2, " AND reject_checked = "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5395
    invoke-virtual {v9, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 5397
    if-nez p2, :cond_3

    .line 5398
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/MessageUtils;->AUTOREJECT_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "reject_number"

    aput-object v6, v4, v5

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 5402
    :goto_2
    if-nez v11, :cond_4

    .line 5403
    const-string v2, "Mms/MessageUtils"

    const-string v3, "unregisterAsCallBlockNumber : cursor is null !!"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 5404
    const/16 v16, 0x0

    goto :goto_0

    .line 5388
    :cond_2
    const-string v2, "reject_number"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5389
    const-string v2, "="

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5390
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 5400
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/MessageUtils;->AUTOREJECT_VIDEOCALL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "reject_number"

    aput-object v6, v4, v5

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    goto :goto_2

    .line 5406
    :cond_4
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5407
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_7

    .line 5409
    :cond_5
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 5410
    const-string v2, "reject_number"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 5411
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5412
    const-string v2, "Mms/MessageUtils"

    const-string v3, "unregisterAsCallBlockNumber : true"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5413
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5414
    const-string v2, " , "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5415
    const/16 v16, 0x1

    .line 5417
    :cond_6
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_5

    .line 5419
    const-string v2, "-1"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5421
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id in ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 5423
    .local v10, REMOVE_WHERE:Ljava/lang/String;
    if-nez p2, :cond_8

    .line 5424
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/MessageUtils;->AUTOREJECT_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v10, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5428
    .end local v10           #REMOVE_WHERE:Ljava/lang/String;
    :cond_7
    :goto_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 5429
    const/4 v11, 0x0

    .line 5430
    goto/16 :goto_0

    .line 5426
    .restart local v10       #REMOVE_WHERE:Ljava/lang/String;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/MessageUtils;->AUTOREJECT_VIDEOCALL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v10, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_3
.end method

.method public static unregisterSpamNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "address"

    .prologue
    const/4 v0, 0x0

    .line 5276
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5277
    const v1, 0x7f0c0298

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 5288
    :cond_0
    :goto_0
    return v0

    .line 5280
    :cond_1
    invoke-static {p0, v0, p1}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->checkAlreadyInUse(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5281
    invoke-static {p0, v0, p1}, Lcom/android/mms/spam/SpamFilter;->delete(Landroid/content/Context;ILjava/lang/String;)I

    .line 5284
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static updateCountryIso()V
    .locals 3

    .prologue
    .line 5910
    const-string v1, "Mms/MessageUtils"

    const-string v2, "updateCountryIso : update country iso info "

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5911
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->mCountryDetector:Landroid/location/CountryDetector;

    if-nez v1, :cond_0

    .line 5912
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "country_detector"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/CountryDetector;

    sput-object v1, Lcom/android/mms/ui/MessageUtils;->mCountryDetector:Landroid/location/CountryDetector;

    .line 5914
    :cond_0
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->mCountryDetector:Landroid/location/CountryDetector;

    if-nez v1, :cond_2

    .line 5915
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/mms/ui/MessageUtils;->mCountryISO:Ljava/lang/String;

    .line 5921
    .local v0, detectedCountry:Landroid/location/Country;
    :cond_1
    :goto_0
    return-void

    .line 5917
    .end local v0           #detectedCountry:Landroid/location/Country;
    :cond_2
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->mCountryDetector:Landroid/location/CountryDetector;

    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    .line 5918
    .restart local v0       #detectedCountry:Landroid/location/Country;
    if-eqz v0, :cond_1

    .line 5919
    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/mms/ui/MessageUtils;->mCountryISO:Ljava/lang/String;

    goto :goto_0
.end method

.method public static viewMediaContents(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;IIZ)V
    .locals 9
    .parameter "context"
    .parameter "slideshow"
    .parameter "slideIndex"
    .parameter "type"
    .parameter "editingMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0xe

    const/16 v7, 0xc

    const/16 v6, 0xb

    const/16 v5, 0xa

    .line 3762
    invoke-virtual {p1, p2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v3

    .line 3763
    .local v3, slide:Lcom/android/mms/model/SlideModel;
    const/4 v2, 0x0

    .line 3764
    .local v2, mm:Lcom/android/mms/model/MediaModel;
    const/4 v1, 0x0

    .line 3766
    .local v1, locmm:Lcom/samsung/mms/model/LocationVcardModel;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3767
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->hasLocation()Z

    move-result v4

    if-eqz v4, :cond_2

    if-ne p3, v8, :cond_2

    .line 3768
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->getLocationModel()Lcom/samsung/mms/model/LocationVcardModel;

    move-result-object v1

    .line 3788
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 3789
    if-eqz v1, :cond_8

    if-ne p3, v8, :cond_8

    .line 3791
    const-string v4, "NGM"

    const-string v5, "launch locationMap Activity now !!"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3792
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/samsung/mms/location/LocationMapActivity;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3793
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "extra_startup_flag"

    const/4 v5, 0x4

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3794
    const-string v4, "extra_map_url"

    invoke-virtual {v1}, Lcom/samsung/mms/model/LocationVcardModel;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3795
    const-string v4, "extra_selected_place"

    invoke-virtual {v1}, Lcom/samsung/mms/model/LocationVcardModel;->getPlaceBytes()[B

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 3796
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3806
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    :goto_1
    return-void

    .line 3770
    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v4

    if-eqz v4, :cond_3

    if-ne p3, v5, :cond_3

    .line 3771
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v2

    goto :goto_0

    .line 3772
    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v4

    if-eqz v4, :cond_4

    if-ne p3, v6, :cond_4

    .line 3773
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v2

    goto :goto_0

    .line 3774
    :cond_4
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v4

    if-eqz v4, :cond_0

    if-ne p3, v7, :cond_0

    .line 3775
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v2

    goto :goto_0

    .line 3779
    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v4

    if-eqz v4, :cond_6

    if-ne p3, v5, :cond_6

    .line 3780
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v2

    goto :goto_0

    .line 3781
    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v4

    if-eqz v4, :cond_7

    if-ne p3, v6, :cond_7

    .line 3782
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v2

    goto :goto_0

    .line 3783
    :cond_7
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v4

    if-eqz v4, :cond_0

    if-ne p3, v7, :cond_0

    .line 3784
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v2

    goto/16 :goto_0

    .line 3801
    :cond_8
    if-eqz v2, :cond_1

    .line 3805
    invoke-static {p0, v3, v2, p4}, Lcom/android/mms/ui/MessageUtils;->openMedia(Landroid/content/Context;Lcom/android/mms/model/SlideModel;Lcom/android/mms/model/MediaModel;Z)V

    goto :goto_1
.end method

.method public static viewMmsMessageAttachment(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;Z)V
    .locals 10
    .parameter "context"
    .parameter "msgUri"
    .parameter "slideshow"
    .parameter "mmsView"

    .prologue
    const/4 v9, 0x4

    .line 2652
    if-nez p2, :cond_0

    const/4 v2, 0x0

    .line 2653
    .local v2, isSimple:Z
    :goto_0
    invoke-static {p2}, Lcom/android/mms/ui/MessageUtils;->getAttachmentType(Lcom/android/mms/model/SlideshowModel;)I

    move-result v7

    .line 2655
    .local v7, type:I
    if-eqz v2, :cond_1

    if-nez p3, :cond_1

    if-eq v7, v9, :cond_1

    .line 2658
    :try_start_0
    invoke-static {p0, p2}, Lcom/android/mms/ui/MessageUtils;->viewSimpleSlideshow(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2701
    :goto_1
    return-void

    .line 2652
    .end local v2           #isSimple:Z
    .end local v7           #type:I
    :cond_0
    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->isSimple()Z

    move-result v2

    goto :goto_0

    .line 2659
    .restart local v2       #isSimple:Z
    .restart local v7       #type:I
    :catch_0
    move-exception v0

    .line 2661
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 2665
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    if-eqz p2, :cond_2

    .line 2666
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v6

    .line 2668
    .local v6, persister:Lcom/google/android/mms/pdu/PduPersister;
    :try_start_1
    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v5

    .line 2669
    .local v5, pb:Lcom/google/android/mms/pdu/PduBody;
    const/4 v8, 0x0

    invoke-virtual {v6, p1, v5, v8}, Lcom/google/android/mms/pdu/PduPersister;->updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;Ljava/util/HashMap;)V

    .line 2670
    invoke-virtual {p2, v5}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2680
    .end local v5           #pb:Lcom/google/android/mms/pdu/PduBody;
    .end local v6           #persister:Lcom/google/android/mms/pdu/PduPersister;
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2681
    if-eqz p2, :cond_3

    .line 2682
    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->getLocationModel()Lcom/samsung/mms/model/LocationVcardModel;

    move-result-object v3

    .line 2683
    .local v3, locModel:Lcom/samsung/mms/model/LocationVcardModel;
    if-eqz v3, :cond_3

    .line 2685
    new-instance v4, Landroid/content/Intent;

    const-class v8, Lcom/samsung/mms/location/LocationMapActivity;

    invoke-direct {v4, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2686
    .local v4, locintent:Landroid/content/Intent;
    const-string v8, "extra_startup_flag"

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2687
    const-string v8, "extra_map_url"

    invoke-virtual {v3}, Lcom/samsung/mms/model/LocationVcardModel;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2688
    const-string v8, "extra_selected_place"

    invoke-virtual {v3}, Lcom/samsung/mms/model/LocationVcardModel;->getPlaceBytes()[B

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 2689
    invoke-virtual {p0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 2671
    .end local v3           #locModel:Lcom/samsung/mms/model/LocationVcardModel;
    .end local v4           #locintent:Landroid/content/Intent;
    .restart local v6       #persister:Lcom/google/android/mms/pdu/PduPersister;
    :catch_1
    move-exception v0

    .line 2672
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v8, "Mms/MessageUtils"

    const-string v9, "Unable to save message for preview"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2674
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    :catch_2
    move-exception v0

    .line 2675
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v8, "Mms/MessageUtils"

    const-string v9, "NullPointerException occur. Unable to save message for preview"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2696
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v6           #persister:Lcom/google/android/mms/pdu/PduPersister;
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-class v8, Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {v1, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2697
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2698
    const-string v8, "preview"

    const-string v9, "previewLaunch"

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2699
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public static viewMmsMessageAttachment(Landroid/content/Context;Lcom/android/mms/data/WorkingMessage;Z)V
    .locals 6
    .parameter "context"
    .parameter "msg"
    .parameter "viewMMS"

    .prologue
    const/4 v5, 0x0

    .line 2767
    invoke-virtual {p1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    .line 2768
    .local v1, slideshow:Lcom/android/mms/model/SlideshowModel;
    if-nez v1, :cond_0

    .line 2769
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "msg.getSlideshow() == null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2771
    :cond_0
    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->getAttachmentType(Lcom/android/mms/model/SlideshowModel;)I

    move-result v2

    .line 2773
    .local v2, type:I
    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->isSimple()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez p2, :cond_1

    const/4 v4, 0x4

    if-eq v2, v4, :cond_1

    .line 2776
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1, v4}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 2777
    invoke-static {p0, v1}, Lcom/android/mms/ui/MessageUtils;->viewSimpleSlideshow(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2786
    :goto_0
    return-void

    .line 2778
    :catch_0
    move-exception v0

    .line 2780
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 2783
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    invoke-virtual {p1, v5}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    move-result-object v3

    .line 2784
    .local v3, uri:Landroid/net/Uri;
    invoke-static {p0, v3, v1, p2}, Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;Z)V

    goto :goto_0
.end method

.method public static viewMmsMessageAttachment(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;Z)V
    .locals 16
    .parameter "context"
    .parameter "messageItem"
    .parameter "mmsView"

    .prologue
    .line 2704
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    .line 2705
    .local v7, msgUri:Landroid/net/Uri;
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 2706
    .local v10, slideshow:Lcom/android/mms/model/SlideshowModel;
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v5

    .line 2707
    .local v5, msgId:J
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v11

    .line 2708
    .local v11, threadId:J
    if-nez v10, :cond_0

    const/4 v3, 0x0

    .line 2709
    .local v3, isSimple:Z
    :goto_0
    invoke-static {v10}, Lcom/android/mms/ui/MessageUtils;->getAttachmentType(Lcom/android/mms/model/SlideshowModel;)I

    move-result v13

    .line 2711
    .local v13, type:I
    if-eqz v3, :cond_1

    if-nez p2, :cond_1

    const/4 v14, 0x4

    if-eq v13, v14, :cond_1

    .line 2714
    :try_start_0
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/android/mms/ui/MessageUtils;->viewSimpleSlideshow(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2764
    :goto_1
    return-void

    .line 2708
    .end local v3           #isSimple:Z
    .end local v13           #type:I
    :cond_0
    invoke-virtual {v10}, Lcom/android/mms/model/SlideshowModel;->isSimple()Z

    move-result v3

    goto :goto_0

    .line 2715
    .restart local v3       #isSimple:Z
    .restart local v13       #type:I
    :catch_0
    move-exception v1

    .line 2717
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 2721
    .end local v1           #e:Ljava/io/IOException;
    :cond_1
    if-eqz v10, :cond_2

    .line 2722
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v9

    .line 2724
    .local v9, persister:Lcom/google/android/mms/pdu/PduPersister;
    :try_start_1
    invoke-virtual {v10}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v8

    .line 2725
    .local v8, pb:Lcom/google/android/mms/pdu/PduBody;
    const/4 v14, 0x0

    invoke-virtual {v9, v7, v8, v14}, Lcom/google/android/mms/pdu/PduPersister;->updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;Ljava/util/HashMap;)V

    .line 2726
    invoke-virtual {v10, v8}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2738
    .end local v8           #pb:Lcom/google/android/mms/pdu/PduBody;
    .end local v9           #persister:Lcom/google/android/mms/pdu/PduPersister;
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v14

    if-eqz v14, :cond_3

    if-eqz v10, :cond_3

    .line 2739
    invoke-virtual {v10}, Lcom/android/mms/model/SlideshowModel;->getLocationModel()Lcom/samsung/mms/model/LocationVcardModel;

    move-result-object v4

    .line 2740
    .local v4, locModel:Lcom/samsung/mms/model/LocationVcardModel;
    if-eqz v4, :cond_3

    .line 2743
    new-instance v2, Landroid/content/Intent;

    const-class v14, Lcom/samsung/mms/location/LocationMapActivity;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2744
    .local v2, intent:Landroid/content/Intent;
    const-string v14, "extra_startup_flag"

    const/4 v15, 0x4

    invoke-virtual {v2, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2745
    const-string v14, "extra_map_url"

    invoke-virtual {v4}, Lcom/samsung/mms/model/LocationVcardModel;->getUrl()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2746
    const-string v14, "extra_selected_place"

    invoke-virtual {v4}, Lcom/samsung/mms/model/LocationVcardModel;->getPlaceBytes()[B

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 2747
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 2727
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #locModel:Lcom/samsung/mms/model/LocationVcardModel;
    .restart local v9       #persister:Lcom/google/android/mms/pdu/PduPersister;
    :catch_1
    move-exception v1

    .line 2728
    .local v1, e:Lcom/google/android/mms/MmsException;
    const-string v14, "Mms/MessageUtils"

    const-string v15, "Unable to save message for preview"

    invoke-static {v14, v15}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2730
    .end local v1           #e:Lcom/google/android/mms/MmsException;
    :catch_2
    move-exception v1

    .line 2731
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v14, "Mms/MessageUtils"

    const-string v15, "NullPointerException occur. Unable to save message for preview"

    invoke-static {v14, v15}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2753
    .end local v1           #e:Ljava/lang/NullPointerException;
    .end local v9           #persister:Lcom/google/android/mms/pdu/PduPersister;
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 2754
    new-instance v2, Landroid/content/Intent;

    const-class v14, Lcom/android/mms/ui/MmsSinglePageActivity;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2758
    .restart local v2       #intent:Landroid/content/Intent;
    :goto_2
    invoke-virtual {v2, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2759
    const-string v14, "msgId"

    invoke-virtual {v2, v14, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2760
    const-string v14, "thread_id"

    invoke-virtual {v2, v14, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2761
    const-string v14, "preview"

    const-string v15, "previewLaunch"

    invoke-virtual {v2, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2762
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 2757
    .end local v2           #intent:Landroid/content/Intent;
    :cond_4
    new-instance v2, Landroid/content/Intent;

    const-class v14, Lcom/android/mms/ui/SlideshowActivity;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_2
.end method

.method public static viewSimpleSlideshow(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V
    .locals 4
    .parameter "context"
    .parameter "slideshow"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1763
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->isSimple()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1764
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "viewSimpleSlideshow() called on a non-simple slideshow"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1767
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 1768
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    const/4 v0, 0x0

    .line 1769
    .local v0, mm:Lcom/android/mms/model/MediaModel;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1770
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v0

    .line 1777
    :cond_1
    :goto_0
    if-nez v0, :cond_4

    .line 1781
    :goto_1
    return-void

    .line 1771
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1772
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v0

    goto :goto_0

    .line 1773
    :cond_3
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1774
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v0

    goto :goto_0

    .line 1780
    :cond_4
    invoke-static {p0, v1, v0}, Lcom/android/mms/ui/MessageUtils;->openMedia(Landroid/content/Context;Lcom/android/mms/model/SlideModel;Lcom/android/mms/model/MediaModel;)V

    goto :goto_1
.end method

.method public static writeHprofDataToFile()V
    .locals 5

    .prologue
    .line 2792
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/mms_oom_hprof_data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2795
    .local v1, filename:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V

    .line 2796
    const-string v2, "Mms/MessageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "##### written hprof data to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2800
    :goto_0
    return-void

    .line 2797
    :catch_0
    move-exception v0

    .line 2798
    .local v0, ex:Ljava/io/IOException;
    const-string v2, "Mms/MessageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeHprofDataToFile: caught "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
