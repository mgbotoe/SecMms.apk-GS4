.class public Lcom/android/mms/ui/MessageItem;
.super Ljava/lang/Object;
.source "MessageItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageItem$DeliveryStatus;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = null

.field public static final TYPE_MMS:Ljava/lang/String; = "mms"

.field public static final TYPE_SMS:Ljava/lang/String; = "sms"

.field public static final TYPE_WPM:Ljava/lang/String; = "wpm"


# instance fields
.field mAddress:Ljava/lang/String;

.field mAttachmentCount:I

.field mAttachmentType:I

.field mBody:Ljava/lang/String;

.field private mBoxId:I

.field mCachedFormattedMessage:Ljava/lang/CharSequence;

.field mCachedFormattedSender:Ljava/lang/CharSequence;

.field mCachedFormattedSubject:Ljava/lang/CharSequence;

.field mCachedTopFormattedMessage:Ljava/lang/CharSequence;

.field mCallbackNumber:Ljava/lang/String;

.field mContact:Ljava/lang/String;

.field final mContext:Landroid/content/Context;

.field mDeliverCount:I

.field mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

.field mErrorCode:I

.field mErrorType:I

.field mExpireDate:Ljava/lang/String;

.field mFailedCount:I

.field mFirstAttachItemType:I

.field mFirstAttachName:Ljava/lang/String;

.field private mFormattedBody:Ljava/lang/CharSequence;

.field private mFormattedSubject:Ljava/lang/CharSequence;

.field mGroupId:J

.field mGroupMessage:Z

.field mGroupType:I

.field mHasAttachment:Z

.field mHasDrmContents:Z

.field mHasSeperator:Z

.field mHighlight:Ljava/util/regex/Pattern;

.field mIncomingGroupMessage:Z

.field mIsCMASSms:Z

.field mIsCbSms:Z

.field mIsGroupMessage:Z

.field mIsSpam:Z

.field mLastSendingState:Z

.field mLayoutType:I

.field mLinkUrl:Ljava/lang/String;

.field mLocked:Z

.field mMMSPriority:I

.field mMMSRead:I

.field mMessageSize:I

.field mMessageType:I

.field mMessageUri:Landroid/net/Uri;

.field final mMsgId:J

.field mReadReport:Z

.field mRequestCount:I

.field public mReserved:J

.field mSMSPriority:I

.field mSMSRead:I

.field mServiceCategory:I

.field mSlideshow:Lcom/android/mms/model/SlideshowModel;

.field mSmsSvcCmd:I

.field mSmsSvcCmdContent:Ljava/lang/String;

.field mSubject:Ljava/lang/String;

.field mTeleserviceId:I

.field final mThreadId:J

.field mTimeMills:J

.field mTimestamp:Ljava/lang/String;

