.class Lcom/android/mms/transaction/IMEITrackerService$MyListner;
.super Landroid/telephony/PhoneStateListener;
.source "IMEITrackerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/IMEITrackerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyListner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/IMEITrackerService;


# direct methods
.method private constructor <init>(Lcom/android/mms/transaction/IMEITrackerService;)V
    .locals 0
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/mms/transaction/IMEITrackerService$MyListner;->this$0:Lcom/android/mms/transaction/IMEITrackerService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/transaction/IMEITrackerService;Lcom/android/mms/transaction/IMEITrackerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 261
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/IMEITrackerService$MyListner;-><init>(Lcom/android/mms/transaction/IMEITrackerService;)V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 11
    .parameter "serviceState"

    .prologue
    const/4 v10, 0x1

    .line 265
    const-string v7, "ITS"

    const-string v8, "onServiceStateChanged entered"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v7, p0, Lcom/android/mms/transaction/IMEITrackerService$MyListner;->this$0:Lcom/android/mms/transaction/IMEITrackerService;

    const-string v8, "phone"

    invoke-virtual {v7, v8}, Lcom/android/mms/transaction/IMEITrackerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 270
    .local v6, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v7

    if-eq v7, v10, :cond_2

    .line 274
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_2

    .line 276
    const-string v7, "ITS"

    const-string v8, "SIM is ready"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v7, p0, Lcom/android/mms/transaction/IMEITrackerService$MyListner;->this$0:Lcom/android/mms/transaction/IMEITrackerService;

    invoke-virtual {v7}, Lcom/android/mms/transaction/IMEITrackerService;->createMessage()Ljava/lang/String;

    move-result-object v3

    .line 280
    .local v3, message:Ljava/lang/String;
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v7

    if-nez v7, :cond_2

    .line 284
    iget-object v7, p0, Lcom/android/mms/transaction/IMEITrackerService$MyListner;->this$0:Lcom/android/mms/transaction/IMEITrackerService;

    #calls: Lcom/android/mms/transaction/IMEITrackerService;->getServerNumbFromLocalSharePref()Ljava/lang/String;
    invoke-static {v7}, Lcom/android/mms/transaction/IMEITrackerService;->access$100(Lcom/android/mms/transaction/IMEITrackerService;)Ljava/lang/String;

    move-result-object v4

    .line 285
    .local v4, serverNumber:Ljava/lang/String;
    const-string v7, "NULL"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 286
    const-string v4, "+919560345888"

    .line 287
    iget-object v7, p0, Lcom/android/mms/transaction/IMEITrackerService$MyListner;->this$0:Lcom/android/mms/transaction/IMEITrackerService;

    const-string v8, "+919560345888"

    #calls: Lcom/android/mms/transaction/IMEITrackerService;->updateServerNumbToLocalSharePref(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/mms/transaction/IMEITrackerService;->access$200(Lcom/android/mms/transaction/IMEITrackerService;Ljava/lang/String;)V

    .line 290
    :cond_0
    const-string v7, "ITS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "serverNumber : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/mms/transaction/IMEITrackerService;->IMSI_new:Ljava/lang/String;

    .line 294
    const-string v7, "ITS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SIM_new"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/mms/transaction/IMEITrackerService;->IMSI_new:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    :try_start_0
    const-string v7, "samsungimeitrack"

    invoke-static {v7, v3}, Lcom/android/mms/transaction/IMEITrackerService;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/mms/transaction/IMEITrackerService;->message_encrypted:Ljava/lang/String;

    .line 298
    const-string v7, "ITS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "message_encrypted : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/mms/transaction/IMEITrackerService;->message_encrypted:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :goto_0
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 303
    .local v2, isIMSIsaved:Ljava/lang/Boolean;
    const/4 v1, -0x1

    .line 304
    .local v1, index:I
    iget-object v7, p0, Lcom/android/mms/transaction/IMEITrackerService$MyListner;->this$0:Lcom/android/mms/transaction/IMEITrackerService;

    iget-object v7, v7, Lcom/android/mms/transaction/IMEITrackerService;->insertedSimRecordList:Ljava/util/ArrayList;

    if-eqz v7, :cond_1

    .line 305
    const/4 v5, 0x0

    .local v5, simOrder:I
    :goto_1
    iget-object v7, p0, Lcom/android/mms/transaction/IMEITrackerService$MyListner;->this$0:Lcom/android/mms/transaction/IMEITrackerService;

    iget-object v7, v7, Lcom/android/mms/transaction/IMEITrackerService;->insertedSimRecordList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_1

    .line 306
    sget-object v8, Lcom/android/mms/transaction/IMEITrackerService;->IMSI_new:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/mms/transaction/IMEITrackerService$MyListner;->this$0:Lcom/android/mms/transaction/IMEITrackerService;

    iget-object v7, v7, Lcom/android/mms/transaction/IMEITrackerService;->insertedSimRecordList:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 307
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 308
    move v1, v5

    .line 309
    const-string v7, "ITS"

    const-string v8, "Current Sim\'s IMSI value is already stored"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    .end local v5           #simOrder:I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_4

    sget-object v7, Lcom/android/mms/transaction/IMEITrackerService;->messagePass:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_4

    sget v7, Lcom/android/mms/transaction/IMEITrackerService;->msgSendingAttempt:I

    const/4 v8, 0x3

    if-ge v7, v8, :cond_4

    .line 315
    sget v7, Lcom/android/mms/transaction/IMEITrackerService;->msgSendingAttempt:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lcom/android/mms/transaction/IMEITrackerService;->msgSendingAttempt:I

    .line 316
    iget-object v7, p0, Lcom/android/mms/transaction/IMEITrackerService$MyListner;->this$0:Lcom/android/mms/transaction/IMEITrackerService;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IMEI "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/mms/transaction/IMEITrackerService;->message_encrypted:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/mms/transaction/IMEITrackerService;->sendSMS(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v7, v4, v8}, Lcom/android/mms/transaction/IMEITrackerService;->access$300(Lcom/android/mms/transaction/IMEITrackerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    sput-object v7, Lcom/android/mms/transaction/IMEITrackerService;->messagePass:Ljava/lang/Boolean;

    .line 328
    .end local v1           #index:I
    .end local v2           #isIMSIsaved:Ljava/lang/Boolean;
    .end local v3           #message:Ljava/lang/String;
    .end local v4           #serverNumber:Ljava/lang/String;
    :cond_2
    :goto_2
    const-string v7, "ITS"

    const-string v8, "onServiceStateChanged Exits"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 331
    return-void

    .line 299
    .restart local v3       #message:Ljava/lang/String;
    .restart local v4       #serverNumber:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 300
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "ITS"

    const-string v8, "Native layer exception found"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 305
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #index:I
    .restart local v2       #isIMSIsaved:Ljava/lang/Boolean;
    .restart local v5       #simOrder:I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 319
    .end local v5           #simOrder:I
    :cond_4
    const/4 v7, -0x1

    if-eq v1, v7, :cond_2

    .line 320
    iget-object v7, p0, Lcom/android/mms/transaction/IMEITrackerService$MyListner;->this$0:Lcom/android/mms/transaction/IMEITrackerService;

    iget-object v7, v7, Lcom/android/mms/transaction/IMEITrackerService;->insertedSimRecordList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 321
    iget-object v7, p0, Lcom/android/mms/transaction/IMEITrackerService$MyListner;->this$0:Lcom/android/mms/transaction/IMEITrackerService;

    iget-object v7, v7, Lcom/android/mms/transaction/IMEITrackerService;->insertedSimRecordList:Ljava/util/ArrayList;

    sget-object v8, Lcom/android/mms/transaction/IMEITrackerService;->IMSI_new:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    iget-object v7, p0, Lcom/android/mms/transaction/IMEITrackerService$MyListner;->this$0:Lcom/android/mms/transaction/IMEITrackerService;

    iget-object v8, p0, Lcom/android/mms/transaction/IMEITrackerService$MyListner;->this$0:Lcom/android/mms/transaction/IMEITrackerService;

    iget-object v8, v8, Lcom/android/mms/transaction/IMEITrackerService;->insertedSimRecordList:Ljava/util/ArrayList;

    #calls: Lcom/android/mms/transaction/IMEITrackerService;->updateRecord(Ljava/util/ArrayList;)V
    invoke-static {v7, v8}, Lcom/android/mms/transaction/IMEITrackerService;->access$400(Lcom/android/mms/transaction/IMEITrackerService;Ljava/util/ArrayList;)V

    goto :goto_2
.end method
