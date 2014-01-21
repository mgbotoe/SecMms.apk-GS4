.class public Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
.super Ljava/lang/Object;
.source "MessagingNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/MessagingNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationInfo"
.end annotation


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mAttachmentBitmap:Landroid/graphics/Bitmap;

.field public mAttachmentType:I

.field private mMessage:Ljava/lang/String;

.field public final mMsgId:J

.field private final mMsgType:I

.field public final mPriority:I

.field private mSender:Lcom/android/mms/data/Contact;

.field public final mSubject:Ljava/lang/String;

.field public final mThreadId:J

.field private mTicker:Ljava/lang/CharSequence;

.field public final mTimeMillis:J

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJJI)V
    .locals 0
    .parameter "msgType"
    .parameter "address"
    .parameter "message"
    .parameter "subject"
    .parameter "timeMillis"
    .parameter "attachmentType"
    .parameter "threadId"
    .parameter "msgId"
    .parameter "priority"

    .prologue
    .line 913
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 914
    iput p1, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mMsgType:I

    .line 915
    iput-object p2, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAddress:Ljava/lang/String;

    .line 916
    iput-object p3, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mMessage:Ljava/lang/String;

    .line 917
    iput-object p4, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSubject:Ljava/lang/String;

    .line 918
    iput-wide p5, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mTimeMillis:J

    .line 919
    iput p7, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAttachmentType:I

    .line 920
    iput-wide p8, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mThreadId:J

    .line 921
    iput p12, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mPriority:I

    .line 922
    iput-wide p10, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mMsgId:J

    .line 923
    return-void
.end method

