.class Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;
.super Landroid/os/AsyncTask;
.source "PushReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/PushReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReceivePushTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Intent;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/mms/transaction/PushReceiver;


# direct methods
.method public constructor <init>(Lcom/android/mms/transaction/PushReceiver;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->this$0:Lcom/android/mms/transaction/PushReceiver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 129
    iput-object p2, p0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    .line 130
    return-void
.end method

.method private isDataAvailable()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 86
    iget-object v6, p0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 88
    .local v0, mConnMgr:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 89
    const-string v4, "Mms:transaction"

    const-string v6, "mConnMgr is null return false"

    invoke-static {v4, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_0
    :goto_0
    return v5

    .line 92
    :cond_1
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 94
    .local v2, ni:Landroid/net/NetworkInfo;
    const/4 v1, 0x0

    .line 99
    .local v1, networkIsAvaliable:Z
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 101
    .local v3, ni2:Landroid/net/NetworkInfo;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 102
    const-string v6, "Mms:transaction"

    const-string v7, "[TransactionService] wifi network available!"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_4
    move v1, v4

    .line 107
    :goto_1
    if-nez v1, :cond_5

    .line 119
    :cond_5
    if-eqz v1, :cond_0

    .line 120
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    if-eqz v6, :cond_0

    move v5, v4

    .line 121
    goto :goto_0

    :cond_6
    move v1, v5

    .line 104
    goto :goto_1
.end method

.method private updateAddress(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 3
    .parameter "from"

    .prologue
    .line 402
    if-nez p1, :cond_1

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 408
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    .line 409
    .local v1, cacheContact:Lcom/android/mms/data/Contact;
    if-eqz v1, :cond_0

    .line 410
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 412
    invoke-virtual {v1, v0}, Lcom/android/mms/data/Contact;->setNumber(Ljava/lang/String;)V

    .line 413
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->reload()V

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    check-cast p1, [Landroid/content/Intent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->doInBackground([Landroid/content/Intent;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/Intent;)Ljava/lang/Void;
    .locals 40
    .parameter "intents"

    .prologue
    .line 134
    const/4 v4, 0x0

    aget-object v27, p1, v4

    .line 136
    .local v27, intent:Landroid/content/Intent;
    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[PushReceiver]intent : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v4, "data"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v33

    .line 140
    .local v33, pushData:[B
    new-instance v32, Lcom/google/android/mms/pdu/PduParser;

    invoke-direct/range {v32 .. v33}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    .line 141
    .local v32, parser:Lcom/google/android/mms/pdu/PduParser;
    invoke-virtual/range {v32 .. v32}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v3

    .line 143
    .local v3, pdu:Lcom/google/android/mms/pdu/GenericPdu;
    if-nez v3, :cond_0

    .line 144
    const-string v4, "Mms:transaction"

    const-string v5, "[PushReceiver] Invalid PUSH data"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const/4 v4, 0x0

    .line 396
    .end local v3           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :goto_0
    return-object v4

    .line 148
    .restart local v3       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/android/mms/util/AddressUtils;->checkUnknownAddress(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    .line 150
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    .line 151
    .local v2, p:Lcom/google/android/mms/pdu/PduPersister;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    .line 152
    .local v23, cr:Landroid/content/ContentResolver;
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v39

    .line 153
    .local v39, type:I
    const-wide/16 v11, -0x1

    .line 155
    .local v11, threadId:J
    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[PushReceiver] Received message type of pdu="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    sparse-switch v39, :sswitch_data_0

    .line 386
    :try_start_0
    const-string v4, "Mms:transaction"

    const-string v5, "[PushReceiver] Received unrecognized PDU."

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 394
    .end local v3           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :cond_1
    :goto_1
    const-string v4, "Mms:transaction"

    const-string v5, "[PushReceiver] PUSH Intent processed."

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const/4 v4, 0x0

    goto :goto_0

    .line 160
    .restart local v3       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :sswitch_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    move/from16 v0, v39

    #calls: Lcom/android/mms/transaction/PushReceiver;->findThreadId(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;I)J
    invoke-static {v4, v3, v0}, Lcom/android/mms/transaction/PushReceiver;->access$000(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;I)J

    move-result-wide v11

    .line 161
    const-wide/16 v4, -0x1

    cmp-long v4, v11, v4

    if-nez v4, :cond_2

    .line 164
    const-string v4, "Mms:transaction"

    const-string v5, "threadId is -1"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 388
    .end local v3           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :catch_0
    move-exception v26

    .line 389
    .local v26, e:Lcom/google/android/mms/MmsException;
    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[PushReceiver] Failed to save the data from PUSH: type="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-static {v4, v5, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 168
    .end local v26           #e:Lcom/google/android/mms/MmsException;
    .restart local v3       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :cond_2
    :try_start_2
    const-string v13, ""

    .line 170
    .local v13, address:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 171
    const/16 v4, 0x86

    move/from16 v0, v39

    if-ne v0, v4, :cond_4

    .line 172
    move-object v0, v3

    check-cast v0, Lcom/google/android/mms/pdu/DeliveryInd;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/DeliveryInd;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v24

    .line 173
    .local v24, deliveryIndto:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v24, :cond_3

    move-object/from16 v0, v24

    array-length v4, v0

    if-lez v4, :cond_3

    .line 174
    invoke-static/range {v24 .. v24}, Lcom/google/android/mms/pdu/EncodedStringValue;->concat([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v13

    .line 181
    .end local v24           #deliveryIndto:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-static {v4, v13}, Lcom/android/mms/util/SecurityMailboxUtils;->isNumberInVIPList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Lcom/android/mms/transaction/PushReceiver;->access$102(Z)Z

    .line 182
    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isNumberVIP = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/mms/transaction/PushReceiver;->access$100()Z

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-static {}, Lcom/android/mms/transaction/PushReceiver;->access$100()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 185
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 175
    :cond_4
    const/16 v4, 0x88

    move/from16 v0, v39

    if-ne v0, v4, :cond_3

    .line 176
    move-object v0, v3

    check-cast v0, Lcom/google/android/mms/pdu/ReadOrigInd;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/ReadOrigInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v34

    .line 177
    .local v34, readIndto:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v34, :cond_3

    .line 178
    invoke-virtual/range {v34 .. v34}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    .line 189
    .end local v34           #readIndto:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_5
    sget-object v4, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getIsGroupMmsEnabled(Landroid/content/Context;)Z

    move-result v6

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v6

    .line 192
    .local v6, uri:Landroid/net/Uri;
    new-instance v7, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v7, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 193
    .local v7, values:Landroid/content/ContentValues;
    const-string v4, "thread_id"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 194
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, v23

    invoke-static/range {v4 .. v9}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 196
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v4

    if-nez v4, :cond_8

    .line 197
    const/16 v4, 0x86

    move/from16 v0, v39

    if-ne v0, v4, :cond_7

    .line 198
    move-object v0, v3

    check-cast v0, Lcom/google/android/mms/pdu/DeliveryInd;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/DeliveryInd;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v24

    .line 199
    .restart local v24       #deliveryIndto:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v24, :cond_6

    move-object/from16 v0, v24

    array-length v4, v0

    if-lez v4, :cond_6

    .line 200
    invoke-static/range {v24 .. v24}, Lcom/google/android/mms/pdu/EncodedStringValue;->concat([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v13

    .line 202
    :cond_6
    const-string v5, "Mms:transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doInBackground MMS delivery report status="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v3

    check-cast v0, Lcom/google/android/mms/pdu/DeliveryInd;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/DeliveryInd;->getStatus()I

    move-result v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    check-cast v3, Lcom/google/android/mms/pdu/DeliveryInd;

    .end local v3           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/DeliveryInd;->getStatus()I

    move-result v10

    invoke-static/range {v8 .. v13}, Lcom/android/mms/transaction/MessagingNotification;->updateReportNotification(Landroid/content/Context;IIJLjava/lang/String;)V
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 390
    .end local v6           #uri:Landroid/net/Uri;
    .end local v7           #values:Landroid/content/ContentValues;
    .end local v13           #address:Ljava/lang/String;
    .end local v24           #deliveryIndto:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_1
    move-exception v26

    .line 391
    .local v26, e:Ljava/lang/RuntimeException;
    const-string v4, "Mms:transaction"

    const-string v5, "[PushReceiver] Unexpected RuntimeException."

    move-object/from16 v0, v26

    invoke-static {v4, v5, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 205
    .end local v26           #e:Ljava/lang/RuntimeException;
    .restart local v3       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v6       #uri:Landroid/net/Uri;
    .restart local v7       #values:Landroid/content/ContentValues;
    .restart local v13       #address:Ljava/lang/String;
    :cond_7
    const/16 v4, 0x88

    move/from16 v0, v39

    if-ne v0, v4, :cond_1

    .line 206
    :try_start_3
    move-object v0, v3

    check-cast v0, Lcom/google/android/mms/pdu/ReadOrigInd;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/ReadOrigInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v34

    .line 207
    .restart local v34       #readIndto:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual/range {v34 .. v34}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v13

    .line 209
    const-string v5, "Mms:transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doInBackground MMS read report status="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v3

    check-cast v0, Lcom/google/android/mms/pdu/ReadOrigInd;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/ReadOrigInd;->getReadStatus()I

    move-result v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const/4 v9, 0x2

    check-cast v3, Lcom/google/android/mms/pdu/ReadOrigInd;

    .end local v3           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/ReadOrigInd;->getReadStatus()I

    move-result v10

    invoke-static/range {v8 .. v13}, Lcom/android/mms/transaction/MessagingNotification;->updateReportNotification(Landroid/content/Context;IIJLjava/lang/String;)V

    goto/16 :goto_1

    .line 213
    .end local v34           #readIndto:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v3       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :cond_8
    const/16 v4, 0x86

    move/from16 v0, v39

    if-ne v0, v4, :cond_a

    .line 214
    move-object v0, v3

    check-cast v0, Lcom/google/android/mms/pdu/DeliveryInd;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/DeliveryInd;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v24

    .line 215
    .restart local v24       #deliveryIndto:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v24, :cond_9

    move-object/from16 v0, v24

    array-length v4, v0

    if-lez v4, :cond_9

    .line 216
    invoke-static/range {v24 .. v24}, Lcom/google/android/mms/pdu/EncodedStringValue;->concat([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v13

    .line 218
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->this$0:Lcom/android/mms/transaction/PushReceiver;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    check-cast v3, Lcom/google/android/mms/pdu/DeliveryInd;

    .end local v3           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/DeliveryInd;->getStatus()I

    move-result v9

    #calls: Lcom/android/mms/transaction/PushReceiver;->saveReportToSms(Landroid/content/Context;IILjava/lang/String;)V
    invoke-static {v4, v5, v8, v9, v13}, Lcom/android/mms/transaction/PushReceiver;->access$200(Lcom/android/mms/transaction/PushReceiver;Landroid/content/Context;IILjava/lang/String;)V

    goto/16 :goto_1

    .line 220
    .end local v24           #deliveryIndto:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v3       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :cond_a
    const/16 v4, 0x88

    move/from16 v0, v39

    if-ne v0, v4, :cond_1

    .line 221
    move-object v0, v3

    check-cast v0, Lcom/google/android/mms/pdu/ReadOrigInd;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/ReadOrigInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v34

    .line 222
    .restart local v34       #readIndto:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual/range {v34 .. v34}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v13

    .line 224
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->this$0:Lcom/android/mms/transaction/PushReceiver;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const/4 v8, 0x2

    check-cast v3, Lcom/google/android/mms/pdu/ReadOrigInd;

    .end local v3           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/ReadOrigInd;->getReadStatus()I

    move-result v9

    #calls: Lcom/android/mms/transaction/PushReceiver;->saveReportToSms(Landroid/content/Context;IILjava/lang/String;)V
    invoke-static {v4, v5, v8, v9, v13}, Lcom/android/mms/transaction/PushReceiver;->access$200(Lcom/android/mms/transaction/PushReceiver;Landroid/content/Context;IILjava/lang/String;)V

    goto/16 :goto_1

    .line 231
    .end local v6           #uri:Landroid/net/Uri;
    .end local v7           #values:Landroid/content/ContentValues;
    .end local v13           #address:Ljava/lang/String;
    .end local v34           #readIndto:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v3       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :sswitch_1
    move-object v0, v3

    check-cast v0, Lcom/google/android/mms/pdu/NotificationInd;

    move-object/from16 v30, v0

    .line 233
    .local v30, nInd:Lcom/google/android/mms/pdu/NotificationInd;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransIdEnabled()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 234
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v21

    .line 235
    .local v21, contentLocation:[B
    const/16 v4, 0x3d

    move-object/from16 v0, v21

    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    aget-byte v5, v21, v5

    if-ne v4, v5, :cond_b

    .line 236
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v38

    .line 237
    .local v38, transactionId:[B
    move-object/from16 v0, v21

    array-length v4, v0

    move-object/from16 v0, v38

    array-length v5, v0

    add-int/2addr v4, v5

    new-array v0, v4, [B

    move-object/from16 v22, v0

    .line 239
    .local v22, contentLocationWithId:[B
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v21

    array-length v8, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v4, v1, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 241
    const/4 v4, 0x0

    move-object/from16 v0, v21

    array-length v5, v0

    move-object/from16 v0, v38

    array-length v8, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v22

    invoke-static {v0, v4, v1, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/NotificationInd;->setContentLocation([B)V

    .line 247
    .end local v21           #contentLocation:[B
    .end local v22           #contentLocationWithId:[B
    .end local v38           #transactionId:[B
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, v30

    #calls: Lcom/android/mms/transaction/PushReceiver;->isDuplicateNotification(Landroid/content/Context;Lcom/google/android/mms/pdu/NotificationInd;)Z
    invoke-static {v4, v0}, Lcom/android/mms/transaction/PushReceiver;->access$300(Landroid/content/Context;Lcom/google/android/mms/pdu/NotificationInd;)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 248
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->isAllowTextMessaging(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 249
    const-string v4, "Mms:transaction"

    const-string v5, "[PushReceiver] Discard MMS Notification by IT Policy"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 253
    :cond_c
    const/16 v28, 0x0

    .line 254
    .local v28, isSpam:Z
    const/16 v29, 0x1

    .line 256
    .local v29, isSpamForHistoryLogFlag:Z
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPModeApplication()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_f

    .line 257
    const/16 v36, 0x0

    .line 258
    .local v36, subject:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/GenericPdu;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 259
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/GenericPdu;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v36

    .line 261
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/GenericPdu;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v36

    invoke-static {v4, v5, v0}, Lcom/android/mms/ui/MessageUtils;->SpamMessageFilterForVIPMode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v28

    .line 265
    .end local v36           #subject:Ljava/lang/String;
    :goto_3
    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PushReceiver isSpam = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 267
    const-string v13, ""

    .line 268
    .restart local v13       #address:Ljava/lang/String;
    move-object v0, v3

    check-cast v0, Lcom/google/android/mms/pdu/NotificationInd;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/NotificationInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v31

    .line 269
    .local v31, notiIndFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v31, :cond_e

    .line 270
    invoke-virtual/range {v31 .. v31}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v13

    .line 271
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-static {v4, v13}, Lcom/android/mms/util/SecurityMailboxUtils;->isNumberInVIPList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Lcom/android/mms/transaction/PushReceiver;->access$102(Z)Z

    .line 272
    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isNumberVIP = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/mms/transaction/PushReceiver;->access$100()Z

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-static {}, Lcom/android/mms/transaction/PushReceiver;->access$100()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 275
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 263
    .end local v13           #address:Ljava/lang/String;
    .end local v31           #notiIndFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/GenericPdu;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/GenericPdu;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v8

    invoke-static {v4, v5, v8}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->isSpam(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;Lcom/google/android/mms/pdu/EncodedStringValue;)Z

    move-result v28

    goto :goto_3

    .line 286
    :cond_10
    const/4 v6, 0x0

    .line 287
    .restart local v6       #uri:Landroid/net/Uri;
    if-eqz v28, :cond_15

    .line 288
    sget-object v4, Landroid/provider/Telephony$SpamMms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, v28

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v6

    .line 296
    :goto_4
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/GenericPdu;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->updateAddress(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 297
    if-eqz v28, :cond_11

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsAutoDownload4Spam()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 298
    const/16 v28, 0x0

    .line 299
    const/16 v29, 0x0

    .line 301
    :cond_11
    if-nez v28, :cond_14

    .line 303
    new-instance v37, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v0, v37

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 304
    .local v37, svc:Landroid/content/Intent;
    const-string v4, "uri"

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v37

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    const-string v4, "type"

    const/4 v5, 0x0

    move-object/from16 v0, v37

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 307
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 309
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v25

    .line 310
    .local v25, downloadManager:Lcom/android/mms/util/DownloadManager;
    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/util/DownloadManager;->isAuto()Z

    move-result v20

    .line 312
    .local v20, autoDownload:Z
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 313
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->getAppRestrictBackground(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 315
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-static {v4, v6}, Lcom/android/mms/transaction/MessagingNotification;->getThreadId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v11

    .line 316
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v11, v12, v5}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 318
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const-string v8, "mms"

    invoke-static {v4, v6, v5, v8}, Lcom/android/mms/ui/MessageUtils;->sendNotiToOtherApp(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    :cond_12
    if-nez v20, :cond_16

    .line 322
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-static {v4, v6}, Lcom/android/mms/transaction/MessagingNotification;->getThreadId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v11

    .line 323
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v11, v12, v5}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 324
    if-nez v28, :cond_13

    .line 325
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const-string v8, "mms"

    invoke-static {v4, v6, v5, v8}, Lcom/android/mms/ui/MessageUtils;->sendNotiToOtherApp(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :cond_13
    :goto_5
    if-eqz v29, :cond_14

    .line 366
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v6, v5}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryForMms(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)Z

    .line 367
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-static {v4, v6}, Lcom/android/mms/transaction/MessagingNotification;->updateAlwaysHistoryForMms(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 372
    .end local v20           #autoDownload:Z
    .end local v25           #downloadManager:Lcom/android/mms/util/DownloadManager;
    .end local v37           #svc:Landroid/content/Intent;
    :cond_14
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPModeApplication()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 373
    if-eqz v6, :cond_1

    if-eqz v28, :cond_1

    .line 374
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v6, v5}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryForMms(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v35

    .line 375
    .local v35, result:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-static {v4, v6}, Lcom/android/mms/transaction/MessagingNotification;->updateAlwaysHistoryForMms(Landroid/content/Context;Landroid/net/Uri;)Z

    goto/16 :goto_1

    .line 290
    .end local v35           #result:Z
    :cond_15
    sget-object v16, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getIsGroupMmsEnabled(Landroid/content/Context;)Z

    move-result v18

    const/16 v19, 0x0

    move-object v14, v2

    move-object v15, v3

    invoke-virtual/range {v14 .. v19}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v6

    goto/16 :goto_4

    .line 327
    .restart local v20       #autoDownload:Z
    .restart local v25       #downloadManager:Lcom/android/mms/util/DownloadManager;
    .restart local v37       #svc:Landroid/content/Intent;
    :cond_16
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 328
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsMobiledataOff()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 329
    const-string v4, "Mms:transaction"

    const-string v5, "[PushReceiver] Do not alert noti"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 331
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/util/TelephonyUtils;->getDataNetworkEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 334
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-static {v4, v6}, Lcom/android/mms/transaction/MessagingNotification;->getThreadId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v11

    .line 336
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v11, v12, v5}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 339
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const-string v8, "mms"

    invoke-static {v4, v6, v5, v8}, Lcom/android/mms/ui/MessageUtils;->sendNotiToOtherApp(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 342
    :cond_18
    const-string v4, "Mms:transaction"

    const-string v5, "[PushReceiver] Do not alert noti!!!"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 346
    :cond_19
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->isDataAvailable()Z

    move-result v4

    if-nez v4, :cond_13

    .line 349
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-static {v4, v6}, Lcom/android/mms/transaction/MessagingNotification;->getThreadId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v11

    .line 350
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v11, v12, v5}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 351
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const-string v8, "mms"

    invoke-static {v4, v6, v5, v8}, Lcom/android/mms/ui/MessageUtils;->sendNotiToOtherApp(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 381
    .end local v6           #uri:Landroid/net/Uri;
    .end local v20           #autoDownload:Z
    .end local v25           #downloadManager:Lcom/android/mms/util/DownloadManager;
    .end local v28           #isSpam:Z
    .end local v29           #isSpamForHistoryLogFlag:Z
    .end local v37           #svc:Landroid/content/Intent;
    :cond_1a
    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[PushReceiver] Skip downloading duplicate message: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v8, Ljava/lang/String;

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 157
    nop

    :sswitch_data_0
    .sparse-switch
        0x82 -> :sswitch_1
        0x86 -> :sswitch_0
        0x88 -> :sswitch_0
    .end sparse-switch
.end method