.field final mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const-string v0, "Mms/MessageItem"

    sput-object v0, Lcom/android/mms/ui/MessageItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;ZZ)V
    .locals 36
    .parameter "context"
    .parameter "type"
    .parameter "cursor"
    .parameter "columnsMap"
    .parameter "highlight"
    .parameter "isSpam"
    .parameter "addAttachmentSlide"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 173
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mIncomingGroupMessage:Z

    .line 126
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mGroupMessage:Z

    .line 127
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mFailedCount:I

    .line 128
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mRequestCount:I

    .line 129
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliverCount:I

    .line 134
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mIsGroupMessage:Z

    .line 150
    const-wide/16 v29, 0x0

    move-wide/from16 v0, v29

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/MessageItem;->mGroupId:J

    .line 151
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mGroupType:I

    .line 169
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mSmsSvcCmd:I

    .line 170
    const-string v29, ""

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mSmsSvcCmdContent:Ljava/lang/String;

    .line 174
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    .line 175
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    move/from16 v29, v0

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    move-wide/from16 v0, v29

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    .line 176
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mHighlight:Ljava/util/regex/Pattern;

    .line 177
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    .line 178
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnThreadId:I

    move/from16 v29, v0

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    move-wide/from16 v0, v29

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    .line 179
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mHasSeperator:Z

    .line 180
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mIsSpam:Z

    .line 182
    const-string v29, "sms"

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_10

    .line 183
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    .line 185
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsStatus:I

    move/from16 v29, v0

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 186
    .local v22, status:J
    const-wide/16 v29, -0x1

    cmp-long v29, v22, v29

    if-nez v29, :cond_5

    sget-object v29, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    .line 191
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageItem;->mIsSpam:Z

    move/from16 v29, v0

    if-eqz v29, :cond_8

    sget-object v29, Lcom/android/mms/spam/SpamFilter;->SPAM_SMS_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    move-wide/from16 v30, v0

    invoke-static/range {v29 .. v31}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    .line 194
    :goto_1
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsType:I

    move/from16 v29, v0

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    .line 195
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsAddress:I

    move/from16 v29, v0

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    .line 196
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsRead:I

    move/from16 v29, v0

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mSMSRead:I

    .line 197
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsPriority:I

    move/from16 v29, v0

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mSMSPriority:I

    .line 198
    const-string v29, "CBmessages"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mIsCbSms:Z

    .line 201
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v29

    if-eqz v29, :cond_9

    .line 202
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnCmasServiceCategory:I

    move/from16 v29, v0

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mServiceCategory:I

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v29, v0

    if-eqz v29, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v29, v0

    const-string v30, "#CMAS#"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mServiceCategory:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/mms/transaction/CmasReceiverService;->isCmasMessage(I)Z

    move-result v29

    if-eqz v29, :cond_2

    .line 208
    :cond_1
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mIsCMASSms:Z

    .line 215
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v29

    if-eqz v29, :cond_a

    .line 216
    const v29, 0x7f0c000d

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 217
    .local v12, meString:Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    .line 224
    .end local v12           #meString:Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsBody:I

    move/from16 v29, v0

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    .line 225
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsCallback:I

    move/from16 v29, v0

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mCallbackNumber:Ljava/lang/String;

    .line 227
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsDate:I

    move/from16 v29, v0

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    move-wide/from16 v0, v29

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    .line 228
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageItem;->isOutgoingMessage()Z

    move-result v29

    if-nez v29, :cond_3

    .line 229
    const v29, 0x7f0c000f

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    move-wide/from16 v32, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v32

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->formatTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, p1

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    .line 232
    :cond_3
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsLocked:I

    move/from16 v29, v0

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    if-eqz v29, :cond_d

    const/16 v29, 0x1

    :goto_4
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    .line 233
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsErrorCode:I

    move/from16 v29, v0

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mErrorCode:I

    .line 234
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsReserved:I

    move/from16 v29, v0

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v29, v0

    move-wide/from16 v0, v29

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/MessageItem;->mReserved:J

    .line 237
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsGroupId:I

    move/from16 v29, v0

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    move-wide/from16 v0, v29

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/MessageItem;->mGroupId:J

    .line 238
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsGroupType:I

    move/from16 v29, v0

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mGroupType:I

    .line 241
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsTeleserviceId:I

    move/from16 v29, v0

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mTeleserviceId:I

    .line 242
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsLinkUrl:I

    move/from16 v29, v0

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mLinkUrl:Ljava/lang/String;

    .line 244
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsSvcCmd:I

    move/from16 v29, v0

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mSmsSvcCmd:I

    .line 245
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsSvcCmdContent:I

    move/from16 v29, v0

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mSmsSvcCmdContent:Ljava/lang/String;

    .line 247
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getKTSMSDeliveryReadReportsEnable()Z

    move-result v29

    if-eqz v29, :cond_4

    .line 248
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mSmsSvcCmd:I

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_e

    .line 249
    sget-object v29, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->RECEIVED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    .line 470
    .end local v22           #status:J
    :cond_4
    :goto_5
    return-void

    .line 187
    .restart local v22       #status:J
    :cond_5
    const-wide/16 v29, 0x40

    cmp-long v29, v22, v29

    if-ltz v29, :cond_6

    sget-object v29, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->FAILED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    goto/16 :goto_0

    .line 188
    :cond_6
    const-wide/16 v29, 0x20

    cmp-long v29, v22, v29

    if-ltz v29, :cond_7

    sget-object v29, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->PENDING:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    goto/16 :goto_0

    .line 189
    :cond_7
    sget-object v29, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->RECEIVED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    goto/16 :goto_0

    .line 192
    :cond_8
    sget-object v29, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    move-wide/from16 v30, v0

    invoke-static/range {v29 .. v31}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    goto/16 :goto_1

    .line 211
    :cond_9
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mIsCMASSms:Z

    goto/16 :goto_2

    .line 218
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageItem;->mIsCbSms:Z

    move/from16 v29, v0

    if-eqz v29, :cond_b

    .line 219
    const v29, 0x7f0c00fb

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    goto/16 :goto_3

    .line 222
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_c

    const-string v29, ""

    :goto_6
    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    goto/16 :goto_3

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-static/range {v29 .. v30}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v29

    goto :goto_6

    .line 232
    :cond_d
    const/16 v29, 0x0

    goto/16 :goto_4

    .line 250
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mSmsSvcCmd:I

    move/from16 v29, v0

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_f

    .line 251
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    goto/16 :goto_5

    .line 252
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mSmsSvcCmd:I

    move/from16 v29, v0

    const/16 v30, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_4

    .line 253
    sget-object v29, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->RECEIVED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    .line 254
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    goto/16 :goto_5

    .line 258
    .end local v22           #status:J
    :cond_10
    const-string v29, "mms"

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_29

    .line 259
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageItem;->mIsSpam:Z

    move/from16 v29, v0

    if-eqz v29, :cond_13

    .line 260
    sget-object v29, Landroid/provider/Telephony$SpamMms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    move-wide/from16 v30, v0

    invoke-static/range {v29 .. v31}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    .line 264
    :goto_7
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageBox:I

    move/from16 v29, v0

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    .line 265
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageType:I

    move/from16 v29, v0

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    .line 267
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsRead:I

    move/from16 v29, v0

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mMMSRead:I

    .line 268
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsPriority:I

    move/from16 v29, v0

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mMMSPriority:I

    .line 269
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsErrorType:I

    move/from16 v29, v0

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mErrorType:I

    .line 270
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsSubject:I

    move/from16 v29, v0

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 271
    .local v24, subject:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_11

    .line 276
    new-instance v26, Lcom/google/android/mms/pdu/EncodedStringValue;

    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsSubjectCharset:I

    move/from16 v29, v0

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    move-object/from16 v0, v26

    move/from16 v1, v29

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(ILjava/lang/String;)V

    .line 278
    .local v26, v:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    .line 280
    .end local v26           #v:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_11
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsLocked:I

    move/from16 v29, v0

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    if-eqz v29, :cond_14

    const/16 v29, 0x1

    :goto_8
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    .line 281
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsReserved:I

    move/from16 v29, v0

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v29, v0

    move-wide/from16 v0, v29

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/MessageItem;->mReserved:J

    .line 284
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableGroupMessage()Z

    move-result v29

    if-eqz v29, :cond_12

    .line 285
    const/4 v6, 0x0

    .line 286
    .local v6, conv:Lcom/android/mms/data/Conversation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    move-wide/from16 v30, v0

    const/16 v32, 0x0

    invoke-static/range {v29 .. v32}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v6

    .line 287
    if-eqz v6, :cond_15

    invoke-virtual {v6}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v29

    if-eqz v29, :cond_15

    invoke-virtual {v6}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/mms/data/ContactList;->size()I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_15

    .line 288
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mIsGroupMessage:Z

    .line 295
    .end local v6           #conv:Lcom/android/mms/data/Conversation;
    :cond_12
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v16

    .line 296
    .local v16, p:Lcom/google/android/mms/pdu/PduPersister;
    const/16 v29, 0x82

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_16

    .line 297
    sget-object v29, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v29, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v15

    check-cast v15, Lcom/google/android/mms/pdu/NotificationInd;

    .line 299
    .local v15, notifInd:Lcom/google/android/mms/pdu/NotificationInd;
    invoke-virtual {v15}, Lcom/google/android/mms/pdu/NotificationInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/MessageItem;->interpretFrom(Lcom/google/android/mms/pdu/EncodedStringValue;Landroid/net/Uri;)V

    .line 301
    new-instance v29, Ljava/lang/String;

    invoke-virtual {v15}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    .line 302
    invoke-virtual {v15}, Lcom/google/android/mms/pdu/NotificationInd;->getMessageSize()J

    move-result-wide v29

    move-wide/from16 v0, v29

    long-to-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    .line 303
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsDate:I

    move/from16 v29, v0

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    const-wide/16 v31, 0x3e8

    mul-long v29, v29, v31

    move-wide/from16 v0, v29

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    .line 304
    const v29, 0x7f0c0010

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual {v15}, Lcom/google/android/mms/pdu/NotificationInd;->getExpiry()J

    move-result-wide v32

    const-wide/16 v34, 0x3e8

    mul-long v32, v32, v34

    const/16 v34, 0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, v32

    move/from16 v3, v34

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, p1

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mExpireDate:Ljava/lang/String;

    .line 423
    .end local v15           #notifInd:Lcom/google/android/mms/pdu/NotificationInd;
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageItem;->isOutgoingMessage()Z

    move-result v29

    if-nez v29, :cond_4

    .line 424
    const v29, 0x7f0c000f

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    move-wide/from16 v32, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v32

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->formatTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, p1

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    goto/16 :goto_5

    .line 262
    .end local v16           #p:Lcom/google/android/mms/pdu/PduPersister;
    .end local v24           #subject:Ljava/lang/String;
    :cond_13
    sget-object v29, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    move-wide/from16 v30, v0

    invoke-static/range {v29 .. v31}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    goto/16 :goto_7

    .line 280
    .restart local v24       #subject:Ljava/lang/String;
    :cond_14
    const/16 v29, 0x0

    goto/16 :goto_8

    .line 290
    .restart local v6       #conv:Lcom/android/mms/data/Conversation;
    :cond_15
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mIsGroupMessage:Z

    goto/16 :goto_9

    .line 307
    .end local v6           #conv:Lcom/android/mms/data/Conversation;
    .restart local v16       #p:Lcom/google/android/mms/pdu/PduPersister;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v29, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v13

    check-cast v13, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .line 310
    .local v13, msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsSendingForChn()Z

    move-result v29

    if-eqz v29, :cond_17

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v29

    invoke-direct {v0, v13, v1, v2}, Lcom/android/mms/ui/MessageItem;->ensureValidityMultimediaMessagePdu(Lcom/google/android/mms/pdu/MultimediaMessagePdu;Lcom/google/android/mms/pdu/PduPersister;Landroid/net/Uri;)Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    move-result-object v13

    .line 318
    :cond_17
    invoke-virtual {v13}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v29

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move/from16 v2, p7

    invoke-static {v0, v1, v2}, Lcom/android/mms/model/SlideshowModel;->createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Z)Lcom/android/mms/model/SlideshowModel;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/mms/model/SlideshowModel;->isRawAttachmentPresent()Z

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mHasAttachment:Z

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/mms/model/SlideshowModel;->isDrmContentsPresent()Z

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mHasDrmContents:Z

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/mms/ui/MessageUtils;->getAttachmentType(Lcom/android/mms/model/SlideshowModel;)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mAttachmentCount:I

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/mms/model/LayoutModel;->getLayoutType()I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mLayoutType:I

    .line 329
    const/16 v17, 0x0

    .line 330
    .local v17, rawAttachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mAttachmentCount:I

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_18

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsList()Ljava/util/ArrayList;

    move-result-object v17

    .line 332
    const/16 v29, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual/range {v29 .. v29}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mFirstAttachName:Ljava/lang/String;

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/mms/model/SlideshowModel;->getFirstAttachmentType()I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mFirstAttachItemType:I

    .line 337
    :cond_18
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1b

    .line 339
    invoke-virtual {v13}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getCc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v27

    .line 340
    .local v27, values1:[Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {v13}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v28

    .line 341
    .local v28, values2:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v27, :cond_19

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v29, v0

    if-gtz v29, :cond_1a

    :cond_19
    if-eqz v28, :cond_1b

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_1b

    .line 342
    :cond_1a
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mGroupMessage:Z

    .line 347
    .end local v27           #values1:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v28           #values2:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    move/from16 v29, v0

    const/16 v30, 0x84

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_23

    move-object/from16 v20, v13

    .line 348
    check-cast v20, Lcom/google/android/mms/pdu/RetrieveConf;

    .line 349
    .local v20, retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/RetrieveConf;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/MessageItem;->interpretFrom(Lcom/google/android/mms/pdu/EncodedStringValue;Landroid/net/Uri;)V

    .line 351
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1e

    .line 352
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/RetrieveConf;->getCc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v29

    if-eqz v29, :cond_1c

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/RetrieveConf;->getCc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v29

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-gt v0, v1, :cond_1d

    :cond_1c
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/RetrieveConf;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v29

    if-eqz v29, :cond_22

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/RetrieveConf;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v29

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_22

    .line 354
    :cond_1d
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mIncomingGroupMessage:Z

    .line 360
    :cond_1e
    :goto_b
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/RetrieveConf;->getDate()J

    move-result-wide v29

    const-wide/16 v31, 0x3e8

    mul-long v29, v29, v31

    move-wide/from16 v0, v29

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    .line 366
    .end local v13           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .end local v20           #retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    :goto_c
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsDeliveryReport:I

    move/from16 v29, v0

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 367
    .local v18, report:Ljava/lang/String;
    if-eqz v18, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v29, v0

    const v30, 0x7f0c000d

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_24

    .line 369
    :cond_1f
    sget-object v29, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    .line 385
    :goto_d
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsReadReport:I

    move/from16 v29, v0

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 386
    if-eqz v18, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v29, v0

    const v30, 0x7f0c000d

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_26

    .line 388
    :cond_20
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    .line 401
    :goto_e
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v21

    .line 402
    .local v21, slide:Lcom/android/mms/model/SlideModel;
    if-eqz v21, :cond_21

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v29

    if-eqz v29, :cond_21

    .line 403
    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v25

    .line 404
    .local v25, tm:Lcom/android/mms/model/TextModel;
    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/model/TextModel;->isDrmProtected()Z

    move-result v29

    if-eqz v29, :cond_28

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    const v30, 0x7f0c001a

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    .line 420
    .end local v21           #slide:Lcom/android/mms/model/SlideModel;
    .end local v25           #tm:Lcom/android/mms/model/TextModel;
    :cond_21
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    goto/16 :goto_a

    .line 356
    .end local v18           #report:Ljava/lang/String;
    .restart local v13       #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .restart local v20       #retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    :cond_22
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mIncomingGroupMessage:Z

    goto/16 :goto_b

    .line 362
    .end local v20           #retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    :cond_23
    const v29, 0x7f0c000d

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    .line 363
    check-cast v13, Lcom/google/android/mms/pdu/SendReq;

    .end local v13           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    invoke-virtual {v13}, Lcom/google/android/mms/pdu/SendReq;->getDate()J

    move-result-wide v29

    const-wide/16 v31, 0x3e8

    mul-long v29, v29, v31

    move-wide/from16 v0, v29

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    goto/16 :goto_c

    .line 373
    .restart local v18       #report:Ljava/lang/String;
    :cond_24
    :try_start_1
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 374
    .local v19, reportInt:I
    const/16 v29, 0x80

    move/from16 v0, v19

    move/from16 v1, v29

    if-ne v0, v1, :cond_25

    .line 375
    sget-object v29, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->RECEIVED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_d

    .line 379
    .end local v19           #reportInt:I
    :catch_0
    move-exception v14

    .line 380
    .local v14, nfe:Ljava/lang/NumberFormatException;
    sget-object v29, Lcom/android/mms/ui/MessageItem;->TAG:Ljava/lang/String;

    const-string v30, "Value for delivery report was invalid."

    invoke-static/range {v29 .. v30}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    sget-object v29, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    goto/16 :goto_d

    .line 377
    .end local v14           #nfe:Ljava/lang/NumberFormatException;
    .restart local v19       #reportInt:I
    :cond_25
    :try_start_2
    sget-object v29, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_d

    .line 392
    .end local v19           #reportInt:I
    :cond_26
    :try_start_3
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 393
    .restart local v19       #reportInt:I
    const/16 v29, 0x80

    move/from16 v0, v19

    move/from16 v1, v29

    if-ne v0, v1, :cond_27

    const/16 v29, 0x1

    :goto_10
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mReadReport:Z
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_e

    .line 394
    .end local v19           #reportInt:I
    :catch_1
    move-exception v14

    .line 395
    .restart local v14       #nfe:Ljava/lang/NumberFormatException;
    sget-object v29, Lcom/android/mms/ui/MessageItem;->TAG:Ljava/lang/String;

    const-string v30, "Value for read report was invalid."

    invoke-static/range {v29 .. v30}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    goto/16 :goto_e

    .line 393
    .end local v14           #nfe:Ljava/lang/NumberFormatException;
    .restart local v19       #reportInt:I
    :cond_27
    const/16 v29, 0x0

    goto :goto_10

    .line 407
    .end local v19           #reportInt:I
    .restart local v21       #slide:Lcom/android/mms/model/SlideModel;
    .restart local v25       #tm:Lcom/android/mms/model/TextModel;
    :cond_28
    :try_start_4
    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_f

    .line 415
    .end local v21           #slide:Lcom/android/mms/model/SlideModel;
    .end local v25           #tm:Lcom/android/mms/model/TextModel;
    :catch_2
    move-exception v9

    .line 416
    .local v9, e:Ljava/lang/IndexOutOfBoundsException;
    sget-object v29, Lcom/android/mms/ui/MessageItem;->TAG:Ljava/lang/String;

    const-string v30, "MMS has zero slides"

    invoke-static/range {v29 .. v30}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 428
    .end local v9           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v16           #p:Lcom/google/android/mms/pdu/PduPersister;
    .end local v17           #rawAttachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    .end local v18           #report:Ljava/lang/String;
    .end local v24           #subject:Ljava/lang/String;
    :cond_29
    const-string v29, "wpm"

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_2d

    .line 429
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    .line 430
    sget-object v29, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    .line 431
    sget-object v29, Lcom/android/mms/ui/MessageUtils;->WAP_PUSH_MESSAGE_BY_ID_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    move-wide/from16 v30, v0

    invoke-static/range {v29 .. v31}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    .line 435
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    .line 436
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsAddress:I

    move/from16 v29, v0

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    .line 437
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsRead:I

    move/from16 v29, v0

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mSMSRead:I

    .line 439
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsBody:I

    move/from16 v29, v0

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 440
    .local v4, body:Ljava/lang/String;
    const-wide/16 v10, 0x0

    .line 442
    .local v10, expiredTime:J
    :try_start_5
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnWpmSiExpires:I

    move/from16 v29, v0

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3

    move-result-wide v10

    .line 447
    :goto_11
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 448
    .local v5, calnow:Ljava/util/Calendar;
    const/16 v29, 0xe

    const/16 v30, 0x0

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 449
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    .line 451
    .local v7, currentTime:J
    const-wide/16 v29, 0x0

    cmp-long v29, v10, v29

    if-lez v29, :cond_2a

    cmp-long v29, v7, v10

    if-ltz v29, :cond_2a

    .line 452
    const v29, 0x7f0c01ab

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    .line 462
    :goto_12
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsDate:I

    move/from16 v29, v0

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    move-wide/from16 v0, v29

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    .line 463
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsLocked:I

    move/from16 v29, v0

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    if-eqz v29, :cond_2c

    const/16 v29, 0x1

    :goto_13
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    .line 465
    const v29, 0x7f0c000f

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    move-wide/from16 v32, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v32

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->formatTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, p1

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    goto/16 :goto_5

    .line 443
    .end local v5           #calnow:Ljava/util/Calendar;
    .end local v7           #currentTime:J
    :catch_3
    move-exception v14

    .line 444
    .restart local v14       #nfe:Ljava/lang/NumberFormatException;
    sget-object v29, Lcom/android/mms/ui/MessageItem;->TAG:Ljava/lang/String;

    const-string v30, "only SI message has Expires Value not SL :  expiredTime set 0 "

    invoke-static/range {v29 .. v30}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    .line 454
    .end local v14           #nfe:Ljava/lang/NumberFormatException;
    .restart local v5       #calnow:Ljava/util/Calendar;
    .restart local v7       #currentTime:J
    :cond_2a
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_2b

    .line 455
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsBody:I

    move/from16 v30, v0

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    .line 459
    :goto_14
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnWpmHref:I

    move/from16 v30, v0

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    goto/16 :goto_12

    .line 457
    :cond_2b
    const-string v29, ""

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    goto :goto_14

    .line 463
    :cond_2c
    const/16 v29, 0x0

    goto/16 :goto_13

    .line 468
    .end local v4           #body:Ljava/lang/String;
    .end local v5           #calnow:Ljava/util/Calendar;
    .end local v7           #currentTime:J
    .end local v10           #expiredTime:J
    :cond_2d
    new-instance v29, Lcom/google/android/mms/MmsException;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Unknown type of the message: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v29
.end method

.method private ensureValidityMultimediaMessagePdu(Lcom/google/android/mms/pdu/MultimediaMessagePdu;Lcom/google/android/mms/pdu/PduPersister;Landroid/net/Uri;)Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .locals 6
    .parameter "msg"
    .parameter "p"
    .parameter "mMessageUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 963
    sget-object v3, Lcom/android/mms/ui/MessageItem;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ensureValidityMultimediaMessagePdu(): [MESSAGE_TYPE_RETRIEVE_CONF/132]mMessageType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    iget v3, p0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    const/16 v4, 0x84

    if-ne v3, v4, :cond_2

    .line 968
    const/4 v1, 0x1

    .line 969
    .local v1, partsLoaded:Z
    const/4 v0, 0x1

    .line 972
    .local v0, addressLoaded:Z
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v3

    if-nez v3, :cond_1

    .line 973
    :cond_0
    const/4 v1, 0x0

    .line 988
    :cond_1
    if-nez v1, :cond_2

    .line 989
    const/4 v2, 0x0

    .line 990
    .local v2, retryCount:I
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_2

    .line 992
    const-wide/16 v3, 0x320

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 996
    :goto_1
    invoke-static {}, Lcom/google/android/mms/util/PduCache;->getInstance()Lcom/google/android/mms/util/PduCache;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/mms/util/PduCache;->purgeAll()V

    .line 997
    sget-object v3, Lcom/android/mms/ui/MessageItem;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " msg.getBody().getPartsNum() == 0 : purgeAll & p.load() again : retryCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    invoke-virtual {p2, p3}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .line 999
    .restart local p1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 993
    :catch_0
    move-exception v3

    goto :goto_1

    .line 1003
    .end local v0           #addressLoaded:Z
    .end local v1           #partsLoaded:Z
    .end local v2           #retryCount:I
    :cond_2
    return-object p1
.end method

.method private getAllSlideBody()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1042
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 1045
    :cond_0
    const-string v4, ""

    .line 1060
    :goto_0
    return-object v4

    .line 1048
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1049
    .local v2, result:Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    .line 1050
    .local v1, nSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 1051
    iget-object v4, p0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v3

    .line 1052
    .local v3, textModel:Lcom/android/mms/model/TextModel;
    if-nez v3, :cond_2

    .line 1050
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1056
    :cond_2
    invoke-virtual {v3}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1057
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1060
    .end local v3           #textModel:Lcom/android/mms/model/TextModel;
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private getPduForEmail(Lcom/google/android/mms/pdu/PduBody;)Lcom/google/android/mms/pdu/PduBody;
    .locals 28
    .parameter "pb"

    .prologue
    .line 483
    new-instance v20, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .line 484
    .local v20, pBody:Lcom/google/android/mms/pdu/PduBody;
    const/4 v8, 0x0

    .local v8, count:I
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v22

    .line 485
    .local v22, partsNum:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    move/from16 v0, v22

    if-ge v12, v0, :cond_10

    .line 487
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v21

    .line 488
    .local v21, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v10

    .line 489
    .local v10, dataArray:[B
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([B)V

    .line 490
    .local v9, data:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v25

    const/16 v26, 0x7d0

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_e

    .line 492
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v25

    move/from16 v0, v25

    div-int/lit16 v0, v0, 0x7d0

    move/from16 v25, v0

    add-int v8, v8, v25

    .line 493
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v25

    move/from16 v0, v25

    rem-int/lit16 v0, v0, 0x7d0

    move/from16 v25, v0

    if-lez v25, :cond_0

    .line 494
    add-int/lit8 v8, v8, 0x1

    .line 496
    :cond_0
    sget-object v25, Lcom/android/mms/ui/MessageItem;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "data.length()="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " count="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v25

    rsub-int/lit8 v25, v25, 0xa

    move/from16 v0, v25

    if-le v8, v0, :cond_1

    .line 498
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v25

    rsub-int/lit8 v8, v25, 0xa

    .line 500
    :cond_1
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v24

    .line 501
    .local v24, uri:Landroid/net/Uri;
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v4

    .line 502
    .local v4, contentId:[B
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v2

    .line 503
    .local v2, charset:I
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v5

    .line 504
    .local v5, contentLocation:[B
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduPart;->getContentDisposition()[B

    move-result-object v3

    .line 505
    .local v3, contentDisposition:[B
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v7

    .line 506
    .local v7, contentType:[B
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduPart;->getContentTransferEncoding()[B

    move-result-object v6

    .line 507
    .local v6, contentTransferEncoding:[B
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v18

    .line 508
    .local v18, name:[B
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v11

    .line 510
    .local v11, fileName:[B
    if-nez v5, :cond_b

    const-string v14, ""

    .line 511
    .local v14, logLocation:Ljava/lang/String;
    :goto_1
    if-nez v7, :cond_c

    const-string v16, ""

    .line 512
    .local v16, logType:Ljava/lang/String;
    :goto_2
    if-nez v18, :cond_d

    const-string v15, ""

    .line 513
    .local v15, logName:Ljava/lang/String;
    :goto_3
    sget-object v25, Lcom/android/mms/ui/MessageItem;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, " charset "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " contentLocation "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " contentType "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " name "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    const/4 v13, 0x0

    .local v13, j:I
    :goto_4
    if-ge v13, v8, :cond_f

    .line 516
    new-instance v19, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct/range {v19 .. v19}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 517
    .local v19, newPart:Lcom/google/android/mms/pdu/PduPart;
    mul-int/lit16 v0, v13, 0x7d0

    move/from16 v25, v0

    mul-int/lit16 v0, v13, 0x7d0

    move/from16 v26, v0

    move/from16 v0, v26

    add-int/lit16 v0, v0, 0x7d0

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    .line 518
    .local v23, sub:Ljava/lang/String;
    sget-object v25, Lcom/android/mms/ui/MessageItem;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "sub"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    .line 520
    .local v17, myData:[B
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    .line 521
    if-eqz v3, :cond_2

    .line 522
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    .line 523
    :cond_2
    if-eqz v4, :cond_3

    .line 524
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 525
    :cond_3
    if-eqz v5, :cond_4

    .line 526
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 527
    :cond_4
    if-eqz v6, :cond_5

    .line 528
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/google/android/mms/pdu/PduPart;->setContentTransferEncoding([B)V

    .line 529
    :cond_5
    if-eqz v7, :cond_6

    .line 530
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 531
    :cond_6
    if-eqz v17, :cond_7

    .line 532
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 533
    :cond_7
    if-eqz v24, :cond_8

    if-nez v13, :cond_8

    .line 534
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    .line 535
    :cond_8
    if-eqz v11, :cond_9

    .line 536
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    .line 537
    :cond_9
    if-eqz v18, :cond_a

    .line 538
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V

    .line 540
    :cond_a
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    .line 515
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    .line 510
    .end local v13           #j:I
    .end local v14           #logLocation:Ljava/lang/String;
    .end local v15           #logName:Ljava/lang/String;
    .end local v16           #logType:Ljava/lang/String;
    .end local v17           #myData:[B
    .end local v19           #newPart:Lcom/google/android/mms/pdu/PduPart;
    .end local v23           #sub:Ljava/lang/String;
    :cond_b
    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v5}, Ljava/lang/String;-><init>([B)V

    goto/16 :goto_1

    .line 511
    .restart local v14       #logLocation:Ljava/lang/String;
    :cond_c
    new-instance v16, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>([B)V

    goto/16 :goto_2

    .line 512
    .restart local v16       #logType:Ljava/lang/String;
    :cond_d
    new-instance v15, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/lang/String;-><init>([B)V

    goto/16 :goto_3

    .line 543
    .end local v2           #charset:I
    .end local v3           #contentDisposition:[B
    .end local v4           #contentId:[B
    .end local v5           #contentLocation:[B
    .end local v6           #contentTransferEncoding:[B
    .end local v7           #contentType:[B
    .end local v11           #fileName:[B
    .end local v14           #logLocation:Ljava/lang/String;
    .end local v16           #logType:Ljava/lang/String;
    .end local v18           #name:[B
    .end local v24           #uri:Landroid/net/Uri;
    :cond_e
    add-int/lit8 v8, v8, 0x1

    .line 544
    invoke-virtual/range {v20 .. v21}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    .line 485
    :cond_f
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 547
    .end local v9           #data:Ljava/lang/String;
    .end local v10           #dataArray:[B
    .end local v21           #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_10
    return-object v20
.end method

.method private getSlideBody(I)Ljava/lang/String;
    .locals 3
    .parameter "slideIndex"

    .prologue
    .line 1064
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 1067
    :cond_0
    const-string v0, ""

    .line 1076
    :goto_0
    return-object v0

    .line 1070
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v1

    .line 1071
    .local v1, textModel:Lcom/android/mms/model/TextModel;
    if-nez v1, :cond_2

    .line 1072
    const-string v0, ""

    goto :goto_0

    .line 1075
    :cond_2
    invoke-virtual {v1}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v0

    .line 1076
    .local v0, result:Ljava/lang/String;
    goto :goto_0
.end method

.method private interpretFrom(Lcom/google/android/mms/pdu/EncodedStringValue;Landroid/net/Uri;)V
    .locals 2
    .parameter "from"
    .parameter "messageUri"

    .prologue
    .line 551
    if-eqz p1, :cond_0

    .line 552
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    .line 560
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    :goto_1
    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    .line 561
    return-void

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/mms/util/AddressUtils;->getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    goto :goto_0

    .line 560
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 863
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    return-object v0
.end method

.method public getBodyAll()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1023
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1024
    invoke-direct {p0}, Lcom/android/mms/ui/MessageItem;->getAllSlideBody()Ljava/lang/String;

    move-result-object v0

    .line 1026
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    goto :goto_0
.end method

.method public getBodyAt(I)Ljava/lang/String;
    .locals 1
    .parameter "slideIndex"

    .prologue
    .line 1034
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1035
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageItem;->getSlideBody(I)Ljava/lang/String;

    move-result-object v0

    .line 1037
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    goto :goto_0
.end method

.method public getBoxId()I
    .locals 1

    .prologue
    .line 809
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isGroupSms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 810
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mGroupType:I

    .line 812
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    goto :goto_0
.end method

.method public getCachedBottomFormattedMessage()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 775
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isSending()Z

    move-result v0

    .line 776
    .local v0, isSending:Z
    iget-boolean v1, p0, Lcom/android/mms/ui/MessageItem;->mLastSendingState:Z

    if-eq v0, v1, :cond_0

    .line 777
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageItem;->mLastSendingState:Z

    .line 778
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/MessageItem;->mCachedTopFormattedMessage:Ljava/lang/CharSequence;

    .line 781
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mCachedTopFormattedMessage:Ljava/lang/CharSequence;

    return-object v1
.end method

.method public getCachedFormattedMessage()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 744
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isSending()Z

    move-result v0

    .line 745
    .local v0, isSending:Z
    iget-boolean v1, p0, Lcom/android/mms/ui/MessageItem;->mLastSendingState:Z

    if-eq v0, v1, :cond_0

    .line 746
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageItem;->mLastSendingState:Z

    .line 747
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/MessageItem;->mCachedFormattedMessage:Ljava/lang/CharSequence;

    .line 750
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mCachedFormattedMessage:Ljava/lang/CharSequence;

    return-object v1
.end method

.method public getCachedFormattedSender()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 767
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mCachedFormattedSender:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCachedFormattedSubject()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mCachedFormattedSubject:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getFormattedBody()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 788
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mFormattedBody:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 789
    const/16 v0, 0x82

    iget v1, p0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    if-ne v0, v1, :cond_0

    .line 796
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mFormattedBody:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getFormattedSubject()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 800
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mFormattedSubject:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 804
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mFormattedSubject:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getLinkUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mLinkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageSize()I
    .locals 1

    .prologue
    .line 859
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    return v0
.end method

.method public getMessageUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 843
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isGroupSms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 844
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->SMS_GROUP_CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 846
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method public getMsgId()J
    .locals 2

    .prologue
    .line 830
    iget-wide v0, p0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    return-wide v0
.end method

.method public getReserved()J
    .locals 2

    .prologue
    .line 1008
    iget-wide v0, p0, Lcom/android/mms/ui/MessageItem;->mReserved:J

    return-wide v0
.end method

.method public getTeleserviceId()I
    .locals 1

    .prologue
    .line 473
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mTeleserviceId:I

    return v0
.end method

.method public getThreadId()J
    .locals 2

    .prologue
    .line 834
    iget-wide v0, p0, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public hasMmsDeliveryFailed()Z
    .locals 20

    .prologue
    .line 868
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v1

    if-nez v1, :cond_1

    .line 869
    const/4 v1, 0x0

    .line 937
    :cond_0
    :goto_0
    return v1

    .line 871
    :cond_1
    const/16 v16, 0x0

    .line 872
    .local v16, messageUri:Landroid/net/Uri;
    const/4 v15, 0x0

    .local v15, cursor:Landroid/database/Cursor;
    const/4 v14, 0x0

    .line 873
    .local v14, c_status:Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 874
    .local v13, c:Landroid/database/Cursor;
    const/16 v17, 0x0

    .line 875
    .local v17, message_id:Ljava/lang/String;
    const/16 v19, 0x0

    .local v19, status:I
    const/16 v18, 0x0

    .line 876
    .local v18, msgBox:I
    const/4 v12, 0x1

    .line 877
    .local v12, COLUMN_MMS_DELIVERY_STATUS:I
    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "address"

    aput-object v2, v4, v1

    const/4 v1, 0x1

    const-string v2, "d_rpt"

    aput-object v2, v4, v1

    const/4 v1, 0x2

    const-string v2, "rr"

    aput-object v2, v4, v1

    .line 882
    .local v4, MMS_REQUEST_PROJECTION:[Ljava/lang/String;
    const/4 v1, 0x5

    new-array v8, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "address"

    aput-object v2, v8, v1

    const/4 v1, 0x1

    const-string v2, "delivery_status"

    aput-object v2, v8, v1

    const/4 v1, 0x2

    const-string v2, "delivery_date"

    aput-object v2, v8, v1

    const/4 v1, 0x3

    const-string v2, "read_status"

    aput-object v2, v8, v1

    const/4 v1, 0x4

    const-string v2, "read_date"

    aput-object v2, v8, v1

    .line 889
    .local v8, MMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 890
    const-string v1, "NGM"

    const-string v2, "The mBoxId is ! MESSAGE_BOX_SENT"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    const/4 v1, 0x0

    goto :goto_0

    .line 895
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/mms/ui/MessageItem;->mRequestCount:I

    if-nez v1, :cond_6

    .line 896
    sget-object v1, Landroid/provider/Telephony$Mms;->REPORT_REQUEST_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 898
    .local v3, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 900
    if-eqz v13, :cond_3

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-gtz v1, :cond_5

    .line 901
    :cond_3
    const/4 v1, 0x0

    .line 932
    if-eqz v13, :cond_4

    .line 933
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 934
    :cond_4
    if-eqz v14, :cond_0

    .line 935
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 903
    :cond_5
    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/mms/ui/MessageItem;->mRequestCount:I

    .line 905
    .end local v3           #uri:Landroid/net/Uri;
    :cond_6
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/mms/ui/MessageItem;->mRequestCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_8

    .line 906
    const/4 v1, 0x0

    .line 932
    if-eqz v13, :cond_7

    .line 933
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 934
    :cond_7
    if-eqz v14, :cond_0

    .line 935
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 908
    :cond_8
    const/4 v1, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/mms/ui/MessageItem;->mDeliverCount:I

    .line 909
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/mms/ui/MessageItem;->mFailedCount:I

    .line 910
    sget-object v1, Landroid/provider/Telephony$Mms;->REPORT_STATUS_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 911
    .local v7, uri_status:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 914
    if-eqz v14, :cond_9

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-gtz v1, :cond_b

    .line 915
    :cond_9
    const/4 v1, 0x1

    .line 932
    if-eqz v13, :cond_a

    .line 933
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 934
    :cond_a
    if-eqz v14, :cond_0

    .line 935
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 922
    :pswitch_0
    :try_start_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/mms/ui/MessageItem;->mDeliverCount:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/mms/ui/MessageItem;->mDeliverCount:I

    .line 917
    :cond_b
    :goto_1
    :pswitch_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 918
    invoke-interface {v14, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 919
    packed-switch v19, :pswitch_data_0

    .line 928
    :pswitch_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/mms/ui/MessageItem;->mFailedCount:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/mms/ui/MessageItem;->mFailedCount:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 932
    .end local v7           #uri_status:Landroid/net/Uri;
    :catchall_0
    move-exception v1

    if-eqz v13, :cond_c

    .line 933
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 934
    :cond_c
    if-eqz v14, :cond_d

    .line 935
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v1

    .line 932
    .restart local v7       #uri_status:Landroid/net/Uri;
    :cond_e
    if-eqz v13, :cond_f

    .line 933
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 934
    :cond_f
    if-eqz v14, :cond_10

    .line 935
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 937
    :cond_10
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 919
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public isDelivered()Z
    .locals 2

    .prologue
    .line 946
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mRequestCount:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mRequestCount:I

    iget v1, p0, Lcom/android/mms/ui/MessageItem;->mDeliverCount:I

    if-ne v0, v1, :cond_0

    .line 947
    const/4 v0, 0x1

    .line 949
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDownloaded()Z
    .locals 2

    .prologue
    .line 587
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    const/16 v1, 0x82

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDraftMessage()Z
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 673
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    if-ne v4, v5, :cond_2

    move v0, v2

    .line 674
    .local v0, isDraftMms:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    if-ne v4, v5, :cond_3

    move v1, v2

    .line 675
    .local v1, isDraftSms:Z
    :goto_1
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    move v3, v2

    :cond_1
    return v3

    .end local v0           #isDraftMms:Z
    .end local v1           #isDraftSms:Z
    :cond_2
    move v0, v3

    .line 673
    goto :goto_0

    .restart local v0       #isDraftMms:Z
    :cond_3
    move v1, v3

    .line 674
    goto :goto_1
.end method

.method public isFailed()Z
    .locals 1

    .prologue
    .line 941
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mFailedCount:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFailedMessage()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 625
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isOutgoingMessage()Z

    move-result v4

    if-nez v4, :cond_1

    .line 644
    :cond_0
    :goto_0
    return v3

    .line 628
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/mms/ui/MessageItem;->mErrorType:I

    const/16 v5, 0xa

    if-lt v4, v5, :cond_3

    move v0, v2

    .line 629
    .local v0, isFailedMms:Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_4

    move v1, v2

    .line 644
    .local v1, isFailedSms:Z
    :goto_2
    if-nez v0, :cond_2

    if-eqz v1, :cond_0

    :cond_2
    move v3, v2

    goto :goto_0

    .end local v0           #isFailedMms:Z
    .end local v1           #isFailedSms:Z
    :cond_3
    move v0, v3

    .line 628
    goto :goto_1

    .restart local v0       #isFailedMms:Z
    :cond_4
    move v1, v3

    .line 629
    goto :goto_2
.end method

.method public isFailedMmsInFolderView()Z
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 650
    const/4 v8, 0x0

    .line 651
    .local v8, err_type:I
    const/4 v9, 0x0

    .line 653
    .local v9, isFailedMms:Z
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msg_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 656
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 657
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 658
    const-string v0, "err_type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 661
    :cond_0
    if-eqz v7, :cond_1

    .line 662
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 666
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xa

    if-lt v8, v0, :cond_3

    const/4 v9, 0x1

    .line 668
    :goto_0
    return v9

    .line 661
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 662
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 666
    :cond_3
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public isGroupSms()Z
    .locals 4

    .prologue
    .line 839
    iget-wide v0, p0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    iget-wide v2, p0, Lcom/android/mms/ui/MessageItem;->mGroupId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInboxMessage()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 608
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v0

    .line 609
    .local v0, boxId:I
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v5

    if-eqz v5, :cond_2

    if-ne v0, v3, :cond_2

    move v1, v3

    .line 610
    .local v1, isInboxMms:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v5

    if-eqz v5, :cond_3

    if-ne v0, v3, :cond_3

    move v2, v3

    .line 611
    .local v2, isInboxSms:Z
    :goto_1
    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    move v4, v3

    :cond_1
    return v4

    .end local v1           #isInboxMms:Z
    .end local v2           #isInboxSms:Z
    :cond_2
    move v1, v4

    .line 609
    goto :goto_0

    .restart local v1       #isInboxMms:Z
    :cond_3
    move v2, v4

    .line 610
    goto :goto_1
.end method

.method public isMms()Z
    .locals 2

    .prologue
    .line 572
    const-string v0, "mms"

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isOutgoingMessage()Z
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 591
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v0

    .line 592
    .local v0, boxId:I
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v5

    if-eqz v5, :cond_3

    if-ne v0, v6, :cond_3

    move v1, v3

    .line 593
    .local v1, isOutgoingMms:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x5

    if-eq v0, v5, :cond_0

    if-eq v0, v6, :cond_0

    const/4 v5, 0x6

    if-ne v0, v5, :cond_4

    :cond_0
    move v2, v3

    .line 595
    .local v2, isOutgoingSms:Z
    :goto_1
    if-nez v1, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    move v4, v3

    :cond_2
    return v4

    .end local v1           #isOutgoingMms:Z
    .end local v2           #isOutgoingSms:Z
    :cond_3
    move v1, v4

    .line 592
    goto :goto_0

    .restart local v1       #isOutgoingMms:Z
    :cond_4
    move v2, v4

    .line 593
    goto :goto_1
.end method

.method public isQueuedMessage()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 600
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v0

    .line 601
    .local v0, boxId:I
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x6

    if-ne v0, v5, :cond_2

    move v2, v3

    .line 602
    .local v2, isQueuedSms:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x4

    if-ne v0, v5, :cond_3

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v5

    if-nez v5, :cond_3

    move v1, v3

    .line 604
    .local v1, isQueuedMms:Z
    :goto_1
    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    move v4, v3

    :cond_1
    return v4

    .end local v1           #isQueuedMms:Z
    .end local v2           #isQueuedSms:Z
    :cond_2
    move v2, v4

    .line 601
    goto :goto_0

    .restart local v2       #isQueuedSms:Z
    :cond_3
    move v1, v4

    .line 602
    goto :goto_1
.end method

.method public isReadMessage()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 619
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/mms/ui/MessageItem;->mMMSRead:I

    if-ne v4, v2, :cond_2

    move v0, v2

    .line 620
    .local v0, isReadMms:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/mms/ui/MessageItem;->mSMSRead:I

    if-ne v4, v2, :cond_3

    move v1, v2

    .line 621
    .local v1, isReadSms:Z
    :goto_1
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    move v3, v2

    :cond_1
    return v3

    .end local v0           #isReadMms:Z
    .end local v1           #isReadSms:Z
    :cond_2
    move v0, v3

    .line 619
    goto :goto_0

    .restart local v0       #isReadMms:Z
    :cond_3
    move v1, v3

    .line 620
    goto :goto_1
.end method

.method public isReservedMessage()Z
    .locals 4

    .prologue
    .line 1012
    iget-wide v0, p0, Lcom/android/mms/ui/MessageItem;->mReserved:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSending()Z
    .locals 1

    .prologue
    .line 615
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isOutgoingMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSms()Z
    .locals 2

    .prologue
    .line 576
    const-string v0, "sms"

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSpam()Z
    .locals 1

    .prologue
    .line 855
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageItem;->mIsSpam:Z

    return v0
.end method

.method public isWpm()Z
    .locals 2

    .prologue
    .line 581
    const-string v0, "wpm"

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setCachedBottomFormattedMessage(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "formattedMessage"

    .prologue
    .line 771
    iput-object p1, p0, Lcom/android/mms/ui/MessageItem;->mCachedTopFormattedMessage:Ljava/lang/CharSequence;

    .line 772
    return-void
.end method

.method public setCachedFormattedMessage(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "formattedMessage"

    .prologue
    .line 740
    iput-object p1, p0, Lcom/android/mms/ui/MessageItem;->mCachedFormattedMessage:Ljava/lang/CharSequence;

    .line 741
    return-void
.end method

.method public setCachedFormattedSender(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "formattedSender"

    .prologue
    .line 763
    iput-object p1, p0, Lcom/android/mms/ui/MessageItem;->mCachedFormattedSender:Ljava/lang/CharSequence;

    .line 764
    return-void
.end method

.method public setCachedFormattedSubject(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "formattedSubject"

    .prologue
    .line 754
    iput-object p1, p0, Lcom/android/mms/ui/MessageItem;->mCachedFormattedSubject:Ljava/lang/CharSequence;

    .line 755
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 819
    invoke-static {}, Lcom/android/mms/Log;->isPrintSecured()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 820
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " box: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " contact: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " read: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " delivery status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 824
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "MessageItem"

    goto :goto_0
.end method

.method public updateFailedFlag()V
    .locals 14

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 680
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 681
    sget-object v0, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v13

    .line 682
    .local v13, uriBuilder:Landroid/net/Uri$Builder;
    const-string v0, "protocol"

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v13, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 683
    const-string v0, "message"

    iget-wide v1, p0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 685
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v13}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 688
    .local v11, failedCursor:Landroid/database/Cursor;
    if-eqz v11, :cond_1

    .line 690
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 691
    const-string v0, "err_type"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MessageItem;->mErrorType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 695
    :cond_0
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 714
    .end local v11           #failedCursor:Landroid/database/Cursor;
    .end local v13           #uriBuilder:Landroid/net/Uri$Builder;
    :cond_1
    :goto_0
    return-void

    .line 695
    .restart local v11       #failedCursor:Landroid/database/Cursor;
    .restart local v13       #uriBuilder:Landroid/net/Uri$Builder;
    :catchall_0
    move-exception v0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v0

    .line 699
    .end local v11           #failedCursor:Landroid/database/Cursor;
    .end local v13           #uriBuilder:Landroid/net/Uri$Builder;
    :cond_2
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 700
    .local v6, messageUri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/String;

    const-string v0, "type"

    aput-object v0, v7, v8

    move-object v8, v3

    move-object v9, v3

    move-object v10, v3

    invoke-static/range {v4 .. v10}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 704
    .local v12, smsCursor:Landroid/database/Cursor;
    if-eqz v12, :cond_1

    .line 706
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 707
    const/4 v0, 0x0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 710
    :cond_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public updatePendingStatus()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 717
    const/4 v6, 0x0

    .line 719
    .local v6, nullStirng:Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x4

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 720
    .local v3, values:Landroid/content/ContentValues;
    const-string v0, "err_type"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 721
    const-string v0, "retry_index"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 722
    const-string v0, "due_time"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 723
    const-string v0, "last_try"

    invoke-virtual {v3, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msg_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v7, p0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 732
    return-void
.end method
