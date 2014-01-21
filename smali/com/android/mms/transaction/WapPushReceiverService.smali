.class public Lcom/android/mms/transaction/WapPushReceiverService;
.super Landroid/app/Service;
.source "WapPushReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/WapPushReceiverService$1;,
        Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;,
        Lcom/android/mms/transaction/WapPushReceiverService$ServiceHandler;
    }
.end annotation


# static fields
.field private static final LOCAL_LOGV:Z = true

.field private static final TAG:Ljava/lang/String; = "Mms/WapPushReceiverService"

.field private static final WPM_COL_ACTION:I = 0x2

.field private static final WPM_COL_CREATED:I = 0x1

.field private static final WPM_COL_ID:I

.field private static final WPM_INFO_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mServiceHandler:Lcom/android/mms/transaction/WapPushReceiverService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "created"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "action"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/WapPushReceiverService;->WPM_INFO_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/android/mms/transaction/WapPushReceiverService;->mServiceHandler:Lcom/android/mms/transaction/WapPushReceiverService$ServiceHandler;

    .line 45
    iput-object v0, p0, Lcom/android/mms/transaction/WapPushReceiverService;->mServiceLooper:Landroid/os/Looper;

    .line 400
    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/transaction/WapPushReceiverService;Lcom/android/mms/transaction/WapPushMessage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/WapPushReceiverService;->handleSiMessage(Lcom/android/mms/transaction/WapPushMessage;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/transaction/WapPushReceiverService;Lcom/android/mms/transaction/WapPushMessage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/WapPushReceiverService;->handleSlMeeesage(Lcom/android/mms/transaction/WapPushMessage;)V

    return-void
.end method

.method private deleteWPMInfo(I)V
    .locals 5
    .parameter "_id"

    .prologue
    const/4 v4, 0x0

    .line 342
    const-string v1, "Mms/WapPushReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteWPMInfo. id= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wap-push-messages/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 346
    .local v0, wpmUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/mms/transaction/WapPushReceiverService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p0, v1, v0, v4, v4}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 347
    return-void
.end method