.method private createTickTitle(Landroid/content/Context;IZ)V
    .locals 7
    .parameter "context"
    .parameter "messageCount"
    .parameter "reloadContact"

    .prologue
    const/4 v5, 0x0

    .line 1038
    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, p3}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getContact(Landroid/content/Context;Z)Lcom/android/mms/data/Contact;

    move-result-object v4

    invoke-static {p1, v3, v4, v5, v5}, Lcom/android/mms/transaction/MessagingNotification;->buildTickerMessage(Landroid/content/Context;Ljava/lang/String;Lcom/android/mms/data/Contact;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1039
    .local v2, tickerAlert:Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 1040
    .local v0, senderInfo:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1042
    .local v1, senderInfoName:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1043
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1045
    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1048
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFingerprintService()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/android/mms/ui/SecretModeHandler;->mIsSecretMode:Z

    if-nez v3, :cond_1

    iget-wide v3, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mThreadId:J

    invoke-static {v3, v4}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->isSecretMode(J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1050
    const-string v3, ""

    iput-object v3, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mTicker:Ljava/lang/CharSequence;

    .line 1053
    :goto_0
    iput-object v1, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mTitle:Ljava/lang/String;

    .line 1054
    return-void

    .line 1052
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, p3}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getContact(Landroid/content/Context;Z)Lcom/android/mms/data/Contact;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSubject:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v3, v4, v5, v6}, Lcom/android/mms/transaction/MessagingNotification;->buildTickerMessage(Landroid/content/Context;Ljava/lang/String;Lcom/android/mms/data/Contact;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mTicker:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private parsingPdu(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "messageCount"

    .prologue
    .line 1108
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->access$400()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->isMms()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1130
    :cond_0
    :goto_0
    return-void

    .line 1113
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getMmsUri()Landroid/net/Uri;

    move-result-object v1

    .line 1114
    .local v1, msgUri:Landroid/net/Uri;
    invoke-static {p1}, Lcom/android/mms/transaction/MessagingNotification;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v2

    .line 1115
    .local v2, pdu:Lcom/google/android/mms/pdu/GenericPdu;
    if-eqz v2, :cond_0

    instance-of v4, v2, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    if-eqz v4, :cond_0

    .line 1116
    check-cast v2, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .end local v2           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p1, v4, v5}, Lcom/android/mms/model/SlideshowModel;->createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Z)Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    .line 1117
    .local v3, slideshow:Lcom/android/mms/model/SlideshowModel;
    #calls: Lcom/android/mms/transaction/MessagingNotification;->getAttachmentTypeOnSlide(Lcom/android/mms/model/SlideshowModel;)I
    invoke-static {v3}, Lcom/android/mms/transaction/MessagingNotification;->access$500(Lcom/android/mms/model/SlideshowModel;)I

    move-result v4

    iput v4, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAttachmentType:I

    .line 1118
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 1119
    .local v0, firstSlide:Lcom/android/mms/model/SlideModel;
    if-eqz v0, :cond_0

    .line 1120
    const/4 v4, 0x1

    if-gt p2, v4, :cond_2

    .line 1121
    #calls: Lcom/android/mms/transaction/MessagingNotification;->getImage(Lcom/android/mms/model/SlideModel;)Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->access$600(Lcom/android/mms/model/SlideModel;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAttachmentBitmap:Landroid/graphics/Bitmap;

    .line 1123
    :cond_2
    #calls: Lcom/android/mms/transaction/MessagingNotification;->getText(Lcom/android/mms/model/SlideModel;)Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->access$700(Lcom/android/mms/model/SlideModel;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mMessage:Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1126
    .end local v0           #firstSlide:Lcom/android/mms/model/SlideModel;
    .end local v1           #msgUri:Landroid/net/Uri;
    .end local v3           #slideshow:Lcom/android/mms/model/SlideshowModel;
    :catch_0
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public formatBigMessage(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 5
    .parameter "context"
    .parameter "messageCount"

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x0

    .line 1135
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0e000a

    invoke-direct {v0, p1, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 1137
    .local v0, notificationSubjectSpan:Landroid/text/style/TextAppearanceSpan;
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1138
    .local v1, spannableStringBuilder:Landroid/text/SpannableStringBuilder;
    iget-object v2, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSubject:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1139
    iget-object v2, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSubject:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1140
    iget-object v2, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSubject:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v0, v3, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1142
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getAttachmentType(Landroid/content/Context;I)I

    move-result v2

    if-lez v2, :cond_2

    .line 1143
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 1144
    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 1146
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getAttachmentType(Landroid/content/Context;I)I

    move-result v2

    #calls: Lcom/android/mms/transaction/MessagingNotification;->getAttachmentTypeString(Landroid/content/Context;I)Ljava/lang/CharSequence;
    invoke-static {p1, v2}, Lcom/android/mms/transaction/MessagingNotification;->access$800(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1148
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1149
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 1150
    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 1152
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1154
    :cond_4
    return-object v1
.end method

.method public formatInboxMessage(Landroid/content/Context;IZ)Ljava/lang/CharSequence;
    .locals 11
    .parameter "context"
    .parameter "messageCount"
    .parameter "isNew"

    .prologue
    const/4 v10, 0x0

    .line 1160
    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    const v8, 0x7f0e000a

    invoke-direct {v2, p1, v8}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 1161
    .local v2, notificationSenderSpan:Landroid/text/style/TextAppearanceSpan;
    new-instance v3, Landroid/text/style/TextAppearanceSpan;

    const v8, 0x7f0e000c

    invoke-direct {v3, p1, v8}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 1165
    .local v3, notificationSubjectSpan:Landroid/text/style/TextAppearanceSpan;
    const/4 v1, 0x0

    .line 1166
    .local v1, messageBody:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFingerprintService()Z

    move-result v8

    if-eqz v8, :cond_7

    sget-boolean v8, Lcom/android/mms/ui/SecretModeHandler;->mIsSecretMode:Z

    if-nez v8, :cond_7

    iget-wide v8, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mThreadId:J

    invoke-static {v8, v9}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->isSecretMode(J)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1168
    const-string v1, ""

    .line 1173
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "\\n\\s+"

    const-string v9, "\n"

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1175
    .local v0, message:Ljava/lang/String;
    :goto_1
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1176
    .local v6, spannableStringBuilder:Landroid/text/SpannableStringBuilder;
    invoke-virtual {p0, p1, p3}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getContact(Landroid/content/Context;Z)Lcom/android/mms/data/Contact;

    move-result-object v8

    if-nez v8, :cond_9

    const/4 v4, 0x0

    .line 1177
    .local v4, sender:Ljava/lang/String;
    :goto_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1178
    invoke-virtual {v6, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1179
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v2, v10, v8, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1181
    :cond_0
    const v8, 0x7f0c037e

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1182
    .local v5, separator:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->isSms()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {p0}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->isCb()Z

    move-result v8

    if-nez v8, :cond_4

    .line 1183
    iget-object v8, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSubject:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1184
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 1185
    invoke-virtual {v6, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1187
    :cond_1
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    .line 1188
    .local v7, start:I
    iget-object v8, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSubject:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1189
    iget-object v8, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSubject:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {v6, v3, v7, v8, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1191
    .end local v7           #start:I
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getAttachmentType(Landroid/content/Context;I)I

    move-result v8

    if-lez v8, :cond_4

    .line 1192
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_3

    .line 1193
    invoke-virtual {v6, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1195
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getAttachmentType(Landroid/content/Context;I)I

    move-result v8

    #calls: Lcom/android/mms/transaction/MessagingNotification;->getAttachmentTypeString(Landroid/content/Context;I)Ljava/lang/CharSequence;
    invoke-static {p1, v8}, Lcom/android/mms/transaction/MessagingNotification;->access$800(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1198
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_6

    .line 1199
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_5

    .line 1200
    invoke-virtual {v6, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1202
    :cond_5
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    .line 1203
    .restart local v7       #start:I
    invoke-virtual {v6, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1204
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {v6, v3, v7, v8, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1206
    .end local v7           #start:I
    :cond_6
    return-object v6

    .line 1170
    .end local v0           #message:Ljava/lang/String;
    .end local v4           #sender:Ljava/lang/String;
    .end local v5           #separator:Ljava/lang/String;
    .end local v6           #spannableStringBuilder:Landroid/text/SpannableStringBuilder;
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1173
    :cond_8
    const-string v0, ""

    goto/16 :goto_1

    .line 1176
    .restart local v0       #message:Ljava/lang/String;
    .restart local v6       #spannableStringBuilder:Landroid/text/SpannableStringBuilder;
    :cond_9
    invoke-virtual {p0, p1, p3}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getContact(Landroid/content/Context;Z)Lcom/android/mms/data/Contact;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2
.end method

.method public formatPictureMessage(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 7
    .parameter "context"
    .parameter "messageCount"

    .prologue
    const/4 v6, 0x0

    .line 1211
    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    const v4, 0x7f0e000a

    invoke-direct {v2, p1, v4}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 1215
    .local v2, notificationSubjectSpan:Landroid/text/style/TextAppearanceSpan;
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 1216
    .local v1, messageBody:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "\\n\\s+"

    const-string v5, "\n"

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1219
    .local v0, message:Ljava/lang/String;
    :goto_0
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1220
    .local v3, spannableStringBuilder:Landroid/text/SpannableStringBuilder;
    iget-object v4, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSubject:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1221
    iget-object v4, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSubject:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1222
    iget-object v4, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSubject:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v2, v6, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1224
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 1225
    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1226
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v2, v6, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1228
    :cond_1
    return-object v3

    .line 1216
    .end local v0           #message:Ljava/lang/String;
    .end local v3           #spannableStringBuilder:Landroid/text/SpannableStringBuilder;
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public getAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 973
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 974
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAddress:Ljava/lang/String;

    .line 981
    :goto_0
    return-object v0

    .line 977
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->isMms()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 978
    invoke-virtual {p0}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getMmsUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/mms/util/AddressUtils;->getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAddress:Ljava/lang/String;

    .line 981
    :cond_1
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAddress:Ljava/lang/String;

    goto :goto_0
.end method

.method public getAttachmentBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "context"
    .parameter "messageCount"

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAttachmentBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1087
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAttachmentBitmap:Landroid/graphics/Bitmap;

    .line 1094
    :goto_0
    return-object v0

    .line 1090
    :cond_0
    iget v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAttachmentType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAttachmentType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1091
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->parsingPdu(Landroid/content/Context;I)V

    .line 1094
    :cond_2
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAttachmentBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getAttachmentType(Landroid/content/Context;I)I
    .locals 2
    .parameter "context"
    .parameter "messageCount"

    .prologue
    .line 1098
    iget v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAttachmentType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1099
    iget v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAttachmentType:I

    .line 1104
    :goto_0
    return v0

    .line 1102
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->parsingPdu(Landroid/content/Context;I)V

    .line 1104
    iget v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAttachmentType:I

    goto :goto_0
.end method

.method public getContact(Landroid/content/Context;Z)Lcom/android/mms/data/Contact;
    .locals 2
    .parameter "context"
    .parameter "reload"

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSender:Lcom/android/mms/data/Contact;

    if-eqz v0, :cond_0

    .line 1058
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSender:Lcom/android/mms/data/Contact;

    .line 1068
    :goto_0
    return-object v0

    .line 1061
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSender:Lcom/android/mms/data/Contact;

    .line 1063
    if-eqz p2, :cond_1

    .line 1065
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSender:Lcom/android/mms/data/Contact;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/Contact;->reload(Z)V

    .line 1068
    :cond_1
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSender:Lcom/android/mms/data/Contact;

    goto :goto_0
.end method

.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4
    .parameter "context"

    .prologue
    .line 1007
    const/4 v0, 0x0

    .line 1013
    .local v0, clickIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->isCmas()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1014
    const-string v1, ""

    .line 1015
    .local v1, presidentialCMAS:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 1016
    const v2, 0x7f0c01c5

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1021
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasPresidentialThreaded()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->mCmasType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1022
    iget-wide v2, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mThreadId:J

    invoke-static {p1, v2, v3}, Lcom/android/mms/ui/CMASViewer;->createIntentForNoti(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 1027
    :goto_1
    #calls: Lcom/android/mms/transaction/MessagingNotification;->addNotiIntentType(Landroid/content/Intent;)Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->access$300(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 1034
    .end local v1           #presidentialCMAS:Ljava/lang/String;
    :goto_2
    return-object v0

    .line 1018
    .restart local v1       #presidentialCMAS:Ljava/lang/String;
    :cond_0
    const v2, 0x7f0c01e9

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1024
    :cond_1
    iget-wide v2, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mThreadId:J

    invoke-static {p1, v2, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    .line 1029
    .end local v1           #presidentialCMAS:Ljava/lang/String;
    :cond_2
    iget-wide v2, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mThreadId:J

    invoke-static {p1, v2, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 1030
    #calls: Lcom/android/mms/transaction/MessagingNotification;->addNotiIntentType(Landroid/content/Intent;)Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->access$300(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 1031
    const-string v2, "isFromRecvNoti"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_2
.end method

.method public getMessage(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "messageCount"

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1077
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mMessage:Ljava/lang/String;

    .line 1082
    :goto_0
    return-object v0

    .line 1080
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->parsingPdu(Landroid/content/Context;I)V

    .line 1082
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mMessage:Ljava/lang/String;

    goto :goto_0
.end method

.method public getMmsUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 1072
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mMsgId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getMsgId()J
    .locals 2

    .prologue
    .line 965
    iget-wide v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mMsgId:J

    return-wide v0
.end method

.method public getMsgType()I
    .locals 1

    .prologue
    .line 969
    iget v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mMsgType:I

    return v0
.end method

.method public getThreadId()J
    .locals 2

    .prologue
    .line 937
    iget-wide v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mThreadId:J

    return-wide v0
.end method

.method public getTicker(Landroid/content/Context;IZ)Ljava/lang/CharSequence;
    .locals 2
    .parameter "context"
    .parameter "messageCount"
    .parameter "reloadContact"

    .prologue
    .line 985
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mTicker:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 986
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFingerprintService()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/mms/ui/SecretModeHandler;->mIsSecretMode:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mThreadId:J

    invoke-static {v0, v1}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->isSecretMode(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 988
    const-string v0, ""

    .line 994
    :goto_0
    return-object v0

    .line 990
    :cond_0
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mTicker:Ljava/lang/CharSequence;

    goto :goto_0

    .line 993
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->createTickTitle(Landroid/content/Context;IZ)V

    .line 994
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mTicker:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 933
    iget-wide v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mTimeMillis:J

    return-wide v0
.end method

.method public getTitle(Landroid/content/Context;IZ)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "messageCount"
    .parameter "reloadContact"

    .prologue
    .line 998
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 999
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mTitle:Ljava/lang/String;

    .line 1003
    :goto_0
    return-object v0

    .line 1002
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->createTickTitle(Landroid/content/Context;IZ)V

    .line 1003
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public isCb()Z
    .locals 2

    .prologue
    .line 957
    iget v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mMsgType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCmas()Z
    .locals 2

    .prologue
    .line 949
    iget v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mMsgType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDdm()Z
    .locals 2

    .prologue
    .line 961
    iget v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mMsgType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMms()Z
    .locals 1

    .prologue
    .line 941
    iget v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mMsgType:I

    if-nez v0, :cond_0

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
    const/4 v0, 0x1

    .line 945
    iget v1, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mMsgType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWap()Z
    .locals 2

    .prologue
    .line 953
    iget v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mMsgType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateMmsInfo(Ljava/lang/String;Landroid/graphics/Bitmap;ILjava/lang/CharSequence;Ljava/lang/String;Lcom/android/mms/data/Contact;)V
    .locals 0
    .parameter "messageBody"
    .parameter "attachedPicture"
    .parameter "attachmentType"
    .parameter "ticker"
    .parameter "title"
    .parameter "contact"

    .prologue
    .line 889
    iput-object p2, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAttachmentBitmap:Landroid/graphics/Bitmap;

    .line 890
    iput-object p1, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mMessage:Ljava/lang/String;

    .line 891
    iput p3, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAttachmentType:I

    .line 893
    iput-object p4, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mTicker:Ljava/lang/CharSequence;

    .line 894
    iput-object p5, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mTitle:Ljava/lang/String;

    .line 895
    iput-object p6, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSender:Lcom/android/mms/data/Contact;

    .line 896
    return-void
.end method
