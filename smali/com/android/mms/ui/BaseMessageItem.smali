.class public Lcom/android/mms/ui/BaseMessageItem;
.super Ljava/lang/Object;
.source "BaseMessageItem.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field mAddress:Ljava/lang/String;

.field mAttachmentType:I

.field mBody:Ljava/lang/String;

.field private final mBoxId:I

.field mContact:Ljava/lang/String;

.field final mContext:Landroid/content/Context;

.field mGroupId:J

.field mGroupType:I

.field mMessageType:I

.field mMessageUri:Landroid/net/Uri;

.field final mMsgId:J

.field mRecipientIds:Ljava/lang/String;

.field mSlideshow:Lcom/android/mms/model/SlideshowModel;

.field mSubject:Ljava/lang/String;

.field final mThreadId:J

.field mTime:J

.field mTimestamp:Ljava/lang/String;

.field final mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string v0, "Mms/ConversationMessageItem"

    sput-object v0, Lcom/android/mms/ui/BaseMessageItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;)V
    .locals 18
    .parameter "context"
    .parameter "type"
    .parameter "cursor"
    .parameter "columnsMap"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const-wide/16 v13, 0x0

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/android/mms/ui/BaseMessageItem;->mGroupId:J

    .line 75
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/mms/ui/BaseMessageItem;->mGroupType:I

    .line 80
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/BaseMessageItem;->mContext:Landroid/content/Context;

    .line 81
    move-object/from16 v0, p4

    iget v13, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/android/mms/ui/BaseMessageItem;->mMsgId:J

    .line 82
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/BaseMessageItem;->mType:Ljava/lang/String;

    .line 83
    move-object/from16 v0, p4

    iget v13, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnThreadId:I

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/android/mms/ui/BaseMessageItem;->mThreadId:J

    .line 84
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/mms/ui/BaseMessageItem;->mThreadId:J

    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Lcom/android/mms/ui/MessageUtils;->getRecipientIdsByThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/ui/BaseMessageItem;->mRecipientIds:Ljava/lang/String;

    .line 86
    const-string v13, "sms"

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 88
    move-object/from16 v0, p4

    iget v13, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsType:I

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/mms/ui/BaseMessageItem;->mBoxId:I

    .line 89
    move-object/from16 v0, p4

    iget v13, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsAddress:I

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/ui/BaseMessageItem;->mAddress:Ljava/lang/String;

    .line 91
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/mms/ui/BaseMessageItem;->mBoxId:I

    invoke-static {v13}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 92
    const v13, 0x7f0c000d

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 94
    .local v6, meString:Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/mms/ui/BaseMessageItem;->mContact:Ljava/lang/String;

    .line 100
    .end local v6           #meString:Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p4

    iget v13, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsBody:I

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/ui/BaseMessageItem;->mBody:Ljava/lang/String;

    .line 103
    move-object/from16 v0, p4

    iget v13, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsDate:I

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 106
    .local v3, date:J
    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/mms/ui/BaseMessageItem;->mTime:J

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/BaseMessageItem;->isOutgoingMessage()Z

    move-result v13

    if-nez v13, :cond_0

    .line 109
    const v13, 0x7f0c000f

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/android/mms/ui/MessageUtils;->formatTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/ui/BaseMessageItem;->mTimestamp:Ljava/lang/String;

    .line 161
    .end local v3           #date:J
    :cond_0
    :goto_1
    return-void

    .line 97
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/BaseMessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    const-string v13, ""

    :goto_2
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/ui/BaseMessageItem;->mContact:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/BaseMessageItem;->mAddress:Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    .line 112
    :cond_3
    const-string v13, "mms"

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 113
    sget-object v13, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/mms/ui/BaseMessageItem;->mMsgId:J

    invoke-static {v13, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/ui/BaseMessageItem;->mMessageUri:Landroid/net/Uri;

    .line 114
    move-object/from16 v0, p4

    iget v13, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageBox:I

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/mms/ui/BaseMessageItem;->mBoxId:I

    .line 115
    move-object/from16 v0, p4

    iget v13, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageType:I

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/mms/ui/BaseMessageItem;->mMessageType:I

    .line 116
    move-object/from16 v0, p4

    iget v13, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsSubject:I

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 117
    .local v10, subject:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 122
    new-instance v12, Lcom/google/android/mms/pdu/EncodedStringValue;

    move-object/from16 v0, p4

    iget v13, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsSubjectCharset:I

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-direct {v12, v13, v10}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(ILjava/lang/String;)V

    .line 124
    .local v12, v:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {v12}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/ui/BaseMessageItem;->mSubject:Ljava/lang/String;

    .line 127
    .end local v12           #v:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/BaseMessageItem;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v8

    .line 128
    .local v8, p:Lcom/google/android/mms/pdu/PduPersister;
    const/16 v13, 0x82

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/mms/ui/BaseMessageItem;->mMessageType:I

    if-ne v13, v14, :cond_6

    .line 134
    const-string v13, ""

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/ui/BaseMessageItem;->mBody:Ljava/lang/String;

    .line 152
    :cond_5
    :goto_3
    move-object/from16 v0, p4

    iget v13, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsDate:I

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    mul-long/2addr v13, v15

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/android/mms/ui/BaseMessageItem;->mTime:J

    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/BaseMessageItem;->isOutgoingMessage()Z

    move-result v13

    if-nez v13, :cond_0

    .line 155
    const v13, 0x7f0c000f

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/BaseMessageItem;->mTime:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->formatTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/ui/BaseMessageItem;->mTimestamp:Ljava/lang/String;

    goto/16 :goto_1

    .line 136
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/BaseMessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v8, v13}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v7

    check-cast v7, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .line 137
    .local v7, msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    invoke-virtual {v7}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Lcom/android/mms/model/SlideshowModel;->createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Z)Lcom/android/mms/model/SlideshowModel;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/ui/BaseMessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 139
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/BaseMessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v9

    .line 140
    .local v9, slide:Lcom/android/mms/model/SlideModel;
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 141
    invoke-virtual {v9}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v11

    .line 142
    .local v11, tm:Lcom/android/mms/model/TextModel;
    invoke-virtual {v11}, Lcom/android/mms/model/TextModel;->isDrmProtected()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 143
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/BaseMessageItem;->mContext:Landroid/content/Context;

    const v14, 0x7f0c001a

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/ui/BaseMessageItem;->mBody:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 148
    .end local v9           #slide:Lcom/android/mms/model/SlideModel;
    .end local v11           #tm:Lcom/android/mms/model/TextModel;
    :catch_0
    move-exception v5

    .line 149
    .local v5, e:Ljava/lang/IndexOutOfBoundsException;
    sget-object v13, Lcom/android/mms/ui/BaseMessageItem;->TAG:Ljava/lang/String;

    const-string v14, "MMS has zero slides"

    invoke-static {v13, v14}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 145
    .end local v5           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v9       #slide:Lcom/android/mms/model/SlideModel;
    .restart local v11       #tm:Lcom/android/mms/model/TextModel;
    :cond_7
    :try_start_1
    invoke-virtual {v11}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/ui/BaseMessageItem;->mBody:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 159
    .end local v7           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .end local v8           #p:Lcom/google/android/mms/pdu/PduPersister;
    .end local v9           #slide:Lcom/android/mms/model/SlideModel;
    .end local v10           #subject:Ljava/lang/String;
    .end local v11           #tm:Lcom/android/mms/model/TextModel;
    :cond_8
    new-instance v13, Lcom/google/android/mms/MmsException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unknown type of the message: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v13
