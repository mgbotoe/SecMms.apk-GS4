.class public Lcom/android/mms/transaction/MessagingNotification;
.super Landroid/content/BroadcastReceiver;
.source "MessagingNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/MessagingNotification$FlashNotification;,
        Lcom/android/mms/transaction/MessagingNotification$NotificationInfoComparator;,
        Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;,
        Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;,
        Lcom/android/mms/transaction/MessagingNotification$OnCancelReceiver;,
        Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;
    }
.end annotation


# static fields
.field private static final BADGE_CLASSNAME:Ljava/lang/String; = "com.android.mms.ui.ConversationComposer"

.field private static final BADGE_PACKAGENAME:Ljava/lang/String; = "com.android.mms"

.field private static final BADGE_PROVIDER_PROJECTION:[Ljava/lang/String; = null

.field private static final BADGE_PROVIDER_SELECTION:Ljava/lang/String; = "package=?"

.field public static final CLASS0_SOUND_VIBRATE_NOTIFICATION_ID:I = 0x3e7

.field public static final CMAS_SOUND_PATH:Ljava/lang/String; = "android.resource://com.android.mms/raw/cmas_ringtone"

.field public static final CMAS_SOUND_PATH_LTN:Ljava/lang/String; = "android.resource://com.android.mms/raw/cmas_ringtone_ltn"

.field public static CMAS_Y:Z = false

.field private static final COLUMN_DATE:I = 0x2

.field private static final COLUMN_MMS_PRIORITY:I = 0x5

.field private static final COLUMN_MSG_ID:I = 0x1

.field private static final COLUMN_SMS_ADDRESS:I = 0x4

.field private static final COLUMN_SMS_BODY:I = 0x5

.field private static final COLUMN_SMS_PRIORITY:I = 0x6

.field private static final COLUMN_SUBJECT:I = 0x3

.field private static final COLUMN_SUBJECT_CS:I = 0x4

.field private static final COLUMN_THREAD_ID:I = 0x0

.field private static final COLUMN_WPM_BODY:I = 0x3

.field public static final DOWNLOAD_FAILED_NOTIFICATION_ID:I = 0x213

.field private static final HebrewCode:Ljava/lang/String; = "iw"

.field private static final INFO_COMPARATOR:Lcom/android/mms/transaction/MessagingNotification$NotificationInfoComparator; = null

.field private static final INTENT_DISABLE_VIBRATOR:Ljava/lang/String; = "com.sec.android.app.camera.DISABLE_VIBRATOR"

.field private static final INTENT_ENABLE_VIBRATOR:Ljava/lang/String; = "com.sec.android.app.camera.ENABLE_VIBRATOR"

.field private static final INTENT_LOCALE_CHANGED:Ljava/lang/String; = "android.intent.action.LOCALE_CHANGED"

.field private static final IN_CONVERSATION_NOTIFICATION_VOLUME:F = 0.25f

.field private static final LOG_HISTORY_ALWAYS_URI:Landroid/net/Uri; = null

.field private static final LOG_HISTORY_URI:Landroid/net/Uri; = null

.field private static final LOG_MMS_URI:Landroid/net/Uri; = null

.field private static final LOG_SMS_URI:Landroid/net/Uri; = null

.field private static final MAX_MESSAGES_TO_SHOW:I = 0x8

.field public static final MESSAGE_FAILED_NOTIFICATION_ID:I = 0x315

.field public static final MMS_BR_FOR_VLINGO:Ljava/lang/String; = "com.android.mms.MMS_BR_FOR_VLINGO"

.field private static final MMS_STATUS_PROJECTION:[Ljava/lang/String; = null

.field private static final MMS_THREAD_ID_PROJECTION:[Ljava/lang/String; = null

.field public static final MSG_TYPE_CB:I = 0x4

.field public static final MSG_TYPE_CMAS:I = 0x3

.field public static final MSG_TYPE_DDM:I = 0x5

.field public static final MSG_TYPE_MMS:I = 0x0

.field public static final MSG_TYPE_SMS:I = 0x1

.field public static final MSG_TYPE_WAP:I = 0x2

.field private static final NEW_DELIVERY_SM_CONSTRAINT:Ljava/lang/String; = "(type = 2 AND status = 0)"

.field private static final NEW_INCOMING_CMAS_CONSTRAINT:Ljava/lang/String; = "(address like \"%#CMAS#%\" AND read = 0 AND thread_id NOT NULL)"

.field private static final NEW_INCOMING_CMAS_PRESIDENTIAL_CONSTRAINT:Ljava/lang/String; = "(address like \"%#CMAS#Presidential%\" AND read = 0)"

.field private static final NEW_INCOMING_MM_CONSTRAINT:Ljava/lang/String; = "(msg_box=1 AND read=0 AND (m_type=130 OR m_type=132) AND thread_id NOT NULL)"

.field private static final NEW_INCOMING_SM_CONSTRAINT:Ljava/lang/String; = "(type = 1 AND read = 0 AND thread_id NOT NULL)"

.field private static final NEW_INCOMING_SM_CONSTRAINT_CMAS_ENABLED:Ljava/lang/String; = "type = 1 AND address not like \"%#CMAS#%\" AND read = 0 AND thread_id NOT NULL"

.field private static final NEW_INCOMING_WPM_CONSTRAINT:Ljava/lang/String; = "(read = 0 AND thread_id NOT NULL)"

.field public static final NEW_MESSAGE_NOTIFICATION_ID_OPEN:I = 0x7b

.field private static final NOTIFICATION_CANCEL_ACTION:Ljava/lang/String; = "com.android.mms.NOTIFICATION_CANCEL_ACTION"

.field public static final NOTIFICATION_CMAS_ID:I = 0x41c

.field private static final NOTIFICATION_DELETED_ACTION:Ljava/lang/String; = "com.android.mms.NOTIFICATION_DELETED_ACTION"

.field public static final NOTIFICATION_ID:I = 0x7b

.field private static PRIORITY_SMS_HIGH:I = 0x0

.field private static PRIORITY_SMS_NORMAL:I = 0x0

.field public static final REPORT_NOTIFICATION_ID:I = 0x378

.field public static final REPORT_TYPE_MMS_DELIVERY:I = 0x1

.field public static final REPORT_TYPE_MMS_READ:I = 0x2

.field public static final REPORT_TYPE_SMS_DELIVERY:I = 0x0

.field private static final SMS_FROM_NTTDOCOMO:Ljava/lang/String; = "NTT DOCOMO"

.field private static final SMS_STATUS_PROJECTION:[Ljava/lang/String; = null

.field private static final SMS_THREAD_ID_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "Mms/MessagingNotification"

.field public static final THREAD_ALL:J = -0x1L

.field public static final THREAD_ALL_EXCEPT_CMAS:J = -0x3L

.field public static final THREAD_NONE:J = -0x2L

.field private static final UNDELIVERED_URI:Landroid/net/Uri;

.field private static final WPM_STATUS_PROJECTION:[Ljava/lang/String;

.field private static lastMsgType:Ljava/lang/String;

.field public static mCmasType:Ljava/lang/String;

.field private static mDate:Ljava/lang/String;

.field public static mFlashNotification:Lcom/android/mms/transaction/MessagingNotification$FlashNotification;

.field private static mIsCmasReminder:Z

.field public static mIsOnce:Z

.field public static mIsOnceCMAS:Z

.field public static mMediaPlayer:Landroid/media/MediaPlayer;

.field private static mNotification:Landroid/app/Notification;

.field private static mOldVolume:I

.field private static mRunnable:Ljava/lang/Runnable;

.field public static sCmasVibrator:Landroid/os/Vibrator;

.field private static sCurrentlyDisplayedThreadId:J

.field private static final sCurrentlyDisplayedThreadLock:Ljava/lang/Object;

.field private static sDisableVibrateForCamera:Z

.field private static sEnableBacklight:Z

.field private static sEnableCmasAudio:Z

.field private static sEnableCmasVibrate:Z

.field private static sEnableNotification:Z

.field private static sEnablePreview:Z

.field private static sEnableVibrate:Z

.field private static sExistReportNotification:Z

.field private static sHandler:Landroid/os/Handler;

.field private static sIncreaseInt:I

.field private static final sMediaPlayerThreadLock:Ljava/lang/Object;

.field private static sNotificationCancelReceiver:Lcom/android/mms/transaction/MessagingNotification$OnCancelReceiver;

.field private static sNotificationDeletedReceiver:Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;

.field private static sNotificationOnDeleteIntent:Landroid/content/Intent;

.field private static sPduPersister:Lcom/google/android/mms/pdu/PduPersister;

.field private static sReminderAlertCount:Ljava/lang/String;

.field private static sReminderCount:Ljava/lang/String;

.field private static sRingtoneStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 184
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v6

    const-string v1, "sub"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "pri"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->MMS_STATUS_PROJECTION:[Ljava/lang/String;

    .line 189
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v6

    const-string v1, "subject"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pri"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    .line 205
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->SMS_THREAD_ID_PROJECTION:[Ljava/lang/String;

    .line 206
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->MMS_THREAD_ID_PROJECTION:[Ljava/lang/String;

    .line 208
    sput v3, Lcom/android/mms/transaction/MessagingNotification;->PRIORITY_SMS_NORMAL:I

    .line 209
    sput v6, Lcom/android/mms/transaction/MessagingNotification;->PRIORITY_SMS_HIGH:I

    .line 214
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->sCurrentlyDisplayedThreadLock:Ljava/lang/Object;

    .line 215
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->sMediaPlayerThreadLock:Ljava/lang/Object;

    .line 223
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v6

    const-string v1, "body"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->WPM_STATUS_PROJECTION:[Ljava/lang/String;

    .line 258
    new-instance v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfoComparator;

    invoke-direct {v0, v5}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfoComparator;-><init>(Lcom/android/mms/transaction/MessagingNotification$1;)V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->INFO_COMPARATOR:Lcom/android/mms/transaction/MessagingNotification$NotificationInfoComparator;

    .line 260
    const-string v0, "content://mms-sms/undelivered"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->UNDELIVERED_URI:Landroid/net/Uri;

    .line 261
    const-string v0, "content://logs/historys"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->LOG_HISTORY_URI:Landroid/net/Uri;

    .line 262
    const-string v0, "content://com.samsung.android.providers.context.log.exchange_message/write"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->LOG_HISTORY_ALWAYS_URI:Landroid/net/Uri;

    .line 263
    const-string v0, "content://logs/sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->LOG_SMS_URI:Landroid/net/Uri;

    .line 264
    const-string v0, "content://logs/mms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->LOG_MMS_URI:Landroid/net/Uri;

    .line 277
    const-string v0, "null"

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->lastMsgType:Ljava/lang/String;

    .line 278
    sput-object v5, Lcom/android/mms/transaction/MessagingNotification;->mCmasType:Ljava/lang/String;

    .line 280
    sput-boolean v3, Lcom/android/mms/transaction/MessagingNotification;->CMAS_Y:Z

    .line 281
    sput-boolean v3, Lcom/android/mms/transaction/MessagingNotification;->mIsOnce:Z

    .line 282
    sput-boolean v3, Lcom/android/mms/transaction/MessagingNotification;->mIsOnceCMAS:Z

    .line 283
    sput-boolean v3, Lcom/android/mms/transaction/MessagingNotification;->mIsCmasReminder:Z

    .line 286
    const/4 v0, -0x1

    sput v0, Lcom/android/mms/transaction/MessagingNotification;->mOldVolume:I

    .line 294
    sput-object v5, Lcom/android/mms/transaction/MessagingNotification;->mNotification:Landroid/app/Notification;

    .line 295
    sput-object v5, Lcom/android/mms/transaction/MessagingNotification;->mRunnable:Ljava/lang/Runnable;

    .line 296
    sput-boolean v3, Lcom/android/mms/transaction/MessagingNotification;->sEnablePreview:Z

    .line 297
    sput-boolean v4, Lcom/android/mms/transaction/MessagingNotification;->sEnableNotification:Z

    .line 298
    sput-object v5, Lcom/android/mms/transaction/MessagingNotification;->sReminderCount:Ljava/lang/String;

    .line 299
    sput-object v5, Lcom/android/mms/transaction/MessagingNotification;->sReminderAlertCount:Ljava/lang/String;

    .line 300
    sput-boolean v4, Lcom/android/mms/transaction/MessagingNotification;->sEnableVibrate:Z

    .line 301
    sput-boolean v4, Lcom/android/mms/transaction/MessagingNotification;->sEnableBacklight:Z

    .line 302
    sput-boolean v4, Lcom/android/mms/transaction/MessagingNotification;->sEnableCmasVibrate:Z

    .line 303
    sput-boolean v4, Lcom/android/mms/transaction/MessagingNotification;->sEnableCmasAudio:Z

    .line 304
    sput-object v5, Lcom/android/mms/transaction/MessagingNotification;->sRingtoneStr:Ljava/lang/String;

    .line 305
    sput-boolean v3, Lcom/android/mms/transaction/MessagingNotification;->sDisableVibrateForCamera:Z

    .line 306
    sput v3, Lcom/android/mms/transaction/MessagingNotification;->sIncreaseInt:I

    .line 313
    sput-boolean v3, Lcom/android/mms/transaction/MessagingNotification;->sExistReportNotification:Z

    .line 354
    new-instance v0, Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;

    invoke-direct {v0}, Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->sNotificationDeletedReceiver:Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;

    .line 355
    new-instance v0, Lcom/android/mms/transaction/MessagingNotification$OnCancelReceiver;

    invoke-direct {v0}, Lcom/android/mms/transaction/MessagingNotification$OnCancelReceiver;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->sNotificationCancelReceiver:Lcom/android/mms/transaction/MessagingNotification$OnCancelReceiver;

    .line 357
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->sHandler:Landroid/os/Handler;

    .line 4086
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "package"

    aput-object v1, v0, v3

    const-string v1, "class"

    aput-object v1, v0, v4

    const-string v1, "badgecount"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->BADGE_PROVIDER_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 362
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 363
    return-void
.end method

.method private static AddSstreamItem(Landroid/content/Context;ILjava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;Z)V
    .locals 19
    .parameter "context"
    .parameter "uniqueThreadCount"
    .parameter
    .parameter "mostRecentNotification"
    .parameter "isNew"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ">;",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 4264
    .local p2, notificationSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;>;"
    if-eqz p2, :cond_0

    invoke-interface/range {p2 .. p2}, Ljava/util/SortedSet;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 4265
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->deleteAllSstreamItems(Landroid/content/Context;)Z

    .line 4301
    :goto_0
    return-void

    .line 4270
    :cond_1
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    const-wide/high16 v12, 0x4079

    mul-double/2addr v5, v12

    double-to-int v5, v5

    add-int/lit16 v0, v5, 0x190

    move/from16 v18, v0

    .line 4271
    .local v18, width:I
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    const-wide/high16 v12, 0x4079

    mul-double/2addr v5, v12

    double-to-int v5, v5

    add-int/lit16 v0, v5, 0x190

    move/from16 v17, v0

    .line 4274
    .local v17, height:I
    new-instance v11, Lsstream/lib/objs/Image;

    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->getStreamBgImagePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-direct {v11, v5, v0, v1, v6}, Lsstream/lib/objs/Image;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 4275
    .local v11, image:Lsstream/lib/objs/Image;
    new-instance v10, Lsstream/lib/objs/Author;

    invoke-interface/range {p2 .. p2}, Ljava/util/SortedSet;->size()I

    move-result v5

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move/from16 v2, p4

    invoke-virtual {v0, v1, v5, v2}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getTitle(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v10, v5, v6}, Lsstream/lib/objs/Author;-><init>(Ljava/lang/String;Lsstream/lib/objs/Image;)V

    .line 4276
    .local v10, author:Lsstream/lib/objs/Author;
    invoke-interface/range {p2 .. p2}, Ljava/util/SortedSet;->size()I

    move-result v5

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v5}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    .line 4277
    .local v7, title:Ljava/lang/String;
    const/4 v8, 0x0

    .line 4278
    .local v8, body:Ljava/lang/String;
    const-string v4, ""

    .line 4280
    .local v4, msgId:Ljava/lang/String;
    const/4 v5, 0x1

    move/from16 v0, p1

    if-le v0, v5, :cond_2

    .line 4281
    const-string v4, "threadlist"

    .line 4288
    :goto_1
    new-instance v3, Lsstream/lib/objs/StoryItem;

    const-string v5, "samsung.personal"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    sget-object v9, Lsstream/lib/objs/StoryItem$StoryType;->MESSAGE:Lsstream/lib/objs/StoryItem$StoryType;

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getTime()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    const/4 v15, 0x0

    move/from16 v14, p1

    invoke-direct/range {v3 .. v15}, Lsstream/lib/objs/StoryItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsstream/lib/objs/StoryItem$StoryType;Lsstream/lib/objs/Author;Lsstream/lib/objs/Image;JILjava/lang/String;)V

    .line 4292
    .local v3, storyItem:Lsstream/lib/objs/StoryItem;
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->deleteAllSstreamItems(Landroid/content/Context;)Z

    .line 4295
    :try_start_0
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lsstream/lib/SStreamContentManager;->sendStoryItem(Landroid/content/Context;Lsstream/lib/objs/StoryItem;)V
    :try_end_0
    .catch Lsstream/lib/InvalidStoryItemException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4296
    :catch_0
    move-exception v16

    .line 4299
    .local v16, e:Lsstream/lib/InvalidStoryItemException;
    invoke-virtual/range {v16 .. v16}, Lsstream/lib/InvalidStoryItemException;->printStackTrace()V

    goto :goto_0

    .line 4283
    .end local v3           #storyItem:Lsstream/lib/objs/StoryItem;
    .end local v16           #e:Lsstream/lib/InvalidStoryItemException;
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getThreadId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method static ConvertTimeMillisFromSMS(Ljava/lang/String;)J
    .locals 20
    .parameter "date"

    .prologue
    .line 3308
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 3309
    .local v1, cal:Ljava/util/Calendar;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 3310
    .local v2, year:I
    const/4 v3, 0x0

    const/4 v8, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 3311
    .local v15, month:I
    const/4 v3, 0x3

    const/4 v8, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 3312
    .local v4, day:I
    const/4 v3, 0x6

    const/16 v8, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 3313
    .local v5, hour:I
    const/16 v3, 0x9

    const/16 v8, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 3314
    .local v6, minute:I
    const/4 v7, 0x0

    .line 3316
    .local v7, second:I
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    .line 3318
    .local v16, now_time:J
    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    .line 3319
    add-int/lit8 v3, v15, -0x1

    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    .line 3321
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v18

    .line 3323
    .local v18, set_time:J
    cmp-long v3, v16, v18

    if-gez v3, :cond_0

    .line 3325
    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    .line 3326
    add-int/lit8 v9, v2, -0x1

    add-int/lit8 v10, v15, -0x1

    move-object v8, v1

    move v11, v4

    move v12, v5

    move v13, v6

    move v14, v7

    invoke-virtual/range {v8 .. v14}, Ljava/util/Calendar;->set(IIIIII)V

    .line 3327
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v18

    .line 3330
    :cond_0
    return-wide v18
.end method

.method public static SetFolderBox(Landroid/content/Intent;I)Landroid/content/Intent;
    .locals 3
    .parameter "clickIntent"
    .parameter "boxtype"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1639
    packed-switch p1, :pswitch_data_0

    .line 1653
    :pswitch_0
    const-string v0, "from_noti_outbox"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1654
    const-string v0, "from_noti_wappush"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1655
    const-string v0, "from_noti_inbox"

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1658
    :goto_0
    return-object p0

    .line 1641
    :pswitch_1
    const-string v0, "from_noti_outbox"

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1642
    const-string v0, "from_noti_wappush"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1643
    const-string v0, "from_noti_inbox"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 1647
    :pswitch_2
    const-string v0, "from_noti_outbox"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1648
    const-string v0, "from_noti_wappush"

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1649
    const-string v0, "from_noti_inbox"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 1639
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic access$100(Landroid/content/Context;[J)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    invoke-static {p0, p1}, Lcom/android/mms/transaction/MessagingNotification;->getUndeliveredMessageCount(Landroid/content/Context;[J)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Landroid/content/Context;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->getNewCMASPresidentialCount(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100()Landroid/app/Notification;
    .locals 1

    .prologue
    .line 148
    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->mNotification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/Context;ZLjava/lang/CharSequence;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 148
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/mms/transaction/MessagingNotification;->updateDeliveryNotification(Landroid/content/Context;ZLjava/lang/CharSequence;J)V

    return-void
.end method

.method static synthetic access$300(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->addNotiIntentType(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 148
    sget-boolean v0, Lcom/android/mms/transaction/MessagingNotification;->sEnablePreview:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/mms/model/SlideshowModel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->getAttachmentTypeOnSlide(Lcom/android/mms/model/SlideshowModel;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/mms/model/SlideModel;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->getImage(Lcom/android/mms/model/SlideModel;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/model/SlideModel;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->getText(Lcom/android/mms/model/SlideModel;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    invoke-static {p0, p1}, Lcom/android/mms/transaction/MessagingNotification;->getAttachmentTypeString(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Landroid/content/Context;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->getDownloadFailedMessageCount(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method private static final addAlertNotificationInfos(Landroid/content/Context;Ljava/util/Set;Ljava/util/SortedSet;)V
    .locals 17
    .parameter "context"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3602
    .local p1, threads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .local p2, alertNotificationSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;>;"
    const-string v1, "Mms/MessagingNotification"

    const-string v4, "getCmasNewMessageNotificationInfo()"

    invoke-static {v1, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3604
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 3605
    .local v2, resolver:Landroid/content/ContentResolver;
    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/mms/transaction/MessagingNotification;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v5, "(address like \"%#CMAS#%\" AND read = 0 AND thread_id NOT NULL)"

    const/4 v6, 0x0

    const-string v7, "date desc"

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 3608
    .local v16, cursor:Landroid/database/Cursor;
    if-nez v16, :cond_1

    .line 3642
    :cond_0
    :goto_0
    return-void

    .line 3613
    :cond_1
    :try_start_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 3637
    if-eqz v16, :cond_0

    .line 3638
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 3639
    const/16 v16, 0x0

    goto :goto_0

    .line 3618
    :cond_2
    const/4 v1, 0x1

    :try_start_1
    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 3619
    .local v13, msgId:J
    const/4 v1, 0x4

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3620
    .local v5, address:Ljava/lang/String;
    const/4 v1, 0x5

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 3621
    .local v6, body:Ljava/lang/String;
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 3622
    .local v11, threadId:J
    const/4 v1, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 3624
    .local v8, timeMillis:J
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v1

    move-object/from16 v0, p0

    invoke-static {v0, v5, v8, v9, v1}, Lcom/android/mms/transaction/MessagingNotification;->initCmasAlertMessage(Landroid/content/Context;Ljava/lang/String;JI)V

    .line 3626
    invoke-static {}, Lcom/android/mms/MmsConfig;->isKORCMASFeatureEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v5, :cond_3

    const-string v1, "#CMAS#"

    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3627
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->getCmasServiceCategoryStringId(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3630
    :cond_3
    new-instance v3, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    const/4 v4, 0x3

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/16 v15, 0x81

    invoke-direct/range {v3 .. v15}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJJI)V

    .line 3632
    .local v3, info:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3633
    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 3635
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 3637
    if-eqz v16, :cond_0

    .line 3638
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 3639
    const/16 v16, 0x0

    goto :goto_0

    .line 3637
    .end local v3           #info:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    .end local v5           #address:Ljava/lang/String;
    .end local v6           #body:Ljava/lang/String;
    .end local v8           #timeMillis:J
    .end local v11           #threadId:J
    .end local v13           #msgId:J
    :catchall_0
    move-exception v1

    if-eqz v16, :cond_4

    .line 3638
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 3639
    const/16 v16, 0x0

    :cond_4
    throw v1
.end method

.method private static addBlankForTTS(Landroid/content/Context;Ljava/lang/String;Ljava/lang/StringBuffer;I)V
    .locals 6
    .parameter "context"
    .parameter "title"
    .parameter "ttsInfo"
    .parameter "defaultStringId"

    .prologue
    const/16 v5, 0x20

    .line 763
    invoke-static {p1}, Lcom/android/mms/transaction/MessagingNotification;->removeColon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 775
    .local v1, recipient:Ljava/lang/String;
    invoke-static {v1}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 777
    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_2

    .line 778
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 780
    .local v2, ttsModulation:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 781
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_0

    .line 782
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 783
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 780
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 786
    :cond_1
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 803
    .end local v0           #i:I
    .end local v2           #ttsModulation:Ljava/lang/StringBuffer;
    :goto_1
    return-void

    .line 789
    :cond_2
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 792
    :cond_3
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 794
    .restart local v2       #ttsModulation:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 795
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 796
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 797
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 794
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 799
    :cond_4
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 801
    :cond_5
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private static final addMmsNotificationInfos(Landroid/content/Context;Ljava/util/Set;Ljava/util/SortedSet;Landroid/content/Intent;)V
    .locals 20
    .parameter "context"
    .parameter
    .parameter
    .parameter "intent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1291
    .local p1, threads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .local p2, notificationSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1300
    .local v3, resolver:Landroid/content/ContentResolver;
    sget-object v4, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/mms/transaction/MessagingNotification;->MMS_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v6, "(msg_box=1 AND read=0 AND (m_type=130 OR m_type=132) AND thread_id NOT NULL)"

    const/4 v7, 0x0

    const-string v8, "date desc"

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 1303
    .local v17, cursor:Landroid/database/Cursor;
    if-nez v17, :cond_1

    .line 1342
    :cond_0
    :goto_0
    return-void

    .line 1308
    :cond_1
    :try_start_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 1332
    if-eqz v17, :cond_0

    .line 1333
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 1334
    const/16 v17, 0x0

    goto :goto_0

    .line 1313
    :cond_2
    const/4 v2, 0x1

    :try_start_1
    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 1315
    .local v14, msgId:J
    const/4 v2, 0x3

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v2, v5}, Lcom/android/mms/transaction/MessagingNotification;->getMmsSubject(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 1316
    .local v8, subject:Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1317
    .local v12, threadId:J
    const/4 v2, 0x2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-wide/16 v18, 0x3e8

    mul-long v5, v5, v18

    sget v2, Lcom/android/mms/transaction/MessagingNotification;->sIncreaseInt:I

    add-int/lit8 v7, v2, 0x1

    sput v7, Lcom/android/mms/transaction/MessagingNotification;->sIncreaseInt:I

    int-to-long v0, v2

    move-wide/from16 v18, v0

    add-long v9, v5, v18

    .line 1319
    .local v9, timeMillis:J
    const/16 v16, 0x81

    .line 1320
    .local v16, priority:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1321
    const/4 v2, 0x5

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 1324
    :cond_3
    new-instance v4, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, -0x1

    invoke-direct/range {v4 .. v16}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJJI)V

    .line 1326
    .local v4, info:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1327
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 1330
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 1332
    if-eqz v17, :cond_4

    .line 1333
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 1334
    const/16 v17, 0x0

    .line 1341
    :cond_4
    const-string v2, "com.android.mms.MMS_BR_FOR_VLINGO"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1332
    .end local v4           #info:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    .end local v8           #subject:Ljava/lang/String;
    .end local v9           #timeMillis:J
    .end local v12           #threadId:J
    .end local v14           #msgId:J
    .end local v16           #priority:I
    :catchall_0
    move-exception v2

    if-eqz v17, :cond_5

    .line 1333
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 1334
    const/16 v17, 0x0

    :cond_5
    throw v2
.end method

.method private static addNotiIntentType(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .parameter "intent"

    .prologue
    .line 4243
    const/high16 v0, 0x3400

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4247
    const-string v0, "noti"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4249
    return-object p0
.end method

.method private static final addSmsNotificationInfos(Landroid/content/Context;Ljava/util/Set;Ljava/util/SortedSet;)V
    .locals 1
    .parameter "context"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1464
    .local p1, threads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .local p2, notificationSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/mms/transaction/MessagingNotification;->addSmsNotificationInfos(Landroid/content/Context;Ljava/util/Set;Ljava/util/SortedSet;Z)V

    .line 1465
    return-void
.end method

.method private static final addSmsNotificationInfos(Landroid/content/Context;Ljava/util/Set;Ljava/util/SortedSet;Z)V
    .locals 23
    .parameter "context"
    .parameter
    .parameter
    .parameter "withCmas"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1468
    .local p1, threads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .local p2, notificationSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;>;"
    const/4 v3, 0x0

    .line 1469
    .local v3, resolver:Landroid/content/ContentResolver;
    const/16 v17, 0x0

    .line 1470
    .local v17, cursor:Landroid/database/Cursor;
    const-string v2, "Mms/MessagingNotification"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getSmsNewMessageNotificationInfo(),withCmas= "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    if-eqz p3, :cond_1

    .line 1473
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1474
    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/mms/transaction/MessagingNotification;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v6, "type = 1 AND address not like \"%#CMAS#%\" AND read = 0 AND thread_id NOT NULL"

    const/4 v7, 0x0

    const-string v8, "date desc"

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 1482
    :goto_0
    if-nez v17, :cond_2

    .line 1538
    :cond_0
    :goto_1
    return-void

    .line 1477
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1478
    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/mms/transaction/MessagingNotification;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v6, "(type = 1 AND read = 0 AND thread_id NOT NULL)"

    const/4 v7, 0x0

    const-string v8, "date desc"

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    goto :goto_0

    .line 1487
    :cond_2
    :try_start_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_3

    .line 1533
    if-eqz v17, :cond_0

    .line 1534
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 1535
    const/16 v17, 0x0

    goto :goto_1

    .line 1491
    :cond_3
    const-wide/16 v14, 0x0

    .line 1492
    .local v14, msgId:J
    const/4 v6, 0x0

    .line 1493
    .local v6, address:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1494
    .local v7, body:Ljava/lang/String;
    const-wide/16 v12, 0x0

    .line 1495
    .local v12, threadId:J
    const-wide/16 v9, 0x0

    .line 1496
    .local v9, timeMillis:J
    const/4 v5, 0x1

    .line 1499
    .local v5, msgType:I
    :cond_4
    const/4 v2, 0x1

    :try_start_1
    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 1500
    const/4 v2, 0x4

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1501
    const/4 v2, 0x5

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1502
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1503
    const/4 v2, 0x2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    sget v2, Lcom/android/mms/transaction/MessagingNotification;->sIncreaseInt:I

    add-int/lit8 v8, v2, 0x1

    sput v8, Lcom/android/mms/transaction/MessagingNotification;->sIncreaseInt:I

    int-to-long v0, v2

    move-wide/from16 v21, v0

    add-long v9, v19, v21

    .line 1505
    const-string v2, "CBmessages"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1506
    const v2, 0x7f0c00fb

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1507
    const/4 v5, 0x4

    .line 1512
    :goto_2
    const/16 v16, 0x81

    .line 1514
    .local v16, priority:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1515
    const/4 v2, 0x6

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 1516
    sget v2, Lcom/android/mms/transaction/MessagingNotification;->PRIORITY_SMS_NORMAL:I

    move/from16 v0, v16

    if-ne v0, v2, :cond_7

    .line 1517
    const/16 v16, 0x81

    .line 1523
    :cond_5
    :goto_3
    new-instance v4, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    const/4 v8, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v16}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJJI)V

    .line 1525
    .local v4, info:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1526
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 1529
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-nez v2, :cond_4

    .line 1533
    if-eqz v17, :cond_0

    .line 1534
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 1535
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 1509
    .end local v4           #info:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    .end local v16           #priority:I
    :cond_6
    const/4 v5, 0x1

    goto :goto_2

    .line 1519
    .restart local v16       #priority:I
    :cond_7
    const/16 v16, 0x82

    goto :goto_3

    .line 1530
    .end local v5           #msgType:I
    .end local v6           #address:Ljava/lang/String;
    .end local v7           #body:Ljava/lang/String;
    .end local v9           #timeMillis:J
    .end local v12           #threadId:J
    .end local v14           #msgId:J
    .end local v16           #priority:I
    :catch_0
    move-exception v18

    .line 1531
    .local v18, e:Ljava/lang/NullPointerException;
    :try_start_2
    const-string v2, "Mms/MessagingNotification"

    const-string v8, "NullPointerException - caught"

    invoke-static {v2, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1533
    if-eqz v17, :cond_0

    .line 1534
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 1535
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 1533
    .end local v18           #e:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v2

    if-eqz v17, :cond_8

    .line 1534
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 1535
    const/16 v17, 0x0

    :cond_8
    throw v2
.end method

.method private static final addWpmNotificationInfos(Landroid/content/Context;Ljava/util/Set;Ljava/util/SortedSet;)V
    .locals 17
    .parameter "context"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1414
    .local p1, threads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .local p2, notificationSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1415
    .local v2, resolver:Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/mms/ui/MessageUtils;->WAP_PUSH_MESSAGE_BY_ID_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/mms/transaction/MessagingNotification;->WPM_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v5, "(read = 0 AND thread_id NOT NULL)"

    const/4 v6, 0x0

    const-string v7, "date desc"

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 1419
    .local v16, cursor:Landroid/database/Cursor;
    if-nez v16, :cond_1

    .line 1460
    :cond_0
    :goto_0
    return-void

    .line 1424
    :cond_1
    :try_start_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 1455
    if-eqz v16, :cond_0

    .line 1456
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1457
    const/16 v16, 0x0

    goto :goto_0

    .line 1427
    :cond_2
    const/4 v5, 0x0

    .line 1428
    .local v5, address:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1429
    .local v6, body:Ljava/lang/String;
    const-wide/16 v11, 0x0

    .line 1430
    .local v11, threadId:J
    const-wide/16 v8, 0x0

    .line 1431
    .local v8, timeMillis:J
    const-wide/16 v13, 0x0

    .line 1435
    .local v13, msgId:J
    :cond_3
    const v1, 0x7f0c0161

    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1436
    const/4 v1, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1437
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1438
    const/4 v1, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1439
    const/4 v1, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 1443
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1444
    const-string v1, "wappush"

    sput-object v1, Lcom/android/mms/transaction/MessagingNotification;->lastMsgType:Ljava/lang/String;

    .line 1449
    :cond_4
    new-instance v3, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/16 v15, 0x81

    invoke-direct/range {v3 .. v15}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJJI)V

    .line 1451
    .local v3, info:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1452
    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 1453
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_3

    .line 1455
    if-eqz v16, :cond_0

    .line 1456
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1457
    const/16 v16, 0x0

    goto :goto_0

    .line 1455
    .end local v3           #info:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    .end local v5           #address:Ljava/lang/String;
    .end local v6           #body:Ljava/lang/String;
    .end local v8           #timeMillis:J
    .end local v11           #threadId:J
    .end local v13           #msgId:J
    :catchall_0
    move-exception v1

    if-eqz v16, :cond_5

    .line 1456
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1457
    const/16 v16, 0x0

    :cond_5
    throw v1
.end method

.method public static blockingUpdateAllNotifications(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 843
    const-string v0, "Mms/MessagingNotification"

    const-string v1, "blockingUpdateAllNotifications()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    const-wide/16 v0, -0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 846
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateSendFailedNotification(Landroid/content/Context;)V

    .line 847
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->updateDownloadFailedNotification(Landroid/content/Context;)V

    .line 848
    return-void
.end method

.method public static blockingUpdateAllNotificationsForMarkAsRead(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 851
    const-string v0, "Mms/MessagingNotification"

    const-string v1, "blockingUpdateAllNotificationsForMarkAsRead()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    const-wide/16 v0, -0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 854
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateSendFailedNotification(Landroid/content/Context;)V

    .line 855
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->updateDownloadFailedNotification(Landroid/content/Context;)V

    .line 856
    return-void
.end method

.method public static blockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V
    .locals 21
    .parameter "context"
    .parameter "newMsgThreadId"
    .parameter "isStatusMessage"

    .prologue
    .line 529
    const-string v17, "Mms/MessagingNotification"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "blockingUpdateNewMessageIndicator(), threadId ="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ",isStatusMessage="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->loadNotificationPref(Landroid/content/Context;)V

    .line 549
    new-instance v14, Ljava/util/TreeSet;

    sget-object v17, Lcom/android/mms/transaction/MessagingNotification;->INFO_COMPARATOR:Lcom/android/mms/transaction/MessagingNotification$NotificationInfoComparator;

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 550
    .local v14, notificationSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;>;"
    new-instance v15, Ljava/util/HashSet;

    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 552
    .local v15, threads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 553
    .local v9, intentForVlingo:Landroid/content/Intent;
    const/16 v17, 0x0

    sput v17, Lcom/android/mms/transaction/MessagingNotification;->sIncreaseInt:I

    .line 555
    move-object/from16 v0, p0

    invoke-static {v0, v15, v14, v9}, Lcom/android/mms/transaction/MessagingNotification;->addMmsNotificationInfos(Landroid/content/Context;Ljava/util/Set;Ljava/util/SortedSet;Landroid/content/Intent;)V

    .line 556
    move-object/from16 v0, p0

    invoke-static {v0, v15, v14}, Lcom/android/mms/transaction/MessagingNotification;->addWpmNotificationInfos(Landroid/content/Context;Ljava/util/Set;Ljava/util/SortedSet;)V

    .line 558
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v17

    if-nez v17, :cond_d

    .line 559
    move-object/from16 v0, p0

    invoke-static {v0, v15, v14}, Lcom/android/mms/transaction/MessagingNotification;->addSmsNotificationInfos(Landroid/content/Context;Ljava/util/Set;Ljava/util/SortedSet;)V

    .line 564
    :goto_0
    move-wide/from16 v0, p1

    invoke-static {v0, v1, v14}, Lcom/android/mms/transaction/MessagingNotification;->findMostRecentNotification(JLjava/util/SortedSet;)Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    move-result-object v13

    .line 566
    .local v13, mostRecentNotification:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    const/4 v10, 0x0

    .line 567
    .local v10, isNew:Z
    if-eqz v13, :cond_1

    .line 568
    invoke-virtual {v13}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getThreadId()J

    move-result-wide v17

    cmp-long v17, p1, v17

    if-eqz v17, :cond_0

    const-wide/16 v17, -0x1

    cmp-long v17, p1, v17

    if-eqz v17, :cond_0

    const-wide/16 v17, -0x3

    cmp-long v17, p1, v17

    if-nez v17, :cond_e

    :cond_0
    const/4 v10, 0x1

    .line 574
    :cond_1
    :goto_1
    new-instance v5, Ljava/util/TreeSet;

    sget-object v17, Lcom/android/mms/transaction/MessagingNotification;->INFO_COMPARATOR:Lcom/android/mms/transaction/MessagingNotification$NotificationInfoComparator;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 575
    .local v5, alertNotificationSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;>;"
    new-instance v6, Ljava/util/HashSet;

    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-direct {v6, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 577
    .local v6, aletThreads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    invoke-static {v0, v6, v5}, Lcom/android/mms/transaction/MessagingNotification;->addAlertNotificationInfos(Landroid/content/Context;Ljava/util/Set;Ljava/util/SortedSet;)V

    .line 578
    move-wide/from16 v0, p1

    invoke-static {v0, v1, v5}, Lcom/android/mms/transaction/MessagingNotification;->findMostRecentNotification(JLjava/util/SortedSet;)Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    move-result-object v12

    .line 580
    .local v12, mostRecentAlertNotification:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    const/4 v11, 0x0

    .line 581
    .local v11, isNewCmas:Z
    if-eqz v12, :cond_3

    .line 582
    invoke-virtual {v12}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getThreadId()J

    move-result-wide v17

    cmp-long v17, p1, v17

    if-eqz v17, :cond_2

    const-wide/16 v17, -0x1

    cmp-long v17, p1, v17

    if-nez v17, :cond_f

    :cond_2
    const-wide/16 v17, -0x3

    cmp-long v17, p1, v17

    if-eqz v17, :cond_f

    const/4 v11, 0x1

    .line 586
    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_4

    invoke-interface {v14}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 588
    :cond_4
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotificationAlert;->stopAlertSoundOnCall()V

    .line 593
    :cond_5
    invoke-static/range {p0 .. p0}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    .line 595
    invoke-interface {v14}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_10

    .line 596
    const/16 v17, 0x7b

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 598
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSstream()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 599
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->deleteAllSstreamItems(Landroid/content/Context;)Z

    .line 606
    :cond_6
    :goto_3
    invoke-interface {v5}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_11

    .line 607
    const/16 v17, 0x41c

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 613
    :goto_4
    invoke-interface {v14}, Ljava/util/SortedSet;->size()I

    move-result v17

    invoke-interface {v5}, Ljava/util/SortedSet;->size()I

    move-result v18

    add-int v17, v17, v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->setBadge(Landroid/content/Context;I)V

    .line 615
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->updateAllHistoryAsRead(Landroid/content/Context;)V

    .line 617
    invoke-interface {v15}, Ljava/util/Set;->size()I

    move-result v17

    if-nez v17, :cond_7

    .line 618
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->cancelAlarm(Landroid/content/Context;)V

    .line 621
    :cond_7
    sget-boolean v17, Lcom/android/mms/transaction/MessagingNotification;->mIsCmasReminder:Z

    if-eqz v17, :cond_8

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v17

    if-eqz v17, :cond_9

    :cond_8
    const-wide/16 v17, -0x3

    cmp-long v17, p1, v17

    if-nez v17, :cond_a

    .line 623
    :cond_9
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->cancelCMASAlarm(Landroid/content/Context;)V

    .line 629
    :cond_a
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->getSmsNewDeliveryInfo(Landroid/content/Context;)Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;

    move-result-object v8

    .line 630
    .local v8, delivery:Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;
    if-eqz v8, :cond_b

    .line 631
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v8, v0, v1}, Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;->deliver(Landroid/content/Context;Z)V

    .line 634
    :cond_b
    if-eqz v10, :cond_15

    .line 635
    sget-boolean v17, Lcom/android/mms/transaction/MessagingNotification;->sEnableNotification:Z

    if-eqz v17, :cond_c

    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->isBlockingModeEnabled(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 712
    :cond_c
    :goto_5
    return-void

    .line 561
    .end local v5           #alertNotificationSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;>;"
    .end local v6           #aletThreads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v8           #delivery:Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;
    .end local v10           #isNew:Z
    .end local v11           #isNewCmas:Z
    .end local v12           #mostRecentAlertNotification:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    .end local v13           #mostRecentNotification:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    :cond_d
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v15, v14, v1}, Lcom/android/mms/transaction/MessagingNotification;->addSmsNotificationInfos(Landroid/content/Context;Ljava/util/Set;Ljava/util/SortedSet;Z)V

    goto/16 :goto_0

    .line 568
    .restart local v10       #isNew:Z
    .restart local v13       #mostRecentNotification:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    :cond_e
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 582
    .restart local v5       #alertNotificationSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;>;"
    .restart local v6       #aletThreads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .restart local v11       #isNewCmas:Z
    .restart local v12       #mostRecentAlertNotification:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    :cond_f
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 602
    :cond_10
    const-string v17, "Mms/MessagingNotification"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Message count = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v14}, Ljava/util/SortedSet;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " newMsgThreadId = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " unique = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v15}, Ljava/util/Set;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    invoke-interface {v15}, Ljava/util/Set;->size()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v10, v1, v14, v13}, Lcom/android/mms/transaction/MessagingNotification;->updateNotification(Landroid/content/Context;ZILjava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;)V

    goto/16 :goto_3

    .line 609
    :cond_11
    const-string v17, "Mms/MessagingNotification"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Alert count = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v5}, Ljava/util/SortedSet;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " newMsgThreadId = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " unique = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v11, v1, v5, v12}, Lcom/android/mms/transaction/MessagingNotification;->updateAlertNotification(Landroid/content/Context;ZILjava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;)V

    goto/16 :goto_4

    .line 639
    .restart local v8       #delivery:Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;
    :cond_12
    move-object/from16 v0, p0

    invoke-static {v0, v14, v5, v13}, Lcom/android/mms/accessory/WatchRelay;->sendReceivedMsgIntent(Landroid/content/Context;Ljava/util/SortedSet;Ljava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;)V

    .line 644
    invoke-virtual {v13}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getMsgType()I

    move-result v17

    invoke-virtual {v13}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getMsgId()J

    move-result-wide v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/util/TelephonyDBUtils;->isReadMsg(Landroid/content/Context;IJ)Z

    move-result v17

    if-eqz v17, :cond_13

    .line 645
    const-string v17, "Mms/MessagingNotification"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "isReadMsg() "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v13}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getMsgId()J

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    invoke-virtual {v13}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getMsgType()I

    move-result v17

    invoke-virtual {v13}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getMsgId()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/mms/accessory/WatchRelay;->sendReadMsgIntent(Landroid/content/Context;II)V

    .line 654
    :cond_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 655
    const-string v17, "Mms/MessagingNotification"

    const-string v18, "sendBroadcast(intentForVlingo): "

    invoke-static/range {v17 .. v18}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    invoke-interface {v14}, Ljava/util/SortedSet;->size()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v13, v1, v10}, Lcom/android/mms/transaction/MessagingNotification;->makeReadOutNewMessageString(Landroid/content/Context;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;IZ)Ljava/lang/StringBuffer;

    move-result-object v16

    .line 660
    .local v16, ttsInfo:Ljava/lang/StringBuffer;
    if-eqz v16, :cond_c

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_c

    .line 663
    new-instance v4, Landroid/content/Intent;

    const-class v17, Lcom/android/mms/transaction/MessagingNotificationAlert;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 664
    .local v4, alertIntent:Landroid/content/Intent;
    const-string v17, "TTS_INFO"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 666
    invoke-static {}, Lcom/android/mms/MmsConfig;->isEnabledIndividualRingtone()Z

    move-result v17

    if-eqz v17, :cond_14

    .line 667
    move-object/from16 v0, p0

    invoke-virtual {v13, v0, v10}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getContact(Landroid/content/Context;Z)Lcom/android/mms/data/Contact;

    move-result-object v7

    .line 668
    .local v7, contact:Lcom/android/mms/data/Contact;
    if-eqz v7, :cond_18

    .line 669
    const-string v17, "SenderRingtonePath"

    invoke-virtual {v7}, Lcom/android/mms/data/Contact;->getRingtone()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 675
    .end local v7           #contact:Lcom/android/mms/data/Contact;
    :cond_14
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 679
    .end local v4           #alertIntent:Landroid/content/Intent;
    .end local v16           #ttsInfo:Ljava/lang/StringBuffer;
    :cond_15
    if-eqz v11, :cond_c

    .line 680
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v17

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_16

    sget-boolean v17, Lcom/android/mms/transaction/MessagingNotification;->sEnableNotification:Z

    if-nez v17, :cond_16

    .line 681
    invoke-interface {v5}, Ljava/util/SortedSet;->size()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v12, v1, v11}, Lcom/android/mms/transaction/MessagingNotification;->isPresidentialCmas(Landroid/content/Context;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;IZ)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 686
    :cond_16
    move-object/from16 v0, p0

    invoke-static {v0, v14, v5, v12}, Lcom/android/mms/accessory/WatchRelay;->sendReceivedMsgIntent(Landroid/content/Context;Ljava/util/SortedSet;Ljava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;)V

    .line 691
    invoke-virtual {v12}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getMsgType()I

    move-result v17

    invoke-virtual {v12}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getMsgId()J

    move-result-wide v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/util/TelephonyDBUtils;->isReadMsg(Landroid/content/Context;IJ)Z

    move-result v17

    if-eqz v17, :cond_17

    .line 692
    const-string v17, "Mms/MessagingNotification"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "isReadMsg() "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v12}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getMsgId()J

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    invoke-virtual {v12}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getMsgType()I

    move-result v17

    invoke-virtual {v12}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getMsgId()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/mms/accessory/WatchRelay;->sendReadMsgIntent(Landroid/content/Context;II)V

    .line 700
    :cond_17
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 701
    const-string v17, "Mms/MessagingNotification"

    const-string v18, "sendBroadcast(intentForVlingo): "

    invoke-static/range {v17 .. v18}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    invoke-interface {v5}, Ljava/util/SortedSet;->size()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v12, v1, v11}, Lcom/android/mms/transaction/MessagingNotification;->makeReadOutNewMessageString(Landroid/content/Context;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;IZ)Ljava/lang/StringBuffer;

    move-result-object v16

    .line 704
    .restart local v16       #ttsInfo:Ljava/lang/StringBuffer;
    if-eqz v16, :cond_c

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_c

    .line 707
    new-instance v4, Landroid/content/Intent;

    const-class v17, Lcom/android/mms/transaction/MessagingNotificationAlert;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 708
    .restart local v4       #alertIntent:Landroid/content/Intent;
    const-string v17, "TTS_INFO"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 709
    const-string v17, "IsCMASTyep"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 710
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_5

    .line 671
    .restart local v7       #contact:Lcom/android/mms/data/Contact;
    :cond_18
    const-string v17, "SenderRingtonePath"

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_6
.end method

.method protected static buildTickerAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 8
    .parameter "context"
    .parameter "address"
    .parameter "subject"
    .parameter "body"

    .prologue
    const/16 v7, 0xd

    const/16 v6, 0xa

    const/16 v5, 0x20

    .line 3926
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 3928
    sget-object v1, Lcom/android/mms/transaction/MessagingNotification;->mCmasType:Ljava/lang/String;

    .line 3929
    .local v1, displayAddress:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3930
    .local v0, buf:Ljava/lang/StringBuilder;
    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3932
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 3933
    .local v2, offset:I
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3934
    invoke-virtual {p2, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    .line 3935
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3936
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3939
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3940
    invoke-virtual {p3, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p3

    .line 3941
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3944
    :cond_1
    new-instance v3, Landroid/text/SpannableString;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 3945
    .local v3, spanText:Landroid/text/SpannableString;
    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v5, 0x0

    const/16 v6, 0x21

    invoke-virtual {v3, v4, v5, v2, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 3947
    return-object v3
.end method

.method protected static buildTickerMessage(Landroid/content/Context;Ljava/lang/String;Lcom/android/mms/data/Contact;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 9
    .parameter "context"
    .parameter "address"
    .parameter "contact"
    .parameter "subject"
    .parameter "body"

    .prologue
    const/16 v8, 0xd

    const/16 v7, 0xa

    const/16 v6, 0x20

    .line 2341
    const/4 v1, 0x0

    .line 2343
    .local v1, displayAddress:Ljava/lang/String;
    const-string v4, "CBmessages"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2345
    const v4, 0x7f0c00fb

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2368
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    if-nez v1, :cond_7

    const-string v4, ""

    :goto_1
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2370
    .local v0, buf:Ljava/lang/StringBuilder;
    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u200e"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2372
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 2373
    .local v2, offset:I
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2374
    invoke-virtual {p3, v7, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v8, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p3

    .line 2375
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2376
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2379
    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2380
    invoke-virtual {p4, v7, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v8, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p4

    .line 2381
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2384
    :cond_2
    new-instance v3, Landroid/text/SpannableString;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2385
    .local v3, spanText:Landroid/text/SpannableString;
    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v5, 0x0

    const/16 v6, 0x21

    invoke-virtual {v3, v4, v5, v2, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 2387
    return-object v3

    .line 2346
    .end local v0           #buf:Ljava/lang/StringBuilder;
    .end local v2           #offset:I
    .end local v3           #spanText:Landroid/text/SpannableString;
    :cond_3
    const-string v4, "Pushmessage"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2348
    const v4, 0x7f0c0161

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2349
    :cond_4
    const-string v4, "#CMAS#CMASALL"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2351
    const v4, 0x7f0c01b9

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2353
    :cond_5
    if-eqz p2, :cond_6

    .line 2354
    invoke-virtual {p2}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2357
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2358
    const v4, 0x7f0c013b

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 2368
    :cond_7
    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v8, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1
.end method

.method public static cancelAlarm(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 1551
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1552
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/mms/transaction/AlarmReceiver;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1553
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "MessagingNotification"

    const-string v4, "remove alarm"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1554
    const/4 v3, 0x0

    const/high16 v4, 0x800

    invoke-static {p0, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1555
    .local v2, sender:Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1556
    return-void
.end method

.method public static cancelCMASAlarm(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/high16 v6, 0x4000

    const/4 v5, 0x0

    .line 1559
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1560
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/mms/transaction/CmasAlarmReceiver;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1561
    .local v1, intent:Landroid/content/Intent;
    const/4 v2, 0x0

    .line 1562
    .local v2, sender:Landroid/app/PendingIntent;
    const-string v3, "MessagingNotification"

    const-string v4, "remove CMAS alarm"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1564
    sget-boolean v3, Lcom/android/mms/transaction/MessagingNotification;->mIsOnceCMAS:Z

    if-eqz v3, :cond_0

    .line 1565
    const-string v3, "ONCECMAS"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1566
    invoke-static {p0, v5, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1576
    :goto_0
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1577
    sput-boolean v5, Lcom/android/mms/transaction/MessagingNotification;->mIsOnceCMAS:Z

    .line 1578
    sput-boolean v5, Lcom/android/mms/transaction/MessagingNotification;->mIsCmasReminder:Z

    .line 1579
    return-void

    .line 1568
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isTMOCMASFeatureEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1569
    const-string v3, "TMOCMAS"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1570
    invoke-static {p0, v5, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    goto :goto_0

    .line 1573
    :cond_1
    const/high16 v3, 0x800

    invoke-static {p0, v5, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    goto :goto_0
.end method

.method public static cancelCmasVibrator()V
    .locals 2

    .prologue
    .line 1613
    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->sCmasVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 1614
    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->sCmasVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 1615
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->sCmasVibrator:Landroid/os/Vibrator;

    .line 1616
    const-string v0, "Mms/MessagingNotification"

    const-string v1, "##cancelNotification called  cmasVibrator.cancel()##"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1618
    :cond_0
    return-void
.end method

.method public static cancelNotification(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "notificationId"

    .prologue
    const/4 v4, 0x0

    .line 1582
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 1584
    .local v1, nm:Landroid/app/NotificationManager;
    const/16 v2, 0x378

    if-ne p1, v2, :cond_0

    .line 1585
    sget-boolean v2, Lcom/android/mms/transaction/MessagingNotification;->sExistReportNotification:Z

    if-eqz v2, :cond_0

    .line 1586
    sput-boolean v4, Lcom/android/mms/transaction/MessagingNotification;->sExistReportNotification:Z

    .line 1587
    const/4 v2, 0x5

    invoke-static {p0, v2, v4}, Lcom/android/mms/accessory/WatchRelay;->sendReadMsgIntent(Landroid/content/Context;II)V

    .line 1591
    :cond_0
    invoke-virtual {v1, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1594
    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_3

    .line 1595
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->releaseMediaPlayer()V

    .line 1596
    const-string v2, "Mms/MessagingNotification"

    const-string v3, "##cancelNotification called  mMediaPlayer.release()##"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1597
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_3

    .line 1598
    :cond_1
    sget v2, Lcom/android/mms/transaction/MessagingNotification;->mOldVolume:I

    if-ltz v2, :cond_3

    .line 1599
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1600
    .local v0, audioManager:Landroid/media/AudioManager;
    if-eqz v0, :cond_2

    .line 1601
    const/4 v2, 0x3

    sget v3, Lcom/android/mms/transaction/MessagingNotification;->mOldVolume:I

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1603
    :cond_2
    const/4 v2, -0x1

    sput v2, Lcom/android/mms/transaction/MessagingNotification;->mOldVolume:I

    .line 1607
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :cond_3
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->cancelCmasVibrator()V

    .line 1609
    const-string v2, "Mms/MessagingNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancelNotification(),notificationId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1610
    return-void
.end method

.method public static cancelNotificationOnly(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "notificationId"

    .prologue
    .line 4253
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 4255
    .local v0, nm:Landroid/app/NotificationManager;
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 4258
    const-string v1, "Mms/MessagingNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelNotificationOnly(),notificationId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4259
    return-void
.end method

.method public static checkBadgeCount(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 4115
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4117
    .local v1, resolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/mms/data/Conversation;->getUnreadMessageCount(Landroid/content/ContentResolver;)I

    move-result v2

    .line 4118
    .local v2, unreadCount:I
    invoke-static {v1}, Lcom/android/mms/transaction/MessagingNotification;->getBadgeCount(Landroid/content/ContentResolver;)I

    move-result v0

    .line 4120
    .local v0, badgeCount:I
    const-string v3, "Mms/MessagingNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkBadgeCount unreadCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " badgeCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4121
    if-eq v2, v0, :cond_0

    .line 4122
    const-wide/16 v3, -0x2

    const/4 v5, 0x0

    invoke-static {p0, v3, v4, v5}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 4124
    :cond_0
    return-void
.end method

.method private static createMultipleNotification(Landroid/content/Context;Ljava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;ILandroid/app/Notification$Builder;Z)Landroid/app/Notification;
    .locals 15
    .parameter "context"
    .parameter
    .parameter "mostRecentNotification"
    .parameter "messageCount"
    .parameter "noti"
    .parameter "isNew"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ">;",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            "I",
            "Landroid/app/Notification$Builder;",
            "Z)",
            "Landroid/app/Notification;"
        }
    .end annotation

    .prologue
    .line 1932
    .local p1, notificationSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1934
    .local v5, mostRecentNotifPerThread:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;>;"
    new-instance v10, Ljava/util/HashSet;

    move/from16 v0, p3

    invoke-direct {v10, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 1936
    .local v10, uniqueThreads:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 1937
    .local v8, notifications:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1938
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    .line 1939
    .local v7, notificationInfo:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    iget-wide v11, v7, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mThreadId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 1940
    iget-wide v11, v7, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mThreadId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1941
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1946
    .end local v7           #notificationInfo:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    :cond_1
    sget-boolean v11, Lcom/android/mms/transaction/MessagingNotification;->sEnablePreview:Z

    if-nez v11, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->isCmas()Z

    move-result v11

    if-nez v11, :cond_2

    .line 1947
    const v11, 0x7f0c037b

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {p0, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1948
    invoke-virtual/range {p4 .. p4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    .line 1975
    .local v6, notification:Landroid/app/Notification;
    :goto_1
    return-object v6

    .line 1952
    .end local v6           #notification:Landroid/app/Notification;
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1953
    .local v9, uniqueThreadMessageCount:I
    const/16 v11, 0x8

    invoke-static {v11, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1957
    .local v4, maxMessages:I
    move/from16 v0, p5

    invoke-static {p0, v5, v4, v0}, Lcom/android/mms/transaction/MessagingNotification;->formatSenders(Landroid/content/Context;Ljava/util/ArrayList;IZ)Ljava/lang/CharSequence;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1958
    new-instance v2, Landroid/app/Notification$InboxStyle;

    move-object/from16 v0, p4

    invoke-direct {v2, v0}, Landroid/app/Notification$InboxStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 1967
    .local v2, inboxStyle:Landroid/app/Notification$InboxStyle;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v4, :cond_3

    .line 1968
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    .line 1970
    .local v3, info:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    move/from16 v0, p5

    invoke-virtual {v3, p0, v4, v0}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->formatInboxMessage(Landroid/content/Context;IZ)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 1967
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1973
    .end local v3           #info:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    :cond_3
    invoke-virtual {v2}, Landroid/app/Notification$InboxStyle;->build()Landroid/app/Notification;

    move-result-object v6

    .restart local v6       #notification:Landroid/app/Notification;
    goto :goto_1
.end method

.method private static createSingleNotification(Landroid/content/Context;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;Landroid/app/Notification$Builder;)Landroid/app/Notification;
    .locals 6
    .parameter "context"
    .parameter "mostRecentNotification"
    .parameter "noti"

    .prologue
    const/4 v5, 0x1

    .line 2047
    sget-boolean v2, Lcom/android/mms/transaction/MessagingNotification;->sEnablePreview:Z

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->isCmas()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2048
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->isHebrew(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2049
    const v2, 0x7f0c037c

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 2054
    :goto_0
    invoke-virtual {p2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 2075
    .local v1, notification:Landroid/app/Notification;
    :goto_1
    return-object v1

    .line 2052
    .end local v1           #notification:Landroid/app/Notification;
    :cond_0
    const v2, 0x7f0c037b

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 2056
    :cond_1
    invoke-virtual {p1, p0, v5}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->formatBigMessage(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 2057
    invoke-virtual {p1, p0, v5}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getAttachmentBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2058
    .local v0, attachmentBitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 2060
    new-instance v2, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v2, p2}, Landroid/app/Notification$BigPictureStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v2, v0}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v2

    invoke-virtual {p1, p0, v5}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->formatPictureMessage(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$BigPictureStyle;->build()Landroid/app/Notification;

    move-result-object v1

    .restart local v1       #notification:Landroid/app/Notification;
    goto :goto_1

    .line 2066
    .end local v1           #notification:Landroid/app/Notification;
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFingerprintService()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/android/mms/ui/SecretModeHandler;->mIsSecretMode:Z

    if-nez v2, :cond_3

    iget-wide v2, p1, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mThreadId:J

    invoke-static {v2, v3}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->isSecretMode(J)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2068
    new-instance v2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v2, p2}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v1

    .restart local v1       #notification:Landroid/app/Notification;
    goto :goto_1

    .line 2071
    .end local v1           #notification:Landroid/app/Notification;
    :cond_3
    new-instance v2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v2, p2}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {p1, p0, v5}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->formatBigMessage(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v1

    .restart local v1       #notification:Landroid/app/Notification;
    goto :goto_1
.end method

.method private static createUniqueMultipleNotification(Landroid/content/Context;Ljava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;ILandroid/app/Notification$Builder;Landroid/graphics/Bitmap;)Landroid/app/Notification;
    .locals 11
    .parameter "context"
    .parameter
    .parameter "mostRecentNotification"
    .parameter "messageCount"
    .parameter "noti"
    .parameter "avatar"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ">;",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            "I",
            "Landroid/app/Notification$Builder;",
            "Landroid/graphics/Bitmap;",
            ")",
            "Landroid/app/Notification;"
        }
    .end annotation

    .prologue
    .line 1986
    .local p1, notificationSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;>;"
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1988
    .local v1, buf:Landroid/text/SpannableStringBuilder;
    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFingerprintService()Z

    move-result v7

    if-eqz v7, :cond_2

    sget-boolean v7, Lcom/android/mms/ui/SecretModeHandler;->mIsSecretMode:Z

    if-nez v7, :cond_2

    iget-wide v7, p2, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mThreadId:J

    invoke-static {v7, v8}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->isSecretMode(J)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1990
    const v7, 0x7f0c037b

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2012
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasNotiDateDescription()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    invoke-virtual {p2}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->isCmas()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2013
    new-instance v0, Ljava/lang/StringBuffer;

    sget-object v7, Lcom/android/mms/transaction/MessagingNotification;->mDate:Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2014
    .local v0, CMASDescription:Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v7

    const/4 v8, 0x6

    if-eq v7, v8, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v7

    const/4 v8, 0x7

    if-eq v7, v8, :cond_1

    .line 2015
    const-string v7, "     -CMAS"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2017
    :cond_1
    invoke-virtual {p4, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 2023
    .end local v0           #CMASDescription:Ljava/lang/StringBuffer;
    :goto_1
    sget-boolean v7, Lcom/android/mms/transaction/MessagingNotification;->sEnablePreview:Z

    if-nez v7, :cond_5

    invoke-virtual {p2}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->isCmas()Z

    move-result v7

    if-nez v7, :cond_5

    .line 2024
    invoke-virtual {p4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    .line 2030
    .local v5, notification:Landroid/app/Notification;
    :goto_2
    return-object v5

    .line 1992
    .end local v5           #notification:Landroid/app/Notification;
    :cond_2
    :try_start_1
    new-array v7, p3, [Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    invoke-interface {p1, v7}, Ljava/util/SortedSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    .line 1993
    .local v4, infos:[Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    const/4 v6, 0x0

    .line 1995
    .local v6, readMessageCount:I
    add-int/lit8 v3, p3, -0x1

    .local v3, i:I
    :goto_3
    if-ltz v3, :cond_0

    .line 1996
    aget-object v7, v4, v3

    invoke-virtual {v7, p0, p3}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->formatBigMessage(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1998
    if-eqz v3, :cond_3

    .line 1999
    const/16 v7, 0xa

    invoke-virtual {v1, v7}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2002
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 2003
    const/16 v7, 0x8

    if-ge v6, v7, :cond_0

    .line 1995
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 2008
    .end local v3           #i:I
    .end local v4           #infos:[Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    .end local v6           #readMessageCount:I
    :catch_0
    move-exception v2

    .line 2009
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2019
    .end local v2           #e:Ljava/lang/Exception;
    :cond_4
    const v7, 0x7f0c037b

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p4, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_1

    .line 2028
    :cond_5
    new-instance v7, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v7, p4}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v7, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v8

    if-nez p5, :cond_6

    const/4 v7, 0x0

    :goto_4
    invoke-virtual {v8, v7}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v5

    .restart local v5       #notification:Landroid/app/Notification;
    goto :goto_2

    .end local v5           #notification:Landroid/app/Notification;
    :cond_6
    const-string v7, " "

    goto :goto_4
.end method

.method private static decideNotificationType(Landroid/content/Context;Landroid/app/Notification;Lcom/android/mms/data/Contact;)V
    .locals 17
    .parameter "context"
    .parameter "notification"
    .parameter "contact"

    .prologue
    .line 2208
    const-string v14, "ril.cdma.inecmmode"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2209
    .local v5, ecmMode:Ljava/lang/String;
    const/4 v7, 0x0

    .line 2210
    .local v7, isBlockAlert:Z
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAlertInEcbmMode()Z

    move-result v14

    if-nez v14, :cond_0

    if-eqz v5, :cond_0

    const-string v14, "true"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 2211
    const/4 v7, 0x1

    .line 2215
    :cond_0
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/app/Notification;->contactCharSeq:Ljava/lang/CharSequence;

    .line 2216
    .local v3, cbContact:Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCBNotifications()Z

    move-result v14

    if-nez v14, :cond_1

    if-eqz v3, :cond_1

    .line 2220
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    const v15, 0x7f0c00fb

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 2221
    const/4 v14, 0x0

    move-object/from16 v0, p1

    iput-object v14, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 2338
    :goto_0
    return-void

    .line 2227
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->isBlockingModeEnabled(Landroid/content/Context;)Z

    move-result v6

    .line 2228
    .local v6, enableBlockingMode:Z
    const/4 v8, 0x0

    .line 2229
    .local v8, isvibrateNotification:Z
    if-nez v6, :cond_2

    .line 2230
    sget-boolean v14, Lcom/android/mms/transaction/MessagingNotification;->sEnableBacklight:Z

    if-eqz v14, :cond_2

    .line 2232
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLCDOn()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 2233
    const-string v14, "power"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PowerManager;

    .line 2234
    .local v9, pm:Landroid/os/PowerManager;
    const v14, 0x1000001a

    const-string v15, "New message notification LCD on"

    invoke-virtual {v9, v14, v15}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v13

    .line 2236
    .local v13, wl:Landroid/os/PowerManager$WakeLock;
    const-wide/16 v14, 0x1388

    invoke-virtual {v13, v14, v15}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2241
    .end local v9           #pm:Landroid/os/PowerManager;
    .end local v13           #wl:Landroid/os/PowerManager$WakeLock;
    :cond_2
    const-string v14, "audio"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 2242
    .local v2, audioManager:Landroid/media/AudioManager;
    const/4 v11, 0x0

    .line 2243
    .local v11, vibrateSetting:Z
    if-eqz v2, :cond_3

    .line 2244
    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_8

    const/4 v11, 0x1

    .line 2248
    :cond_3
    :goto_1
    const-string v14, "Mms/MessagingNotification"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "vibrateSetting="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2250
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNotificationVibrate()Z

    move-result v14

    if-eqz v14, :cond_11

    if-nez v7, :cond_11

    .line 2251
    const-string v14, "vibrator"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/SystemVibrator;

    .line 2253
    .local v12, vibrator:Landroid/os/SystemVibrator;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v14

    if-eqz v14, :cond_5

    sget-boolean v14, Lcom/android/mms/transaction/MessagingNotification;->sEnableVibrate:Z

    if-eqz v14, :cond_5

    if-nez v6, :cond_5

    .line 2259
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v14

    if-eqz v14, :cond_d

    .line 2260
    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->isOnCall()Z

    move-result v14

    if-nez v14, :cond_4

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->isOnChatonCall()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 2261
    :cond_4
    const-string v14, "Mms/MessagingNotification"

    const-string v15, "MessagingNotification vibrate: Block this in SPR On Alert on Call State"

    invoke-static {v14, v15}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2297
    .end local v12           #vibrator:Landroid/os/SystemVibrator;
    :cond_5
    :goto_2
    if-eqz v11, :cond_12

    .line 2298
    const/4 v14, 0x0

    sput-object v14, Lcom/android/mms/transaction/MessagingNotification;->sRingtoneStr:Ljava/lang/String;

    .line 2333
    :cond_6
    :goto_3
    const/4 v14, 0x1

    if-ne v7, v14, :cond_7

    .line 2334
    const-string v14, ""

    sput-object v14, Lcom/android/mms/transaction/MessagingNotification;->sRingtoneStr:Ljava/lang/String;

    .line 2337
    :cond_7
    sget-object v14, Lcom/android/mms/transaction/MessagingNotification;->sRingtoneStr:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_17

    const/4 v14, 0x0

    :goto_4
    move-object/from16 v0, p1

    iput-object v14, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    goto/16 :goto_0

    .line 2244
    :cond_8
    const/4 v11, 0x0

    goto :goto_1

    .line 2262
    .restart local v12       #vibrator:Landroid/os/SystemVibrator;
    :cond_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVoLTE()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->isOnVoLTECall()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 2263
    const-string v14, "Mms/MessagingNotification"

    const-string v15, "message notification pass vibrate, because alert during VoLTE call is off"

    invoke-static {v14, v15}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2264
    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v14

    const-string v15, "KT"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    const-string v14, "ril.domesticOtaStart"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "true"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 2266
    const-string v14, "Mms/MessagingNotification"

    const-string v15, "MessagingNotification vibrate: false, during OTA"

    invoke-static {v14, v15}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2268
    :cond_b
    const-string v14, "Mms/MessagingNotification"

    const-string v15, "MessagingNotification vibrate: true"

    invoke-static {v14, v15}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2269
    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_c

    .line 2270
    const/4 v8, 0x1

    .line 2271
    :cond_c
    const/16 v14, 0x11

    invoke-virtual {v12, v14}, Landroid/os/SystemVibrator;->vibrateNotification(I)V

    goto :goto_2

    .line 2274
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "alertoncall_mode"

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2275
    .local v1, alertOnCallMode:I
    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->isOnCall()Z

    move-result v14

    if-nez v14, :cond_e

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->isOnChatonCall()Z

    move-result v14

    if-eqz v14, :cond_f

    .line 2277
    :cond_e
    const-string v14, "Mms/MessagingNotification"

    const-string v15, "MessagingNotification vibrate: Block this in SPR On Alert on Call State"

    invoke-static {v14, v15}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2278
    :cond_f
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVoLTE()Z

    move-result v14

    if-eqz v14, :cond_10

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->isOnVoLTECall()Z

    move-result v14

    if-eqz v14, :cond_10

    if-nez v1, :cond_10

    .line 2279
    const-string v14, "Mms/MessagingNotification"

    const-string v15, "message notification pass vibrate, because alert during VoLTE call is off"

    invoke-static {v14, v15}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2281
    :cond_10
    const-string v14, "Mms/MessagingNotification"

    const-string v15, "MessagingNotification vibrate: true"

    invoke-static {v14, v15}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2282
    const/16 v14, 0x11

    invoke-virtual {v12, v14}, Landroid/os/SystemVibrator;->vibrateNotification(I)V

    goto/16 :goto_2

    .line 2288
    .end local v1           #alertOnCallMode:I
    .end local v12           #vibrator:Landroid/os/SystemVibrator;
    :cond_11
    if-eqz v11, :cond_5

    if-nez v7, :cond_5

    .line 2289
    const-string v14, "Mms/MessagingNotification"

    const-string v15, "vibrate: true"

    invoke-static {v14, v15}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2290
    move-object/from16 v0, p1

    iget v14, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v14, v14, 0x2

    move-object/from16 v0, p1

    iput v14, v0, Landroid/app/Notification;->defaults:I

    .line 2291
    const/16 v14, 0x11

    move-object/from16 v0, p1

    iput v14, v0, Landroid/app/Notification;->haptic:I

    goto/16 :goto_2

    .line 2300
    :cond_12
    invoke-static {}, Lcom/android/mms/MmsConfig;->isEnabledIndividualRingtone()Z

    move-result v14

    if-eqz v14, :cond_13

    if-eqz p2, :cond_13

    .line 2301
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Contact;->getRingtone()Ljava/lang/String;

    move-result-object v4

    .line 2302
    .local v4, contactRingtoneStr:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_13

    .line 2303
    sput-object v4, Lcom/android/mms/transaction/MessagingNotification;->sRingtoneStr:Ljava/lang/String;

    .line 2310
    .end local v4           #contactRingtoneStr:Ljava/lang/String;
    :cond_13
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v14

    if-nez v14, :cond_14

    invoke-static {}, Lcom/android/mms/MmsConfig;->isATTCMASFeatureEnabled()Z

    move-result v14

    if-eqz v14, :cond_15

    .line 2312
    :cond_14
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 2314
    .local v10, sp:Landroid/content/SharedPreferences;
    if-nez v8, :cond_16

    .line 2315
    sget-object v14, Lcom/android/mms/transaction/MessagingNotification;->sRingtoneStr:Ljava/lang/String;

    if-nez v14, :cond_15

    .line 2316
    const-string v14, "pref_key_ringtone"

    const/4 v15, 0x0

    invoke-interface {v10, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/android/mms/transaction/MessagingNotification;->sRingtoneStr:Ljava/lang/String;

    .line 2317
    sget-object v14, Lcom/android/mms/transaction/MessagingNotification;->sRingtoneStr:Ljava/lang/String;

    if-nez v14, :cond_15

    .line 2318
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "notification_sound"

    invoke-static {v14, v15}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/android/mms/transaction/MessagingNotification;->sRingtoneStr:Ljava/lang/String;

    .line 2328
    .end local v10           #sp:Landroid/content/SharedPreferences;
    :cond_15
    :goto_5
    sget-object v14, Lcom/android/mms/transaction/MessagingNotification;->sRingtoneStr:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 2329
    sget-object v14, Lcom/android/mms/transaction/MessagingNotification;->sRingtoneStr:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/mms/ui/MessageUtils;->checkRingtoneIsValid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/android/mms/transaction/MessagingNotification;->sRingtoneStr:Ljava/lang/String;

    goto/16 :goto_3

    .line 2323
    .restart local v10       #sp:Landroid/content/SharedPreferences;
    :cond_16
    const-string v14, ""

    sput-object v14, Lcom/android/mms/transaction/MessagingNotification;->sRingtoneStr:Ljava/lang/String;

    goto :goto_5

    .line 2337
    .end local v10           #sp:Landroid/content/SharedPreferences;
    :cond_17
    sget-object v14, Lcom/android/mms/transaction/MessagingNotification;->sRingtoneStr:Ljava/lang/String;

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    goto/16 :goto_4
.end method

.method private static deleteAllSstreamItems(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 4305
    const-string v1, "samsung.personal"

    .line 4308
    .local v1, streamId:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1}, Lsstream/lib/SStreamContentManager;->deleteAllStoryItemsFromStream(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4314
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 4309
    :catch_0
    move-exception v0

    .line 4310
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 4311
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static findMostRecentNotification(JLjava/util/SortedSet;)Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    .locals 6
    .parameter "threadId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ">;)",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;"
        }
    .end annotation

    .prologue
    .line 2127
    .local p2, notificationSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/SortedSet;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 2128
    :cond_0
    const/4 v4, 0x0

    .line 2151
    :goto_0
    return-object v4

    .line 2131
    :cond_1
    const-wide/16 v4, -0x2

    cmp-long v4, p0, v4

    if-nez v4, :cond_2

    .line 2132
    invoke-interface {p2}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    goto :goto_0

    .line 2135
    :cond_2
    const/4 v2, 0x0

    .line 2136
    .local v2, mostRecentNotification:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    invoke-interface {p2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    .line 2138
    .local v3, temp:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    :try_start_0
    invoke-virtual {v3}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getThreadId()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    cmp-long v4, v4, p0

    if-nez v4, :cond_3

    .line 2139
    move-object v2, v3

    .line 2147
    .end local v3           #temp:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    :cond_4
    if-nez v2, :cond_5

    .line 2148
    invoke-interface {p2}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #mostRecentNotification:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    check-cast v2, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    .restart local v2       #mostRecentNotification:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    :cond_5
    move-object v4, v2

    .line 2151
    goto :goto_0

    .line 2142
    .restart local v3       #temp:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    :catch_0
    move-exception v0

    .line 2143
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "Mms/MessagingNotification"

    const-string v5, "findMostRecentNotification - Catch Exception:"

    invoke-static {v4, v5, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static foregroundPresidentialAlert(Landroid/content/Context;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;Z)V
    .locals 5
    .parameter "context"
    .parameter "mostRecentNotification"
    .parameter "isNew"

    .prologue
    .line 3820
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 3848
    :cond_0
    :goto_0
    return-void

    .line 3824
    :cond_1
    invoke-virtual {p1, p0, p2}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getContact(Landroid/content/Context;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 3825
    .local v0, contact:Lcom/android/mms/data/Contact;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    const-string v2, "President"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->getNewCMASPresidentialCount(Landroid/content/Context;)I

    move-result v1

    if-lez v1, :cond_0

    .line 3827
    sget-object v1, Lcom/android/mms/transaction/MessagingNotification;->mRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 3828
    sget-object v1, Lcom/android/mms/transaction/MessagingNotification;->sHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3829
    const/4 v1, 0x0

    sput-object v1, Lcom/android/mms/transaction/MessagingNotification;->mRunnable:Ljava/lang/Runnable;

    .line 3831
    :cond_2
    sget-object v1, Lcom/android/mms/transaction/MessagingNotification;->sHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/transaction/MessagingNotification$6;

    invoke-direct {v2}, Lcom/android/mms/transaction/MessagingNotification$6;-><init>()V

    sput-object v2, Lcom/android/mms/transaction/MessagingNotification;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x4268

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private static formatSenders(Landroid/content/Context;Ljava/util/ArrayList;IZ)Ljava/lang/CharSequence;
    .locals 8
    .parameter "context"
    .parameter
    .parameter "maxSenders"
    .parameter "isNew"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ">;IZ)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    .local p1, senders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;>;"
    const/4 v7, 0x0

    .line 1234
    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    const v6, 0x7f0e000a

    invoke-direct {v2, p0, v6}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 1236
    .local v2, notificationSenderSpan:Landroid/text/style/TextAppearanceSpan;
    const v6, 0x7f0c037f

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1237
    .local v4, separator:Ljava/lang/String;
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1239
    .local v5, spannableStringBuilder:Landroid/text/SpannableStringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_2

    .line 1240
    if-lez v0, :cond_0

    .line 1241
    invoke-virtual {v5, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1243
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    invoke-virtual {v6, p0, p3}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getContact(Landroid/content/Context;Z)Lcom/android/mms/data/Contact;

    move-result-object v3

    .line 1244
    .local v3, sender:Lcom/android/mms/data/Contact;
    const/4 v1, 0x0

    .line 1245
    .local v1, name:Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1246
    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1250
    :goto_1
    invoke-virtual {v5, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1239
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1248
    :cond_1
    const v6, 0x7f0c013b

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1252
    .end local v1           #name:Ljava/lang/String;
    .end local v3           #sender:Lcom/android/mms/data/Contact;
    :cond_2
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v5, v2, v7, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1253
    return-object v5
.end method

.method private static getAttachmentTypeOnSlide(Lcom/android/mms/model/SlideshowModel;)I
    .locals 5
    .parameter "slideshow"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1367
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    .line 1369
    .local v1, slideCount:I
    if-nez v1, :cond_1

    .line 1383
    :cond_0
    :goto_0
    return v2

    .line 1371
    :cond_1
    if-le v1, v3, :cond_2

    .line 1372
    const/4 v2, 0x4

    goto :goto_0

    .line 1374
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 1375
    .local v0, slide:Lcom/android/mms/model/SlideModel;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    .line 1376
    goto :goto_0

    .line 1377
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1378
    const/4 v2, 0x2

    goto :goto_0

    .line 1379
    :cond_4
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1380
    const/4 v2, 0x3

    goto :goto_0
.end method

.method private static getAttachmentTypeString(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 5
    .parameter "context"
    .parameter "attachmentType"

    .prologue
    const/4 v4, 0x0

    .line 1260
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v3, 0x7f0e000b

    invoke-direct {v1, p0, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 1261
    .local v1, notificationAttachmentSpan:Landroid/text/style/TextAppearanceSpan;
    const/4 v0, 0x0

    .line 1262
    .local v0, id:I
    packed-switch p1, :pswitch_data_0

    .line 1276
    :goto_0
    if-lez v0, :cond_0

    .line 1277
    new-instance v2, Landroid/text/SpannableString;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1278
    .local v2, spannableString:Landroid/text/SpannableString;
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v2, v1, v4, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1281
    .end local v2           #spannableString:Landroid/text/SpannableString;
    :goto_1
    return-object v2

    .line 1264
    :pswitch_0
    const v0, 0x7f0c00ad

    .line 1265
    goto :goto_0

    .line 1267
    :pswitch_1
    const v0, 0x7f0c00ab

    .line 1268
    goto :goto_0

    .line 1270
    :pswitch_2
    const v0, 0x7f0c037d

    .line 1271
    goto :goto_0

    .line 1273
    :pswitch_3
    const v0, 0x7f0c00a9

    goto :goto_0

    .line 1281
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 1262
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static getBadgeCount(Landroid/content/ContentResolver;)I
    .locals 9
    .parameter "resolver"

    .prologue
    const/4 v8, 0x0

    .line 4094
    const/4 v6, 0x0

    .line 4096
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->BADGE_PROVIDER_PROJECTION:[Ljava/lang/String;

    const-string v3, "package=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "com.android.mms"

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4099
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4100
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 4105
    if-eqz v6, :cond_0

    .line 4106
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4107
    const/4 v6, 0x0

    .line 4111
    :cond_0
    :goto_0
    return v0

    .line 4105
    :cond_1
    if-eqz v6, :cond_2

    .line 4106
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4107
    const/4 v6, 0x0

    :cond_2
    :goto_1
    move v0, v8

    .line 4111
    goto :goto_0

    .line 4102
    :catch_0
    move-exception v7

    .line 4103
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "Mms/MessagingNotification"

    const-string v1, "getBadgeCount has exception"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4105
    if-eqz v6, :cond_2

    .line 4106
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4107
    const/4 v6, 0x0

    goto :goto_1

    .line 4105
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 4106
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4107
    const/4 v6, 0x0

    :cond_3
    throw v0
.end method

.method public static getDeleteIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 383
    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->sNotificationOnDeleteIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 385
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mms.NOTIFICATION_DELETED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->sNotificationOnDeleteIntent:Landroid/content/Intent;

    .line 388
    :cond_0
    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->sNotificationOnDeleteIntent:Landroid/content/Intent;

    return-object v0
.end method

.method private static getDownloadFailedMessageCount(Landroid/content/Context;)I
    .locals 9
    .parameter "context"

    .prologue
    .line 2597
    const/4 v7, 0x0

    .line 2598
    .local v7, c:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 2600
    .local v8, count:I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "m_type="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x82

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " AND "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "st"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x87

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 2606
    if-nez v7, :cond_1

    .line 2607
    const/4 v0, 0x0

    .line 2611
    if-eqz v7, :cond_0

    .line 2612
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2613
    const/4 v7, 0x0

    .line 2616
    :cond_0
    :goto_0
    return v0

    .line 2609
    :cond_1
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    .line 2611
    if-eqz v7, :cond_2

    .line 2612
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2613
    const/4 v7, 0x0

    :cond_2
    move v0, v8

    .line 2616
    goto :goto_0

    .line 2611
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 2612
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2613
    const/4 v7, 0x0

    :cond_3
    throw v0
.end method

.method private static getImage(Lcom/android/mms/model/SlideModel;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "firstSlide"

    .prologue
    .line 1353
    invoke-virtual {p0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1356
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/ImageModel;->getThumbnailBitmap()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1362
    :goto_0
    return-object v0

    .line 1358
    :catch_0
    move-exception v0

    .line 1362
    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1357
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static getMmsDeliveryReportText(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "status"

    .prologue
    .line 2728
    packed-switch p1, :pswitch_data_0

    .line 2737
    :pswitch_0
    const v0, 0x7f0c00a0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2731
    :pswitch_1
    const v0, 0x7f0c00a5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2733
    :pswitch_2
    const v0, 0x7f0c00a2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2735
    :pswitch_3
    const v0, 0x7f0c00e4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2728
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getMmsReadReportText(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "status"

    .prologue
    const v1, 0x7f0c00a1

    .line 2742
    packed-switch p1, :pswitch_data_0

    .line 2759
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2744
    :pswitch_0
    const v0, 0x7f0c009e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2750
    :pswitch_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsSendingForChn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2751
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0c029a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2756
    :cond_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2742
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getMmsSubject(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "sub"
    .parameter "charset"

    .prologue
    .line 2396
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v0, p1, p0}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getNewCMASCount(Landroid/content/Context;Landroid/content/ContentResolver;)I
    .locals 9
    .parameter "context"
    .parameter "resolver"

    .prologue
    const/4 v7, 0x0

    .line 3546
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3565
    :cond_0
    :goto_0
    return v7

    .line 3550
    :cond_1
    const-string v0, "Mms/MessagingNotification"

    const-string v1, "getNewCMASCount()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3551
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v4, "(address like \"%#CMAS#%\" AND read = 0 AND thread_id NOT NULL)"

    const/4 v5, 0x0

    const-string v6, "date desc"

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3554
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 3559
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 3560
    .local v7, count:I
    const-string v0, "Mms/MessagingNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNewCMASCount() count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3563
    if-eqz v8, :cond_0

    .line 3564
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3565
    const/4 v8, 0x0

    goto :goto_0

    .line 3563
    .end local v7           #count:I
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 3564
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3565
    const/4 v8, 0x0

    :cond_2
    throw v0
.end method

.method private static getNewCMASPresidentialCount(Landroid/content/Context;)I
    .locals 9
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 4213
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4234
    :cond_0
    :goto_0
    return v7

    .line 4217
    :cond_1
    const-string v0, "Mms/MessagingNotification"

    const-string v2, "getNewCMASPresidentialCount()"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4219
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4220
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v4, "(address like \"%#CMAS#Presidential%\" AND read = 0)"

    const/4 v5, 0x0

    const-string v6, "date desc"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 4223
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 4228
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 4229
    .local v7, count:I
    const-string v0, "Mms/MessagingNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNewCMASPresidentialCount() count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4232
    if-eqz v8, :cond_0

    .line 4233
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 4234
    const/4 v8, 0x0

    goto :goto_0

    .line 4232
    .end local v7           #count:I
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 4233
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 4234
    const/4 v8, 0x0

    :cond_2
    throw v0
.end method

.method public static getNewMessageCount(Landroid/content/Context;)I
    .locals 8
    .parameter "context"

    .prologue
    .line 453
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 454
    .local v2, resolver:Landroid/content/ContentResolver;
    invoke-static {p0, v2}, Lcom/android/mms/transaction/MessagingNotification;->getNewSmsCount(Landroid/content/Context;Landroid/content/ContentResolver;)I

    move-result v3

    .line 455
    .local v3, smsCount:I
    invoke-static {p0, v2}, Lcom/android/mms/transaction/MessagingNotification;->getNewMmsCount(Landroid/content/Context;Landroid/content/ContentResolver;)I

    move-result v1

    .line 456
    .local v1, mmsCount:I
    invoke-static {p0, v2}, Lcom/android/mms/transaction/MessagingNotification;->getNewWpmCount(Landroid/content/Context;Landroid/content/ContentResolver;)I

    move-result v4

    .line 457
    .local v4, wpmCount:I
    invoke-static {p0, v2}, Lcom/android/mms/transaction/MessagingNotification;->getNewCMASCount(Landroid/content/Context;Landroid/content/ContentResolver;)I

    move-result v0

    .line 459
    .local v0, cmasCount:I
    const-string v5, "Mms/MessagingNotification"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getNewMessageCount() smsCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mmsCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " wpmCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cmasCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    add-int v5, v3, v1

    add-int/2addr v5, v4

    add-int/2addr v5, v0

    return v5
.end method

.method private static getNewMissedCallSMS(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .parameter "context"
    .parameter "body"

    .prologue
    const/4 v6, 0x0

    .line 3182
    const-string v7, "^[0-1][0-9]/[0-3][0-9]\\s[0-2][0-9]:[0-5][0-9]\\s\\n"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 3183
    .local v3, pattern1:Ljava/util/regex/Pattern;
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 3184
    .local v0, matcher1:Ljava/util/regex/Matcher;
    const-string v7, "^[0-1][0-9]/[0-3][0-9]\\s[0-2][0-9]:[0-5][0-9]\\s\uff83\uff9a\uff8b\uff9e\u96fb\u8a71\\n"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 3185
    .local v4, pattern2:Ljava/util/regex/Pattern;
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 3186
    .local v1, matcher2:Ljava/util/regex/Matcher;
    const-string v7, "^\u6d77\u5916\\s\u7740\u4fe1\u901a\u77e5\\(\u65e5\u672c\u6642\u9593\\)\\n"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 3187
    .local v5, pattern3:Ljava/util/regex/Pattern;
    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 3189
    .local v2, matcher3:Ljava/util/regex/Matcher;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3198
    :goto_0
    return v6

    .line 3191
    :cond_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3192
    :cond_1
    const/4 v6, 0x1

    goto :goto_0

    .line 3194
    :cond_2
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    .line 3195
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    .line 3196
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    goto :goto_0
.end method

.method public static getNewMmsCount(Landroid/content/Context;Landroid/content/ContentResolver;)I
    .locals 9
    .parameter "context"
    .parameter "resolver"

    .prologue
    .line 488
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->MMS_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v4, "(msg_box=1 AND read=0 AND (m_type=130 OR m_type=132) AND thread_id NOT NULL)"

    const/4 v5, 0x0

    const-string v6, "date desc"

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 491
    .local v8, mmsCursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 493
    .local v7, mmsCount:I
    if-eqz v8, :cond_0

    .line 494
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 497
    :cond_0
    if-eqz v8, :cond_1

    .line 498
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 500
    :cond_1
    return v7

    .line 497
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 498
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static getNewSmsCount(Landroid/content/Context;Landroid/content/ContentResolver;)I
    .locals 9
    .parameter "context"
    .parameter "resolver"

    .prologue
    const/4 v5, 0x0

    .line 464
    const/4 v8, 0x0

    .line 466
    .local v8, smsCursor:Landroid/database/Cursor;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 467
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v4, "type = 1 AND address not like \"%#CMAS#%\" AND read = 0 AND thread_id NOT NULL"

    const-string v6, "date desc"

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 475
    :goto_0
    const/4 v7, 0x0

    .line 477
    .local v7, smsCount:I
    if-eqz v8, :cond_0

    .line 478
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 481
    :cond_0
    if-eqz v8, :cond_1

    .line 482
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 484
    :cond_1
    return v7

    .line 470
    .end local v7           #smsCount:I
    :cond_2
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v4, "(type = 1 AND read = 0 AND thread_id NOT NULL)"

    const-string v6, "date desc"

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_0

    .line 481
    .restart local v7       #smsCount:I
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 482
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getNewWpmCount(Landroid/content/Context;Landroid/content/ContentResolver;)I
    .locals 9
    .parameter "context"
    .parameter "resolver"

    .prologue
    .line 504
    sget-object v2, Lcom/android/mms/ui/MessageUtils;->WAP_PUSH_MESSAGE_BY_ID_CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->WPM_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v4, "(read = 0 AND thread_id NOT NULL)"

    const/4 v5, 0x0

    const-string v6, "date desc"

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 508
    .local v8, wpmCursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 510
    .local v7, wpmCount:I
    if-eqz v8, :cond_0

    .line 511
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 514
    :cond_0
    if-eqz v8, :cond_1

    .line 515
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 517
    :cond_1
    return v7

    .line 514
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 515
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;
    .locals 1
    .parameter "context"

    .prologue
    .line 392
    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->sPduPersister:Lcom/google/android/mms/pdu/PduPersister;

    if-nez v0, :cond_0

    .line 393
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->sPduPersister:Lcom/google/android/mms/pdu/PduPersister;

    .line 396
    :cond_0
    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->sPduPersister:Lcom/google/android/mms/pdu/PduPersister;

    return-object v0
.end method

.method private static getSmsDeliveryReportText(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "status"

    .prologue
    .line 2707
    sparse-switch p1, :sswitch_data_0

    .line 2723
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2709
    :sswitch_0
    const v0, 0x7f0c00a5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2711
    :sswitch_1
    const v0, 0x7f0c00a0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2713
    :sswitch_2
    const v0, 0x7f0c009d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2718
    :sswitch_3
    const v0, 0x7f0c00e4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2707
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x20 -> :sswitch_2
        0x40 -> :sswitch_1
        0x46 -> :sswitch_3
    .end sparse-switch
.end method

.method private static final getSmsNewDeliveryInfo(Landroid/content/Context;)Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;
    .locals 9
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 1387
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1388
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v4, "(type = 2 AND status = 0)"

    const-string v6, "date desc"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1391
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_1

    .line 1407
    :cond_0
    :goto_0
    return-object v5

    .line 1396
    :cond_1
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 1405
    if-eqz v8, :cond_0

    .line 1406
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1407
    const/4 v8, 0x0

    goto :goto_0

    .line 1400
    :cond_2
    const/4 v0, 0x4

    :try_start_1
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1401
    .local v7, address:Ljava/lang/String;
    const-string v0, "Mms/MessagingNotification"

    const-string v2, "getSmsNewDeliveryInfo"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1403
    new-instance v5, Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;

    const v0, 0x7f0c00b1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    invoke-direct {v5, v0, v2, v3}, Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;-><init>(Ljava/lang/CharSequence;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1405
    if-eqz v8, :cond_0

    .line 1406
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1407
    const/4 v8, 0x0

    goto :goto_0

    .line 1405
    .end local v7           #address:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 1406
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1407
    const/4 v8, 0x0

    :cond_3
    throw v0
.end method

.method public static getSmsThreadId(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 10
    .parameter "context"
    .parameter "uri"

    .prologue
    const-wide/16 v8, -0x2

    const/4 v4, 0x0

    .line 2804
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->SMS_THREAD_ID_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2807
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_1

    move-wide v0, v8

    .line 2820
    :cond_0
    :goto_0
    return-wide v0

    .line 2812
    :cond_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2813
    const-string v0, "thread_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 2818
    if-eqz v7, :cond_0

    .line 2819
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2820
    const/4 v7, 0x0

    goto :goto_0

    .line 2818
    :cond_2
    if-eqz v7, :cond_3

    .line 2819
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2820
    const/4 v7, 0x0

    :cond_3
    move-wide v0, v8

    goto :goto_0

    .line 2818
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 2819
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2820
    const/4 v7, 0x0

    :cond_4
    throw v0
.end method

.method private static getStreamBgImagePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 15
    .parameter "context"

    .prologue
    .line 4318
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    iget-object v0, v13, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 4319
    .local v0, appPath:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/files/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "mux_per_default_bg_02.jpg"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4321
    .local v2, bgAbsPath:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4323
    .local v3, bgImage:Ljava/io/File;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_4

    .line 4324
    :cond_0
    const/4 v7, 0x0

    .line 4325
    .local v7, in:Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 4327
    .local v9, out:Ljava/io/OutputStream;
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 4330
    .local v1, assetManager:Landroid/content/res/AssetManager;
    :try_start_0
    const-string v13, "mux_per_default_bg_02.jpg"

    invoke-virtual {v1, v13}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    .line 4332
    new-instance v8, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/files/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v8, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4334
    .local v8, mpath:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-nez v13, :cond_1

    .line 4335
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 4336
    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual {v8, v13, v14}, Ljava/io/File;->setReadable(ZZ)Z

    .line 4337
    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual {v8, v13, v14}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 4340
    :cond_1
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a

    .line 4343
    .end local v9           #out:Ljava/io/OutputStream;
    .local v10, out:Ljava/io/OutputStream;
    const/16 v13, 0x400

    :try_start_1
    new-array v4, v13, [B

    .line 4346
    .local v4, buffer:[B
    :goto_0
    invoke-virtual {v7, v4}, Ljava/io/InputStream;->read([B)I

    move-result v11

    .local v11, read:I
    const/4 v13, -0x1

    if-eq v11, v13, :cond_5

    .line 4347
    const/4 v13, 0x0

    invoke-virtual {v10, v4, v13, v11}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 4349
    .end local v4           #buffer:[B
    .end local v11           #read:I
    :catch_0
    move-exception v6

    move-object v9, v10

    .line 4350
    .end local v8           #mpath:Ljava/io/File;
    .end local v10           #out:Ljava/io/OutputStream;
    .local v6, e1:Ljava/io/IOException;
    .restart local v9       #out:Ljava/io/OutputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4352
    if-eqz v7, :cond_2

    .line 4354
    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 4358
    :goto_2
    const/4 v7, 0x0

    .line 4360
    :cond_2
    if-eqz v9, :cond_3

    .line 4362
    :try_start_4
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 4367
    :goto_3
    :try_start_5
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 4371
    :goto_4
    const/4 v9, 0x0

    .line 4376
    .end local v6           #e1:Ljava/io/IOException;
    :cond_3
    :goto_5
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4377
    .local v12, readR:Ljava/io/File;
    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Ljava/io/File;->setReadable(ZZ)Z

    .line 4378
    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 4381
    .end local v1           #assetManager:Landroid/content/res/AssetManager;
    .end local v7           #in:Ljava/io/InputStream;
    .end local v9           #out:Ljava/io/OutputStream;
    .end local v12           #readR:Ljava/io/File;
    :cond_4
    return-object v2

    .line 4352
    .restart local v1       #assetManager:Landroid/content/res/AssetManager;
    .restart local v4       #buffer:[B
    .restart local v7       #in:Ljava/io/InputStream;
    .restart local v8       #mpath:Ljava/io/File;
    .restart local v10       #out:Ljava/io/OutputStream;
    .restart local v11       #read:I
    :cond_5
    if-eqz v7, :cond_6

    .line 4354
    :try_start_6
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 4358
    :goto_6
    const/4 v7, 0x0

    .line 4360
    :cond_6
    if-eqz v10, :cond_9

    .line 4362
    :try_start_7
    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 4367
    :goto_7
    :try_start_8
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 4371
    :goto_8
    const/4 v9, 0x0

    .end local v10           #out:Ljava/io/OutputStream;
    .restart local v9       #out:Ljava/io/OutputStream;
    goto :goto_5

    .line 4355
    .end local v9           #out:Ljava/io/OutputStream;
    .restart local v10       #out:Ljava/io/OutputStream;
    :catch_1
    move-exception v5

    .line 4356
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 4363
    .end local v5           #e:Ljava/io/IOException;
    :catch_2
    move-exception v5

    .line 4364
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 4368
    .end local v5           #e:Ljava/io/IOException;
    :catch_3
    move-exception v5

    .line 4369
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 4355
    .end local v4           #buffer:[B
    .end local v5           #e:Ljava/io/IOException;
    .end local v8           #mpath:Ljava/io/File;
    .end local v10           #out:Ljava/io/OutputStream;
    .end local v11           #read:I
    .restart local v6       #e1:Ljava/io/IOException;
    .restart local v9       #out:Ljava/io/OutputStream;
    :catch_4
    move-exception v5

    .line 4356
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 4363
    .end local v5           #e:Ljava/io/IOException;
    :catch_5
    move-exception v5

    .line 4364
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 4368
    .end local v5           #e:Ljava/io/IOException;
    :catch_6
    move-exception v5

    .line 4369
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 4352
    .end local v5           #e:Ljava/io/IOException;
    .end local v6           #e1:Ljava/io/IOException;
    :catchall_0
    move-exception v13

    :goto_9
    if-eqz v7, :cond_7

    .line 4354
    :try_start_9
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 4358
    :goto_a
    const/4 v7, 0x0

    .line 4360
    :cond_7
    if-eqz v9, :cond_8

    .line 4362
    :try_start_a
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 4367
    :goto_b
    :try_start_b
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 4371
    :goto_c
    const/4 v9, 0x0

    :cond_8
    throw v13

    .line 4355
    :catch_7
    move-exception v5

    .line 4356
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 4363
    .end local v5           #e:Ljava/io/IOException;
    :catch_8
    move-exception v5

    .line 4364
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 4368
    .end local v5           #e:Ljava/io/IOException;
    :catch_9
    move-exception v5

    .line 4369
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 4352
    .end local v5           #e:Ljava/io/IOException;
    .end local v9           #out:Ljava/io/OutputStream;
    .restart local v8       #mpath:Ljava/io/File;
    .restart local v10       #out:Ljava/io/OutputStream;
    :catchall_1
    move-exception v13

    move-object v9, v10

    .end local v10           #out:Ljava/io/OutputStream;
    .restart local v9       #out:Ljava/io/OutputStream;
    goto :goto_9

    .line 4349
    .end local v8           #mpath:Ljava/io/File;
    :catch_a
    move-exception v6

    goto :goto_1

    .end local v9           #out:Ljava/io/OutputStream;
    .restart local v4       #buffer:[B
    .restart local v8       #mpath:Ljava/io/File;
    .restart local v10       #out:Ljava/io/OutputStream;
    .restart local v11       #read:I
    :cond_9
    move-object v9, v10

    .end local v10           #out:Ljava/io/OutputStream;
    .restart local v9       #out:Ljava/io/OutputStream;
    goto :goto_5
.end method

.method private static getSystemService(Ljava/lang/String;)Landroid/app/AlarmManager;
    .locals 1
    .parameter "alarmService"

    .prologue
    .line 2156
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getText(Lcom/android/mms/model/SlideModel;)Ljava/lang/String;
    .locals 1
    .parameter "firstSlide"

    .prologue
    .line 1345
    invoke-virtual {p0}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1346
    invoke-virtual {p0}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v0

    .line 1349
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static getThreadId(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 10
    .parameter "context"
    .parameter "uri"

    .prologue
    const-wide/16 v8, -0x2

    const/4 v4, 0x0

    .line 2855
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->MMS_THREAD_ID_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2858
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_1

    move-wide v0, v8

    .line 2871
    :cond_0
    :goto_0
    return-wide v0

    .line 2863
    :cond_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2864
    const-string v0, "thread_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 2869
    if-eqz v7, :cond_0

    .line 2870
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2871
    const/4 v7, 0x0

    goto :goto_0

    .line 2869
    :cond_2
    if-eqz v7, :cond_3

    .line 2870
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2871
    const/4 v7, 0x0

    :cond_3
    move-wide v0, v8

    goto :goto_0

    .line 2869
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 2870
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2871
    const/4 v7, 0x0

    :cond_4
    throw v0
.end method

.method private static getUndeliveredMessageCount(Landroid/content/Context;[J)I
    .locals 13
    .parameter "context"
    .parameter "threadIdResult"

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v7, 0x0

    .line 2507
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->UNDELIVERED_URI:Landroid/net/Uri;

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "thread_id"

    aput-object v0, v3, v7

    const-string v4, "read=0"

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2510
    .local v10, undeliveredCursor:Landroid/database/Cursor;
    if-nez v10, :cond_1

    .line 2553
    :cond_0
    :goto_0
    return v7

    .line 2513
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 2514
    .local v7, count:I
    const-wide/16 v11, 0x0

    .line 2516
    .local v11, undeliveredThreadId:J
    if-eqz p1, :cond_9

    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2517
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 2518
    invoke-static {p0, v11, v12}, Lcom/android/mms/transaction/MessagingNotification;->isValidThreadId(Landroid/content/Context;J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2519
    const/4 v0, 0x0

    aput-wide v11, p1, v0

    .line 2533
    :cond_2
    :goto_1
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_9

    .line 2536
    const/4 v0, 0x0

    aget-wide v8, p1, v0

    .line 2537
    .local v8, firstId:J
    :cond_3
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    if-lez v7, :cond_8

    .line 2538
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 2539
    invoke-static {p0, v11, v12}, Lcom/android/mms/transaction/MessagingNotification;->isValidThreadId(Landroid/content/Context;J)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2540
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 2521
    .end local v8           #firstId:J
    :cond_4
    add-int/lit8 v7, v7, -0x1

    .line 2522
    :goto_3
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    if-lez v7, :cond_2

    .line 2523
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 2524
    invoke-static {p0, v11, v12}, Lcom/android/mms/transaction/MessagingNotification;->isValidThreadId(Landroid/content/Context;J)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2525
    const/4 v0, 0x0

    aput-wide v11, p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2550
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_5

    .line 2551
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 2528
    :cond_6
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 2541
    .restart local v8       #firstId:J
    :cond_7
    cmp-long v0, v11, v8

    if-eqz v0, :cond_3

    .line 2542
    const-wide/16 v8, 0x0

    goto :goto_2

    .line 2546
    :cond_8
    const/4 v0, 0x1

    :try_start_1
    aput-wide v8, p1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2550
    .end local v8           #firstId:J
    :cond_9
    if-eqz v10, :cond_0

    .line 2551
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static getWpmThreadId(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 10
    .parameter "context"
    .parameter "uri"

    .prologue
    const-wide/16 v8, -0x2

    const/4 v4, 0x0

    .line 2826
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->SMS_THREAD_ID_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2829
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_1

    move-wide v0, v8

    .line 2842
    :cond_0
    :goto_0
    return-wide v0

    .line 2834
    :cond_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2835
    const-string v0, "thread_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 2840
    if-eqz v7, :cond_0

    .line 2841
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2842
    const/4 v7, 0x0

    goto :goto_0

    .line 2840
    :cond_2
    if-eqz v7, :cond_3

    .line 2841
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2842
    const/4 v7, 0x0

    :cond_3
    move-wide v0, v8

    goto :goto_0

    .line 2840
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 2841
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2842
    const/4 v7, 0x0

    :cond_4
    throw v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 366
    const-string v2, "Mms/MessagingNotification"

    const-string v3, "init()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string v2, "Mms/MessagingNotification"

    const-string v3, "init start"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 370
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "com.android.mms.NOTIFICATION_DELETED_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 373
    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->sNotificationDeletedReceiver:Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 376
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 377
    .local v0, cancelIntentFilter:Landroid/content/IntentFilter;
    const-string v2, "com.android.mms.NOTIFICATION_CANCEL_ACTION"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 378
    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->sNotificationCancelReceiver:Lcom/android/mms/transaction/MessagingNotification$OnCancelReceiver;

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 379
    const-string v2, "Mms/MessagingNotification"

    const-string v3, "init end"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    return-void
.end method

.method private static initCmasAlertMessage(Landroid/content/Context;Ljava/lang/String;JI)V
    .locals 4
    .parameter "context"
    .parameter "address"
    .parameter "timeMillis"
    .parameter "count"

    .prologue
    .line 3590
    const-string v1, "Mms/MessagingNotification"

    const-string v2, "initCmasAlertMessage()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3592
    const v0, 0x80b10

    .line 3594
    .local v0, format_flags:I
    invoke-static {p0, p2, p3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/mms/transaction/MessagingNotification;->mDate:Ljava/lang/String;

    .line 3595
    if-lez p4, :cond_0

    .line 3596
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->getCmasServiceCategoryStringId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/mms/transaction/MessagingNotification;->mCmasType:Ljava/lang/String;

    .line 3597
    const-string v1, "Mms/MessagingNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initCmasAlertMessage() mCmasType is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->mCmasType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3599
    :cond_0
    return-void
.end method

.method private static insertCallLogDB(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Landroid/content/ContentResolver;)V
    .locals 28
    .parameter "context"
    .parameter "intent_number"
    .parameter "cursor"
    .parameter "resolver"

    .prologue
    .line 3201
    move-object/from16 v4, p1

    .line 3202
    .local v4, body:Ljava/lang/String;
    const/4 v7, 0x0

    .line 3203
    .local v7, endbody:Z
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 3204
    .local v23, value:Landroid/content/ContentValues;
    const-string v24, "^\u6d77\u5916\\s\u7740\u4fe1\u901a\u77e5\\(\u65e5\u672c\u6642\u9593\\)\\n"

    invoke-static/range {v24 .. v24}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v15

    .line 3205
    .local v15, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v15, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 3207
    .local v8, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v24

    if-eqz v24, :cond_0

    .line 3208
    const-string v24, "\n"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 3211
    :cond_0
    const-string v24, "^[0-1][0-9]/[0-3][0-9]\\s[0-2][0-9]:[0-5][0-9]\\s\\n"

    invoke-static/range {v24 .. v24}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v16

    .line 3212
    .local v16, pattern1:Ljava/util/regex/Pattern;
    const-string v24, "^[0-1][0-9]/[0-3][0-9]\\s[0-2][0-9]:[0-5][0-9]\\s\uff83\uff9a\uff8b\uff9e\u96fb\u8a71\\n"

    invoke-static/range {v24 .. v24}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v17

    .line 3214
    .local v17, pattern2:Ljava/util/regex/Pattern;
    const-wide/16 v24, 0x0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 3215
    .local v3, TimeMillis:Ljava/lang/Long;
    const-string v19, ""

    .line 3216
    .local v19, presentation:Ljava/lang/String;
    :goto_0
    if-nez v7, :cond_c

    .line 3218
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 3219
    .local v9, matcher1:Ljava/util/regex/Matcher;
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 3221
    .local v10, matcher2:Ljava/util/regex/Matcher;
    const-string v5, ""

    .line 3223
    .local v5, date:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v24

    if-eqz v24, :cond_5

    .line 3224
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    .line 3225
    const-string v24, ""

    move-object/from16 v0, v24

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3234
    :goto_1
    const-string v24, "\n\n"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    .line 3237
    .local v18, pauseIndex:I
    if-ltz v18, :cond_7

    .line 3239
    const/16 v24, 0x0

    move/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 3240
    .local v13, number:Ljava/lang/String;
    const-string v24, "+"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-nez v24, :cond_6

    .line 3241
    const-string v24, "\n\n"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    add-int/lit8 v24, v24, 0x2

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 3253
    :goto_2
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_4

    .line 3255
    invoke-static {v5}, Lcom/android/mms/transaction/MessagingNotification;->ConvertTimeMillisFromSMS(Ljava/lang/String;)J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 3256
    const-string v19, ""

    .line 3258
    const-string v24, "\u901a\u77e5\u4e0d\u53ef\u80fd"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_1

    const-string v24, "\u975e\u901a\u77e5\u8a2d\u5b9a"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_1

    const-string v24, "\u516c\u8846\u96fb\u8a71"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 3262
    :cond_1
    move-object/from16 v19, v13

    .line 3265
    :cond_2
    const/16 v24, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 3266
    .local v11, msgId:J
    const/16 v24, 0x3

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 3267
    .local v14, ori_body:Ljava/lang/String;
    const/16 v24, 0x4

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v21, v0

    .line 3268
    .local v21, type:J
    const/16 v24, 0x5

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 3270
    .local v20, read:I
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_3

    .line 3272
    const-string v24, "\u975e\u901a\u77e5\u8a2d\u5b9a"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_8

    .line 3274
    const-string v13, "-2"

    .line 3286
    :cond_3
    :goto_3
    const-string v24, "date"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3287
    const-string v25, "type"

    const-wide/16 v26, 0x1

    cmp-long v24, v21, v26

    if-nez v24, :cond_a

    const/16 v24, 0x1

    :goto_4
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3288
    const-string v24, "number"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3289
    const-string v24, "messageid"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3290
    const-string v24, "m_content"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3291
    const-string v25, "new"

    if-nez v20, :cond_b

    const/16 v24, 0x1

    :goto_5
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3294
    :try_start_0
    sget-object v24, Lcom/android/mms/transaction/MessagingNotification;->LOG_SMS_URI:Landroid/net/Uri;

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3300
    .end local v11           #msgId:J
    .end local v14           #ori_body:Ljava/lang/String;
    .end local v20           #read:I
    .end local v21           #type:J
    :cond_4
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    .line 3301
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    .line 3302
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    goto/16 :goto_0

    .line 3227
    .end local v13           #number:Ljava/lang/String;
    .end local v18           #pauseIndex:I
    :cond_5
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v24

    if-eqz v24, :cond_c

    .line 3228
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    .line 3229
    const-string v24, ""

    move-object/from16 v0, v24

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 3244
    .restart local v13       #number:Ljava/lang/String;
    .restart local v18       #pauseIndex:I
    :cond_6
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\n\n"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const-string v25, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    .line 3249
    .end local v13           #number:Ljava/lang/String;
    :cond_7
    move-object v13, v4

    .line 3250
    .restart local v13       #number:Ljava/lang/String;
    const/4 v7, 0x1

    goto/16 :goto_2

    .line 3276
    .restart local v11       #msgId:J
    .restart local v14       #ori_body:Ljava/lang/String;
    .restart local v20       #read:I
    .restart local v21       #type:J
    :cond_8
    const-string v24, "\u516c\u8846\u96fb\u8a71"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_9

    .line 3278
    const-string v13, "-3"

    goto/16 :goto_3

    .line 3280
    :cond_9
    const-string v24, "\u901a\u77e5\u4e0d\u53ef\u80fd"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 3282
    const-string v13, "-1"

    goto/16 :goto_3

    .line 3287
    :cond_a
    const/16 v24, 0x2

    goto/16 :goto_4

    .line 3291
    :cond_b
    const/16 v24, 0x0

    goto/16 :goto_5

    .line 3295
    :catch_0
    move-exception v6

    .line 3296
    .local v6, e:Landroid/database/sqlite/SQLiteException;
    const-string v24, "Mms/MessagingNotification"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Exception addcall to CallLog from sms: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3304
    .end local v5           #date:Ljava/lang/String;
    .end local v6           #e:Landroid/database/sqlite/SQLiteException;
    .end local v9           #matcher1:Ljava/util/regex/Matcher;
    .end local v10           #matcher2:Ljava/util/regex/Matcher;
    .end local v11           #msgId:J
    .end local v13           #number:Ljava/lang/String;
    .end local v14           #ori_body:Ljava/lang/String;
    .end local v18           #pauseIndex:I
    .end local v20           #read:I
    .end local v21           #type:J
    :cond_c
    return-void
.end method

.method public static isBlockingModeEnabled(Landroid/content/Context;)Z
    .locals 14
    .parameter "context"

    .prologue
    const/4 v13, 0x1

    const/4 v10, 0x0

    .line 2161
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportDormantMode()Z

    move-result v11

    if-nez v11, :cond_1

    move v7, v10

    .line 2204
    :cond_0
    :goto_0
    return v7

    .line 2165
    :cond_1
    const/4 v1, 0x0

    .line 2166
    .local v1, UNCHECK:I
    const/4 v0, 0x1

    .line 2168
    .local v0, CHECK:I
    const/4 v7, 0x0

    .line 2170
    .local v7, isEnabled:Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "dormant_switch_onoff"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 2171
    .local v6, isBlockingModeOn:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "dormant_disable_notifications"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 2173
    .local v8, isNotificationChecked:I
    if-ne v8, v13, :cond_0

    if-ne v6, v13, :cond_0

    .line 2174
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "dormant_always"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 2176
    .local v5, isBlockingModeAlways:I
    if-ne v5, v13, :cond_2

    .line 2177
    const/4 v7, 0x1

    goto :goto_0

    .line 2179
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 2180
    .local v2, c:Ljava/util/Calendar;
    const/16 v11, 0xb

    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    mul-int/lit8 v11, v11, 0x3c

    const/16 v12, 0xc

    invoke-virtual {v2, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    add-int v3, v11, v12

    .line 2182
    .local v3, curTime:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "dormant_start_hour"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    mul-int/lit8 v11, v11, 0x3c

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "dormant_start_min"

    invoke-static {v12, v13, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    add-int v9, v11, v12

    .line 2185
    .local v9, startTime:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "dormant_end_hour"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    mul-int/lit8 v11, v11, 0x3c

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "dormant_end_min"

    invoke-static {v12, v13, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    add-int v4, v11, v10

    .line 2189
    .local v4, endTime:I
    if-ge v9, v4, :cond_3

    .line 2190
    if-lt v3, v9, :cond_0

    if-ge v3, v4, :cond_0

    .line 2191
    const/4 v7, 0x1

    goto :goto_0

    .line 2194
    :cond_3
    if-le v9, v4, :cond_5

    .line 2195
    if-lt v3, v4, :cond_4

    if-lt v3, v9, :cond_0

    .line 2196
    :cond_4
    const/4 v7, 0x1

    goto :goto_0

    .line 2199
    :cond_5
    const/4 v7, 0x1

    goto :goto_0
.end method

.method public static isFailedToDeliver(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    .line 2789
    if-eqz p0, :cond_0

    const-string v1, "undelivered_flag"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isFailedToDownload(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    .line 2793
    if-eqz p0, :cond_0

    const-string v1, "failed_download_flag"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isHebrew(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 2034
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 2035
    .local v0, language:Ljava/lang/String;
    const-string v1, "iw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2036
    const/4 v1, 0x1

    .line 2038
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isPresidentialCmas(Landroid/content/Context;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;IZ)Z
    .locals 4
    .parameter "context"
    .parameter "mostRecentNotification"
    .parameter "messageCount"
    .parameter "isNew"

    .prologue
    .line 3571
    const-string v0, ""

    .line 3574
    .local v0, presidentialCMAS:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 3575
    const v1, 0x7f0c01c5

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3580
    :goto_0
    const-string v1, "Mms/MessagingNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "presidentialCMAS = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mostRecentNotification.getTitle(context, messageCount) = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, p0, p2, p3}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getTitle(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3582
    invoke-virtual {p1, p0, p2, p3}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getTitle(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3583
    const/4 v1, 0x1

    .line 3586
    :goto_1
    return v1

    .line 3577
    :cond_0
    const v1, 0x7f0c01e9

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3586
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static isValidThreadId(Landroid/content/Context;J)Z
    .locals 2
    .parameter "context"
    .parameter "threadId"

    .prologue
    .line 2557
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static loadNotificationPref(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 715
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 716
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "pref_key_enable_preview_message"

    sget-boolean v2, Lcom/android/mms/transaction/MessagingNotification;->sEnablePreview:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/mms/transaction/MessagingNotification;->sEnablePreview:Z

    .line 717
    const-string v1, "pref_key_enable_notifications"

    sget-boolean v2, Lcom/android/mms/transaction/MessagingNotification;->sEnableNotification:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/mms/transaction/MessagingNotification;->sEnableNotification:Z

    .line 718
    const-string v1, "pref_key_msg_reminder_alert"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/mms/transaction/MessagingNotification;->sReminderCount:Ljava/lang/String;

    .line 719
    const-string v1, "pref_key_emergency_alert_reminder"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/mms/transaction/MessagingNotification;->sReminderAlertCount:Ljava/lang/String;

    .line 720
    const-string v1, "pref_key_cmas_vibrateWhen_checkbox"

    sget-boolean v2, Lcom/android/mms/transaction/MessagingNotification;->sEnableCmasVibrate:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/mms/transaction/MessagingNotification;->sEnableCmasVibrate:Z

    .line 721
    const-string v1, "pref_key_cmas_audioWhen_checkbox"

    sget-boolean v2, Lcom/android/mms/transaction/MessagingNotification;->sEnableCmasAudio:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/mms/transaction/MessagingNotification;->sEnableCmasAudio:Z

    .line 722
    const-string v1, "pref_key_backlight"

    sget-boolean v2, Lcom/android/mms/transaction/MessagingNotification;->sEnableBacklight:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/mms/transaction/MessagingNotification;->sEnableBacklight:Z

    .line 723
    const-string v1, "pref_key_ringtone"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/mms/transaction/MessagingNotification;->sRingtoneStr:Ljava/lang/String;

    .line 725
    sget-boolean v1, Lcom/android/mms/transaction/MessagingNotification;->sDisableVibrateForCamera:Z

    if-eqz v1, :cond_0

    .line 726
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/mms/transaction/MessagingNotification;->sEnableVibrate:Z

    .line 730
    :goto_0
    return-void

    .line 728
    :cond_0
    const-string v1, "pref_key_vibrateWhen_checkbox"

    sget-boolean v2, Lcom/android/mms/transaction/MessagingNotification;->sEnableVibrate:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/mms/transaction/MessagingNotification;->sEnableVibrate:Z

    goto :goto_0
.end method

.method private static makeReadOutNewMessageString(Landroid/content/Context;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;IZ)Ljava/lang/StringBuffer;
    .locals 6
    .parameter "context"
    .parameter "mostRecentNotification"
    .parameter "messageCount"
    .parameter "isNew"

    .prologue
    .line 733
    if-nez p1, :cond_1

    .line 734
    const/4 v2, 0x0

    .line 759
    :cond_0
    :goto_0
    return-object v2

    .line 737
    :cond_1
    const/4 v1, 0x0

    .line 740
    .local v1, readOutNewMessageNotification:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_message_notification"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 741
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 743
    .local v2, readOutText:Ljava/lang/StringBuffer;
    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 744
    invoke-virtual {p1, p0, p2, p3}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getTitle(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 745
    const v3, 0x7f0c0155

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 747
    :cond_2
    const v0, 0x7f0c0154

    .line 749
    .local v0, defaultStringId:I
    invoke-virtual {p1}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->isMms()Z

    move-result v3

    if-nez v3, :cond_3

    .line 750
    const v0, 0x7f0c0153

    .line 755
    :cond_3
    invoke-virtual {p1, p0, p2, p3}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getTitle(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v2, v0}, Lcom/android/mms/transaction/MessagingNotification;->addBlankForTTS(Landroid/content/Context;Ljava/lang/String;Ljava/lang/StringBuffer;I)V

    goto :goto_0
.end method

.method public static nonBlockUpdateDownloadFailedNotification(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 2772
    new-instance v0, Lcom/android/mms/transaction/MessagingNotification$5;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/MessagingNotification$5;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/MessagingNotification$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2786
    return-void
.end method

.method public static nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V
    .locals 2
    .parameter "context"
    .parameter "threadId"
    .parameter "isStatusMessage"

    .prologue
    .line 426
    const-string v0, "Mms/MessagingNotification"

    const-string v1, "nonBlockingUpdateNewMessageIndicator()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/transaction/MessagingNotification$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/mms/transaction/MessagingNotification$1;-><init>(Landroid/content/Context;JZ)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 433
    return-void
.end method

.method public static nonBlockingUpdateSendFailedNotification(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 436
    new-instance v0, Lcom/android/mms/transaction/MessagingNotification$2;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/MessagingNotification$2;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/MessagingNotification$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 450
    return-void
.end method

.method public static notifyDownloadFailed(Landroid/content/Context;J)V
    .locals 1
    .parameter "context"
    .parameter "threadId"

    .prologue
    const/4 v0, 0x1

    .line 2404
    invoke-static {p0, v0, p1, p2, v0}, Lcom/android/mms/transaction/MessagingNotification;->notifyFailed(Landroid/content/Context;ZJZ)V

    .line 2405
    return-void
.end method

.method private static notifyFailed(Landroid/content/Context;ZJZ)V
    .locals 15
    .parameter "context"
    .parameter "isDownload"
    .parameter "threadId"
    .parameter "noisy"

    .prologue
    .line 2416
    const-string v11, "Mms/MessagingNotification"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "notifyFailed(),isDownload="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",threadId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p2

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",noisy="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2418
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->loadNotificationPref(Landroid/content/Context;)V

    .line 2420
    sget-boolean v11, Lcom/android/mms/transaction/MessagingNotification;->sEnableNotification:Z

    if-nez v11, :cond_0

    .line 2421
    const-string v11, "Mms/MessagingNotification"

    const-string v12, "NOTIFICATION_ENABLED - false"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2496
    :goto_0
    return-void

    .line 2432
    :cond_0
    const/4 v11, 0x2

    new-array v5, v11, [J

    fill-array-data v5, :array_0

    .line 2433
    .local v5, msgThreadId:[J
    invoke-static {p0, v5}, Lcom/android/mms/transaction/MessagingNotification;->getUndeliveredMessageCount(Landroid/content/Context;[J)I

    move-result v10

    .line 2434
    .local v10, totalFailedCount:I
    const-string v11, "Mms/MessagingNotification"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "notifyFailed(),totalFailedCount="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2435
    if-nez v10, :cond_1

    if-nez p1, :cond_1

    .line 2436
    const/16 v11, 0x315

    invoke-static {p0, v11}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    goto :goto_0

    .line 2443
    :cond_1
    const/4 v11, 0x1

    aget-wide v11, v5, v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-nez v11, :cond_2

    if-eqz p1, :cond_4

    :cond_2
    const/4 v2, 0x1

    .line 2444
    .local v2, allFailedInSameThread:Z
    :goto_1
    const-string v11, "Mms/MessagingNotification"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "notifyFailed(),allFailedInSameThread="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2446
    new-instance v4, Landroid/content/Intent;

    const-class v11, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v4, p0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2447
    .local v4, failedIntent:Landroid/content/Intent;
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    .line 2450
    .local v6, notification:Landroid/app/Notification;
    const/4 v11, 0x1

    if-le v10, v11, :cond_5

    .line 2451
    const v11, 0x7f0c00b6

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {p0, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2452
    .local v3, description:Ljava/lang/String;
    const v11, 0x7f0c00b7

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2459
    .local v9, title:Ljava/lang/String;
    :goto_2
    if-eqz v2, :cond_8

    .line 2460
    if-eqz p1, :cond_7

    .line 2462
    const-string v11, "failed_download_flag"

    const/4 v12, 0x1

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2468
    :goto_3
    const-string v11, "thread_id"

    move-wide/from16 v0, p2

    invoke-virtual {v4, v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2473
    :goto_4
    invoke-static {v4}, Lcom/android/mms/transaction/MessagingNotification;->addNotiIntentType(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v4

    .line 2474
    const-string v11, "isFailedNoti"

    const/4 v12, 0x1

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2476
    const/4 v11, 0x0

    const/high16 v12, 0x800

    invoke-static {p0, v11, v4, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 2478
    .local v8, pendingIntent:Landroid/app/PendingIntent;
    const v11, 0x7f02026e

    iput v11, v6, Landroid/app/Notification;->icon:I

    .line 2479
    iput-object v9, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2480
    invoke-virtual {v6, p0, v9, v3, v8}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2481
    const/4 v11, 0x2

    iput v11, v6, Landroid/app/Notification;->priority:I

    .line 2483
    if-eqz p4, :cond_3

    .line 2484
    const/4 v11, 0x0

    invoke-static {p0, v6, v11}, Lcom/android/mms/transaction/MessagingNotification;->decideNotificationType(Landroid/content/Context;Landroid/app/Notification;Lcom/android/mms/data/Contact;)V

    .line 2487
    :cond_3
    const-string v11, "notification"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .line 2490
    .local v7, notificationMgr:Landroid/app/NotificationManager;
    if-eqz p1, :cond_9

    .line 2491
    const/16 v11, 0x213

    invoke-virtual {v7, v11, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 2495
    :goto_5
    invoke-static {p0}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 2443
    .end local v2           #allFailedInSameThread:Z
    .end local v3           #description:Ljava/lang/String;
    .end local v4           #failedIntent:Landroid/content/Intent;
    .end local v6           #notification:Landroid/app/Notification;
    .end local v7           #notificationMgr:Landroid/app/NotificationManager;
    .end local v8           #pendingIntent:Landroid/app/PendingIntent;
    .end local v9           #title:Ljava/lang/String;
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 2454
    .restart local v2       #allFailedInSameThread:Z
    .restart local v4       #failedIntent:Landroid/content/Intent;
    .restart local v6       #notification:Landroid/app/Notification;
    :cond_5
    if-eqz p1, :cond_6

    const v11, 0x7f0c00ca

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2456
    .restart local v9       #title:Ljava/lang/String;
    :goto_6
    const v11, 0x7f0c00cc

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #description:Ljava/lang/String;
    goto :goto_2

    .line 2454
    .end local v3           #description:Ljava/lang/String;
    .end local v9           #title:Ljava/lang/String;
    :cond_6
    const v11, 0x7f0c00cb

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_6

    .line 2464
    .restart local v3       #description:Ljava/lang/String;
    .restart local v9       #title:Ljava/lang/String;
    :cond_7
    const/4 v11, 0x0

    aget-wide p2, v5, v11

    .line 2465
    const-string v11, "undelivered_flag"

    const/4 v12, 0x1

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_3

    .line 2470
    :cond_8
    const-string v11, "android.intent.action.MAIN"

    invoke-virtual {v4, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    .line 2493
    .restart local v7       #notificationMgr:Landroid/app/NotificationManager;
    .restart local v8       #pendingIntent:Landroid/app/PendingIntent;
    :cond_9
    const/16 v11, 0x315

    invoke-virtual {v7, v11, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_5

    .line 2432
    nop

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static notifySendFailed(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 2408
    const-wide/16 v0, 0x0

    invoke-static {p0, v2, v0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->notifyFailed(Landroid/content/Context;ZJZ)V

    .line 2409
    return-void
.end method

.method public static notifySendFailed(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "noisy"

    .prologue
    .line 2412
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Lcom/android/mms/transaction/MessagingNotification;->notifyFailed(Landroid/content/Context;ZJZ)V

    .line 2413
    return-void
.end method

.method private static playCmasTone(Landroid/content/Context;)V
    .locals 11
    .parameter "mContext"

    .prologue
    const/4 v10, 0x7

    const/4 v9, 0x6

    .line 4156
    const/4 v4, 0x0

    .line 4157
    .local v4, ringtoneStr:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v5

    if-eq v5, v9, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v5

    if-ne v5, v10, :cond_1

    .line 4158
    :cond_0
    const-string v4, "android.resource://com.android.mms/raw/cmas_ringtone_ltn"

    .line 4163
    :goto_0
    if-nez v4, :cond_2

    .line 4164
    const-string v5, "Mms/MessagingNotification"

    const-string v6, "Ringtone str not found"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4210
    :goto_1
    return-void

    .line 4160
    :cond_1
    const-string v4, "android.resource://com.android.mms/raw/cmas_ringtone"

    goto :goto_0

    .line 4169
    :cond_2
    :try_start_0
    sget-object v6, Lcom/android/mms/transaction/MessagingNotification;->sMediaPlayerThreadLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4170
    :try_start_1
    sget-object v5, Lcom/android/mms/transaction/MessagingNotification;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v5, :cond_5

    .line 4171
    sget-object v5, Lcom/android/mms/transaction/MessagingNotification;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->reset()V

    .line 4172
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->releaseMediaPlayer()V

    .line 4174
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v5

    if-eq v5, v9, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v5

    if-ne v5, v10, :cond_5

    .line 4176
    :cond_3
    sget v5, Lcom/android/mms/transaction/MessagingNotification;->mOldVolume:I

    if-ltz v5, :cond_5

    .line 4177
    const-string v5, "audio"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 4178
    .local v0, audioManager:Landroid/media/AudioManager;
    if-eqz v0, :cond_4

    .line 4179
    const/4 v5, 0x3

    sget v7, Lcom/android/mms/transaction/MessagingNotification;->mOldVolume:I

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v7, v8}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 4182
    :cond_4
    const/4 v5, -0x1

    sput v5, Lcom/android/mms/transaction/MessagingNotification;->mOldVolume:I

    .line 4186
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :cond_5
    new-instance v5, Landroid/media/MediaPlayer;

    invoke-direct {v5}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v5, Lcom/android/mms/transaction/MessagingNotification;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 4187
    sget-object v5, Lcom/android/mms/transaction/MessagingNotification;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v5, :cond_8

    .line 4188
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 4189
    .local v3, mediaURI:Landroid/net/Uri;
    sget-object v5, Lcom/android/mms/transaction/MessagingNotification;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5, p0, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 4190
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v5

    if-eq v5, v9, :cond_6

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v5

    if-ne v5, v10, :cond_7

    .line 4191
    :cond_6
    const-string v5, "audio"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 4193
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    if-eqz v0, :cond_7

    .line 4194
    sget-boolean v5, Lcom/android/mms/ui/MessageUtils;->mIsHeadsetPlugged:Z

    if-eqz v5, :cond_9

    const/16 v1, 0x9

    .line 4195
    .local v1, desiredVolume:I
    :goto_2
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    sput v5, Lcom/android/mms/transaction/MessagingNotification;->mOldVolume:I

    .line 4196
    const/4 v5, 0x3

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v1, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 4199
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v1           #desiredVolume:I
    :cond_7
    sget-object v5, Lcom/android/mms/transaction/MessagingNotification;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->prepare()V

    .line 4200
    sget-object v5, Lcom/android/mms/transaction/MessagingNotification;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->start()V

    .line 4203
    const-string v5, "Mms/MessagingNotification"

    const-string v7, "Am now in playing"

    invoke-static {v5, v7}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4205
    .end local v3           #mediaURI:Landroid/net/Uri;
    :cond_8
    monitor-exit v6

    goto/16 :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 4207
    :catch_0
    move-exception v2

    .line 4208
    .local v2, ex:Ljava/lang/Exception;
    const-string v5, "Mms/MessagingNotification"

    const-string v6, "Exception in tree click"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4194
    .end local v2           #ex:Ljava/lang/Exception;
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    .restart local v3       #mediaURI:Landroid/net/Uri;
    :cond_9
    const/4 v5, 0x3

    :try_start_3
    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    goto :goto_2
.end method

.method private static playInConversationNotificationSound(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 820
    sget-object v1, Lcom/android/mms/transaction/MessagingNotification;->sRingtoneStr:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 836
    :goto_0
    return-void

    .line 824
    :cond_0
    sget-object v1, Lcom/android/mms/transaction/MessagingNotification;->sRingtoneStr:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 825
    .local v2, ringtoneUri:Landroid/net/Uri;
    new-instance v0, Lcom/android/mms/transaction/NotificationPlayer;

    const-string v1, "Mms:app"

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/NotificationPlayer;-><init>(Ljava/lang/String;)V

    .line 826
    .local v0, player:Lcom/android/mms/transaction/NotificationPlayer;
    const/4 v3, 0x0

    const/4 v4, 0x5

    const/high16 v5, 0x3e80

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/transaction/NotificationPlayer;->play(Landroid/content/Context;Landroid/net/Uri;ZIF)V

    .line 830
    sget-object v1, Lcom/android/mms/transaction/MessagingNotification;->sHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/mms/transaction/MessagingNotification$3;

    invoke-direct {v3, v0}, Lcom/android/mms/transaction/MessagingNotification$3;-><init>(Lcom/android/mms/transaction/NotificationPlayer;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private static playToneViaHeadset(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 4134
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 4135
    .local v0, audioManager:Landroid/media/AudioManager;
    const-string v2, "Mms/MessagingNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playToneViaHeadset(), cmasHeadsetUri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/mms/transaction/MessagingNotification;->sRingtoneStr:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4138
    :try_start_0
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->releaseMediaPlayer()V

    .line 4140
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v2, Lcom/android/mms/transaction/MessagingNotification;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 4142
    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    .line 4143
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 4144
    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->mMediaPlayer:Landroid/media/MediaPlayer;

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->sRingtoneStr:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 4145
    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 4147
    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 4148
    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4153
    :cond_0
    :goto_0
    return-void

    .line 4150
    :catch_0
    move-exception v1

    .line 4151
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "Mms/MessagingNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playToneViaHeadset() caught Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static releaseMediaPlayer()V
    .locals 1

    .prologue
    .line 4127
    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 4128
    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 4129
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 4131
    :cond_0
    return-void
.end method

.method private static removeColon(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "title"

    .prologue
    .line 806
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 807
    .local v1, recipient:Ljava/lang/StringBuilder;
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 808
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 809
    .local v0, colonIndex:I
    if-ltz v0, :cond_0

    .line 810
    add-int/lit8 v2, v0, 0x1

    const-string v3, ""

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static setBadge(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "count"

    .prologue
    .line 2878
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2885
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    const-string v2, "com.android.mms"

    const-string v3, "com.android.mms.ui.ConversationComposer"

    invoke-static {v0, v2, v3, p1}, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->setBadgeCount(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2886
    const-string v2, "Mms/MessagingNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setBadgeCount(), count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2892
    :goto_0
    return-void

    .line 2887
    :catch_0
    move-exception v1

    .line 2888
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "Mms/MessagingNotification"

    const-string v3, "BadgeProvider wasn\'t installed"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2889
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 2890
    .local v1, e:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v2, "Mms/MessagingNotification"

    const-string v3, "updateAllHistoryAsRead() caught SQLiteDiskIOException while setting badge count, e"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static setCmasAlert(Landroid/content/Context;Landroid/app/Notification;)V
    .locals 14
    .parameter "context"
    .parameter "notification"

    .prologue
    .line 3952
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLCDOn()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 3953
    const-string v11, "power"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 3954
    .local v6, pm:Landroid/os/PowerManager;
    const v11, 0x1000001a

    const-string v12, "New message notification LCD on"

    invoke-virtual {v6, v11, v12}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v10

    .line 3956
    .local v10, wl:Landroid/os/PowerManager$WakeLock;
    const-wide/16 v11, 0x2af8

    invoke-virtual {v10, v11, v12}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 3960
    .end local v6           #pm:Landroid/os/PowerManager;
    .end local v10           #wl:Landroid/os/PowerManager$WakeLock;
    :cond_0
    const-string v11, "audio"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 3962
    .local v1, audioManager:Landroid/media/AudioManager;
    const/4 v11, 0x0

    iput-object v11, p1, Landroid/app/Notification;->vibrate:[J

    .line 3963
    const/4 v5, 0x0

    .line 3965
    .local v5, cmasVibrate:Z
    const/4 v4, 0x0

    .line 3966
    .local v4, cmasAudio:Z
    const/4 v0, 0x0

    .line 3968
    .local v0, Is_USCC:Z
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v11

    const/4 v12, 0x5

    if-ne v11, v12, :cond_1

    .line 3969
    const/4 v0, 0x1

    .line 3973
    :cond_1
    sget-object v11, Lcom/android/mms/transaction/MessagingNotification;->sCmasVibrator:Landroid/os/Vibrator;

    if-eqz v11, :cond_2

    .line 3974
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->cancelCmasVibrator()V

    .line 3977
    :cond_2
    sget-object v11, Lcom/android/mms/transaction/MessagingNotification;->sCmasVibrator:Landroid/os/Vibrator;

    if-nez v11, :cond_3

    .line 3978
    const-string v11, "vibrator"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Vibrator;

    sput-object v11, Lcom/android/mms/transaction/MessagingNotification;->sCmasVibrator:Landroid/os/Vibrator;

    .line 3982
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_8

    .line 3983
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNotificationVibrate()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 3984
    sget-boolean v11, Lcom/android/mms/transaction/MessagingNotification;->sEnableNotification:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_6

    .line 3985
    sget-boolean v5, Lcom/android/mms/transaction/MessagingNotification;->sEnableVibrate:Z

    .line 4001
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isTMOCMASFeatureEnabled()Z

    move-result v11

    if-eqz v11, :cond_10

    .line 4006
    invoke-static {}, Lcom/android/mms/MmsConfig;->isTMOCMASPHASEIIIFeatureEnabled()Z

    move-result v11

    if-eqz v11, :cond_f

    .line 4007
    invoke-static {}, Lcom/android/mms/transaction/CmasAlarmReceiver;->getReminderCount()I

    move-result v11

    const/4 v12, -0x1

    if-le v11, v12, :cond_a

    .line 4008
    sget-object v11, Lcom/android/mms/transaction/MessagingNotification;->sCmasVibrator:Landroid/os/Vibrator;

    const/16 v12, 0xc

    new-array v12, v12, [J

    fill-array-data v12, :array_0

    const/4 v13, -0x1

    invoke-virtual {v11, v12, v13}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 4039
    :cond_4
    :goto_1
    const-string v7, "android.resource://com.android.mms/raw/cmas_ringtone"

    .line 4041
    .local v7, ringtoneStr:Ljava/lang/String;
    sget-boolean v11, Lcom/android/mms/ui/MessageUtils;->mIsHeadsetPlugged:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_14

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v11

    if-eqz v11, :cond_14

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v11

    const/4 v12, 0x4

    if-ne v11, v12, :cond_14

    .line 4043
    const/4 v11, 0x0

    iput-object v11, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 4044
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->playToneViaHeadset(Landroid/content/Context;)V

    .line 4084
    :cond_5
    :goto_2
    return-void

    .line 3987
    .end local v7           #ringtoneStr:Ljava/lang/String;
    :cond_6
    const/4 v5, 0x0

    goto :goto_0

    .line 3990
    :cond_7
    const/4 v5, 0x0

    goto :goto_0

    .line 3993
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->isTMOCMASPHASEIIIFeatureEnabled()Z

    move-result v11

    if-nez v11, :cond_9

    invoke-static {}, Lcom/android/mms/MmsConfig;->isTMOCMASFeatureEnabled()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 3994
    const/4 v5, 0x0

    goto :goto_0

    .line 3997
    :cond_9
    sget-boolean v5, Lcom/android/mms/transaction/MessagingNotification;->sEnableCmasVibrate:Z

    goto :goto_0

    .line 4010
    :cond_a
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v11

    if-eqz v11, :cond_4

    .line 4011
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v9

    .line 4012
    .local v9, vibrateSetting:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "vibrate_in_silent"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_d

    const/4 v3, 0x1

    .line 4013
    .local v3, bVibrateSilent:Z
    :goto_3
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v11

    const/4 v12, 0x2

    if-eq v11, v12, :cond_e

    const/4 v2, 0x1

    .line 4015
    .local v2, bNowSilent:Z
    :goto_4
    if-eqz v2, :cond_b

    if-nez v3, :cond_c

    :cond_b
    if-nez v2, :cond_4

    const/4 v11, 0x1

    if-ne v9, v11, :cond_4

    .line 4016
    :cond_c
    const/16 v11, 0xc

    new-array v11, v11, [J

    fill-array-data v11, :array_1

    iput-object v11, p1, Landroid/app/Notification;->vibrate:[J

    goto :goto_1

    .line 4012
    .end local v2           #bNowSilent:Z
    .end local v3           #bVibrateSilent:Z
    :cond_d
    const/4 v3, 0x0

    goto :goto_3

    .line 4013
    .restart local v3       #bVibrateSilent:Z
    :cond_e
    const/4 v2, 0x0

    goto :goto_4

    .line 4021
    .end local v3           #bVibrateSilent:Z
    .end local v9           #vibrateSetting:I
    :cond_f
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v11

    if-nez v11, :cond_4

    invoke-static {}, Lcom/android/mms/transaction/CmasAlarmReceiver;->getReminderCount()I

    move-result v11

    const/4 v12, -0x1

    if-le v11, v12, :cond_4

    .line 4022
    sget-object v11, Lcom/android/mms/transaction/MessagingNotification;->sCmasVibrator:Landroid/os/Vibrator;

    const/16 v12, 0xc

    new-array v12, v12, [J

    fill-array-data v12, :array_2

    const/4 v13, -0x1

    invoke-virtual {v11, v12, v13}, Landroid/os/Vibrator;->vibrate([JI)V

    goto/16 :goto_1

    .line 4025
    :cond_10
    if-eqz v0, :cond_11

    if-eqz v5, :cond_11

    .line 4026
    sget-object v11, Lcom/android/mms/transaction/MessagingNotification;->sCmasVibrator:Landroid/os/Vibrator;

    const/16 v12, 0xc

    new-array v12, v12, [J

    fill-array-data v12, :array_3

    const/4 v13, -0x1

    invoke-virtual {v11, v12, v13}, Landroid/os/Vibrator;->vibrate([JI)V

    goto/16 :goto_1

    .line 4027
    :cond_11
    if-eqz v5, :cond_13

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v11

    const/4 v12, 0x6

    if-eq v11, v12, :cond_12

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v11

    const/4 v12, 0x7

    if-ne v11, v12, :cond_13

    .line 4028
    :cond_12
    sget-object v8, Lcom/android/mms/transaction/MessagingNotification;->sCmasVibrator:Landroid/os/Vibrator;

    check-cast v8, Landroid/os/SystemVibrator;

    .line 4029
    .local v8, systemVibrator:Landroid/os/SystemVibrator;
    const/16 v11, 0xc

    new-array v11, v11, [J

    fill-array-data v11, :array_4

    const/4 v12, 0x0

    invoke-virtual {v8}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v13

    invoke-virtual {v8, v11, v12, v13}, Landroid/os/SystemVibrator;->vibrate([JII)V

    goto/16 :goto_1

    .line 4031
    .end local v8           #systemVibrator:Landroid/os/SystemVibrator;
    :cond_13
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v11

    if-eqz v11, :cond_4

    if-eqz v5, :cond_4

    .line 4033
    const/16 v11, 0xc

    new-array v11, v11, [J

    fill-array-data v11, :array_5

    iput-object v11, p1, Landroid/app/Notification;->vibrate:[J

    goto/16 :goto_1

    .line 4045
    .restart local v7       #ringtoneStr:Ljava/lang/String;
    :cond_14
    if-eqz v0, :cond_16

    .line 4046
    sget-boolean v4, Lcom/android/mms/transaction/MessagingNotification;->sEnableCmasAudio:Z

    .line 4047
    if-eqz v4, :cond_15

    .line 4048
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->playCmasTone(Landroid/content/Context;)V

    .line 4050
    :cond_15
    const/4 v11, 0x0

    iput-object v11, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    goto/16 :goto_2

    .line 4052
    :cond_16
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v11

    const/4 v12, 0x6

    if-eq v11, v12, :cond_17

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v11

    const/4 v12, 0x7

    if-ne v11, v12, :cond_1a

    .line 4053
    :cond_17
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->playCmasTone(Landroid/content/Context;)V

    .line 4071
    :goto_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->isTMOCMASPHASEIIIFeatureEnabled()Z

    move-result v11

    if-nez v11, :cond_5

    .line 4072
    invoke-static {}, Lcom/android/mms/MmsConfig;->isTMOCMASFeatureEnabled()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v11

    if-eqz v11, :cond_5

    .line 4073
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v9

    .line 4074
    .restart local v9       #vibrateSetting:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "vibrate_in_silent"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1d

    const/4 v3, 0x1

    .line 4075
    .restart local v3       #bVibrateSilent:Z
    :goto_6
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v11

    const/4 v12, 0x2

    if-eq v11, v12, :cond_1e

    const/4 v2, 0x1

    .line 4077
    .restart local v2       #bNowSilent:Z
    :goto_7
    if-eqz v2, :cond_18

    if-nez v3, :cond_19

    :cond_18
    if-nez v2, :cond_5

    const/4 v11, 0x1

    if-ne v9, v11, :cond_5

    .line 4078
    :cond_19
    const/16 v11, 0xc

    new-array v11, v11, [J

    fill-array-data v11, :array_6

    iput-object v11, p1, Landroid/app/Notification;->vibrate:[J

    goto/16 :goto_2

    .line 4058
    .end local v2           #bNowSilent:Z
    .end local v3           #bVibrateSilent:Z
    .end local v9           #vibrateSetting:I
    :cond_1a
    invoke-static {}, Lcom/android/mms/MmsConfig;->isTMOCMASPHASEIIIFeatureEnabled()Z

    move-result v11

    if-eqz v11, :cond_1b

    invoke-static {}, Lcom/android/mms/transaction/CmasAlarmReceiver;->getReminderCount()I

    move-result v11

    const/4 v12, -0x1

    if-le v11, v12, :cond_1b

    .line 4060
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->playCmasTone(Landroid/content/Context;)V

    .line 4061
    const/4 v11, 0x0

    iput-object v11, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    goto :goto_5

    .line 4063
    :cond_1b
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1c

    const/4 v11, 0x0

    :goto_8
    iput-object v11, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    goto :goto_5

    :cond_1c
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    goto :goto_8

    .line 4074
    .restart local v9       #vibrateSetting:I
    :cond_1d
    const/4 v3, 0x0

    goto :goto_6

    .line 4075
    .restart local v3       #bVibrateSilent:Z
    :cond_1e
    const/4 v2, 0x0

    goto :goto_7

    .line 4008
    nop

    :array_0
    .array-data 0x8
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 4016
    :array_1
    .array-data 0x8
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 4022
    :array_2
    .array-data 0x8
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 4026
    :array_3
    .array-data 0x8
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 4029
    :array_4
    .array-data 0x8
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 4033
    :array_5
    .array-data 0x8
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 4078
    :array_6
    .array-data 0x8
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private static setCmasNotiIcon(Landroid/content/Context;ZLcom/android/mms/transaction/MessagingNotification$NotificationInfo;)I
    .locals 5
    .parameter "context"
    .parameter "isNew"
    .parameter "mostRecentNotification"

    .prologue
    const/4 v4, 0x4

    .line 3906
    invoke-virtual {p2, p0, p1}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getContact(Landroid/content/Context;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 3908
    .local v0, contact:Lcom/android/mms/data/Contact;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v2

    if-ne v2, v4, :cond_2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    const-string v3, "President"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->getNewCMASPresidentialCount(Landroid/content/Context;)I

    move-result v2

    if-lez v2, :cond_2

    if-nez p1, :cond_2

    .line 3911
    :cond_1
    const v1, 0x7f020031

    .line 3920
    .local v1, notiIconId:I
    :goto_0
    return v1

    .line 3912
    .end local v1           #notiIconId:I
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 3913
    const v1, 0x7f02026c

    .restart local v1       #notiIconId:I
    goto :goto_0

    .line 3914
    .end local v1           #notiIconId:I
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 3915
    const v1, 0x7f02026a

    .restart local v1       #notiIconId:I
    goto :goto_0

    .line 3917
    .end local v1           #notiIconId:I
    :cond_4
    const v1, 0x7f020269

    .restart local v1       #notiIconId:I
    goto :goto_0
.end method

.method private static setCmasReminder(Landroid/content/Context;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;)V
    .locals 15
    .parameter "context"
    .parameter "mostRecentAlertNotification"

    .prologue
    .line 3853
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 3854
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v8, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/transaction/CmasAlarmReceiver;

    invoke-direct {v8, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3855
    .local v8, intent:Landroid/content/Intent;
    const-string v1, "threadId"

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getThreadId()J

    move-result-wide v11

    invoke-virtual {v8, v1, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3857
    invoke-static {}, Lcom/android/mms/MmsConfig;->isTMOCMASFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3858
    const-string v1, "Mms/MessagingNotification"

    const-string v11, "START TMO Reminder"

    invoke-static {v1, v11}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3859
    invoke-static {}, Lcom/android/mms/transaction/CmasAlarmReceiver;->getReminderCount()I

    move-result v1

    const/4 v11, 0x2

    if-lt v1, v11, :cond_1

    .line 3860
    const-string v1, "Mms/MessagingNotification"

    const-string v11, "START TMO Reminder"

    invoke-static {v1, v11}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3902
    :cond_0
    :goto_0
    return-void

    .line 3863
    :cond_1
    const-string v1, "Mms/MessagingNotification"

    const-string v11, "START TMO Reminder"

    invoke-static {v1, v11}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3864
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/mms/transaction/MessagingNotification;->mIsCmasReminder:Z

    .line 3865
    invoke-static {}, Lcom/android/mms/transaction/CmasAlarmReceiver;->getReminderCount()I

    move-result v10

    .line 3866
    .local v10, mTMOreminderCount:I
    add-int/lit8 v1, v10, 0x1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v9, v1, 0x1

    .line 3867
    .local v9, interval:I
    const-string v1, "TMOCMAS"

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3868
    const/4 v1, 0x0

    const/high16 v11, 0x4000

    invoke-static {p0, v1, v8, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 3869
    .local v6, sender:Landroid/app/PendingIntent;
    const-string v1, "Mms/MessagingNotification"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "next interval = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3870
    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    mul-int/lit8 v13, v9, 0x3c

    mul-int/lit16 v13, v13, 0x3e8

    int-to-long v13, v13

    add-long/2addr v11, v13

    invoke-virtual {v0, v1, v11, v12, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 3873
    .end local v6           #sender:Landroid/app/PendingIntent;
    .end local v9           #interval:I
    .end local v10           #mTMOreminderCount:I
    :cond_2
    sget-object v1, Lcom/android/mms/transaction/MessagingNotification;->sReminderAlertCount:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 3875
    .local v7, alertCount:I
    if-eqz v7, :cond_0

    .line 3876
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/mms/transaction/MessagingNotification;->mIsCmasReminder:Z

    .line 3878
    const-string v1, "Mms/MessagingNotification"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mIsOnce = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-boolean v12, Lcom/android/mms/transaction/MessagingNotification;->mIsOnceCMAS:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3879
    const/4 v1, 0x1

    if-ne v7, v1, :cond_4

    .line 3880
    sget-boolean v1, Lcom/android/mms/transaction/MessagingNotification;->mIsOnceCMAS:Z

    if-nez v1, :cond_3

    .line 3883
    const-string v1, "MessagingNotification"

    const-string v11, "this is not mIsOnceCMAS"

    invoke-static {v1, v11}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3885
    const-string v1, "ONCECMAS"

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3886
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/mms/transaction/MessagingNotification;->mIsOnceCMAS:Z

    .line 3887
    const/4 v1, 0x0

    const/high16 v11, 0x4000

    invoke-static {p0, v1, v8, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 3888
    .restart local v6       #sender:Landroid/app/PendingIntent;
    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/32 v13, 0x1d4c0

    add-long/2addr v11, v13

    invoke-virtual {v0, v1, v11, v12, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 3899
    .end local v6           #sender:Landroid/app/PendingIntent;
    :cond_3
    :goto_1
    const-string v1, "Mms/MessagingNotification"

    const-string v11, "Suman Test of notification.bRepeat"

    invoke-static {v1, v11}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3892
    :cond_4
    const-string v1, "Mms/MessagingNotification"

    const-string v11, "every 2 sec"

    invoke-static {v1, v11}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3893
    const/4 v1, 0x0

    const/high16 v11, 0x800

    invoke-static {p0, v1, v8, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 3894
    .restart local v6       #sender:Landroid/app/PendingIntent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    mul-int/lit8 v1, v7, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v13, v1

    add-long v2, v11, v13

    .line 3895
    .local v2, startTime:J
    mul-int/lit8 v1, v7, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    .line 3896
    .local v4, cycleTime:J
    const-string v1, "Mms/MessagingNotification"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "startTime = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3897
    const/4 v1, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_1
.end method

.method public static setCurrentlyDisplayedThreadId(J)V
    .locals 2
    .parameter "threadId"

    .prologue
    .line 412
    sget-object v1, Lcom/android/mms/transaction/MessagingNotification;->sCurrentlyDisplayedThreadLock:Ljava/lang/Object;

    monitor-enter v1

    .line 413
    :try_start_0
    sput-wide p0, Lcom/android/mms/transaction/MessagingNotification;->sCurrentlyDisplayedThreadId:J

    .line 414
    monitor-exit v1

    .line 415
    return-void

    .line 414
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static setFlashNotification(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1872
    const-string v4, "Mms/MessagingNotification"

    const-string v5, "setFlashNotification()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1873
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "flash_notification"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v0, v2

    .line 1875
    .local v0, isEnableFlashNoti:Z
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "torch_light"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_2

    move v1, v2

    .line 1878
    .local v1, isEnableTorch:Z
    :goto_1
    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->isBlockingModeEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1879
    new-instance v3, Lcom/android/mms/transaction/MessagingNotification$FlashNotification;

    invoke-direct {v3, p0}, Lcom/android/mms/transaction/MessagingNotification$FlashNotification;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/android/mms/transaction/MessagingNotification;->mFlashNotification:Lcom/android/mms/transaction/MessagingNotification$FlashNotification;

    .line 1880
    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->mFlashNotification:Lcom/android/mms/transaction/MessagingNotification$FlashNotification;

    invoke-virtual {v3, v2}, Lcom/android/mms/transaction/MessagingNotification$FlashNotification;->setDaemon(Z)V

    .line 1881
    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->mFlashNotification:Lcom/android/mms/transaction/MessagingNotification$FlashNotification;

    invoke-virtual {v2}, Lcom/android/mms/transaction/MessagingNotification$FlashNotification;->start()V

    .line 1883
    :cond_0
    return-void

    .end local v0           #isEnableFlashNoti:Z
    .end local v1           #isEnableTorch:Z
    :cond_1
    move v0, v3

    .line 1873
    goto :goto_0

    .restart local v0       #isEnableFlashNoti:Z
    :cond_2
    move v1, v3

    .line 1875
    goto :goto_1
.end method

.method private static setNotificationAvatar(Landroid/content/Context;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;Landroid/app/Notification$Builder;Landroid/content/res/Resources;Z)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "context"
    .parameter "mostRecentNotification"
    .parameter "noti"
    .parameter "res"
    .parameter "isNew"

    .prologue
    .line 1886
    const/4 v0, 0x0

    .line 1887
    .local v0, avatar:Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 1888
    .local v4, contactDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p1, p0, p4}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getContact(Landroid/content/Context;Z)Lcom/android/mms/data/Contact;

    move-result-object v3

    .line 1889
    .local v3, contact:Lcom/android/mms/data/Contact;
    if-eqz v3, :cond_0

    .line 1890
    const/4 v8, 0x0

    invoke-virtual {v3, p0, v8}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .end local v4           #contactDrawable:Landroid/graphics/drawable/BitmapDrawable;
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 1893
    .restart local v4       #contactDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    if-eqz v4, :cond_3

    sget-boolean v8, Lcom/android/mms/transaction/MessagingNotification;->sEnablePreview:Z

    if-eqz v8, :cond_3

    .line 1899
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1900
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFingerprintService()Z

    move-result v8

    if-eqz v8, :cond_1

    sget-boolean v8, Lcom/android/mms/ui/SecretModeHandler;->mIsSecretMode:Z

    if-eqz v8, :cond_1

    iget-wide v8, p1, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mThreadId:J

    invoke-static {v8, v9}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->isSecretMode(J)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1902
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1903
    .local v1, bmOverlay:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020058

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1905
    .local v5, fingerprint:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v10, 0x1

    invoke-static {v5, v8, v9, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1907
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1908
    .local v2, canvas:Landroid/graphics/Canvas;
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    const/4 v9, 0x0

    invoke-virtual {v2, v0, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1909
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    const/4 v9, 0x0

    invoke-virtual {v2, v5, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1910
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1913
    .end local v1           #bmOverlay:Landroid/graphics/Bitmap;
    .end local v2           #canvas:Landroid/graphics/Canvas;
    .end local v5           #fingerprint:Landroid/graphics/Bitmap;
    :cond_1
    if-eqz v0, :cond_3

    .line 1914
    const v8, 0x1050006

    invoke-virtual {p3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 1915
    .local v6, idealIconHeight:I
    const v8, 0x1050005

    invoke-virtual {p3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 1916
    .local v7, idealIconWidth:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-ge v8, v6, :cond_2

    .line 1918
    const/4 v8, 0x1

    invoke-static {v0, v7, v6, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1920
    :cond_2
    if-eqz v0, :cond_3

    .line 1921
    invoke-virtual {p2, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 1925
    .end local v6           #idealIconHeight:I
    .end local v7           #idealIconWidth:I
    :cond_3
    return-object v0
.end method

.method private static updateAlertNotification(Landroid/content/Context;ZILjava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;)V
    .locals 25
    .parameter "context"
    .parameter "isNew"
    .parameter "uniqueThreadCount"
    .parameter
    .parameter "mostRecentAlertNotification"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZI",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ">;",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3656
    .local p3, alertNotificationSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;>;"
    const-string v4, "Mms/MessagingNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAlertNotification(),isNew="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3658
    if-nez p4, :cond_1

    .line 3816
    :cond_0
    :goto_0
    return-void

    .line 3662
    :cond_1
    sget-boolean v4, Lcom/android/mms/transaction/MessagingNotification;->sEnableNotification:Z

    if-eqz v4, :cond_8

    .line 3663
    const/16 v4, 0x41c

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 3681
    :cond_2
    :goto_1
    invoke-interface/range {p3 .. p3}, Ljava/util/SortedSet;->size()I

    move-result v7

    .line 3683
    .local v7, messageCount:I
    new-instance v4, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p4

    iget-wide v5, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mTimeMillis:J

    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 3685
    .local v8, noti:Landroid/app/Notification$Builder;
    if-eqz p1, :cond_3

    .line 3686
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-virtual {v0, v1, v7, v2}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getTicker(Landroid/content/Context;IZ)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 3701
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    .line 3702
    .local v23, res:Landroid/content/res/Resources;
    const/16 v24, 0x0

    .line 3703
    .local v24, title:Ljava/lang/String;
    const/4 v9, 0x0

    .line 3705
    .local v9, avatar:Landroid/graphics/Bitmap;
    const/4 v4, 0x1

    move/from16 v0, p2

    if-le v0, v4, :cond_a

    .line 3706
    new-instance v18, Landroid/content/Intent;

    invoke-direct/range {v18 .. v18}, Landroid/content/Intent;-><init>()V

    .line 3707
    .local v18, mainActivityIntent:Landroid/content/Intent;
    const-string v4, "android.intent.action.MAIN"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3708
    invoke-static/range {v18 .. v18}, Lcom/android/mms/transaction/MessagingNotification;->addNotiIntentType(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v18

    .line 3709
    const-string v4, "com.android.mms"

    const-string v5, "com.android.mms.ui.ConversationComposer"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3710
    const v4, 0x7f0c00b5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    .line 3718
    :goto_2
    const/16 v20, 0x0

    .line 3720
    .local v20, notiIconId:I
    const-string v4, "Mms/MessagingNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Temp : mostRecentNotification.getAddress() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3722
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->setCmasNotiIcon(Landroid/content/Context;ZLcom/android/mms/transaction/MessagingNotification$NotificationInfo;)I

    move-result v20

    .line 3723
    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 3725
    const-string v4, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/NotificationManager;

    .line 3726
    .local v19, nm:Landroid/app/NotificationManager;
    const/4 v4, 0x0

    const/high16 v5, 0x800

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v4, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v22

    .line 3729
    .local v22, pendingIntent:Landroid/app/PendingIntent;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasNotiDateDescription()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_b

    .line 3730
    new-instance v16, Ljava/lang/StringBuffer;

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-virtual {v0, v1, v7, v2}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getTitle(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 3731
    .local v16, CMASTitle:Ljava/lang/StringBuffer;
    const-string v4, " ("

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3732
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3733
    const-string v4, ")"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3735
    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    const-string v5, "android.message"

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->addKind(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 3741
    .end local v16           #CMASTitle:Ljava/lang/StringBuffer;
    :goto_3
    sget-boolean v4, Lcom/android/mms/transaction/MessagingNotification;->mIsCmasReminder:Z

    if-eqz v4, :cond_4

    .line 3742
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->cancelCMASAlarm(Landroid/content/Context;)V

    .line 3745
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->setCmasReminder(Landroid/content/Context;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;)V

    .line 3747
    const/16 v17, 0x0

    .line 3748
    .local v17, defaults:I
    or-int/lit8 v17, v17, 0x4

    .line 3749
    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 3752
    const/4 v4, 0x0

    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->getDeleteIntent()Landroid/content/Intent;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 3756
    const/4 v4, 0x1

    if-ne v7, v4, :cond_c

    .line 3759
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-static {v0, v1, v8}, Lcom/android/mms/transaction/MessagingNotification;->createSingleNotification(Landroid/content/Context;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v21

    .line 3775
    .local v21, notification:Landroid/app/Notification;
    :goto_4
    if-eqz p1, :cond_e

    .line 3776
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->setCmasAlert(Landroid/content/Context;Landroid/app/Notification;)V

    .line 3779
    move-object/from16 v0, v21

    iget-object v4, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v4, :cond_5

    .line 3780
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3781
    const-string v4, "GATE"

    const-string v5, "<GATE-M>SMS_AUDIBLE_ALERT_IND</GATE-M>"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3784
    :cond_5
    const-string v4, "Mms/MessagingNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "New message, updateAlertNotification() sound path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    iget-object v6, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3794
    :goto_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_6

    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->getNewCMASPresidentialCount(Landroid/content/Context;)I

    move-result v4

    if-lez v4, :cond_6

    .line 3795
    const/4 v4, 0x1

    move-object/from16 v0, v21

    iput v4, v0, Landroid/app/Notification;->commonValue:I

    .line 3799
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->isTMOCMASFeatureEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3800
    invoke-static {}, Lcom/android/mms/transaction/CmasAlarmReceiver;->getReminderCount()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_f

    .line 3801
    const/4 v4, -0x1

    invoke-static {v4}, Lcom/android/mms/transaction/CmasAlarmReceiver;->setReminderCount(I)V

    .line 3808
    :cond_7
    :goto_6
    move-object/from16 v0, v21

    iput v7, v0, Landroid/app/Notification;->missedCount:I

    .line 3809
    const/4 v4, 0x2

    move-object/from16 v0, v21

    iput v4, v0, Landroid/app/Notification;->priority:I

    .line 3811
    const/16 v4, 0x41c

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 3814
    sput-object v21, Lcom/android/mms/transaction/MessagingNotification;->mNotification:Landroid/app/Notification;

    .line 3815
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->foregroundPresidentialAlert(Landroid/content/Context;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;Z)V

    goto/16 :goto_0

    .line 3665
    .end local v7           #messageCount:I
    .end local v8           #noti:Landroid/app/Notification$Builder;
    .end local v9           #avatar:Landroid/graphics/Bitmap;
    .end local v17           #defaults:I
    .end local v18           #mainActivityIntent:Landroid/content/Intent;
    .end local v19           #nm:Landroid/app/NotificationManager;
    .end local v20           #notiIconId:I
    .end local v21           #notification:Landroid/app/Notification;
    .end local v22           #pendingIntent:Landroid/app/PendingIntent;
    .end local v23           #res:Landroid/content/res/Resources;
    .end local v24           #title:Ljava/lang/String;
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 3666
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->getNewCMASPresidentialCount(Landroid/content/Context;)I

    move-result v4

    if-gtz v4, :cond_9

    .line 3667
    const/16 v4, 0x41c

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 3671
    :cond_9
    invoke-interface/range {p3 .. p3}, Ljava/util/SortedSet;->size()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p1

    invoke-static {v0, v1, v4, v2}, Lcom/android/mms/transaction/MessagingNotification;->isPresidentialCmas(Landroid/content/Context;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;IZ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3672
    const/16 v4, 0x41c

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    goto/16 :goto_1

    .line 3712
    .restart local v7       #messageCount:I
    .restart local v8       #noti:Landroid/app/Notification$Builder;
    .restart local v9       #avatar:Landroid/graphics/Bitmap;
    .restart local v23       #res:Landroid/content/res/Resources;
    .restart local v24       #title:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-virtual {v0, v1, v7, v2}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getTitle(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v24

    .line 3713
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, v23

    move/from16 v3, p1

    invoke-static {v0, v1, v8, v2, v3}, Lcom/android/mms/transaction/MessagingNotification;->setNotificationAvatar(Landroid/content/Context;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;Landroid/app/Notification$Builder;Landroid/content/res/Resources;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 3715
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v18

    .restart local v18       #mainActivityIntent:Landroid/content/Intent;
    goto/16 :goto_2

    .line 3738
    .restart local v19       #nm:Landroid/app/NotificationManager;
    .restart local v20       #notiIconId:I
    .restart local v22       #pendingIntent:Landroid/app/PendingIntent;
    :cond_b
    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    const-string v5, "android.message"

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->addKind(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    goto/16 :goto_3

    .line 3762
    .restart local v17       #defaults:I
    :cond_c
    const/4 v4, 0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_d

    move-object/from16 v4, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 3767
    invoke-static/range {v4 .. v9}, Lcom/android/mms/transaction/MessagingNotification;->createUniqueMultipleNotification(Landroid/content/Context;Ljava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;ILandroid/app/Notification$Builder;Landroid/graphics/Bitmap;)Landroid/app/Notification;

    move-result-object v21

    .restart local v21       #notification:Landroid/app/Notification;
    goto/16 :goto_4

    .end local v21           #notification:Landroid/app/Notification;
    :cond_d
    move-object/from16 v10, p0

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move v13, v7

    move-object v14, v8

    move/from16 v15, p1

    .line 3770
    invoke-static/range {v10 .. v15}, Lcom/android/mms/transaction/MessagingNotification;->createMultipleNotification(Landroid/content/Context;Ljava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;ILandroid/app/Notification$Builder;Z)Landroid/app/Notification;

    move-result-object v21

    .line 3771
    .restart local v21       #notification:Landroid/app/Notification;
    const-string v4, "Mms/MessagingNotification"

    const-string v5, "updateAlertNotification: multi messages, showing inboxStyle notification"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 3788
    :cond_e
    const/16 v4, 0x41c

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 3791
    const-string v4, "Mms/MessagingNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAlertNotification() sound path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    iget-object v6, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 3803
    :cond_f
    invoke-static {}, Lcom/android/mms/transaction/CmasAlarmReceiver;->getReminderCount()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Lcom/android/mms/transaction/CmasAlarmReceiver;->setReminderCount(I)V

    goto/16 :goto_6
.end method

.method private static updateAllHistoryAsRead(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 3475
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLogs()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3498
    :goto_0
    return-void

    .line 3478
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 3480
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v2, "(logtype=? OR logtype=?) AND new=1"

    .line 3481
    .local v2, selection:Ljava/lang/String;
    const/4 v5, 0x2

    new-array v3, v5, [Ljava/lang/String;

    const-string v5, "200"

    aput-object v5, v3, v7

    const/4 v5, 0x1

    const-string v6, "300"

    aput-object v6, v3, v5

    .line 3485
    .local v3, selectionArg:[Ljava/lang/String;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 3486
    .local v4, value:Landroid/content/ContentValues;
    const-string v5, "new"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3489
    :try_start_0
    sget-object v5, Lcom/android/mms/transaction/MessagingNotification;->LOG_HISTORY_URI:Landroid/net/Uri;

    invoke-virtual {v1, v5, v4, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    .line 3497
    :goto_1
    const-string v5, "Mms/MessagingNotification"

    const-string v6, "updateAllHistoryAsRead()"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3490
    :catch_0
    move-exception v0

    .line 3491
    .local v0, e:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v5, "Mms/MessagingNotification"

    const-string v6, "updateAllHistoryAsRead() caught SQLiteDiskIOException, e"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3492
    .end local v0           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_1
    move-exception v0

    .line 3493
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v5, "Mms/MessagingNotification"

    const-string v6, "updateAllHistoryAsRead() Catch a SQLiteException: "

    invoke-static {v5, v6, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 3494
    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    :catch_2
    move-exception v0

    .line 3495
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v5, "Mms/MessagingNotification"

    const-string v6, "updateAllHistoryAsRead() Catch a IllegalStateException: "

    invoke-static {v5, v6, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static updateAlwaysHistoryForMms(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 20
    .parameter "context"
    .parameter "newUri"

    .prologue
    .line 2960
    invoke-static/range {p0 .. p0}, Lcom/android/mms/MmsConfig;->isContextProviderForAlways(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2961
    const/4 v2, 0x0

    .line 3052
    :cond_0
    :goto_0
    return v2

    .line 2964
    :cond_1
    const/4 v15, 0x0

    .line 2966
    .local v15, isSpam:Z
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "msg_box"

    aput-object v4, v5, v2

    .line 2970
    .local v5, MMS_PROJECTION:[Ljava/lang/String;
    if-nez p1, :cond_2

    .line 2971
    const/4 v2, 0x0

    goto :goto_0

    .line 2974
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2975
    .local v3, resolver:Landroid/content/ContentResolver;
    const/4 v12, 0x0

    .line 2978
    .local v12, cursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    :try_start_0
    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 2989
    if-nez v12, :cond_4

    .line 2990
    const/4 v2, 0x0

    goto :goto_0

    .line 2979
    :catch_0
    move-exception v13

    .line 2980
    .local v13, e:Ljava/lang/IllegalStateException;
    const-string v2, "Mms/MessagingNotification"

    const-string v4, "updateAlwaysHistoryForMms() Catch a IllegalStateException: "

    invoke-static {v2, v4, v13}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2981
    if-eqz v12, :cond_3

    .line 2982
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 2983
    const/4 v12, 0x0

    .line 2986
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 2994
    .end local v13           #e:Ljava/lang/IllegalStateException;
    :cond_4
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-nez v2, :cond_5

    .line 2995
    const/4 v2, 0x0

    .line 3047
    if-eqz v12, :cond_0

    .line 3048
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 3049
    const/4 v12, 0x0

    goto :goto_0

    .line 2998
    :cond_5
    const/4 v2, 0x0

    :try_start_2
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v17, v0

    .line 3005
    .local v17, type:J
    const-wide/16 v6, 0x1

    cmp-long v2, v17, v6

    if-nez v2, :cond_6

    .line 3006
    invoke-static/range {p0 .. p1}, Lcom/android/mms/util/AddressUtils;->getFromMulti(Landroid/content/Context;Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v10

    .line 3016
    .local v10, addresses:[Ljava/lang/String;
    :goto_1
    move-object v11, v10

    .local v11, arr$:[Ljava/lang/String;
    array-length v0, v11

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_2
    move/from16 v0, v16

    if-ge v14, v0, :cond_f

    aget-object v9, v11, v14

    .line 3017
    .local v9, address:Ljava/lang/String;
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 3019
    .local v19, value:Landroid/content/ContentValues;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3020
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v9, v2}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->isSpam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    .line 3022
    const-string v2, "Mms/MessagingNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateHistoryForMms(),isSpam="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " address ="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3024
    if-eqz v15, :cond_8

    .line 3025
    const/4 v2, 0x0

    .line 3047
    if-eqz v12, :cond_0

    .line 3048
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 3049
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 3007
    .end local v9           #address:Ljava/lang/String;
    .end local v10           #addresses:[Ljava/lang/String;
    .end local v11           #arr$:[Ljava/lang/String;
    .end local v14           #i$:I
    .end local v16           #len$:I
    .end local v19           #value:Landroid/content/ContentValues;
    :cond_6
    const-wide/16 v6, 0x2

    cmp-long v2, v17, v6

    if-nez v2, :cond_7

    .line 3008
    :try_start_3
    invoke-static/range {p0 .. p1}, Lcom/android/mms/util/AddressUtils;->getToMulti(Landroid/content/Context;Landroid/net/Uri;)[Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v10

    .restart local v10       #addresses:[Ljava/lang/String;
    goto :goto_1

    .line 3010
    .end local v10           #addresses:[Ljava/lang/String;
    :cond_7
    const/4 v2, 0x0

    .line 3047
    if-eqz v12, :cond_0

    .line 3048
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 3049
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 3029
    .restart local v9       #address:Ljava/lang/String;
    .restart local v10       #addresses:[Ljava/lang/String;
    .restart local v11       #arr$:[Ljava/lang/String;
    .restart local v14       #i$:I
    .restart local v16       #len$:I
    .restart local v19       #value:Landroid/content/ContentValues;
    :cond_8
    :try_start_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3030
    const-string v2, "contact_address"

    const-string v4, "-1"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3039
    :goto_3
    const-string v4, "type"

    const-wide/16 v6, 0x1

    cmp-long v2, v17, v6

    if-nez v2, :cond_e

    const/4 v2, 0x1

    :goto_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3040
    const-string v2, "app_id"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3041
    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->LOG_HISTORY_ALWAYS_URI:Landroid/net/Uri;

    move-object/from16 v0, v19

    invoke-virtual {v3, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 3042
    const-string v2, "Mms/MessagingNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAlwaysHistoryForMms(),len="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3016
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    .line 3032
    :cond_9
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    const v2, 0x7f0c013b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 3033
    :cond_a
    const-string v2, "contact_address"

    const-string v4, "-1"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 3044
    .end local v9           #address:Ljava/lang/String;
    .end local v10           #addresses:[Ljava/lang/String;
    .end local v11           #arr$:[Ljava/lang/String;
    .end local v14           #i$:I
    .end local v16           #len$:I
    .end local v17           #type:J
    .end local v19           #value:Landroid/content/ContentValues;
    :catch_1
    move-exception v13

    .line 3045
    .restart local v13       #e:Ljava/lang/IllegalStateException;
    :try_start_5
    const-string v2, "Mms/MessagingNotification"

    const-string v4, "updateAlwaysHistoryForMms() Catch a IllegalStateException: "

    invoke-static {v2, v4, v13}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3047
    if-eqz v12, :cond_b

    .line 3048
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 3049
    const/4 v12, 0x0

    .line 3052
    .end local v13           #e:Ljava/lang/IllegalStateException;
    :cond_b
    :goto_5
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 3035
    .restart local v9       #address:Ljava/lang/String;
    .restart local v10       #addresses:[Ljava/lang/String;
    .restart local v11       #arr$:[Ljava/lang/String;
    .restart local v14       #i$:I
    .restart local v16       #len$:I
    .restart local v17       #type:J
    .restart local v19       #value:Landroid/content/ContentValues;
    :cond_c
    :try_start_6
    const-string v2, "contact_address"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    .line 3047
    .end local v9           #address:Ljava/lang/String;
    .end local v10           #addresses:[Ljava/lang/String;
    .end local v11           #arr$:[Ljava/lang/String;
    .end local v14           #i$:I
    .end local v16           #len$:I
    .end local v17           #type:J
    .end local v19           #value:Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    if-eqz v12, :cond_d

    .line 3048
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 3049
    const/4 v12, 0x0

    :cond_d
    throw v2

    .line 3039
    .restart local v9       #address:Ljava/lang/String;
    .restart local v10       #addresses:[Ljava/lang/String;
    .restart local v11       #arr$:[Ljava/lang/String;
    .restart local v14       #i$:I
    .restart local v16       #len$:I
    .restart local v17       #type:J
    .restart local v19       #value:Landroid/content/ContentValues;
    :cond_e
    const/4 v2, 0x0

    goto :goto_4

    .line 3047
    .end local v9           #address:Ljava/lang/String;
    .end local v19           #value:Landroid/content/ContentValues;
    :cond_f
    if-eqz v12, :cond_b

    .line 3048
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 3049
    const/4 v12, 0x0

    goto :goto_5
.end method

.method public static updateAlwaysHistoryForSms(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 13
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 2896
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->isContextProviderForAlways(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2897
    const/4 v0, 0x0

    .line 2956
    :cond_0
    :goto_0
    return v0

    .line 2900
    :cond_1
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "address"

    aput-object v2, v3, v0

    const/4 v0, 0x1

    const-string v2, "type"

    aput-object v2, v3, v0

    .line 2905
    .local v3, SMS_PROJECTION:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2906
    .local v1, resolver:Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .line 2908
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    :try_start_0
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 2919
    if-nez v8, :cond_3

    .line 2920
    const/4 v0, 0x0

    goto :goto_0

    .line 2909
    :catch_0
    move-exception v9

    .line 2910
    .local v9, e:Ljava/lang/IllegalStateException;
    const-string v0, "Mms/MessagingNotification"

    const-string v2, "updateAlwaysHistoryForSms() Catch a IllegalStateException: "

    invoke-static {v0, v2, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2911
    if-eqz v8, :cond_2

    .line 2912
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2913
    const/4 v8, 0x0

    .line 2916
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 2924
    .end local v9           #e:Ljava/lang/IllegalStateException;
    :cond_3
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-nez v0, :cond_4

    .line 2925
    const/4 v0, 0x0

    .line 2951
    if-eqz v8, :cond_0

    .line 2952
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2953
    const/4 v8, 0x0

    goto :goto_0

    .line 2928
    :cond_4
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2929
    .local v7, address:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v10, v0

    .line 2931
    .local v10, type:J
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 2933
    .local v12, value:Landroid/content/ContentValues;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2934
    const-string v0, "contact_address"

    const-string v2, "-1"

    invoke-virtual {v12, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2943
    :goto_1
    const-string v2, "type"

    const-wide/16 v4, 0x1

    cmp-long v0, v10, v4

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2944
    const-string v0, "app_id"

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2945
    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->LOG_HISTORY_ALWAYS_URI:Landroid/net/Uri;

    invoke-virtual {v1, v0, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2946
    const-string v0, "Mms/MessagingNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAlwaysHistoryForSms(),len="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2951
    if-eqz v8, :cond_5

    .line 2952
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2953
    const/4 v8, 0x0

    .line 2956
    :cond_5
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 2936
    :cond_6
    :try_start_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const v0, 0x7f0c013b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2937
    :cond_7
    const-string v0, "contact_address"

    const-string v2, "-1"

    invoke-virtual {v12, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 2947
    .end local v7           #address:Ljava/lang/String;
    .end local v10           #type:J
    .end local v12           #value:Landroid/content/ContentValues;
    :catch_1
    move-exception v9

    .line 2948
    .restart local v9       #e:Ljava/lang/IllegalStateException;
    :try_start_4
    const-string v0, "Mms/MessagingNotification"

    const-string v2, "updateAlwaysHistoryForSms() Catch a IllegalStateException: "

    invoke-static {v0, v2, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2949
    const/4 v0, 0x0

    .line 2951
    if-eqz v8, :cond_0

    .line 2952
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2953
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 2939
    .end local v9           #e:Ljava/lang/IllegalStateException;
    .restart local v7       #address:Ljava/lang/String;
    .restart local v10       #type:J
    .restart local v12       #value:Landroid/content/ContentValues;
    :cond_8
    :try_start_5
    const-string v0, "contact_address"

    invoke-virtual {v12, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 2951
    .end local v7           #address:Ljava/lang/String;
    .end local v10           #type:J
    .end local v12           #value:Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_9

    .line 2952
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2953
    const/4 v8, 0x0

    :cond_9
    throw v0

    .line 2943
    .restart local v7       #address:Ljava/lang/String;
    .restart local v10       #type:J
    .restart local v12       #value:Landroid/content/ContentValues;
    :cond_a
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public static updateCMASRepeatNotifications(Landroid/content/Context;J)V
    .locals 1
    .parameter "context"
    .parameter "threadId"

    .prologue
    .line 1541
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 1542
    invoke-static {p0}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    .line 1543
    return-void
.end method

.method public static updateClass0SoundnVibrate(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 2620
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->loadNotificationPref(Landroid/content/Context;)V

    .line 2622
    sget-boolean v2, Lcom/android/mms/transaction/MessagingNotification;->sEnableNotification:Z

    if-nez v2, :cond_0

    .line 2632
    :goto_0
    return-void

    .line 2626
    :cond_0
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 2627
    .local v1, notification:Landroid/app/Notification;
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 2628
    .local v0, nm:Landroid/app/NotificationManager;
    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->decideNotificationType(Landroid/content/Context;Landroid/app/Notification;Lcom/android/mms/data/Contact;)V

    .line 2629
    const/4 v2, 0x2

    iput v2, v1, Landroid/app/Notification;->priority:I

    .line 2631
    const/16 v2, 0x3e7

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method private static updateDeliveryNotification(Landroid/content/Context;ZLjava/lang/CharSequence;J)V
    .locals 2
    .parameter "context"
    .parameter "isStatusMessage"
    .parameter "message"
    .parameter "timeMillis"

    .prologue
    .line 1621
    sget-boolean v0, Lcom/android/mms/transaction/MessagingNotification;->sEnableNotification:Z

    if-nez v0, :cond_1

    .line 1634
    :cond_0
    :goto_0
    return-void

    .line 1625
    :cond_1
    if-eqz p1, :cond_0

    .line 1629
    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/transaction/MessagingNotification$4;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/android/mms/transaction/MessagingNotification$4;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static updateDownloadFailedNotification(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 2764
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->getDownloadFailedMessageCount(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 2765
    const-string v0, "Mms/MessagingNotification"

    const-string v1, "updateDownloadFailedNotification()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2766
    const/16 v0, 0x213

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 2767
    invoke-static {p0}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    .line 2769
    :cond_0
    return-void
.end method

.method public static updateHistoryForMms(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)Z
    .locals 33
    .parameter "context"
    .parameter "newUri"
    .parameter "oldUri"

    .prologue
    .line 3336
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLogs()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3337
    const/4 v2, 0x0

    .line 3471
    :cond_0
    :goto_0
    return v2

    .line 3340
    :cond_1
    const/16 v16, 0x0

    .line 3342
    .local v16, isSpam:Z
    const/4 v2, 0x6

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "_id"

    aput-object v4, v5, v2

    const/4 v2, 0x1

    const-string v4, "date"

    aput-object v4, v5, v2

    const/4 v2, 0x2

    const-string v4, "msg_box"

    aput-object v4, v5, v2

    const/4 v2, 0x3

    const-string v4, "sub"

    aput-object v4, v5, v2

    const/4 v2, 0x4

    const-string v4, "sub_cs"

    aput-object v4, v5, v2

    const/4 v2, 0x5

    const-string v4, "read"

    aput-object v4, v5, v2

    .line 3351
    .local v5, MMS_PROJECTION:[Ljava/lang/String;
    if-nez p1, :cond_2

    .line 3352
    const/4 v2, 0x0

    goto :goto_0

    .line 3355
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 3356
    .local v3, resolver:Landroid/content/ContentResolver;
    const/4 v13, 0x0

    .line 3358
    .local v13, cursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    :try_start_0
    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 3369
    if-nez v13, :cond_4

    .line 3370
    const/4 v2, 0x0

    goto :goto_0

    .line 3359
    :catch_0
    move-exception v14

    .line 3360
    .local v14, e:Ljava/lang/IllegalStateException;
    const-string v2, "Mms/MessagingNotification"

    const-string v4, "updateHistoryForMms() Catch a IllegalStateException: "

    invoke-static {v2, v4, v14}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3361
    if-eqz v13, :cond_3

    .line 3362
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 3363
    const/4 v13, 0x0

    .line 3366
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 3374
    .end local v14           #e:Ljava/lang/IllegalStateException;
    :cond_4
    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v2

    if-nez v2, :cond_5

    .line 3375
    const/4 v2, 0x0

    .line 3465
    if-eqz v13, :cond_0

    .line 3466
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 3467
    const/4 v13, 0x0

    goto :goto_0

    .line 3377
    :cond_5
    const-wide/16 v20, 0x0

    .line 3378
    .local v20, oldMsgId:J
    const/4 v2, 0x0

    :try_start_2
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 3379
    .local v18, msgId:J
    const/4 v2, 0x1

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-wide/16 v31, 0x3e8

    mul-long v26, v6, v31

    .line 3380
    .local v26, timeMillis:J
    const/4 v2, 0x3

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v2, v4}, Lcom/android/mms/transaction/MessagingNotification;->getMmsSubject(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    .line 3381
    .local v25, subject:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v28, v0

    .line 3382
    .local v28, type:J
    const/4 v2, 0x5

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 3388
    .local v22, read:I
    const-wide/16 v6, 0x1

    cmp-long v2, v28, v6

    if-nez v2, :cond_7

    .line 3389
    invoke-static/range {p0 .. p1}, Lcom/android/mms/util/AddressUtils;->getFromMulti(Landroid/content/Context;Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v10

    .line 3399
    .local v10, addresses:[Ljava/lang/String;
    :goto_1
    if-eqz p2, :cond_6

    .line 3400
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    .line 3403
    :cond_6
    const-string v23, "logtype=? AND ( messageid=? OR messageid=?)"

    .line 3404
    .local v23, selection:Ljava/lang/String;
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/4 v2, 0x0

    const-string v4, "200"

    aput-object v4, v24, v2

    const/4 v2, 0x1

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v24, v2

    const/4 v2, 0x2

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v24, v2

    .line 3408
    .local v24, selectionArg:[Ljava/lang/String;
    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->LOG_HISTORY_URI:Landroid/net/Uri;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v3, v2, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3413
    move-object v11, v10

    .local v11, arr$:[Ljava/lang/String;
    array-length v0, v11

    move/from16 v17, v0

    .local v17, len$:I
    const/4 v15, 0x0

    .local v15, i$:I
    :goto_2
    move/from16 v0, v17

    if-ge v15, v0, :cond_12

    aget-object v9, v11, v15

    .line 3414
    .local v9, address:Ljava/lang/String;
    new-instance v30, Landroid/content/ContentValues;

    invoke-direct/range {v30 .. v30}, Landroid/content/ContentValues;-><init>()V

    .line 3416
    .local v30, value:Landroid/content/ContentValues;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3417
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v9, v2}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->isSpam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v16

    .line 3419
    const-string v2, "Mms/MessagingNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateHistoryForMms(),isSpam="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " address ="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3421
    if-eqz v16, :cond_9

    .line 3422
    const/4 v2, 0x0

    .line 3465
    if-eqz v13, :cond_0

    .line 3466
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 3467
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 3390
    .end local v9           #address:Ljava/lang/String;
    .end local v10           #addresses:[Ljava/lang/String;
    .end local v11           #arr$:[Ljava/lang/String;
    .end local v15           #i$:I
    .end local v17           #len$:I
    .end local v23           #selection:Ljava/lang/String;
    .end local v24           #selectionArg:[Ljava/lang/String;
    .end local v30           #value:Landroid/content/ContentValues;
    :cond_7
    const-wide/16 v6, 0x2

    cmp-long v2, v28, v6

    if-nez v2, :cond_8

    .line 3391
    :try_start_3
    invoke-static/range {p0 .. p1}, Lcom/android/mms/util/AddressUtils;->getToMulti(Landroid/content/Context;Landroid/net/Uri;)[Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v10

    .restart local v10       #addresses:[Ljava/lang/String;
    goto/16 :goto_1

    .line 3393
    .end local v10           #addresses:[Ljava/lang/String;
    :cond_8
    const/4 v2, 0x0

    .line 3465
    if-eqz v13, :cond_0

    .line 3466
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 3467
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 3426
    .restart local v9       #address:Ljava/lang/String;
    .restart local v10       #addresses:[Ljava/lang/String;
    .restart local v11       #arr$:[Ljava/lang/String;
    .restart local v15       #i$:I
    .restart local v17       #len$:I
    .restart local v23       #selection:Ljava/lang/String;
    .restart local v24       #selectionArg:[Ljava/lang/String;
    .restart local v30       #value:Landroid/content/ContentValues;
    :cond_9
    :try_start_4
    const-string v2, "date"

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3427
    const-string v4, "type"

    const-wide/16 v6, 0x1

    cmp-long v2, v28, v6

    if-nez v2, :cond_b

    const/4 v2, 0x1

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3428
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 3429
    const-string v2, "number"

    const-string v4, "-1"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3442
    :goto_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 3443
    const/4 v2, 0x1

    invoke-static {v9, v2}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v12

    .line 3444
    .local v12, contact:Lcom/android/mms/data/Contact;
    if-eqz v12, :cond_a

    invoke-virtual {v12}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3445
    const-string v2, "ci_person_id"

    invoke-virtual {v12}, Lcom/android/mms/data/Contact;->getPersonId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3446
    const-string v2, "ci_phoneNumber"

    invoke-virtual {v12}, Lcom/android/mms/data/Contact;->getNumberInContactDB()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3447
    const-string v2, "ci_normalizedNumber"

    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3451
    .end local v12           #contact:Lcom/android/mms/data/Contact;
    :cond_a
    const-string v2, "messageid"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3452
    const-string v2, "m_subject"

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3453
    const-string v4, "new"

    if-nez v22, :cond_11

    const/4 v2, 0x1

    :goto_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3455
    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->LOG_MMS_URI:Landroid/net/Uri;

    move-object/from16 v0, v30

    invoke-virtual {v3, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 3456
    const-string v2, "Mms/MessagingNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateHistoryForMms(), len="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3413
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    .line 3427
    :cond_b
    const/4 v2, 0x2

    goto/16 :goto_3

    .line 3430
    :cond_c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v2

    const-string v4, "LGU+"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-static/range {p0 .. p0}, Lcom/android/mms/util/TelephonyUtils;->isRoaming(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 3431
    const-string v2, "number"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3432
    const-string v2, "service_type"

    const/16 v4, 0x14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_4

    .line 3458
    .end local v9           #address:Ljava/lang/String;
    .end local v10           #addresses:[Ljava/lang/String;
    .end local v11           #arr$:[Ljava/lang/String;
    .end local v15           #i$:I
    .end local v17           #len$:I
    .end local v18           #msgId:J
    .end local v20           #oldMsgId:J
    .end local v22           #read:I
    .end local v23           #selection:Ljava/lang/String;
    .end local v24           #selectionArg:[Ljava/lang/String;
    .end local v25           #subject:Ljava/lang/String;
    .end local v26           #timeMillis:J
    .end local v28           #type:J
    .end local v30           #value:Landroid/content/ContentValues;
    :catch_1
    move-exception v14

    .line 3459
    .restart local v14       #e:Ljava/lang/IllegalStateException;
    :try_start_5
    const-string v2, "Mms/MessagingNotification"

    const-string v4, "updateHistoryForMms() Catch a IllegalStateException: "

    invoke-static {v2, v4, v14}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3460
    const/4 v2, 0x0

    .line 3465
    if-eqz v13, :cond_0

    .line 3466
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 3467
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 3434
    .end local v14           #e:Ljava/lang/IllegalStateException;
    .restart local v9       #address:Ljava/lang/String;
    .restart local v10       #addresses:[Ljava/lang/String;
    .restart local v11       #arr$:[Ljava/lang/String;
    .restart local v15       #i$:I
    .restart local v17       #len$:I
    .restart local v18       #msgId:J
    .restart local v20       #oldMsgId:J
    .restart local v22       #read:I
    .restart local v23       #selection:Ljava/lang/String;
    .restart local v24       #selectionArg:[Ljava/lang/String;
    .restart local v25       #subject:Ljava/lang/String;
    .restart local v26       #timeMillis:J
    .restart local v28       #type:J
    .restart local v30       #value:Landroid/content/ContentValues;
    :cond_d
    :try_start_6
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    const v2, 0x7f0c013b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 3435
    :cond_e
    const-string v2, "number"

    const-string v4, "-1"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_4

    .line 3461
    .end local v9           #address:Ljava/lang/String;
    .end local v10           #addresses:[Ljava/lang/String;
    .end local v11           #arr$:[Ljava/lang/String;
    .end local v15           #i$:I
    .end local v17           #len$:I
    .end local v18           #msgId:J
    .end local v20           #oldMsgId:J
    .end local v22           #read:I
    .end local v23           #selection:Ljava/lang/String;
    .end local v24           #selectionArg:[Ljava/lang/String;
    .end local v25           #subject:Ljava/lang/String;
    .end local v26           #timeMillis:J
    .end local v28           #type:J
    .end local v30           #value:Landroid/content/ContentValues;
    :catch_2
    move-exception v14

    .line 3462
    .local v14, e:Landroid/database/sqlite/SQLiteException;
    :try_start_7
    const-string v2, "Mms/MessagingNotification"

    const-string v4, "updateHistoryForMms() Catch a SQLiteException: "

    invoke-static {v2, v4, v14}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 3463
    const/4 v2, 0x0

    .line 3465
    if-eqz v13, :cond_0

    .line 3466
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 3467
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 3437
    .end local v14           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v9       #address:Ljava/lang/String;
    .restart local v10       #addresses:[Ljava/lang/String;
    .restart local v11       #arr$:[Ljava/lang/String;
    .restart local v15       #i$:I
    .restart local v17       #len$:I
    .restart local v18       #msgId:J
    .restart local v20       #oldMsgId:J
    .restart local v22       #read:I
    .restart local v23       #selection:Ljava/lang/String;
    .restart local v24       #selectionArg:[Ljava/lang/String;
    .restart local v25       #subject:Ljava/lang/String;
    .restart local v26       #timeMillis:J
    .restart local v28       #type:J
    .restart local v30       #value:Landroid/content/ContentValues;
    :cond_f
    :try_start_8
    const-string v2, "number"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_4

    .line 3465
    .end local v9           #address:Ljava/lang/String;
    .end local v10           #addresses:[Ljava/lang/String;
    .end local v11           #arr$:[Ljava/lang/String;
    .end local v15           #i$:I
    .end local v17           #len$:I
    .end local v18           #msgId:J
    .end local v20           #oldMsgId:J
    .end local v22           #read:I
    .end local v23           #selection:Ljava/lang/String;
    .end local v24           #selectionArg:[Ljava/lang/String;
    .end local v25           #subject:Ljava/lang/String;
    .end local v26           #timeMillis:J
    .end local v28           #type:J
    .end local v30           #value:Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    if-eqz v13, :cond_10

    .line 3466
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 3467
    const/4 v13, 0x0

    :cond_10
    throw v2

    .line 3453
    .restart local v9       #address:Ljava/lang/String;
    .restart local v10       #addresses:[Ljava/lang/String;
    .restart local v11       #arr$:[Ljava/lang/String;
    .restart local v15       #i$:I
    .restart local v17       #len$:I
    .restart local v18       #msgId:J
    .restart local v20       #oldMsgId:J
    .restart local v22       #read:I
    .restart local v23       #selection:Ljava/lang/String;
    .restart local v24       #selectionArg:[Ljava/lang/String;
    .restart local v25       #subject:Ljava/lang/String;
    .restart local v26       #timeMillis:J
    .restart local v28       #type:J
    .restart local v30       #value:Landroid/content/ContentValues;
    :cond_11
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 3465
    .end local v9           #address:Ljava/lang/String;
    .end local v30           #value:Landroid/content/ContentValues;
    :cond_12
    if-eqz v13, :cond_13

    .line 3466
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 3467
    const/4 v13, 0x0

    .line 3471
    :cond_13
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public static updateHistoryForSms(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 24
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 3058
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLogs()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3059
    const/4 v2, 0x0

    .line 3177
    :cond_0
    :goto_0
    return v2

    .line 3062
    :cond_1
    const/4 v2, 0x6

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "_id"

    aput-object v4, v5, v2

    const/4 v2, 0x1

    const-string v4, "date"

    aput-object v4, v5, v2

    const/4 v2, 0x2

    const-string v4, "address"

    aput-object v4, v5, v2

    const/4 v2, 0x3

    const-string v4, "body"

    aput-object v4, v5, v2

    const/4 v2, 0x4

    const-string v4, "type"

    aput-object v4, v5, v2

    const/4 v2, 0x5

    const-string v4, "read"

    aput-object v4, v5, v2

    .line 3071
    .local v5, SMS_PROJECTION:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 3072
    .local v3, resolver:Landroid/content/ContentResolver;
    const/4 v12, 0x0

    .line 3075
    .local v12, cursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    :try_start_0
    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 3086
    if-nez v12, :cond_3

    .line 3087
    const/4 v2, 0x0

    goto :goto_0

    .line 3076
    :catch_0
    move-exception v13

    .line 3077
    .local v13, e:Ljava/lang/IllegalStateException;
    const-string v2, "Mms/MessagingNotification"

    const-string v4, "updateHistoryForSms() Catch a IllegalStateException: "

    invoke-static {v2, v4, v13}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3078
    if-eqz v12, :cond_2

    .line 3079
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 3080
    const/4 v12, 0x0

    .line 3083
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 3091
    .end local v13           #e:Ljava/lang/IllegalStateException;
    :cond_3
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v2

    if-nez v2, :cond_4

    .line 3092
    const/4 v2, 0x0

    .line 3172
    if-eqz v12, :cond_0

    .line 3173
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 3174
    const/4 v12, 0x0

    goto :goto_0

    .line 3095
    :cond_4
    const/4 v2, 0x0

    :try_start_2
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 3096
    .local v14, msgId:J
    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 3097
    .local v19, timeMillis:J
    const/4 v2, 0x2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3098
    .local v9, address:Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 3099
    .local v10, body:Ljava/lang/String;
    const/4 v2, 0x4

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v21, v0

    .line 3100
    .local v21, type:J
    const/4 v2, 0x5

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 3102
    .local v16, read:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v2

    const/4 v4, 0x6

    if-eq v2, v4, :cond_5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v2

    const/4 v4, 0x7

    if-ne v2, v4, :cond_6

    :cond_5
    if-eqz v9, :cond_6

    const-string v2, "#CMAS#"

    invoke-virtual {v9, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3106
    const-string v9, "Mensaje de Alerta"

    .line 3109
    :cond_6
    const-string v17, "logtype=? AND messageid=?"

    .line 3110
    .local v17, selection:Ljava/lang/String;
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/4 v2, 0x0

    const-string v4, "300"

    aput-object v4, v18, v2

    const/4 v2, 0x1

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v18, v2

    .line 3114
    .local v18, selectionArg:[Ljava/lang/String;
    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->LOG_HISTORY_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v2, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3116
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 3119
    .local v23, value:Landroid/content/ContentValues;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getmEnableDoCoMoDeliveryReportFormat()Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v9, :cond_9

    const-string v2, "NTT DOCOMO"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/android/mms/transaction/MessagingNotification;->getNewMissedCallSMS(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3120
    move-object/from16 v0, p0

    invoke-static {v0, v10, v12, v3}, Lcom/android/mms/transaction/MessagingNotification;->insertCallLogDB(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Landroid/content/ContentResolver;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3172
    :cond_7
    :goto_1
    if-eqz v12, :cond_8

    .line 3173
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 3174
    const/4 v12, 0x0

    .line 3177
    :cond_8
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 3123
    :cond_9
    if-eqz v10, :cond_a

    .line 3124
    :try_start_3
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x32

    if-le v2, v4, :cond_a

    .line 3125
    const/4 v2, 0x0

    const/16 v4, 0x32

    invoke-virtual {v10, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 3129
    :cond_a
    const-string v2, "date"

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3130
    const-string v4, "type"

    const-wide/16 v6, 0x1

    cmp-long v2, v21, v6

    if-nez v2, :cond_c

    const/4 v2, 0x1

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3131
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 3132
    const-string v2, "number"

    const-string v4, "-1"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3148
    :goto_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 3149
    const/4 v2, 0x1

    invoke-static {v9, v2}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v11

    .line 3150
    .local v11, contact:Lcom/android/mms/data/Contact;
    if-eqz v11, :cond_b

    invoke-virtual {v11}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3151
    const-string v2, "ci_person_id"

    invoke-virtual {v11}, Lcom/android/mms/data/Contact;->getPersonId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3152
    const-string v2, "ci_phoneNumber"

    invoke-virtual {v11}, Lcom/android/mms/data/Contact;->getNumberInContactDB()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3153
    const-string v2, "ci_normalizedNumber"

    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3157
    .end local v11           #contact:Lcom/android/mms/data/Contact;
    :cond_b
    const-string v2, "messageid"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3158
    const-string v2, "m_content"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3159
    const-string v4, "new"

    if-nez v16, :cond_13

    const/4 v2, 0x1

    :goto_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3161
    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->LOG_SMS_URI:Landroid/net/Uri;

    move-object/from16 v0, v23

    invoke-virtual {v3, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 3162
    if-eqz v9, :cond_7

    .line 3163
    const-string v2, "Mms/MessagingNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateHistoryForSms(), len="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    .line 3165
    .end local v9           #address:Ljava/lang/String;
    .end local v10           #body:Ljava/lang/String;
    .end local v14           #msgId:J
    .end local v16           #read:I
    .end local v17           #selection:Ljava/lang/String;
    .end local v18           #selectionArg:[Ljava/lang/String;
    .end local v19           #timeMillis:J
    .end local v21           #type:J
    .end local v23           #value:Landroid/content/ContentValues;
    :catch_1
    move-exception v13

    .line 3166
    .restart local v13       #e:Ljava/lang/IllegalStateException;
    :try_start_4
    const-string v2, "Mms/MessagingNotification"

    const-string v4, "updateHistoryForSms() Catch a IllegalStateException: "

    invoke-static {v2, v4, v13}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3167
    const/4 v2, 0x0

    .line 3172
    if-eqz v12, :cond_0

    .line 3173
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 3174
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 3130
    .end local v13           #e:Ljava/lang/IllegalStateException;
    .restart local v9       #address:Ljava/lang/String;
    .restart local v10       #body:Ljava/lang/String;
    .restart local v14       #msgId:J
    .restart local v16       #read:I
    .restart local v17       #selection:Ljava/lang/String;
    .restart local v18       #selectionArg:[Ljava/lang/String;
    .restart local v19       #timeMillis:J
    .restart local v21       #type:J
    .restart local v23       #value:Landroid/content/ContentValues;
    :cond_c
    const/4 v2, 0x2

    goto/16 :goto_2

    .line 3133
    :cond_d
    :try_start_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->isKORCMASFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v2

    if-eqz v2, :cond_e

    if-eqz v9, :cond_e

    const-string v2, "#CMAS#"

    invoke-virtual {v9, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 3134
    const-string v2, "number"

    const-string v4, "-1"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3135
    const-string v2, "service_type"

    const/16 v4, 0x19

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_3

    .line 3168
    .end local v9           #address:Ljava/lang/String;
    .end local v10           #body:Ljava/lang/String;
    .end local v14           #msgId:J
    .end local v16           #read:I
    .end local v17           #selection:Ljava/lang/String;
    .end local v18           #selectionArg:[Ljava/lang/String;
    .end local v19           #timeMillis:J
    .end local v21           #type:J
    .end local v23           #value:Landroid/content/ContentValues;
    :catch_2
    move-exception v13

    .line 3169
    .local v13, e:Landroid/database/sqlite/SQLiteException;
    :try_start_6
    const-string v2, "Mms/MessagingNotification"

    const-string v4, "updateHistoryForSms() Catch a SQLiteException: "

    invoke-static {v2, v4, v13}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3170
    const/4 v2, 0x0

    .line 3172
    if-eqz v12, :cond_0

    .line 3173
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 3174
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 3136
    .end local v13           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v9       #address:Ljava/lang/String;
    .restart local v10       #body:Ljava/lang/String;
    .restart local v14       #msgId:J
    .restart local v16       #read:I
    .restart local v17       #selection:Ljava/lang/String;
    .restart local v18       #selectionArg:[Ljava/lang/String;
    .restart local v19       #timeMillis:J
    .restart local v21       #type:J
    .restart local v23       #value:Landroid/content/ContentValues;
    :cond_e
    :try_start_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v2

    const-string v4, "LGU+"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-static/range {p0 .. p0}, Lcom/android/mms/util/TelephonyUtils;->isRoaming(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 3137
    const-string v2, "number"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3138
    const-string v2, "service_type"

    const/16 v4, 0x14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_3

    .line 3172
    .end local v9           #address:Ljava/lang/String;
    .end local v10           #body:Ljava/lang/String;
    .end local v14           #msgId:J
    .end local v16           #read:I
    .end local v17           #selection:Ljava/lang/String;
    .end local v18           #selectionArg:[Ljava/lang/String;
    .end local v19           #timeMillis:J
    .end local v21           #type:J
    .end local v23           #value:Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    if-eqz v12, :cond_f

    .line 3173
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 3174
    const/4 v12, 0x0

    :cond_f
    throw v2

    .line 3140
    .restart local v9       #address:Ljava/lang/String;
    .restart local v10       #body:Ljava/lang/String;
    .restart local v14       #msgId:J
    .restart local v16       #read:I
    .restart local v17       #selection:Ljava/lang/String;
    .restart local v18       #selectionArg:[Ljava/lang/String;
    .restart local v19       #timeMillis:J
    .restart local v21       #type:J
    .restart local v23       #value:Landroid/content/ContentValues;
    :cond_10
    :try_start_8
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    const v2, 0x7f0c013b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 3141
    :cond_11
    const-string v2, "number"

    const-string v4, "-1"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3143
    :cond_12
    const-string v2, "number"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_3

    .line 3159
    :cond_13
    const/4 v2, 0x0

    goto/16 :goto_4
.end method

.method private static updateNotification(Landroid/content/Context;ZILjava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;)V
    .locals 36
    .parameter "context"
    .parameter "isNew"
    .parameter "uniqueThreadCount"
    .parameter
    .parameter "mostRecentNotification"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZI",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ">;",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1672
    .local p3, notificationSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;>;"
    const-string v6, "Mms/MessagingNotification"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateNotification(),isNew="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1674
    if-nez p4, :cond_0

    .line 1869
    :goto_0
    return-void

    .line 1678
    :cond_0
    sget-boolean v6, Lcom/android/mms/transaction/MessagingNotification;->sEnableNotification:Z

    if-eqz v6, :cond_a

    .line 1679
    const/16 v6, 0x7b

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 1686
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSstream()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1687
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/transaction/MessagingNotification;->AddSstreamItem(Landroid/content/Context;ILjava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;Z)V

    .line 1692
    :cond_1
    invoke-interface/range {p3 .. p3}, Ljava/util/SortedSet;->size()I

    move-result v15

    .line 1693
    .local v15, messageCount:I
    new-instance v6, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p4

    iget-wide v12, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mTimeMillis:J

    invoke-virtual {v6, v12, v13}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v16

    .line 1695
    .local v16, noti:Landroid/app/Notification$Builder;
    if-eqz p1, :cond_2

    .line 1696
    const v6, 0x7f0c006f

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    .line 1697
    .local v26, description:Ljava/lang/String;
    sget-boolean v6, Lcom/android/mms/transaction/MessagingNotification;->sEnablePreview:Z

    if-nez v6, :cond_b

    .line 1698
    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1718
    .end local v26           #description:Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    .line 1719
    .local v34, res:Landroid/content/res/Resources;
    const/16 v35, 0x0

    .line 1720
    .local v35, title:Ljava/lang/String;
    const/16 v17, 0x0

    .line 1722
    .local v17, avatar:Landroid/graphics/Bitmap;
    const/4 v6, 0x1

    move/from16 v0, p2

    if-le v0, v6, :cond_d

    .line 1723
    new-instance v28, Landroid/content/Intent;

    invoke-direct/range {v28 .. v28}, Landroid/content/Intent;-><init>()V

    .line 1724
    .local v28, mainActivityIntent:Landroid/content/Intent;
    const-string v6, "android.intent.action.MAIN"

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1725
    invoke-static/range {v28 .. v28}, Lcom/android/mms/transaction/MessagingNotification;->addNotiIntentType(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v28

    .line 1726
    const-string v6, "com.android.mms"

    const-string v12, "com.android.mms.ui.ConversationComposer"

    move-object/from16 v0, v28

    invoke-virtual {v0, v6, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1729
    sget-boolean v6, Lcom/android/mms/transaction/MessagingNotification;->sEnablePreview:Z

    if-nez v6, :cond_c

    .line 1730
    const/high16 v6, 0x7f0c

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 1737
    :goto_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFingerprintService()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1738
    invoke-interface/range {p3 .. p3}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v32

    .line 1739
    .local v32, notifications:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;>;"
    :cond_3
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1740
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    .line 1741
    .local v31, notificationInfo:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    const-string v6, "Mms/MessagingNotification"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateNotification(),notificationInfo Id="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v31

    iget-wide v13, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mThreadId:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1743
    move-object/from16 v0, v31

    iget-wide v12, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mThreadId:J

    invoke-static {v12, v13}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->isSecretMode(J)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1744
    const-string v6, "secretThreadId_in_multiThreadNoti"

    move-object/from16 v0, v31

    iget-wide v12, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mThreadId:J

    move-object/from16 v0, v28

    invoke-virtual {v0, v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1770
    .end local v31           #notificationInfo:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    .end local v32           #notifications:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;>;"
    :cond_4
    :goto_3
    move-object/from16 v0, p4

    iget v6, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mPriority:I

    const/16 v12, 0x82

    if-eq v6, v12, :cond_10

    .line 1771
    const v6, 0x7f02026f

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1778
    :goto_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1779
    sget-object v6, Lcom/android/mms/transaction/MessagingNotification;->lastMsgType:Ljava/lang/String;

    const-string v12, "wappush"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1780
    const/4 v6, 0x4

    move-object/from16 v0, v28

    invoke-static {v0, v6}, Lcom/android/mms/transaction/MessagingNotification;->SetFolderBox(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v28

    .line 1783
    :cond_5
    const-string v6, "null"

    sput-object v6, Lcom/android/mms/transaction/MessagingNotification;->lastMsgType:Ljava/lang/String;

    .line 1788
    :cond_6
    const/4 v6, 0x0

    const/high16 v12, 0x800

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-static {v0, v6, v1, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v33

    .line 1792
    .local v33, pendingIntent:Landroid/app/PendingIntent;
    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    const-string v12, "android.message"

    invoke-virtual {v6, v12}, Landroid/app/Notification$Builder;->addKind(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v6

    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 1797
    sget-object v6, Lcom/android/mms/transaction/MessagingNotification;->sReminderCount:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .line 1799
    .local v24, alertCount:I
    const/4 v6, 0x1

    move/from16 v0, v24

    if-le v0, v6, :cond_7

    .line 1800
    const-string v6, "MessagingNotification"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "every"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "sec"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1801
    const-string v6, "alarm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager;

    .line 1802
    .local v5, am:Landroid/app/AlarmManager;
    new-instance v27, Landroid/content/Intent;

    const-class v6, Lcom/android/mms/transaction/AlarmReceiver;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1803
    .local v27, intent:Landroid/content/Intent;
    const-string v6, "threadId"

    invoke-virtual/range {p4 .. p4}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getThreadId()J

    move-result-wide v12

    move-object/from16 v0, v27

    invoke-virtual {v0, v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1804
    const/4 v6, 0x0

    const/high16 v12, 0x800

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-static {v0, v6, v1, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 1805
    .local v11, sender:Landroid/app/PendingIntent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    mul-int/lit8 v6, v24, 0x3c

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v0, v6

    move-wide/from16 v18, v0

    add-long v7, v12, v18

    .line 1806
    .local v7, startTime:J
    mul-int/lit8 v6, v24, 0x3c

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v9, v6

    .line 1807
    .local v9, cycleTime:J
    const-string v6, "MessagingNotification"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "startTime = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1808
    const/4 v6, 0x0

    invoke-virtual/range {v5 .. v11}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 1809
    const-string v6, "MessagingNotification"

    const-string v12, "Suman Test of notification.bRepeat"

    invoke-static {v6, v12}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1812
    .end local v5           #am:Landroid/app/AlarmManager;
    .end local v7           #startTime:J
    .end local v9           #cycleTime:J
    .end local v11           #sender:Landroid/app/PendingIntent;
    .end local v27           #intent:Landroid/content/Intent;
    :cond_7
    const/16 v25, 0x0

    .line 1813
    .local v25, defaults:I
    or-int/lit8 v25, v25, 0x4

    .line 1814
    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 1817
    const/4 v6, 0x0

    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->getDeleteIntent()Landroid/content/Intent;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v6, v12, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1821
    const/4 v6, 0x1

    if-ne v15, v6, :cond_11

    .line 1822
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->createSingleNotification(Landroid/content/Context;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v30

    .line 1832
    .local v30, notification:Landroid/app/Notification;
    :goto_5
    const-string v6, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/app/NotificationManager;

    .line 1834
    .local v29, nm:Landroid/app/NotificationManager;
    if-eqz p1, :cond_14

    .line 1835
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getContact(Landroid/content/Context;Z)Lcom/android/mms/data/Contact;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-static {v0, v1, v6}, Lcom/android/mms/transaction/MessagingNotification;->decideNotificationType(Landroid/content/Context;Landroid/app/Notification;Lcom/android/mms/data/Contact;)V

    .line 1838
    move-object/from16 v0, v30

    iget-object v6, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v6, :cond_8

    .line 1839
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1840
    const-string v6, "GATE"

    const-string v12, "<GATE-M>SMS_AUDIBLE_ALERT_IND</GATE-M>"

    invoke-static {v6, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    :cond_8
    move-object/from16 v0, p4

    iget-wide v12, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mThreadId:J

    move-object/from16 v0, v30

    iput-wide v12, v0, Landroid/app/Notification;->threadId:J

    .line 1845
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getContact(Landroid/content/Context;Z)Lcom/android/mms/data/Contact;

    move-result-object v6

    if-nez v6, :cond_13

    const/4 v6, 0x0

    :goto_6
    move-object/from16 v0, v30

    iput-object v6, v0, Landroid/app/Notification;->contactCharSeq:Ljava/lang/CharSequence;

    .line 1847
    const-string v6, "Mms/MessagingNotification"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "New message, updateNotification() sound path = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v30

    iget-object v13, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1848
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportFlashNotification()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1849
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->setFlashNotification(Landroid/content/Context;)V

    .line 1863
    :cond_9
    :goto_7
    const/4 v6, 0x2

    move-object/from16 v0, v30

    iput v6, v0, Landroid/app/Notification;->priority:I

    .line 1865
    move-object/from16 v0, v30

    iput v15, v0, Landroid/app/Notification;->missedCount:I

    .line 1867
    const/16 v6, 0x7b

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v6, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 1681
    .end local v15           #messageCount:I
    .end local v16           #noti:Landroid/app/Notification$Builder;
    .end local v17           #avatar:Landroid/graphics/Bitmap;
    .end local v24           #alertCount:I
    .end local v25           #defaults:I
    .end local v28           #mainActivityIntent:Landroid/content/Intent;
    .end local v29           #nm:Landroid/app/NotificationManager;
    .end local v30           #notification:Landroid/app/Notification;
    .end local v33           #pendingIntent:Landroid/app/PendingIntent;
    .end local v34           #res:Landroid/content/res/Resources;
    .end local v35           #title:Ljava/lang/String;
    :cond_a
    const-string v6, "Mms/MessagingNotification"

    const-string v12, "updateNotification: notifications turned off in prefs"

    invoke-static {v6, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1700
    .restart local v15       #messageCount:I
    .restart local v16       #noti:Landroid/app/Notification$Builder;
    .restart local v26       #description:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-virtual {v0, v1, v15, v2}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getTicker(Landroid/content/Context;IZ)Ljava/lang/CharSequence;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto/16 :goto_1

    .line 1732
    .end local v26           #description:Ljava/lang/String;
    .restart local v17       #avatar:Landroid/graphics/Bitmap;
    .restart local v28       #mainActivityIntent:Landroid/content/Intent;
    .restart local v34       #res:Landroid/content/res/Resources;
    .restart local v35       #title:Ljava/lang/String;
    :cond_c
    const v6, 0x7f0c00b5

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    goto/16 :goto_2

    .line 1751
    .end local v28           #mainActivityIntent:Landroid/content/Intent;
    :cond_d
    sget-boolean v6, Lcom/android/mms/transaction/MessagingNotification;->sEnablePreview:Z

    if-nez v6, :cond_f

    .line 1752
    const/high16 v6, 0x7f0c

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 1758
    :goto_8
    move-object/from16 v0, p4

    iget v6, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mPriority:I

    const/16 v12, 0x82

    if-eq v6, v12, :cond_e

    .line 1759
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, v16

    move-object/from16 v3, v34

    move/from16 v4, p1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/transaction/MessagingNotification;->setNotificationAvatar(Landroid/content/Context;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;Landroid/app/Notification$Builder;Landroid/content/res/Resources;Z)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 1762
    :cond_e
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v28

    .line 1765
    .restart local v28       #mainActivityIntent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFingerprintService()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1766
    const-string v6, "address_SecretMode"

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, v28

    invoke-virtual {v0, v6, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3

    .line 1754
    .end local v28           #mainActivityIntent:Landroid/content/Intent;
    :cond_f
    invoke-interface/range {p3 .. p3}, Ljava/util/SortedSet;->size()I

    move-result v6

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-virtual {v0, v1, v6, v2}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getTitle(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v35

    goto :goto_8

    .line 1773
    .restart local v28       #mainActivityIntent:Landroid/content/Intent;
    :cond_10
    const v6, 0x7f020272

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto/16 :goto_4

    .line 1825
    .restart local v24       #alertCount:I
    .restart local v25       #defaults:I
    .restart local v33       #pendingIntent:Landroid/app/PendingIntent;
    :cond_11
    const/4 v6, 0x1

    move/from16 v0, p2

    if-ne v0, v6, :cond_12

    move-object/from16 v12, p0

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    .line 1826
    invoke-static/range {v12 .. v17}, Lcom/android/mms/transaction/MessagingNotification;->createUniqueMultipleNotification(Landroid/content/Context;Ljava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;ILandroid/app/Notification$Builder;Landroid/graphics/Bitmap;)Landroid/app/Notification;

    move-result-object v30

    .restart local v30       #notification:Landroid/app/Notification;
    goto/16 :goto_5

    .end local v30           #notification:Landroid/app/Notification;
    :cond_12
    move-object/from16 v18, p0

    move-object/from16 v19, p3

    move-object/from16 v20, p4

    move/from16 v21, v15

    move-object/from16 v22, v16

    move/from16 v23, p1

    .line 1828
    invoke-static/range {v18 .. v23}, Lcom/android/mms/transaction/MessagingNotification;->createMultipleNotification(Landroid/content/Context;Ljava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;ILandroid/app/Notification$Builder;Z)Landroid/app/Notification;

    move-result-object v30

    .restart local v30       #notification:Landroid/app/Notification;
    goto/16 :goto_5

    .line 1845
    .restart local v29       #nm:Landroid/app/NotificationManager;
    :cond_13
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getContact(Landroid/content/Context;Z)Lcom/android/mms/data/Contact;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_6

    .line 1854
    :cond_14
    const/16 v6, 0x7b

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1858
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotificationAlert;->stopAlertSoundOnCall()V

    .line 1859
    const/4 v6, 0x0

    move-object/from16 v0, v30

    iput-object v6, v0, Landroid/app/Notification;->contactCharSeq:Ljava/lang/CharSequence;

    .line 1860
    const-string v6, "Mms/MessagingNotification"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateNotification() sound path = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v30

    iget-object v13, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7
.end method

.method public static updateRepeatNotifications(Landroid/content/Context;J)V
    .locals 1
    .parameter "context"
    .parameter "threadId"

    .prologue
    .line 1546
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 1547
    invoke-static {p0}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    .line 1548
    return-void
.end method

.method public static updateReportNotification(Landroid/content/Context;IIJLjava/lang/String;)V
    .locals 14
    .parameter "context"
    .parameter "type"
    .parameter "status"
    .parameter "threadId"
    .parameter "address"

    .prologue
    .line 2635
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->loadNotificationPref(Landroid/content/Context;)V

    .line 2637
    sget-boolean v11, Lcom/android/mms/transaction/MessagingNotification;->sEnableNotification:Z

    if-nez v11, :cond_1

    .line 2704
    :cond_0
    :goto_0
    return-void

    .line 2641
    :cond_1
    new-instance v9, Ljava/lang/StringBuffer;

    const/16 v11, 0x64

    invoke-direct {v9, v11}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 2642
    .local v9, sb:Ljava/lang/StringBuffer;
    const-string v11, "Mms/MessagingNotification"

    const-string v12, "updateReportNotification(),type="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, ",status="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, ",threadId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2644
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    .line 2645
    .local v6, notification:Landroid/app/Notification;
    const-string v11, "notification"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 2650
    .local v5, nm:Landroid/app/NotificationManager;
    packed-switch p1, :pswitch_data_0

    .line 2667
    const-string v8, ""

    .line 2668
    .local v8, reportStatusText:Ljava/lang/String;
    goto :goto_0

    .line 2652
    .end local v8           #reportStatusText:Ljava/lang/String;
    :pswitch_0
    const v11, 0x7f0c00a7

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2653
    .local v10, title:Ljava/lang/String;
    move/from16 v0, p2

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->getSmsDeliveryReportText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    .line 2654
    .restart local v8       #reportStatusText:Ljava/lang/String;
    const v11, 0x7f02026d

    iput v11, v6, Landroid/app/Notification;->icon:I

    .line 2671
    :goto_1
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 2675
    const-string v4, ""

    .line 2677
    .local v4, displayAddress:Ljava/lang/String;
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 2678
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 2679
    const/4 v11, 0x1

    move-object/from16 v0, p5

    invoke-static {v0, v11}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v4

    .line 2682
    :cond_2
    const/4 v3, 0x0

    .line 2684
    .local v3, description:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isLocaleRTL()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2685
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u202a"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\u202c : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2690
    :goto_2
    move-wide/from16 v0, p3

    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v2

    .line 2691
    .local v2, clickIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/mms/transaction/MessagingNotification;->addNotiIntentType(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    .line 2693
    const/4 v11, 0x0

    const/high16 v12, 0x800

    invoke-static {p0, v11, v2, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 2695
    .local v7, pendingIntent:Landroid/app/PendingIntent;
    const/16 v11, 0x378

    invoke-static {p0, v11}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 2696
    iput-object v10, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2697
    invoke-virtual {v6, p0, v10, v3, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2698
    const/4 v11, 0x0

    invoke-static {p0, v6, v11}, Lcom/android/mms/transaction/MessagingNotification;->decideNotificationType(Landroid/content/Context;Landroid/app/Notification;Lcom/android/mms/data/Contact;)V

    .line 2699
    const/4 v11, 0x2

    iput v11, v6, Landroid/app/Notification;->priority:I

    .line 2701
    const/16 v11, 0x378

    invoke-virtual {v5, v11, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 2702
    const/4 v11, 0x1

    sput-boolean v11, Lcom/android/mms/transaction/MessagingNotification;->sExistReportNotification:Z

    .line 2703
    move-wide/from16 v0, p3

    invoke-static {p0, v0, v1, v10, v3}, Lcom/android/mms/accessory/WatchRelay;->sendReceivedMsgIntentForDDM(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2657
    .end local v2           #clickIntent:Landroid/content/Intent;
    .end local v3           #description:Ljava/lang/String;
    .end local v4           #displayAddress:Ljava/lang/String;
    .end local v7           #pendingIntent:Landroid/app/PendingIntent;
    .end local v8           #reportStatusText:Ljava/lang/String;
    .end local v10           #title:Ljava/lang/String;
    :pswitch_1
    const v11, 0x7f0c00a7

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2658
    .restart local v10       #title:Ljava/lang/String;
    move/from16 v0, p2

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->getMmsDeliveryReportText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    .line 2659
    .restart local v8       #reportStatusText:Ljava/lang/String;
    const v11, 0x7f02026d

    iput v11, v6, Landroid/app/Notification;->icon:I

    goto/16 :goto_1

    .line 2662
    .end local v8           #reportStatusText:Ljava/lang/String;
    .end local v10           #title:Ljava/lang/String;
    :pswitch_2
    const v11, 0x7f0c00a8

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2663
    .restart local v10       #title:Ljava/lang/String;
    move/from16 v0, p2

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->getMmsReadReportText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    .line 2664
    .restart local v8       #reportStatusText:Ljava/lang/String;
    const v11, 0x7f020271

    iput v11, v6, Landroid/app/Notification;->icon:I

    goto/16 :goto_1

    .line 2687
    .restart local v3       #description:Ljava/lang/String;
    .restart local v4       #displayAddress:Ljava/lang/String;
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 2650
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static updateSendFailedNotification(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 2570
    const-string v0, "Mms/MessagingNotification"

    const-string v1, "updateSendFailedNotification()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2572
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->getUndeliveredMessageCount(Landroid/content/Context;[J)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 2573
    const/16 v0, 0x315

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 2577
    :goto_0
    return-void

    .line 2575
    :cond_0
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->notifySendFailed(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static updateSendFailedNotificationForThread(Landroid/content/Context;J)V
    .locals 5
    .parameter "context"
    .parameter "threadId"

    .prologue
    .line 2584
    const/4 v1, 0x2

    new-array v0, v1, [J

    fill-array-data v0, :array_0

    .line 2586
    .local v0, msgThreadId:[J
    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->getUndeliveredMessageCount(Landroid/content/Context;[J)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    aget-wide v1, v0, v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 2587
    const/16 v1, 0x315

    invoke-static {p0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 2588
    invoke-static {p0}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    .line 2590
    :cond_0
    return-void

    .line 2584
    nop

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 319
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v1

    .line 321
    .local v1, flags:I
    const-string v2, "Mms/MessagingNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " flags "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v2, "com.sec.android.app.camera.DISABLE_VIBRATOR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 324
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/mms/transaction/MessagingNotification;->sDisableVibrateForCamera:Z

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    const-string v2, "com.sec.android.app.camera.ENABLE_VIBRATOR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 326
    sput-boolean v5, Lcom/android/mms/transaction/MessagingNotification;->sDisableVibrateForCamera:Z

    goto :goto_0

    .line 327
    :cond_2
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 328
    const-wide/16 v2, -0x2

    invoke-static {p1, v2, v3, v5}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 329
    invoke-static {p1}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateSendFailedNotification(Landroid/content/Context;)V

    .line 330
    invoke-static {p1}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockUpdateDownloadFailedNotification(Landroid/content/Context;)V

    goto :goto_0
.end method