.method private handleSiMessage(Lcom/android/mms/transaction/WapPushMessage;)V
    .locals 14
    .parameter "_recvSiMessage"

    .prologue
    const-wide/16 v12, -0x1

    const/16 v11, 0x9

    .line 85
    const-string v7, "Mms/WapPushReceiverService"

    const-string v8, "handleSiMessage."

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getSiExpires()J

    move-result-wide v7

    cmp-long v7, v7, v12

    if-eqz v7, :cond_1

    .line 89
    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getSiExpires()J

    move-result-wide v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-gtz v7, :cond_1

    .line 91
    const-string v7, "Mms/WapPushReceiverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "discard message because of expiration. expires= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getSiExpires()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/WapPushReceiverService;->selectWPMInfo(Lcom/android/mms/transaction/WapPushMessage;)Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;

    move-result-object v3

    .line 110
    .local v3, storedWpmInfo:Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;
    if-eqz v3, :cond_6

    .line 111
    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getCreated()J

    move-result-wide v7

    cmp-long v7, v7, v12

    if-nez v7, :cond_2

    .line 113
    const-string v7, "Mms/WapPushReceiverService"

    const-string v8, "insert message because of no create time"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :goto_1
    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getAction()I

    move-result v7

    if-ne v7, v11, :cond_6

    .line 143
    #getter for: Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->id:I
    invoke-static {v3}, Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->access$100(Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/mms/transaction/WapPushReceiverService;->deleteWPMInfo(I)V

    .line 146
    const-string v7, "Mms/WapPushReceiverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "discard message because of deletion. , recv_action= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getAction()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_2
    const/4 v0, 0x0

    .line 116
    .local v0, isDiscard:Z
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDiscardSmsCreateWapPush()Z

    move-result v7

    if-eqz v7, :cond_4

    #getter for: Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->created:J
    invoke-static {v3}, Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->access$000(Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;)J

    move-result-wide v7

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getCreated()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-ltz v7, :cond_4

    .line 118
    const/4 v0, 0x1

    .line 123
    :cond_3
    :goto_2
    if-eqz v0, :cond_5

    .line 125
    const-string v7, "Mms/WapPushReceiverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "discard message because of Handling of out of order delivery. stored_created= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    #getter for: Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->created:J
    invoke-static {v3}, Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->access$000(Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "recv_created= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getCreated()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_4
    #getter for: Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->created:J
    invoke-static {v3}, Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->access$000(Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;)J

    move-result-wide v7

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getCreated()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-lez v7, :cond_3

    .line 120
    const/4 v0, 0x1

    goto :goto_2

    .line 131
    :cond_5
    #getter for: Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->id:I
    invoke-static {v3}, Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->access$100(Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/mms/transaction/WapPushReceiverService;->deleteWPMInfo(I)V

    .line 133
    const-string v7, "Mms/WapPushReceiverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "process Replacement. 01>stored_created= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    #getter for: Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->created:J
    invoke-static {v3}, Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->access$000(Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", recv_created= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getCreated()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 153
    .end local v0           #isDiscard:Z
    :cond_6
    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getAction()I

    move-result v7

    if-ne v7, v11, :cond_7

    .line 156
    const-string v7, "Mms/WapPushReceiverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "discard message because of deletion. recv_action= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getAction()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 160
    :cond_7
    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getAction()I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_8

    .line 165
    const-string v7, "Mms/WapPushReceiverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "discard message because of action_signal_none. recv_action= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getAction()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 169
    :cond_8
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 170
    .local v6, values:Landroid/content/ContentValues;
    const-string v7, "address"

    const-string v8, "Pushmessage"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v7, "body"

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v7, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 173
    const-string v7, "type"

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getPublicId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 175
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisplayPushSenderAddress()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getOriginalAddress()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 176
    invoke-virtual {p0}, Lcom/android/mms/transaction/WapPushReceiverService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 177
    .local v2, res:Landroid/content/res/Resources;
    const-string v7, "href"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getHref()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const v9, 0x7f0c0082

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getOriginalAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .end local v2           #res:Landroid/content/res/Resources;
    :goto_3
    const-string v7, "si_id"

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getSiId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v7, "created"

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getCreated()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 183
    const-string v7, "si_expires"

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getSiExpires()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 184
    const-string v7, "action"

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getAction()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 186
    invoke-direct {p0, v6}, Lcom/android/mms/transaction/WapPushReceiverService;->insertWPMInfo(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 188
    .local v1, messageUri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 189
    invoke-static {p0, v1}, Lcom/android/mms/transaction/MessagingNotification;->getWpmThreadId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v4

    .line 190
    .local v4, threadId:J
    const/4 v7, 0x0

    invoke-static {p0, v4, v5, v7}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    goto/16 :goto_0

    .line 179
    .end local v1           #messageUri:Landroid/net/Uri;
    .end local v4           #threadId:J
    :cond_9
    const-string v7, "href"

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getHref()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private handleSlMeeesage(Lcom/android/mms/transaction/WapPushMessage;)V
    .locals 14
    .parameter "_recvSlMessage"

    .prologue
    const/4 v10, 0x1

    const/4 v0, 0x0

    .line 212
    const-string v11, "Mms/WapPushReceiverService"

    const-string v12, "handleSlMessage."

    invoke-static {v11, v12}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getHref()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getHref()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getPublicId()I

    move-result v11

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getHref()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v11, v12}, Lcom/android/mms/transaction/WapPushReceiverService;->selectWPMInfoByHref(ILjava/lang/String;)Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;

    move-result-object v5

    .line 220
    .local v5, storedWpmInfo:Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;
    if-eqz v5, :cond_3

    .line 221
    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getAction()I

    move-result v11

    invoke-static {v11}, Lcom/android/mms/transaction/WapPushMessage;->slActionToPriority(I)I

    move-result v11

    #getter for: Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->action:I
    invoke-static {v5}, Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->access$200(Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;)I

    move-result v12

    invoke-static {v12}, Lcom/android/mms/transaction/WapPushMessage;->slActionToPriority(I)I

    move-result v12

    if-lt v11, v12, :cond_2

    .line 224
    const-string v10, "Mms/WapPushReceiverService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "discard message because of priority. , recv_action_priority= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getAction()I

    move-result v12

    invoke-static {v12}, Lcom/android/mms/transaction/WapPushMessage;->slActionToPriority(I)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", stored_action+priority= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    #getter for: Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->action:I
    invoke-static {v5}, Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->access$200(Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;)I

    move-result v12

    invoke-static {v12}, Lcom/android/mms/transaction/WapPushMessage;->slActionToPriority(I)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :cond_2
    #getter for: Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->id:I
    invoke-static {v5}, Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->access$100(Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;)I

    move-result v11

    invoke-direct {p0, v11}, Lcom/android/mms/transaction/WapPushReceiverService;->deleteWPMInfo(I)V

    .line 235
    :cond_3
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 236
    .local v9, values:Landroid/content/ContentValues;
    const-string v11, "address"

    const-string v12, "Pushmessage"

    invoke-virtual {v9, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v11, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 238
    const-string v11, "type"

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getPublicId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 240
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisplayPushSenderAddress()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getOriginalAddress()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_7

    .line 241
    invoke-virtual {p0}, Lcom/android/mms/transaction/WapPushReceiverService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 242
    .local v3, res:Landroid/content/res/Resources;
    const-string v11, "href"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getHref()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f0c0082

    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getOriginalAddress()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .end local v3           #res:Landroid/content/res/Resources;
    :goto_1
    const-string v11, "action"

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getAction()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 249
    invoke-direct {p0, v9}, Lcom/android/mms/transaction/WapPushReceiverService;->insertWPMInfo(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 250
    .local v1, messageUri:Landroid/net/Uri;
    if-eqz v1, :cond_4

    .line 251
    invoke-static {p0, v1}, Lcom/android/mms/transaction/MessagingNotification;->getWpmThreadId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v6

    .line 252
    .local v6, threadId:J
    invoke-static {p0, v6, v7, v0}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 256
    .end local v6           #threadId:J
    :cond_4
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getServiceLoading(Landroid/content/Context;)I

    move-result v4

    .line 257
    .local v4, slOption:I
    const-string v11, "phone"

    invoke-virtual {p0, v11}, Lcom/android/mms/transaction/WapPushReceiverService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 258
    .local v8, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v11

    if-nez v11, :cond_5

    move v0, v10

    .line 260
    .local v0, isCallIdle:Z
    :cond_5
    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getAction()I

    move-result v11

    const/4 v12, 0x6

    if-ne v11, v12, :cond_0

    :cond_6
    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getAction()I

    move-result v11

    const/4 v12, 0x7

    if-eq v11, v12, :cond_0

    .line 263
    if-nez v4, :cond_8

    .line 264
    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getHref()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, p0}, Lcom/android/mms/transaction/WapPushReceiverService;->processHref(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 244
    .end local v0           #isCallIdle:Z
    .end local v1           #messageUri:Landroid/net/Uri;
    .end local v4           #slOption:I
    .end local v8           #tm:Landroid/telephony/TelephonyManager;
    :cond_7
    const-string v11, "href"

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getHref()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 266
    .restart local v0       #isCallIdle:Z
    .restart local v1       #messageUri:Landroid/net/Uri;
    .restart local v4       #slOption:I
    .restart local v8       #tm:Landroid/telephony/TelephonyManager;
    :cond_8
    if-ne v4, v10, :cond_0

    .line 267
    new-instance v10, Landroid/content/Intent;

    const-class v11, Lcom/android/mms/ui/PushMessageDialog;

    invoke-direct {v10, p0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v11, 0x1800

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 270
    .local v2, pushMessageDialogIntent:Landroid/content/Intent;
    const-string v10, "href"

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getHref()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    const-string v10, "sender"

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getOriginalAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    invoke-virtual {p0, v2}, Lcom/android/mms/transaction/WapPushReceiverService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private insertWPMInfo(Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .parameter "_values"

    .prologue
    .line 350
    const-string v0, "Mms/WapPushReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertWPMInfo. _values= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-virtual {p0}, Lcom/android/mms/transaction/WapPushReceiverService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/ui/MessageUtils;->WAP_PUSH_MESSAGE_BY_ID_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, v1, p1}, Lcom/google/android/mms/util/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static processHref(Ljava/lang/String;Landroid/content/Context;)V
    .locals 5
    .parameter "href"
    .parameter "context"

    .prologue
    .line 279
    const-string v2, "wtai://"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 280
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, number:Ljava/lang/String;
    const-string v2, "Mms/WapPushReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processUri uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-static {p1, v0}, Lcom/android/mms/ui/MessageUtils;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    .line 291
    .end local v0           #number:Ljava/lang/String;
    :goto_0
    return-void

    .line 286
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 287
    .local v1, uriIntent:Landroid/content/Intent;
    const-string v2, "com.android.browser.application_id"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 289
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private selectWPMInfo(Lcom/android/mms/transaction/WapPushMessage;)Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;
    .locals 3
    .parameter "_recvSiMessage"

    .prologue
    .line 196
    const/4 v0, 0x0

    .line 198
    .local v0, storedWpmInfo:Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;
    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getSiId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 199
    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getPublicId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getSiId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/mms/transaction/WapPushReceiverService;->selectWPMInfoBySiId(ILjava/lang/String;)Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;

    move-result-object v0

    .line 208
    :goto_0
    return-object v0

    .line 201
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getHref()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 202
    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getPublicId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getHref()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/mms/transaction/WapPushReceiverService;->selectWPMInfoByHref(ILjava/lang/String;)Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;

    move-result-object v0

    goto :goto_0

    .line 205
    :cond_1
    const-string v1, "Mms/WapPushReceiverService"

    const-string v2, "No ID for si message is provided"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private selectWPMInfo(Ljava/lang/String;ILjava/lang/String;)Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;
    .locals 11
    .parameter "selection"
    .parameter "_type"
    .parameter "_id"

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 314
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "wap-push-messages"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 316
    .local v2, wpmUri:Landroid/net/Uri;
    new-array v5, v10, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    aput-object p3, v5, v4

    .line 320
    .local v5, selectionArgs:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/mms/transaction/WapPushReceiverService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/mms/transaction/WapPushReceiverService;->WPM_INFO_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 323
    .local v7, c:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 325
    .local v8, wpmInfo:Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;
    if-eqz v7, :cond_0

    .line 326
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    new-instance v9, Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;

    const/4 v0, 0x0

    invoke-direct {v9, p0, v0}, Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;-><init>(Lcom/android/mms/transaction/WapPushReceiverService;Lcom/android/mms/transaction/WapPushReceiverService$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    .end local v8           #wpmInfo:Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;
    .local v9, wpmInfo:Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    #setter for: Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->id:I
    invoke-static {v9, v0}, Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->access$102(Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;I)I

    .line 329
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    #setter for: Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->created:J
    invoke-static {v9, v0, v1}, Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->access$002(Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;J)J

    .line 330
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    #setter for: Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->action:I
    invoke-static {v9, v0}, Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->access$202(Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v8, v9

    .line 334
    .end local v9           #wpmInfo:Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;
    .restart local v8       #wpmInfo:Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;
    :cond_0
    if-eqz v7, :cond_1

    .line 335
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 338
    :cond_1
    return-object v8

    .line 334
    :catchall_0
    move-exception v0

    :goto_0
    if-eqz v7, :cond_2

    .line 335
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 334
    :cond_2
    throw v0

    .end local v8           #wpmInfo:Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;
    .restart local v9       #wpmInfo:Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;
    :catchall_1
    move-exception v0

    move-object v8, v9

    .end local v9           #wpmInfo:Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;
    .restart local v8       #wpmInfo:Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;
    goto :goto_0
.end method

.method private selectWPMInfoByHref(ILjava/lang/String;)Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;
    .locals 4
    .parameter "_type"
    .parameter "_href"

    .prologue
    .line 304
    const-string v1, "type=? and href=?"

    invoke-direct {p0, v1, p1, p2}, Lcom/android/mms/transaction/WapPushReceiverService;->selectWPMInfo(Ljava/lang/String;ILjava/lang/String;)Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;

    move-result-object v0

    .line 307
    .local v0, wpmInfo:Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;
    const-string v2, "Mms/WapPushReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selectWPMInfoByHref. href= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", _id= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_0

    #getter for: Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->id:I
    invoke-static {v0}, Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->access$100(Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    return-object v0

    .line 307
    :cond_0
    const-string v1, "null"

    goto :goto_0
.end method

.method private selectWPMInfoBySiId(ILjava/lang/String;)Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;
    .locals 4
    .parameter "_type"
    .parameter "_siId"

    .prologue
    .line 294
    const-string v1, "type=? and si_id=?"

    invoke-direct {p0, v1, p1, p2}, Lcom/android/mms/transaction/WapPushReceiverService;->selectWPMInfo(Ljava/lang/String;ILjava/lang/String;)Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;

    move-result-object v0

    .line 297
    .local v0, wpmInfo:Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;
    const-string v2, "Mms/WapPushReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selectWPMInfoBySiId. siId= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", _id= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_0

    #getter for: Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->id:I
    invoke-static {v0}, Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;->access$100(Lcom/android/mms/transaction/WapPushReceiverService$WPMInfo;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    return-object v0

    .line 297
    :cond_0
    const-string v1, "null"

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 79
    const-string v0, "Mms/WapPushReceiverService"

    const-string v1, "onBind."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 49
    const-string v1, "Mms/WapPushReceiverService"

    const-string v2, "onCreate."

    invoke-static {v1, v2}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Mms/WapPushReceiverService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 52
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 54
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/WapPushReceiverService;->mServiceLooper:Landroid/os/Looper;

    .line 55
    new-instance v1, Lcom/android/mms/transaction/WapPushReceiverService$ServiceHandler;

    iget-object v2, p0, Lcom/android/mms/transaction/WapPushReceiverService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/android/mms/transaction/WapPushReceiverService$ServiceHandler;-><init>(Lcom/android/mms/transaction/WapPushReceiverService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/mms/transaction/WapPushReceiverService;->mServiceHandler:Lcom/android/mms/transaction/WapPushReceiverService$ServiceHandler;

    .line 56
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 72
    const-string v0, "Mms/WapPushReceiverService"

    const-string v1, "onDestroy."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/android/mms/transaction/WapPushReceiverService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 75
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 60
    const-string v1, "Mms/WapPushReceiverService"

    const-string v2, "onStartCommand."

    invoke-static {v1, v2}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/android/mms/transaction/WapPushReceiverService;->mServiceHandler:Lcom/android/mms/transaction/WapPushReceiverService$ServiceHandler;

    invoke-virtual {v1}, Lcom/android/mms/transaction/WapPushReceiverService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 63
    .local v0, msg:Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 64
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 65
    iget-object v1, p0, Lcom/android/mms/transaction/WapPushReceiverService;->mServiceHandler:Lcom/android/mms/transaction/WapPushReceiverService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/mms/transaction/WapPushReceiverService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 67
    const/4 v1, 0x2

    return v1
.end method