.end method


# virtual methods
.method public getBoxId()I
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/android/mms/ui/BaseMessageItem;->isGroupSms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget v0, p0, Lcom/android/mms/ui/BaseMessageItem;->mGroupType:I

    .line 187
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/mms/ui/BaseMessageItem;->mBoxId:I

    goto :goto_0
.end method

.method public getMsgId()J
    .locals 2

    .prologue
    .line 176
    iget-wide v0, p0, Lcom/android/mms/ui/BaseMessageItem;->mMsgId:J

    return-wide v0
.end method

.method public getThreadId()J
    .locals 2

    .prologue
    .line 180
    iget-wide v0, p0, Lcom/android/mms/ui/BaseMessageItem;->mThreadId:J

    return-wide v0
.end method

.method public isGroupSms()Z
    .locals 4

    .prologue
    .line 172
    iget-wide v0, p0, Lcom/android/mms/ui/BaseMessageItem;->mMsgId:J

    iget-wide v2, p0, Lcom/android/mms/ui/BaseMessageItem;->mGroupId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMms()Z
    .locals 2

    .prologue
    .line 164
    const-string v0, "mms"

    iget-object v1, p0, Lcom/android/mms/ui/BaseMessageItem;->mType:Ljava/lang/String;

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

    .line 191
    invoke-virtual {p0}, Lcom/android/mms/ui/BaseMessageItem;->getBoxId()I

    move-result v0

    .line 192
    .local v0, boxId:I
    invoke-virtual {p0}, Lcom/android/mms/ui/BaseMessageItem;->isMms()Z

    move-result v5

    if-eqz v5, :cond_3

    if-ne v0, v6, :cond_3

    move v1, v3

    .line 193
    .local v1, isOutgoingMms:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/BaseMessageItem;->isSms()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x5

    if-eq v0, v5, :cond_0

    if-eq v0, v6, :cond_0

    const/4 v5, 0x6

    if-ne v0, v5, :cond_4

    :cond_0
    move v2, v3

    .line 195
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

    .line 192
    goto :goto_0

    .restart local v1       #isOutgoingMms:Z
    :cond_4
    move v2, v4

    .line 193
    goto :goto_1
.end method

.method public isSms()Z
    .locals 2

    .prologue
    .line 168
    const-string v0, "sms"

    iget-object v1, p0, Lcom/android/mms/ui/BaseMessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
