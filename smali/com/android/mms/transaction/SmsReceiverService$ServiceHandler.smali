.class final Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;
.super Landroid/os/Handler;
.source "SmsReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/SmsReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/SmsReceiverService;


# direct methods
.method public constructor <init>(Lcom/android/mms/transaction/SmsReceiverService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 353
    iput-object p1, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    .line 354
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 355
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 20
    .parameter "msg"

    .prologue
    .line 363
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    .line 364
    .local v16, serviceId:I
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/content/Intent;

    .line 367
    .local v11, intent:Landroid/content/Intent;
    if-eqz v11, :cond_0

    .line 369
    :try_start_0
    const-string v2, "Mms/SmsReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SMS]Receiver handleMessage : Action ="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 373
    .local v8, action:Ljava/lang/String;
    const-string v2, "errorCode"

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 375
    .local v5, error:I
    const-string v2, "com.android.mms.transaction.MESSAGE_SENT"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->handleSmsSent(Landroid/content/Intent;I)V
    invoke-static {v2, v11, v5}, Lcom/android/mms/transaction/SmsReceiverService;->access$200(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    .end local v5           #error:I
    .end local v8           #action:Ljava/lang/String;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    move/from16 v0, v16

    invoke-static {v2, v0}, Lcom/android/mms/transaction/SmsReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 501
    :goto_1
    return-void

    .line 377
    .restart local v5       #error:I
    .restart local v8       #action:Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v2, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 378
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->handleSmsReceived(Landroid/content/Intent;I)V
    invoke-static {v2, v11, v5}, Lcom/android/mms/transaction/SmsReceiverService;->access$300(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 499
    .end local v5           #error:I
    .end local v8           #action:Ljava/lang/String;
    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    move/from16 v0, v16

    invoke-static {v3, v0}, Lcom/android/mms/transaction/SmsReceiver;->finishStartingService(Landroid/app/Service;I)V

    throw v2

    .line 379
    .restart local v5       #error:I
    .restart local v8       #action:Ljava/lang/String;
    :cond_2
    :try_start_2
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 380
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->handleBootCompleted()V
    invoke-static {v2}, Lcom/android/mms/transaction/SmsReceiverService;->access$400(Lcom/android/mms/transaction/SmsReceiverService;)V

    goto :goto_0

    .line 381
    :cond_3
    const-string v2, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 382
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    invoke-virtual {v2}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/util/TelephonyUtils;->isRoaming(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->isKorOperator()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 386
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->handleServiceStateChanged(Landroid/content/Intent;)V
    invoke-static {v2, v11}, Lcom/android/mms/transaction/SmsReceiverService;->access$500(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V

    goto :goto_0

    .line 387
    :cond_5
    const-string v2, "com.android.mms.transaction.SEND_MESSAGE"

    invoke-virtual {v2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 388
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRoamGuard()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 389
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->isRoamGuardPending()Z
    invoke-static {v2}, Lcom/android/mms/transaction/SmsReceiverService;->access$600(Lcom/android/mms/transaction/SmsReceiverService;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 390
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    invoke-virtual {v2}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/transaction/RoamStatusChangeReceiver;->registerForRoamingStatusChanges(Landroid/content/Context;)V

    .line 393
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->handleSendMessage()V
    invoke-static {v2}, Lcom/android/mms/transaction/SmsReceiverService;->access$700(Lcom/android/mms/transaction/SmsReceiverService;)V

    goto/16 :goto_0

    .line 395
    :cond_7
    const-string v2, "android.intent.action.ECMP_STATE_CHANGED"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 396
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    invoke-virtual {v2}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/util/TelephonyUtils;->isImsRegistered(Landroid/content/Context;)Z

    move-result v12

    .line 397
    .local v12, isIMSReg:Z
    const-string v2, "Mms/SmsReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "receive ACTION_IMS_ECMP_STATE_CHANGED!! isImsRegistered : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    invoke-virtual {v2}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/util/TelephonyUtils;->isRoaming(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->isKorOperator()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 400
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    invoke-virtual {v2}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage()V

    goto/16 :goto_0

    .line 404
    .end local v12           #isIMSReg:Z
    :cond_8
    const-string v2, "android.intent.action.ACTION_ROAM_STATUS_CHANGE_RECEIVER"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 405
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRoamGuard()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 406
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->handleRoamingStatusChanged(Landroid/content/Intent;)V
    invoke-static {v2, v11}, Lcom/android/mms/transaction/SmsReceiverService;->access$800(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 410
    :cond_9
    const-string v2, "android.provider.Telephony.SMS_CB_RECEIVED"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 411
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->handleSmsCbReceived(Landroid/content/Intent;)V
    invoke-static {v2, v11}, Lcom/android/mms/transaction/SmsReceiverService;->access$900(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 412
    :cond_a
    const-string v2, "android.provider.Telephony.CB_RECEIVED"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 413
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->handleSmsCbReceived(Landroid/content/Intent;)V
    invoke-static {v2, v11}, Lcom/android/mms/transaction/SmsReceiverService;->access$900(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 414
    :cond_b
    const-string v2, "android.provider.Telephony.SET_CB_ERR_RECEIVED"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 415
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->handleErrCodeForSetCbReceived(Landroid/content/Intent;)V
    invoke-static {v2, v11}, Lcom/android/mms/transaction/SmsReceiverService;->access$1000(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 416
    :cond_c
    const-string v2, "android.provider.Telephony.GET_CB_ERR_RECEIVED"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 417
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->handleErrCodeForGetCbReceived(Landroid/content/Intent;)V
    invoke-static {v2, v11}, Lcom/android/mms/transaction/SmsReceiverService;->access$1100(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 418
    :cond_d
    const-string v2, "android.provider.Telephony.CB_SETTINGS_AVAILABLE"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 419
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 420
    invoke-static {}, Lcom/android/mms/MmsConfig;->isKORCMASFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 421
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->handleCbSettingsAvailable()V
    invoke-static {v2}, Lcom/android/mms/transaction/SmsReceiverService;->access$1200(Lcom/android/mms/transaction/SmsReceiverService;)V

    goto/16 :goto_0

    .line 424
    :cond_e
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCdmaCmasOverLte()Z

    move-result v2

    if-nez v2, :cond_f

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCDMACMASEnable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 425
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->handleCbSettingsAvailable()V
    invoke-static {v2}, Lcom/android/mms/transaction/SmsReceiverService;->access$1200(Lcom/android/mms/transaction/SmsReceiverService;)V

    goto/16 :goto_0

    .line 427
    :cond_10
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 428
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->handleSIMStatus(Landroid/content/Intent;)V
    invoke-static {v2, v11}, Lcom/android/mms/transaction/SmsReceiverService;->access$1300(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 432
    :cond_11
    const-string v2, "android.provider.Telephony.GET_SMSC"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 433
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->handleSmsServiceCenter(Landroid/content/Intent;)V
    invoke-static {v2, v11}, Lcom/android/mms/transaction/SmsReceiverService;->access$1400(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 437
    :cond_12
    const-string v2, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 438
    invoke-static {}, Lcom/android/mms/MmsConfig;->isCDMANetworkRegistered()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 439
    const-string v2, "Mms/SmsReceiverService"

    const-string v3, "Discard Data sms"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 499
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    move/from16 v0, v16

    invoke-static {v2, v0}, Lcom/android/mms/transaction/SmsReceiver;->finishStartingService(Landroid/app/Service;I)V

    goto/16 :goto_1

    .line 443
    :cond_13
    :try_start_3
    invoke-static {v11}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v4

    .line 445
    .local v4, msgs:[Landroid/telephony/SmsMessage;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 447
    const/4 v2, 0x0

    aget-object v17, v4, v2

    .line 448
    .local v17, sms:Landroid/telephony/SmsMessage;
    const/4 v9, 0x0

    .line 449
    .local v9, bDiscard:Z
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v14

    .line 450
    .local v14, nTP_PID:I
    sparse-switch v14, :sswitch_data_0

    .line 465
    :goto_2
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v10

    .line 466
    .local v10, hdrUserData:Lcom/android/internal/telephony/SmsHeader;
    if-eqz v10, :cond_14

    .line 467
    iget-object v2, v10, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v2, :cond_14

    .line 468
    iget-object v2, v10, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v15, v2, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 469
    .local v15, port:I
    const v2, 0xc221

    if-ne v15, v2, :cond_14

    .line 470
    const/4 v9, 0x1

    .line 475
    .end local v15           #port:I
    :cond_14
    if-eqz v9, :cond_15

    .line 476
    const-string v2, "Mms/SmsReceiverService"

    const-string v3, "Discard Data sms PID"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 499
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    move/from16 v0, v16

    invoke-static {v2, v0}, Lcom/android/mms/transaction/SmsReceiver;->finishStartingService(Landroid/app/Service;I)V

    goto/16 :goto_1

    .line 458
    .end local v10           #hdrUserData:Lcom/android/internal/telephony/SmsHeader;
    :sswitch_0
    const/4 v9, 0x1

    .line 459
    goto :goto_2

    .line 481
    .end local v9           #bDiscard:Z
    .end local v14           #nTP_PID:I
    .end local v17           #sms:Landroid/telephony/SmsMessage;
    :cond_15
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    const/4 v6, 0x0

    const-string v7, "format"

    invoke-virtual {v11, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->storeMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;IZLjava/lang/String;)Landroid/net/Uri;
    invoke-static/range {v2 .. v7}, Lcom/android/mms/transaction/SmsReceiverService;->access$1500(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Context;[Landroid/telephony/SmsMessage;IZLjava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 483
    .local v13, messageUri:Landroid/net/Uri;
    if-eqz v13, :cond_0

    .line 484
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    invoke-static {v2, v13}, Lcom/android/mms/transaction/MessagingNotification;->getSmsThreadId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v18

    .line 485
    .local v18, threadId:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    const/4 v3, 0x0

    move-wide/from16 v0, v18

    invoke-static {v2, v0, v1, v3}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    goto/16 :goto_0

    .line 491
    .end local v4           #msgs:[Landroid/telephony/SmsMessage;
    .end local v13           #messageUri:Landroid/net/Uri;
    .end local v18           #threadId:J
    :cond_16
    const-string v2, "com.android.internal.policy.impl.Keyguard.PCW_LOCKED"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 493
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    const/4 v3, 0x0

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->handlePCWLockMessage(Z)V
    invoke-static {v2, v3}, Lcom/android/mms/transaction/SmsReceiverService;->access$1600(Lcom/android/mms/transaction/SmsReceiverService;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 450
    nop

    :sswitch_data_0
    .sparse-switch
        0x4d -> :sswitch_0
        0x51 -> :sswitch_0
        0x52 -> :sswitch_0
        0x53 -> :sswitch_0
        0x7d -> :sswitch_0
        0x7f -> :sswitch_0
        0x99 -> :sswitch_0
    .end sparse-switch
.end method
