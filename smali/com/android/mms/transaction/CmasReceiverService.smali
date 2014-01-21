.class public Lcom/android/mms/transaction/CmasReceiverService;
.super Landroid/app/Service;
.source "CmasReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/CmasReceiverService$HeadsetEventReceiver;,
        Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;,
        Lcom/android/mms/transaction/CmasReceiverService$ServiceHandler;
    }
.end annotation


# static fields
.field public static final CB_ALL_CMAS_ALL:I = 0xb0

.field public static final CB_ALL_CMAS_SOME:I = 0x90

.field public static final CB_SOME_CMAS_ALL:I = 0xa0

.field public static final CB_SOME_CMAS_SOME:I = 0x80

.field public static final CMAS_EXERCISE:Ljava/lang/String; = "Exercise Alert"

.field public static final CMAS_MESSAGE_AMBER:Ljava/lang/String; = "AMBER Alert"

.field public static final CMAS_MESSAGE_AMBER_SPR:Ljava/lang/String; = "Amber Alert"

.field public static final CMAS_MESSAGE_CMASTEST:Ljava/lang/String; = "Emergency Test Alert"

.field public static final CMAS_MESSAGE_EXTREME:Ljava/lang/String; = "Extreme Alert"

.field public static final CMAS_MESSAGE_FONT_SIZE:Ljava/lang/String; = "#cmas#pref##font#size"

.field public static final CMAS_MESSAGE_PRESIDENTIAL:Ljava/lang/String; = "Presidential Alert"

.field public static final CMAS_MESSAGE_SETTING_AMBER:Ljava/lang/String; = "#cmas#type##amber#enabled"

.field public static final CMAS_MESSAGE_SETTING_CDMA_EXERCISE:Ljava/lang/String; = "pref_cmas_exercise"

.field public static final CMAS_MESSAGE_SETTING_CLASS1:Ljava/lang/String; = "pref_cmas_receive_class1"

.field public static final CMAS_MESSAGE_SETTING_EXERCISE:Ljava/lang/String; = "#cmas#type##exercise#enabled"

.field public static final CMAS_MESSAGE_SETTING_EXTREME:Ljava/lang/String; = "#cmas#type##extreme#enabled"

.field public static final CMAS_MESSAGE_SETTING_OPERATOR_DEFINED:Ljava/lang/String; = "pref_cmas_operator_defined"

.field public static final CMAS_MESSAGE_SETTING_PRESIDENTIAL:Ljava/lang/String; = "#cmas#type##presidential#enabled"

.field public static final CMAS_MESSAGE_SETTING_SEVERE:Ljava/lang/String; = "#cmas#type##severe#enabled"

.field public static final CMAS_MESSAGE_SETTING_TEST:Ljava/lang/String; = "#cmas#type##test#enabled"

.field public static final CMAS_MESSAGE_SEVERE:Ljava/lang/String; = "Severe Alert"

.field public static final CMAS_MESSAGE_TMO_EXTREME:Ljava/lang/String; = "Imminent extreme alert"

.field public static final CMAS_MESSAGE_TMO_SEVERE:Ljava/lang/String; = "Imminent severe alert"

.field public static final CMAS_NOTIFICATION_ID:I = 0x90

.field public static final CMAS_OPERATOR_SERVICE:Ljava/lang/String; = "Operator Specific"

.field public static final CMAS_PREF:Ljava/lang/String; = "cmas_preferences"

.field public static final CMAS_RMT:Ljava/lang/String; = "RMT Alert"

.field public static final CMAS_UNDEFINED:Ljava/lang/String; = "Other Alerts"

.field public static final ENABLE_CDMA_CMAS_OVER_LTE_HIDDEN_MENU:Ljava/lang/String; = "pref_cdma_cmas_over_lte_menu"

.field private static final ONE_DAY_MILLISECOND:J = 0x5265c00L

.field private static final SYSTEM_PROP_HIDDENMENU_ENABLE_KEY:Ljava/lang/String; = "sys.hiddenmenu.enable"

.field private static final TAG:Ljava/lang/String; = "Mms/CmasReceiverService"

.field public static cmasDataVector:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;",
            ">;"
        }
    .end annotation
.end field

.field public static inCall:Z

.field private static mCmasIdList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private listener:Landroid/telephony/PhoneStateListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mServiceHandler:Lcom/android/mms/transaction/CmasReceiverService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/transaction/CmasReceiverService;->mCmasIdList:Ljava/util/Set;

    .line 138
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/CmasReceiverService;->cmasDataVector:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 90
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 139
    new-instance v0, Lcom/android/mms/transaction/CmasReceiverService$HeadsetEventReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/transaction/CmasReceiverService$HeadsetEventReceiver;-><init>(Lcom/android/mms/transaction/CmasReceiverService;Lcom/android/mms/transaction/CmasReceiverService$1;)V

    iput-object v0, p0, Lcom/android/mms/transaction/CmasReceiverService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1542
    return-void
.end method

.method private CheckDuplicateCDMACMAS(Landroid/content/Context;[Landroid/telephony/SmsMessage;)Z
    .locals 14
    .parameter "context"
    .parameter "msgs"

    .prologue
    .line 607
    const/4 v7, 0x0

    .line 608
    .local v7, bIsduplicate:Z
    const/4 v0, 0x0

    aget-object v13, p2, v0

    .line 609
    .local v13, sms:Landroid/telephony/SmsMessage;
    const/4 v12, 0x0

    .line 611
    .local v12, nMsgID:I
    invoke-virtual {v13}, Landroid/telephony/SmsMessage;->getCMASMessageID()I

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    invoke-virtual {v13}, Landroid/telephony/SmsMessage;->getCMASMessageID()I

    move-result v12

    .line 616
    :goto_0
    const-string v0, "Mms/CmasReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CheckDuplicateCDMACMAS:Msg ID = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    if-nez v12, :cond_1

    move v8, v7

    .line 656
    .end local v7           #bIsduplicate:Z
    .local v8, bIsduplicate:I
    :goto_1
    return v8

    .line 614
    .end local v8           #bIsduplicate:I
    .restart local v7       #bIsduplicate:Z
    :cond_0
    invoke-virtual {v13}, Landroid/telephony/SmsMessage;->getMessageIdentifier()I

    move-result v12

    goto :goto_0

    .line 621
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_4

    .line 624
    :cond_2
    sget-object v0, Lcom/android/mms/transaction/CmasReceiverService;->mCmasIdList:Ljava/util/Set;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/mms/transaction/CmasReceiverService;->mCmasIdList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/mms/transaction/CmasReceiverService;->mCmasIdList:Ljava/util/Set;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 625
    const-string v0, "Mms/CmasReceiverService"

    const-string v2, "CheckDuplicateCMAS:Duplicate Found in Cached List"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    const/4 v7, 0x1

    :cond_3
    :goto_2
    move v8, v7

    .line 656
    .restart local v8       #bIsduplicate:I
    goto :goto_1

    .line 629
    .end local v8           #bIsduplicate:I
    :cond_4
    const-string v4, "identifier = ?"

    .line 630
    .local v4, selection:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v0

    .line 631
    .local v5, selectionArgs:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 632
    .local v1, resolver:Landroid/content/ContentResolver;
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v0

    .line 634
    .local v3, CMAS_PROJECTION:[Ljava/lang/String;
    const-string v0, "Mms/CmasReceiverService"

    const-string v2, "CheckDuplicateCDMACMAS:Running the Query"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const/4 v10, 0x0

    .line 637
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Landroid/provider/Telephony$Cmas;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 638
    if-eqz v10, :cond_6

    .line 639
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 640
    .local v9, count:I
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 641
    if-eqz v9, :cond_5

    .line 642
    const-string v0, "Mms/CmasReceiverService"

    const-string v2, "CheckDuplicateCDMACMAS:Duplicate Found"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    const/4 v7, 0x1

    .line 651
    .end local v9           #count:I
    :cond_5
    :goto_3
    if-eqz v10, :cond_3

    .line 652
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 646
    :cond_6
    :try_start_1
    const-string v0, "Mms/CmasReceiverService"

    const-string v2, "CheckDuplicateCDMACMAS:NO Duplicate"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 648
    :catch_0
    move-exception v11

    .line 649
    .local v11, ex:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "Mms/CmasReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CheckDuplicateCDMACMAS:Caught Exception = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 651
    if-eqz v10, :cond_3

    .line 652
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 651
    .end local v11           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_7

    .line 652
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0
.end method

.method private CheckDuplicateGSMCMAS(Landroid/content/Context;II)Z
    .locals 18
    .parameter "context"
    .parameter "serviceCategory"
    .parameter "serialNumber"

    .prologue
    .line 660
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasMessageDuplicateMessageCheckFeature()Z

    move-result v2

    if-nez v2, :cond_1

    .line 661
    const-string v2, "Mms/CmasReceiverService"

    const-string v8, "CheckDuplicateGSMCMAS: No Need"

    invoke-static {v2, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    const/4 v9, 0x0

    .line 718
    :cond_0
    :goto_0
    return v9

    .line 665
    :cond_1
    const/4 v9, 0x0

    .line 666
    .local v9, bIsduplicate:Z
    const-string v2, "Mms/CmasReceiverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CheckDuplicateGSMCMAS: serviceCategory = "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    if-eqz p2, :cond_7

    .line 669
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCdmaCmasOverLte()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 670
    const/4 v9, 0x0

    goto :goto_0

    .line 672
    :cond_2
    sget-object v4, Landroid/provider/Telephony$Cmas;->CONTENT_URI:Landroid/net/Uri;

    .line 673
    .local v4, uri:Landroid/net/Uri;
    const-string v6, "service_category = ? AND identifier = ?"

    .line 674
    .local v6, selection:Ljava/lang/String;
    const/4 v5, 0x0

    .line 676
    .local v5, CMAS_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v2

    const/4 v8, 0x1

    if-ne v2, v8, :cond_4

    .line 677
    sget-object v2, Landroid/provider/Telephony$Cmas;->CONTENT_URI:Landroid/net/Uri;

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 678
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 679
    .local v12, now:J
    const-wide/32 v16, 0x5265c00

    sub-long v14, v12, v16

    .line 681
    .local v14, yesterday:J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " AND sms._id = sms_id AND date <= "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " AND "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "date"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " > "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 682
    const-string v2, "Mms/CmasReceiverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CheckDuplicateGSMCMAS: now="

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    .end local v5           #CMAS_PROJECTION:[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v8, "date"

    aput-object v8, v5, v2

    .line 689
    .end local v12           #now:J
    .end local v14           #yesterday:J
    .restart local v5       #CMAS_PROJECTION:[Ljava/lang/String;
    :goto_1
    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    const/4 v2, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    .line 690
    .local v7, selectionArgs:[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 692
    .local v3, resolver:Landroid/content/ContentResolver;
    const-string v2, "Mms/CmasReceiverService"

    const-string v8, "CheckDuplicateGSMCMAS:Running the Query"

    invoke-static {v2, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    const/4 v10, 0x0

    .line 695
    .local v10, cursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    move-object/from16 v2, p1

    :try_start_0
    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 698
    if-eqz v10, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 699
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 700
    const-string v2, "Mms/CmasReceiverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CheckDuplicateGSMCMAS:Duplicate Found, id or date="

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 701
    const/4 v9, 0x1

    .line 709
    :cond_3
    :goto_2
    if-eqz v10, :cond_0

    .line 710
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 711
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 686
    .end local v3           #resolver:Landroid/content/ContentResolver;
    .end local v7           #selectionArgs:[Ljava/lang/String;
    .end local v10           #cursor:Landroid/database/Cursor;
    :cond_4
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    .end local v5           #CMAS_PROJECTION:[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v8, "_id"

    aput-object v8, v5, v2

    .restart local v5       #CMAS_PROJECTION:[Ljava/lang/String;
    goto :goto_1

    .line 704
    .restart local v3       #resolver:Landroid/content/ContentResolver;
    .restart local v7       #selectionArgs:[Ljava/lang/String;
    .restart local v10       #cursor:Landroid/database/Cursor;
    :cond_5
    :try_start_1
    const-string v2, "Mms/CmasReceiverService"

    const-string v8, "CheckDuplicateGSMCMAS:NO Duplicate"

    invoke-static {v2, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 706
    :catch_0
    move-exception v11

    .line 707
    .local v11, ex:Ljava/lang/Exception;
    :try_start_2
    const-string v2, "Mms/CmasReceiverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CheckDuplicateGSMCMAS:Caught Exception = "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 709
    if-eqz v10, :cond_0

    .line 710
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 711
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 709
    .end local v11           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_6

    .line 710
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 711
    const/4 v10, 0x0

    :cond_6
    throw v2

    .line 716
    .end local v3           #resolver:Landroid/content/ContentResolver;
    .end local v4           #uri:Landroid/net/Uri;
    .end local v5           #CMAS_PROJECTION:[Ljava/lang/String;
    .end local v6           #selection:Ljava/lang/String;
    .end local v7           #selectionArgs:[Ljava/lang/String;
    .end local v10           #cursor:Landroid/database/Cursor;
    :cond_7
    const-string v2, "Mms/CmasReceiverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CheckDuplicateGSMCMAS: serviceCategory is "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v16, ", This must be test only!"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static FilterCLRF(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "source"

    .prologue
    .line 1100
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .line 1101
    .local v1, i:I
    const/4 v0, 0x0

    .line 1102
    .local v0, count:I
    add-int/lit8 v3, v1, 0x1

    .line 1104
    .local v3, total:I
    :goto_0
    if-lez v1, :cond_1

    .line 1105
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xd

    if-eq v4, v5, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1

    .line 1106
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 1109
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1112
    :cond_1
    const/4 v4, 0x0

    sub-int v5, v3, v0

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1113
    .local v2, ret:Ljava/lang/String;
    return-object v2
.end method

.method private SetScptMessage(IZLandroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10
    .parameter "operation_code"
    .parameter "value"
    .parameter "prefs"
    .parameter "key"
    .parameter "OriginatingAddress"
    .parameter "ServiceCartegory"

    .prologue
    .line 1463
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 1464
    .local v9, editor:Landroid/content/SharedPreferences$Editor;
    const/4 v8, 0x0

    .line 1465
    .local v8, bTemp:Z
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 1467
    .local v0, smsManager:Landroid/telephony/SmsManager;
    const-string v1, "Mms/CmasReceiverService"

    const-string v2, "handleSmsReceived: SCPT = TRUE"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1468
    const-string v1, "Mms/CmasReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSmsReceived: OPERATION_CODE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1470
    if-nez p1, :cond_2

    .line 1472
    if-eqz p2, :cond_1

    .line 1473
    const/4 v1, 0x0

    invoke-interface {v9, p4, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1474
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1476
    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p5

    move/from16 v3, p6

    invoke-virtual/range {v0 .. v7}, Landroid/telephony/SmsManager;->sendscptResultMessage(Ljava/lang/String;IIIILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1516
    :cond_0
    :goto_0
    return-void

    .line 1481
    :cond_1
    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p5

    move/from16 v3, p6

    invoke-virtual/range {v0 .. v7}, Landroid/telephony/SmsManager;->sendscptResultMessage(Ljava/lang/String;IIIILjava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1486
    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_4

    .line 1487
    if-nez p2, :cond_3

    .line 1488
    const/4 v1, 0x1

    invoke-interface {v9, p4, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1489
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1491
    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p5

    move/from16 v3, p6

    invoke-virtual/range {v0 .. v7}, Landroid/telephony/SmsManager;->sendscptResultMessage(Ljava/lang/String;IIIILjava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1496
    :cond_3
    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p5

    move/from16 v3, p6

    invoke-virtual/range {v0 .. v7}, Landroid/telephony/SmsManager;->sendscptResultMessage(Ljava/lang/String;IIIILjava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1500
    :cond_4
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 1502
    const-string v1, "#cmas#type##extreme#enabled"

    const/4 v2, 0x0

    invoke-interface {v9, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1503
    const-string v1, "#cmas#type##severe#enabled"

    const/4 v2, 0x0

    invoke-interface {v9, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1504
    const-string v1, "#cmas#type##amber#enabled"

    const/4 v2, 0x0

    invoke-interface {v9, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1506
    invoke-static {}, Lcom/android/mms/MmsConfig;->getGSMCMASEnable()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 1507
    const-string v1, "#cmas#type##exercise#enabled"

    const/4 v2, 0x0

    invoke-interface {v9, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1510
    :goto_1
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1512
    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p5

    move/from16 v3, p6

    invoke-virtual/range {v0 .. v7}, Landroid/telephony/SmsManager;->sendscptResultMessage(Ljava/lang/String;IIIILjava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1509
    :cond_5
    const-string v1, "#cmas#type##test#enabled"

    const/4 v2, 0x0

    invoke-interface {v9, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/android/mms/transaction/CmasReceiverService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/CmasReceiverService;->handleGSMCMASReceived(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/transaction/CmasReceiverService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/CmasReceiverService;->handleCDMACMASReceived(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/transaction/CmasReceiverService;Landroid/content/Intent;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/CmasReceiverService;->handlScptReceived(Landroid/content/Intent;I)V

    return-void
.end method

.method private checkCallState()V
    .locals 1

    .prologue
    .line 722
    new-instance v0, Lcom/android/mms/transaction/CmasReceiverService$1;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/CmasReceiverService$1;-><init>(Lcom/android/mms/transaction/CmasReceiverService;)V

    iput-object v0, p0, Lcom/android/mms/transaction/CmasReceiverService;->listener:Landroid/telephony/PhoneStateListener;

    .line 750
    return-void
.end method

.method private checkForSettings(I)Z
    .locals 8
    .parameter "msgId"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 928
    const-string v6, "Mms/CmasReceiverService"

    const-string v7, "checkForSettings()"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    const/4 v3, 0x0

    .line 932
    .local v3, prefs:Landroid/content/SharedPreferences;
    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 937
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isKORCMASFeatureEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 938
    const-string v6, "ril.sms.gcf-mode"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 939
    .local v0, GcfMode:Ljava/lang/String;
    const-string v6, "Mms/CmasReceiverService"

    const-string v7, "checkForSettings() MmsConfig.getCMASProvider() == MmsConfig.CMAS_PROVIDER_KOR "

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->isKorOperator()Z

    move-result v6

    if-nez v6, :cond_1

    if-eqz v0, :cond_0

    const-string v6, "On"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1016
    .end local v0           #GcfMode:Ljava/lang/String;
    :cond_0
    :goto_1
    return v5

    .line 933
    :catch_0
    move-exception v1

    .line 934
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 943
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #GcfMode:Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Lcom/android/mms/transaction/CmasReceiverService;->isReservedCmasmessage(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 944
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCMASTestOnOff()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v3}, Lcom/android/mms/transaction/CmasReceiverService;->isCLASS1AlertActive(Landroid/content/SharedPreferences;)Z

    move-result v6

    if-eqz v6, :cond_2

    :goto_2
    move v5, v4

    goto :goto_1

    :cond_2
    move v4, v5

    goto :goto_2

    .line 947
    :cond_3
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    move v5, v4

    .line 949
    goto :goto_1

    .line 959
    :pswitch_2
    invoke-static {v3}, Lcom/android/mms/transaction/CmasReceiverService;->isCLASS1AlertActive(Landroid/content/SharedPreferences;)Z

    move-result v5

    goto :goto_1

    .line 964
    :pswitch_3
    invoke-static {v3}, Lcom/android/mms/transaction/CmasReceiverService;->isRMT_ExerciseAlertActive(Landroid/content/SharedPreferences;)Z

    move-result v5

    goto :goto_1

    .line 970
    .end local v0           #GcfMode:Ljava/lang/String;
    :cond_4
    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    .line 972
    :sswitch_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v6

    const/4 v7, 0x6

    if-eq v6, v7, :cond_5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v6

    const/4 v7, 0x7

    if-ne v6, v7, :cond_0

    .line 974
    :cond_5
    iget-object v6, p0, Lcom/android/mms/transaction/CmasReceiverService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    .line 975
    .local v2, networkOperator:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v6, "730"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v4

    .line 976
    goto :goto_1

    .end local v2           #networkOperator:Ljava/lang/String;
    :sswitch_1
    move v5, v4

    .line 981
    goto :goto_1

    .line 984
    :sswitch_2
    invoke-static {v3}, Lcom/android/mms/transaction/CmasReceiverService;->isExtremeAlertActive(Landroid/content/SharedPreferences;)Z

    move-result v5

    goto :goto_1

    .line 991
    :sswitch_3
    invoke-static {v3}, Lcom/android/mms/transaction/CmasReceiverService;->isSeverityAlertActive(Landroid/content/SharedPreferences;)Z

    move-result v5

    goto :goto_1

    .line 993
    :sswitch_4
    invoke-static {v3}, Lcom/android/mms/transaction/CmasReceiverService;->isAmberAlertActive(Landroid/content/SharedPreferences;)Z

    move-result v5

    goto :goto_1

    .line 998
    :sswitch_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCdmaCmasOverLte()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 999
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v4

    const/4 v6, 0x4

    if-ne v4, v6, :cond_0

    .line 1000
    const/16 v4, 0x111c

    if-ne p1, v4, :cond_6

    .line 1001
    const-string v4, "#cmas#type##test#enabled"

    invoke-static {v3, v4}, Lcom/android/mms/transaction/CmasReceiverService;->getCmasSetting(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v5

    goto :goto_1

    .line 1004
    :cond_6
    const-string v4, "pref_cdma_cmas_over_lte_menu"

    invoke-static {v3, v4}, Lcom/android/mms/transaction/CmasReceiverService;->getCmasSetting(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1005
    const/16 v4, 0x111d

    if-ne p1, v4, :cond_7

    .line 1006
    const-string v4, "pref_cmas_exercise"

    invoke-static {v3, v4}, Lcom/android/mms/transaction/CmasReceiverService;->getCmasSetting(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v5

    goto/16 :goto_1

    .line 1007
    :cond_7
    const/16 v4, 0x111e

    if-ne p1, v4, :cond_0

    .line 1008
    const-string v4, "pref_cmas_operator_defined"

    invoke-static {v3, v4}, Lcom/android/mms/transaction/CmasReceiverService;->getCmasSetting(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v5

    goto/16 :goto_1

    .line 1014
    :cond_8
    invoke-static {v3}, Lcom/android/mms/transaction/CmasReceiverService;->isRMT_ExerciseAlertActive(Landroid/content/SharedPreferences;)Z

    move-result v5

    goto/16 :goto_1

    .line 947
    :pswitch_data_0
    .packed-switch 0x1112
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 970
    :sswitch_data_0
    .sparse-switch
        0x397 -> :sswitch_0
        0x1112 -> :sswitch_1
        0x1113 -> :sswitch_2
        0x1114 -> :sswitch_2
        0x1115 -> :sswitch_3
        0x1116 -> :sswitch_3
        0x1117 -> :sswitch_3
        0x1118 -> :sswitch_3
        0x1119 -> :sswitch_3
        0x111a -> :sswitch_3
        0x111b -> :sswitch_4
        0x111c -> :sswitch_5
        0x111d -> :sswitch_5
        0x111e -> :sswitch_5
        0x111f -> :sswitch_5
    .end sparse-switch
.end method

.method private convertGsmServiceGategoryToCdma(I)I
    .locals 3
    .parameter "gsmServiceCategory"

    .prologue
    .line 1554
    const/16 v0, 0x1004

    .line 1556
    .local v0, cdmaServiceCategory:I
    sparse-switch p1, :sswitch_data_0

    .line 1587
    :cond_0
    :goto_0
    return v0

    .line 1558
    :sswitch_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 1560
    :cond_1
    const/16 v0, 0x1000

    goto :goto_0

    .line 1565
    :sswitch_1
    const/16 v0, 0x1000

    .line 1566
    goto :goto_0

    .line 1570
    :sswitch_2
    const/16 v0, 0x1001

    .line 1571
    goto :goto_0

    .line 1579
    :sswitch_3
    const/16 v0, 0x1002

    .line 1580
    goto :goto_0

    .line 1583
    :sswitch_4
    const/16 v0, 0x1003

    goto :goto_0

    .line 1556
    nop

    :sswitch_data_0
    .sparse-switch
        0x397 -> :sswitch_0
        0x1112 -> :sswitch_1
        0x1113 -> :sswitch_2
        0x1114 -> :sswitch_2
        0x1115 -> :sswitch_3
        0x1116 -> :sswitch_3
        0x1117 -> :sswitch_3
        0x1118 -> :sswitch_3
        0x1119 -> :sswitch_3
        0x111a -> :sswitch_3
        0x111b -> :sswitch_4
    .end sparse-switch
.end method

.method private extractCmasContentValues(Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;
    .locals 13
    .parameter "sms"

    .prologue
    const/4 v10, 0x1

    .line 499
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 501
    .local v6, values:Landroid/content/ContentValues;
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASServiceCategory()I

    move-result v3

    .line 505
    .local v3, nServiceCategory:I
    :try_start_0
    const-string v7, "Mms/CmasReceiverService"

    const-string v8, "Persisting CMAS specific fields."

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    const-string v7, "service_category"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASServiceCategory()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 508
    const-string v7, "Mms/CmasReceiverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Persisting CMAS:Service Cat="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASServiceCategory()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASRecordTypeFirstExists()Z

    move-result v7

    if-ne v7, v10, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_0

    .line 511
    const-string v7, "category"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASCategory()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 512
    const-string v7, "Mms/CmasReceiverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Persisting CMAS:Category="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASCategory()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    const-string v7, "response_type"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASResponseType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 515
    const-string v7, "Mms/CmasReceiverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Persisting CMAS:ResponseType="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASResponseType()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    const-string v7, "severity"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASSeverity()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 518
    const-string v7, "Mms/CmasReceiverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Persisting CMAS:Severity="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASSeverity()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const-string v7, "urgency"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASUrgency()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 521
    const-string v7, "Mms/CmasReceiverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Persisting CMAS:Urgency="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASUrgency()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    const-string v7, "certainty"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASCertainty()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 524
    const-string v7, "Mms/CmasReceiverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Persisting CMAS:Certainity="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASCertainty()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    :goto_0
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASMessageID()I

    move-result v7

    if-eqz v7, :cond_1

    .line 535
    const-string v7, "identifier"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASMessageID()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 536
    const-string v7, "Mms/CmasReceiverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Persisting CMAS: getCMASMessageID="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASMessageID()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    :goto_1
    const-string v7, "alert_handling"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASAlertHandling()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 543
    const-string v7, "Mms/CmasReceiverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Persisting CMAS:Alert Handling="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASAlertHandling()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASMsgExpires()J

    move-result-wide v4

    .line 552
    .local v4, recMillis:J
    const-wide/16 v7, 0x0

    cmp-long v7, v7, v4

    if-eqz v7, :cond_3

    .line 557
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 558
    .local v0, curDate:Landroid/text/format/Time;
    const-wide/16 v1, 0x0

    .line 560
    .local v1, finalTime:J
    invoke-virtual {v0, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 561
    move-wide v1, v4

    .line 563
    const-string v7, "Mms/CmasReceiverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CMAS:GMT off val = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, v0, Landroid/text/format/Time;->gmtoff:J

    const-wide/16 v11, 0x3e8

    mul-long/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const-string v7, "expires"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 567
    const-string v7, "Mms/CmasReceiverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Persisting CMAS:Expiry="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    const-string v7, "Mms/CmasReceiverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Persisting CMAS:Cur time="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    const/16 v7, 0x1000

    if-ne v7, v3, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v7, v7, v1

    if-gez v7, :cond_2

    .line 576
    const-string v7, "Mms/CmasReceiverService"

    const-string v8, "Persisting CMAS fields: CMAS expiry=0"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    const-string v7, "expired"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 589
    .end local v0           #curDate:Landroid/text/format/Time;
    .end local v1           #finalTime:J
    :goto_2
    const-string v7, "language"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASLanguage()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 590
    const-string v7, "Mms/CmasReceiverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Persisting CMAS:Language="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASLanguage()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    .end local v4           #recMillis:J
    :goto_3
    return-object v6

    .line 526
    :cond_0
    const-string v7, "Mms/CmasReceiverService"

    const-string v8, "Store Record Type One Default "

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    const-string v7, "category"

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 528
    const-string v7, "response_type"

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 529
    const-string v7, "severity"

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 530
    const-string v7, "urgency"

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 531
    const-string v7, "certainty"

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 593
    :catch_0
    move-exception v7

    goto :goto_3

    .line 538
    :cond_1
    const-string v7, "identifier"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getMessageIdentifier()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 539
    const-string v7, "Mms/CmasReceiverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Persisting CMAS: getMessageIdentifier ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getMessageIdentifier()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 579
    .restart local v0       #curDate:Landroid/text/format/Time;
    .restart local v1       #finalTime:J
    .restart local v4       #recMillis:J
    :cond_2
    const-string v7, "Mms/CmasReceiverService"

    const-string v8, "Persisting CMAS fields: CMAS expiry=1"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    const-string v7, "expired"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    .line 584
    .end local v0           #curDate:Landroid/text/format/Time;
    .end local v1           #finalTime:J
    :cond_3
    const-string v7, "Mms/CmasReceiverService"

    const-string v8, "Persisting CMAS fields: CMAS expiry=1"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    const-string v7, "expired"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2
.end method

.method private fillRecordTypeFirst(ILandroid/content/ContentValues;)V
    .locals 6
    .parameter "serviceCategory"
    .parameter "values"

    .prologue
    const/4 v5, -0x1

    .line 1642
    if-nez p2, :cond_0

    .line 1729
    :goto_0
    return-void

    .line 1647
    :cond_0
    const/4 v1, -0x1

    .line 1648
    .local v1, severity:I
    const/4 v2, -0x1

    .line 1649
    .local v2, urgency:I
    const/4 v0, -0x1

    .line 1650
    .local v0, certainty:I
    packed-switch p1, :pswitch_data_0

    .line 1724
    :goto_1
    :pswitch_0
    const-string v3, "response_type"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1725
    const-string v3, "category"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1726
    const-string v3, "severity"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1727
    const-string v3, "urgency"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1728
    const-string v3, "certainty"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 1653
    :pswitch_1
    const/4 v1, 0x0

    .line 1654
    const/4 v2, 0x0

    .line 1655
    const/4 v0, 0x0

    .line 1656
    goto :goto_1

    .line 1660
    :pswitch_2
    const/4 v1, 0x0

    .line 1661
    const/4 v2, 0x0

    .line 1662
    const/4 v0, 0x1

    .line 1663
    goto :goto_1

    .line 1667
    :pswitch_3
    const/4 v1, 0x0

    .line 1668
    const/4 v2, 0x1

    .line 1669
    const/4 v0, 0x0

    .line 1670
    goto :goto_1

    .line 1674
    :pswitch_4
    const/4 v1, 0x0

    .line 1675
    const/4 v2, 0x1

    .line 1676
    const/4 v0, 0x1

    .line 1677
    goto :goto_1

    .line 1681
    :pswitch_5
    const/4 v1, 0x1

    .line 1682
    const/4 v2, 0x0

    .line 1683
    const/4 v0, 0x0

    .line 1684
    goto :goto_1

    .line 1688
    :pswitch_6
    const/4 v1, 0x1

    .line 1689
    const/4 v2, 0x0

    .line 1690
    const/4 v0, 0x1

    .line 1691
    goto :goto_1

    .line 1695
    :pswitch_7
    const/4 v1, 0x1

    .line 1696
    const/4 v2, 0x1

    .line 1697
    const/4 v0, 0x0

    .line 1698
    goto :goto_1

    .line 1702
    :pswitch_8
    const/4 v1, 0x1

    .line 1703
    const/4 v2, 0x1

    .line 1704
    const/4 v0, 0x1

    .line 1705
    goto :goto_1

    .line 1650
    :pswitch_data_0
    .packed-switch 0x1113
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getCmasAddress(I)Ljava/lang/String;
    .locals 3
    .parameter "serviceCategory"

    .prologue
    .line 1591
    const-string v0, "Mms/CmasReceiverService"

    const-string v1, "CMAS, putting address in DB"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1592
    const-string v0, "Mms/CmasReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CMAS, service category = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1593
    const/16 v0, 0x1000

    if-ne v0, p1, :cond_1

    .line 1594
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasPresidentialThreaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1595
    const-string v0, "Mms/CmasReceiverService"

    const-string v1, "getSmsAddressValues: Presidential alert will be saved in single thread"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1596
    invoke-direct {p0}, Lcom/android/mms/transaction/CmasReceiverService;->getCmasPresidentialAddressWithCurrentTime()Ljava/lang/String;

    move-result-object v0

    .line 1607
    :goto_0
    return-object v0

    .line 1598
    :cond_0
    const-string v0, "#CMAS#Presidential"

    goto :goto_0

    .line 1600
    :cond_1
    const/16 v0, 0x1001

    if-ne v0, p1, :cond_2

    .line 1601
    const-string v0, "#CMAS#Extreme"

    goto :goto_0

    .line 1602
    :cond_2
    const/16 v0, 0x1002

    if-ne v0, p1, :cond_3

    .line 1603
    const-string v0, "#CMAS#Severe"

    goto :goto_0

    .line 1604
    :cond_3
    const/16 v0, 0x1003

    if-ne v0, p1, :cond_4

    .line 1605
    const-string v0, "#CMAS#Amber"

    goto :goto_0

    .line 1607
    :cond_4
    const-string v0, "#CMAS#Test"

    goto :goto_0
.end method

.method public static getCmasDialogCount()I
    .locals 1

    .prologue
    .line 1532
    sget-object v0, Lcom/android/mms/transaction/CmasReceiverService;->cmasDataVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method private getCmasPresidentialAddressWithCurrentTime()Ljava/lang/String;
    .locals 6

    .prologue
    .line 600
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 601
    .local v1, curTime:J
    const-string v0, "#CMAS#Presidential_"

    .line 602
    .local v0, CmasPresidentialAddress:Ljava/lang/String;
    const-string v3, "Mms/CmasReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCmasPresidentialAddressWithCurrentTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getCmasSetting(Landroid/content/SharedPreferences;Ljava/lang/String;)Z
    .locals 5
    .parameter "prefs"
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 1612
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1623
    :cond_0
    :goto_0
    return v1

    .line 1616
    :cond_1
    const/4 v1, 0x0

    .line 1618
    .local v1, enable:Z
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p0, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1622
    :goto_1
    const-string v2, "Mms/CmasReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCmasSetting key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " enable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1619
    :catch_0
    move-exception v0

    .line 1620
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private getInsertedSmsID(Landroid/net/Uri;)I
    .locals 6
    .parameter "SmsUri"

    .prologue
    .line 443
    const-string v3, "Mms/CmasReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getInsertedSmsID returned SmsUri is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const/4 v0, 0x0

    .line 447
    .local v0, SmsId:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 448
    .local v1, SmsUriwithRowId:Ljava/lang/String;
    const/16 v3, 0x2f

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 450
    .local v2, idx:I
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 451
    const-string v3, "Mms/CmasReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getInsertedSmsID SmsId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method public static getServiceCategory(I)Ljava/lang/String;
    .locals 4
    .parameter "msgId"

    .prologue
    .line 1317
    const-string v1, "Mms/CmasReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "messageIdentifier "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    const-string v0, ""

    .line 1319
    .local v0, mAddress:Ljava/lang/String;
    sparse-switch p0, :sswitch_data_0

    .line 1357
    :cond_0
    :goto_0
    const-string v1, "Mms/CmasReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFromAddress() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    return-object v0

    .line 1321
    :sswitch_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 1323
    :cond_1
    const-string v0, "Presidential Alert"

    goto :goto_0

    .line 1327
    :sswitch_1
    const-string v0, "Presidential Alert"

    .line 1328
    goto :goto_0

    .line 1331
    :sswitch_2
    const-string v0, "Extreme Alert"

    .line 1332
    goto :goto_0

    .line 1339
    :sswitch_3
    const-string v0, "Severe Alert"

    .line 1340
    goto :goto_0

    .line 1342
    :sswitch_4
    const-string v0, "AMBER Alert"

    .line 1343
    goto :goto_0

    .line 1345
    :sswitch_5
    const-string v0, "RMT Alert"

    .line 1346
    goto :goto_0

    .line 1348
    :sswitch_6
    const-string v0, "Exercise Alert"

    .line 1349
    goto :goto_0

    .line 1351
    :sswitch_7
    const-string v0, "Operator Specific"

    .line 1352
    goto :goto_0

    .line 1354
    :sswitch_8
    const-string v0, "Other Alerts"

    goto :goto_0

    .line 1319
    nop

    :sswitch_data_0
    .sparse-switch
        0x397 -> :sswitch_0
        0x1112 -> :sswitch_1
        0x1113 -> :sswitch_2
        0x1114 -> :sswitch_2
        0x1115 -> :sswitch_3
        0x1116 -> :sswitch_3
        0x1117 -> :sswitch_3
        0x1118 -> :sswitch_3
        0x1119 -> :sswitch_3
        0x111a -> :sswitch_3
        0x111b -> :sswitch_4
        0x111c -> :sswitch_5
        0x111d -> :sswitch_6
        0x111e -> :sswitch_7
        0x111f -> :sswitch_8
    .end sparse-switch
.end method

.method private getSmsAddressValues(Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;
    .locals 6
    .parameter "sms"

    .prologue
    .line 457
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 459
    .local v2, values:Landroid/content/ContentValues;
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASServiceCategory()I

    move-result v1

    .line 462
    .local v1, nServiceCategory:I
    const-string v3, "Mms/CmasReceiverService"

    const-string v4, "CMAS, putting address in DB"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const-string v3, "Mms/CmasReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMAS, service category = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const/16 v3, 0x1000

    if-ne v3, v1, :cond_1

    .line 466
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasPresidentialThreaded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 467
    const-string v3, "Mms/CmasReceiverService"

    const-string v4, "getSmsAddressValues: Presidential alert will be saved in single thread"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    invoke-direct {p0}, Lcom/android/mms/transaction/CmasReceiverService;->getCmasPresidentialAddressWithCurrentTime()Ljava/lang/String;

    move-result-object v0

    .line 469
    .local v0, CmasAddress:Ljava/lang/String;
    const-string v3, "address"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    invoke-virtual {p1, v0}, Landroid/telephony/SmsMessage;->setCMASAddress(Ljava/lang/String;)V

    .line 494
    .end local v0           #CmasAddress:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 473
    :cond_0
    const-string v3, "address"

    const-string v4, "#CMAS#Presidential"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const-string v3, "#CMAS#Presidential"

    invoke-virtual {p1, v3}, Landroid/telephony/SmsMessage;->setCMASAddress(Ljava/lang/String;)V

    goto :goto_0

    .line 477
    :cond_1
    const/16 v3, 0x1001

    if-ne v3, v1, :cond_2

    .line 478
    const-string v3, "address"

    const-string v4, "#CMAS#Extreme"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const-string v3, "#CMAS#Extreme"

    invoke-virtual {p1, v3}, Landroid/telephony/SmsMessage;->setCMASAddress(Ljava/lang/String;)V

    goto :goto_0

    .line 481
    :cond_2
    const/16 v3, 0x1002

    if-ne v3, v1, :cond_3

    .line 482
    const-string v3, "address"

    const-string v4, "#CMAS#Severe"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    const-string v3, "#CMAS#Severe"

    invoke-virtual {p1, v3}, Landroid/telephony/SmsMessage;->setCMASAddress(Ljava/lang/String;)V

    goto :goto_0

    .line 485
    :cond_3
    const/16 v3, 0x1003

    if-ne v3, v1, :cond_4

    .line 486
    const-string v3, "address"

    const-string v4, "#CMAS#Amber"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const-string v3, "#CMAS#Amber"

    invoke-virtual {p1, v3}, Landroid/telephony/SmsMessage;->setCMASAddress(Ljava/lang/String;)V

    goto :goto_0

    .line 490
    :cond_4
    const-string v3, "address"

    const-string v4, "#CMAS#Test"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    const-string v3, "#CMAS#Test"

    invoke-virtual {p1, v3}, Landroid/telephony/SmsMessage;->setCMASAddress(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getTmoServiceCategory(I)Ljava/lang/String;
    .locals 4
    .parameter "msgId"

    .prologue
    .line 1362
    const-string v1, "Mms/CmasReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "messageIdentifier "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1363
    const-string v0, ""

    .line 1364
    .local v0, mAddress:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 1396
    :goto_0
    const-string v1, "Mms/CmasReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFromAddress() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    return-object v0

    .line 1366
    :pswitch_0
    const-string v0, "Presidential Alert"

    .line 1367
    goto :goto_0

    .line 1370
    :pswitch_1
    const-string v0, "Imminent extreme alert"

    .line 1371
    goto :goto_0

    .line 1378
    :pswitch_2
    const-string v0, "Imminent severe alert"

    .line 1379
    goto :goto_0

    .line 1381
    :pswitch_3
    const-string v0, "AMBER Alert"

    .line 1382
    goto :goto_0

    .line 1384
    :pswitch_4
    const-string v0, "RMT Alert"

    .line 1385
    goto :goto_0

    .line 1387
    :pswitch_5
    const-string v0, "Exercise Alert"

    .line 1388
    goto :goto_0

    .line 1390
    :pswitch_6
    const-string v0, "Operator Specific"

    .line 1391
    goto :goto_0

    .line 1393
    :pswitch_7
    const-string v0, "Other Alerts"

    goto :goto_0

    .line 1364
    :pswitch_data_0
    .packed-switch 0x1112
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private handlScptReceived(Landroid/content/Intent;I)V
    .locals 12
    .parameter "intent"
    .parameter "error"

    .prologue
    const/4 v11, 0x1

    .line 871
    const-string v0, "Mms/CmasReceiverService"

    const-string v9, "SMS SCPT RECEIVED ACTION Handle"

    invoke-static {v0, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v7

    .line 874
    .local v7, msgs:[Landroid/telephony/SmsMessage;
    const/4 v0, 0x0

    aget-object v8, v7, v0

    .line 876
    .local v8, sms:Landroid/telephony/SmsMessage;
    if-nez v8, :cond_1

    .line 877
    const-string v0, "Mms/CmasReceiverService"

    const-string v9, "NULL SMS RECEIVED"

    invoke-static {v0, v9}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    :cond_0
    :goto_0
    return-void

    .line 881
    :cond_1
    const-string v0, "Mms/CmasReceiverService"

    const-string v9, "handleSmsReceived: CMAS = TRUE"

    invoke-static {v0, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    invoke-virtual {v8}, Landroid/telephony/SmsMessage;->getScptCategory()I

    move-result v6

    .line 885
    .local v6, ScptCategory:I
    invoke-virtual {v8}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    .line 891
    .local v5, OriginatingAddress:Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 893
    .local v3, sharedpref:Landroid/content/SharedPreferences;
    const/4 v2, 0x1

    .line 894
    .local v2, bTemp:Z
    const/4 v4, 0x0

    .line 896
    .local v4, key_string:Ljava/lang/String;
    const-string v0, "Mms/CmasReceiverService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleSmsReceived: Category = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    const/16 v0, 0x1001

    if-ne v0, v6, :cond_3

    .line 899
    const-string v4, "#cmas#type##extreme#enabled"

    .line 900
    invoke-interface {v3, v4, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 916
    :cond_2
    :goto_1
    if-eqz v4, :cond_0

    .line 918
    invoke-virtual {v8}, Landroid/telephony/SmsMessage;->getScptOperationCode()I

    move-result v1

    .local v1, operation_code:I
    move-object v0, p0

    .line 920
    invoke-direct/range {v0 .. v6}, Lcom/android/mms/transaction/CmasReceiverService;->SetScptMessage(IZLandroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 901
    .end local v1           #operation_code:I
    :cond_3
    const/16 v0, 0x1002

    if-ne v0, v6, :cond_4

    .line 902
    const-string v4, "#cmas#type##severe#enabled"

    .line 903
    invoke-interface {v3, v4, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_1

    .line 904
    :cond_4
    const/16 v0, 0x1003

    if-ne v0, v6, :cond_5

    .line 905
    const-string v4, "#cmas#type##amber#enabled"

    .line 906
    invoke-interface {v3, v4, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_1

    .line 907
    :cond_5
    const/16 v0, 0x1004

    if-ne v0, v6, :cond_2

    .line 908
    invoke-static {}, Lcom/android/mms/MmsConfig;->getGSMCMASEnable()Z

    move-result v0

    if-ne v0, v11, :cond_6

    .line 909
    const-string v4, "#cmas#type##testmessage#enabled"

    .line 913
    :goto_2
    invoke-interface {v3, v4, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_1

    .line 911
    :cond_6
    const-string v4, "#cmas#type##test#enabled"

    goto :goto_2
.end method

.method private handleCDMACMASReceived(Landroid/content/Intent;)V
    .locals 13
    .parameter "intent"

    .prologue
    const/4 v12, 0x0

    .line 813
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v3

    .line 814
    .local v3, msgs:[Landroid/telephony/SmsMessage;
    aget-object v6, v3, v12

    .line 815
    .local v6, sms:Landroid/telephony/SmsMessage;
    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getCMASMessageID()I

    move-result v5

    .line 816
    .local v5, nMsgID:I
    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getMessageIdentifier()I

    move-result v4

    .line 818
    .local v4, nIndetifier:I
    const-string v9, "errorCode"

    invoke-virtual {p1, v9, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 820
    .local v1, error:I
    const-string v9, "Mms/CmasReceiverService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleCmasReceived: address = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    const-string v9, "Mms/CmasReceiverService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleCmasReceived nMsgID = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  nIndetifier = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    invoke-virtual {p0, v6}, Lcom/android/mms/transaction/CmasReceiverService;->checkThisAlertIsSetOn(Landroid/telephony/SmsMessage;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 829
    const-string v9, "Mms/CmasReceiverService"

    const-string v10, "handleSmsReceived: Pref not Enbaled"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    :cond_0
    :goto_0
    return-void

    .line 833
    :cond_1
    const-string v9, "Mms/CmasReceiverService"

    const-string v10, "handleSmsReceived: CMAS duplication check"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    invoke-direct {p0, p0, v3}, Lcom/android/mms/transaction/CmasReceiverService;->CheckDuplicateCDMACMAS(Landroid/content/Context;[Landroid/telephony/SmsMessage;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 835
    const-string v9, "Mms/CmasReceiverService"

    const-string v10, "handleSmsReceived: CMAS Duplicate, returning"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 839
    :cond_2
    invoke-direct {p0, p0, v3, v1}, Lcom/android/mms/transaction/CmasReceiverService;->insertMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)Landroid/net/Uri;

    move-result-object v2

    .line 841
    .local v2, messageUri:Landroid/net/Uri;
    sget-object v9, Lcom/android/mms/transaction/CmasReceiverService;->mCmasIdList:Ljava/util/Set;

    if-nez v9, :cond_3

    .line 842
    new-instance v9, Ljava/util/HashSet;

    const/4 v10, 0x4

    invoke-direct {v9, v10}, Ljava/util/HashSet;-><init>(I)V

    sput-object v9, Lcom/android/mms/transaction/CmasReceiverService;->mCmasIdList:Ljava/util/Set;

    .line 844
    :cond_3
    if-eqz v5, :cond_6

    .line 845
    sget-object v9, Lcom/android/mms/transaction/CmasReceiverService;->mCmasIdList:Ljava/util/Set;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 851
    :cond_4
    :goto_1
    if-eqz v2, :cond_0

    .line 853
    sget-boolean v9, Lcom/android/mms/transaction/CmasReceiverService;->inCall:Z

    if-nez v9, :cond_5

    .line 854
    const-string v9, "Mms/CmasReceiverService"

    const-string v10, "NOT in call"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getCMASServiceCategory()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/android/mms/transaction/CmasReceiverService;->getCDMAServiceCategory(I)Ljava/lang/String;

    move-result-object v0

    .line 858
    .local v0, categoryName:Ljava/lang/String;
    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v2, v0, v9}, Lcom/android/mms/transaction/CmasReceiverService;->showCMASDialog(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    .end local v0           #categoryName:Ljava/lang/String;
    :cond_5
    invoke-static {p0, v2}, Lcom/android/mms/transaction/MessagingNotification;->getWpmThreadId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v7

    .line 863
    .local v7, threadId:J
    invoke-static {p0, v7, v8, v12}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 864
    invoke-static {p0, v2}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryForSms(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 865
    invoke-static {p0, v2}, Lcom/android/mms/transaction/MessagingNotification;->updateAlwaysHistoryForSms(Landroid/content/Context;Landroid/net/Uri;)Z

    goto :goto_0

    .line 847
    .end local v7           #threadId:J
    :cond_6
    if-eqz v4, :cond_4

    .line 848
    sget-object v9, Lcom/android/mms/transaction/CmasReceiverService;->mCmasIdList:Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private handleCMASDialog(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 9
    .parameter "msgId"
    .parameter "cmasDialogIntent"

    .prologue
    const/4 v8, 0x1

    .line 1239
    const/4 v4, 0x0

    .line 1242
    .local v4, found:Z
    :try_start_0
    sget-object v6, Lcom/android/mms/transaction/CmasReceiverService;->cmasDataVector:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lez v6, :cond_9

    .line 1243
    sget-object v6, Lcom/android/mms/transaction/CmasReceiverService;->cmasDataVector:Ljava/util/Vector;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;

    .line 1245
    .local v1, data:Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCDMADisplayLatestEnable()Z

    move-result v6

    if-ne v6, v8, :cond_2

    .line 1246
    sget-object v6, Lcom/android/mms/transaction/CmasReceiverService;->cmasDataVector:Ljava/util/Vector;

    new-instance v7, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;

    invoke-direct {v7, p0, p1, p2}, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;-><init>(Lcom/android/mms/transaction/CmasReceiverService;Ljava/lang/String;Landroid/content/Intent;)V

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 1247
    invoke-static {}, Lcom/android/mms/MmsConfig;->isKORCMASFeatureEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1248
    invoke-static {}, Lcom/android/mms/ui/CMASDialog;->getInstance()Lcom/android/mms/ui/CMASDialog;

    move-result-object v2

    .line 1249
    .local v2, dialog:Lcom/android/mms/ui/CMASDialog;
    if-eqz v2, :cond_0

    .line 1250
    const/4 v6, 0x1

    iput-boolean v6, v2, Lcom/android/mms/ui/CMASDialog;->mDialogHandled:Z

    .line 1251
    invoke-virtual {v2}, Lcom/android/mms/ui/CMASDialog;->dismissDialogForPriority()V

    .line 1252
    invoke-virtual {p0, p2}, Lcom/android/mms/transaction/CmasReceiverService;->startActivity(Landroid/content/Intent;)V

    .line 1313
    .end local v1           #data:Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;
    .end local v2           #dialog:Lcom/android/mms/ui/CMASDialog;
    :cond_0
    :goto_0
    return-void

    .line 1255
    .restart local v1       #data:Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;
    :cond_1
    invoke-static {}, Lcom/android/mms/ui/CMASDialog_single_top;->getInstance()Lcom/android/mms/ui/CMASDialog_single_top;

    move-result-object v2

    .line 1256
    .local v2, dialog:Lcom/android/mms/ui/CMASDialog_single_top;
    if-eqz v2, :cond_0

    .line 1257
    const/4 v6, 0x1

    iput-boolean v6, v2, Lcom/android/mms/ui/CMASDialog_single_top;->mDialogHandled:Z

    .line 1258
    invoke-virtual {v2}, Lcom/android/mms/ui/CMASDialog_single_top;->dismissDialogForPriority()V

    .line 1259
    invoke-virtual {p0, p2}, Lcom/android/mms/transaction/CmasReceiverService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1309
    .end local v1           #data:Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;
    .end local v2           #dialog:Lcom/android/mms/ui/CMASDialog_single_top;
    :catch_0
    move-exception v3

    .line 1310
    .local v3, e:Ljava/lang/Exception;
    const-string v6, "Mms/CmasReceiverService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error in creating CMAS dialog "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1263
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v1       #data:Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;
    :cond_2
    :try_start_1
    const-string v6, "Presidential Alert"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1264
    iget-object v6, v1, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;->msgId:Ljava/lang/String;

    const-string v7, "Presidential Alert"

    if-eq v6, v7, :cond_4

    .line 1265
    invoke-static {}, Lcom/android/mms/ui/CMASDialog;->getInstance()Lcom/android/mms/ui/CMASDialog;

    move-result-object v2

    .line 1266
    .local v2, dialog:Lcom/android/mms/ui/CMASDialog;
    if-eqz v2, :cond_3

    .line 1267
    const/4 v6, 0x1

    iput-boolean v6, v2, Lcom/android/mms/ui/CMASDialog;->mDialogHandled:Z

    .line 1268
    invoke-virtual {v2}, Lcom/android/mms/ui/CMASDialog;->dismissDialogForPriority()V

    .line 1270
    :cond_3
    sget-object v6, Lcom/android/mms/transaction/CmasReceiverService;->cmasDataVector:Ljava/util/Vector;

    new-instance v7, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;

    invoke-direct {v7, p0, p1, p2}, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;-><init>(Lcom/android/mms/transaction/CmasReceiverService;Ljava/lang/String;Landroid/content/Intent;)V

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 1271
    invoke-virtual {p0, p2}, Lcom/android/mms/transaction/CmasReceiverService;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1273
    .end local v2           #dialog:Lcom/android/mms/ui/CMASDialog;
    :cond_4
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    sget-object v6, Lcom/android/mms/transaction/CmasReceiverService;->cmasDataVector:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 1274
    sget-object v6, Lcom/android/mms/transaction/CmasReceiverService;->cmasDataVector:Ljava/util/Vector;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;

    .line 1275
    .local v0, cmasData:Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;
    iget-object v6, v0, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;->msgId:Ljava/lang/String;

    const-string v7, "Presidential Alert"

    if-eq v6, v7, :cond_7

    .line 1276
    const/4 v4, 0x1

    .line 1277
    sget-object v6, Lcom/android/mms/transaction/CmasReceiverService;->cmasDataVector:Ljava/util/Vector;

    new-instance v7, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;

    invoke-direct {v7, p0, p1, p2}, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;-><init>(Lcom/android/mms/transaction/CmasReceiverService;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {v6, v7, v5}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 1282
    .end local v0           #cmasData:Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;
    :cond_5
    if-nez v4, :cond_6

    .line 1283
    sget-object v6, Lcom/android/mms/transaction/CmasReceiverService;->cmasDataVector:Ljava/util/Vector;

    new-instance v7, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;

    invoke-direct {v7, p0, p1, p2}, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;-><init>(Lcom/android/mms/transaction/CmasReceiverService;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {v6, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1285
    :cond_6
    invoke-static {}, Lcom/android/mms/ui/CMASDialog;->getInstance()Lcom/android/mms/ui/CMASDialog;

    move-result-object v2

    .line 1287
    .restart local v2       #dialog:Lcom/android/mms/ui/CMASDialog;
    if-eqz v2, :cond_0

    .line 1288
    const/4 v6, 0x1

    iput-boolean v6, v2, Lcom/android/mms/ui/CMASDialog;->mDialogHandled:Z

    .line 1289
    invoke-virtual {v2}, Lcom/android/mms/ui/CMASDialog;->dismissDialogForPriority()V

    .line 1290
    iget-object v6, v1, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v6}, Lcom/android/mms/transaction/CmasReceiverService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1273
    .end local v2           #dialog:Lcom/android/mms/ui/CMASDialog;
    .restart local v0       #cmasData:Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1295
    .end local v0           #cmasData:Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;
    .end local v5           #i:I
    :cond_8
    sget-object v6, Lcom/android/mms/transaction/CmasReceiverService;->cmasDataVector:Ljava/util/Vector;

    new-instance v7, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;

    invoke-direct {v7, p0, p1, p2}, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;-><init>(Lcom/android/mms/transaction/CmasReceiverService;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {v6, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1297
    invoke-static {}, Lcom/android/mms/ui/CMASDialog;->getInstance()Lcom/android/mms/ui/CMASDialog;

    move-result-object v2

    .line 1298
    .restart local v2       #dialog:Lcom/android/mms/ui/CMASDialog;
    if-eqz v2, :cond_0

    .line 1299
    const/4 v6, 0x1

    iput-boolean v6, v2, Lcom/android/mms/ui/CMASDialog;->mDialogHandled:Z

    .line 1300
    invoke-virtual {v2}, Lcom/android/mms/ui/CMASDialog;->dismissDialogForPriority()V

    .line 1301
    iget-object v6, v1, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v6}, Lcom/android/mms/transaction/CmasReceiverService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1306
    .end local v1           #data:Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;
    .end local v2           #dialog:Lcom/android/mms/ui/CMASDialog;
    :cond_9
    sget-object v6, Lcom/android/mms/transaction/CmasReceiverService;->cmasDataVector:Ljava/util/Vector;

    new-instance v7, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;

    invoke-direct {v7, p0, p1, p2}, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;-><init>(Lcom/android/mms/transaction/CmasReceiverService;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {v6, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1307
    invoke-virtual {p0, p2}, Lcom/android/mms/transaction/CmasReceiverService;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private handleGSMCMASReceived(Landroid/content/Intent;)V
    .locals 12
    .parameter "intent"

    .prologue
    .line 753
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 754
    .local v2, extras:Landroid/os/Bundle;
    if-nez v2, :cond_1

    .line 755
    const-string v9, "Mms/CmasReceiverService"

    const-string v10, "received SMS_CB_RECEIVED_ACTION with no extras!"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    :cond_0
    :goto_0
    return-void

    .line 759
    :cond_1
    const-string v9, "message"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SmsCbMessage;

    .line 760
    .local v3, message:Landroid/telephony/SmsCbMessage;
    if-nez v3, :cond_2

    .line 761
    const-string v9, "Mms/CmasReceiverService"

    const-string v10, "received SMS_CB_RECEIVED_ACTION with no message extra"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 765
    :cond_2
    invoke-virtual {v3}, Landroid/telephony/SmsCbMessage;->getServiceCategory()I

    move-result v6

    .line 766
    .local v6, serviceCategory:I
    invoke-direct {p0, v6}, Lcom/android/mms/transaction/CmasReceiverService;->checkForSettings(I)Z

    move-result v9

    if-nez v9, :cond_3

    .line 767
    const-string v9, "Mms/CmasReceiverService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ignoring alert of type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " by user preference"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 771
    :cond_3
    const-string v9, "Mms/CmasReceiverService"

    const-string v10, "handleSmsReceived: CMAS duplication check"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    invoke-virtual {v3}, Landroid/telephony/SmsCbMessage;->getSerialNumber()I

    move-result v5

    .line 773
    .local v5, serialNumber:I
    invoke-direct {p0, p0, v6, v5}, Lcom/android/mms/transaction/CmasReceiverService;->CheckDuplicateGSMCMAS(Landroid/content/Context;II)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 774
    const-string v9, "Mms/CmasReceiverService"

    const-string v10, "handleSmsReceived: CMAS Duplicate, returning"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 778
    :cond_4
    invoke-virtual {v3}, Landroid/telephony/SmsCbMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v6, v5, v9}, Lcom/android/mms/transaction/CmasReceiverService;->storeGSMCMASData(IILjava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 779
    .local v4, messageUri:Landroid/net/Uri;
    if-eqz v4, :cond_0

    .line 780
    sget-boolean v9, Lcom/android/mms/transaction/CmasReceiverService;->inCall:Z

    if-nez v9, :cond_5

    .line 781
    const-string v9, "Mms/CmasReceiverService"

    const-string v10, "NOT in call"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    const/4 v0, 0x0

    .line 783
    .local v0, alertIdentifier:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getmCmasMessageTMOMenuTextFeature()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 784
    invoke-static {v6}, Lcom/android/mms/transaction/CmasReceiverService;->getTmoServiceCategory(I)Ljava/lang/String;

    move-result-object v0

    .line 796
    :goto_1
    invoke-virtual {v3}, Landroid/telephony/SmsCbMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v4, v0, v9}, Lcom/android/mms/transaction/CmasReceiverService;->showCMASDialog(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    .end local v0           #alertIdentifier:Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->isTMOCMASFeatureEnabled()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 800
    const/4 v9, -0x1

    invoke-static {v9}, Lcom/android/mms/transaction/CmasAlarmReceiver;->setReminderCount(I)V

    .line 803
    :cond_6
    invoke-static {p0, v4}, Lcom/android/mms/transaction/MessagingNotification;->getWpmThreadId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v7

    .line 805
    .local v7, threadId:J
    const/4 v9, 0x0

    invoke-static {p0, v7, v8, v9}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 806
    invoke-static {p0, v4}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryForSms(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 807
    invoke-static {p0, v4}, Lcom/android/mms/transaction/MessagingNotification;->updateAlwaysHistoryForSms(Landroid/content/Context;Landroid/net/Uri;)Z

    goto/16 :goto_0

    .line 785
    .end local v7           #threadId:J
    .restart local v0       #alertIdentifier:Ljava/lang/String;
    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->isKORCMASFeatureEnabled()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 786
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 788
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCdmaCmasOverLte()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 789
    invoke-direct {p0, v6}, Lcom/android/mms/transaction/CmasReceiverService;->convertGsmServiceGategoryToCdma(I)I

    move-result v1

    .line 790
    .local v1, cdmaServiceCategory:I
    invoke-virtual {p0, v1}, Lcom/android/mms/transaction/CmasReceiverService;->getCDMAServiceCategory(I)Ljava/lang/String;

    move-result-object v0

    .line 791
    goto :goto_1

    .line 792
    .end local v1           #cdmaServiceCategory:I
    :cond_9
    invoke-static {v6}, Lcom/android/mms/transaction/CmasReceiverService;->getServiceCategory(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private insertMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)Landroid/net/Uri;
    .locals 2
    .parameter "context"
    .parameter "msgs"
    .parameter "error"

    .prologue
    .line 243
    const-string v0, "Mms/CmasReceiverService"

    const-string v1, "insertMessage()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/CmasReceiverService;->storeMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static isAmberAlertActive(Landroid/content/SharedPreferences;)Z
    .locals 5
    .parameter "prefs"

    .prologue
    .line 1076
    const/4 v0, 0x0

    .line 1078
    .local v0, amber:Z
    :try_start_0
    const-string v2, "#cmas#type##amber#enabled"

    const/4 v3, 0x1

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1083
    :goto_0
    const-string v2, "Mms/CmasReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "amber settings "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    return v0

    .line 1079
    :catch_0
    move-exception v1

    .line 1080
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isCLASS1AlertActive(Landroid/content/SharedPreferences;)Z
    .locals 4
    .parameter "prefs"

    .prologue
    .line 1039
    const/4 v0, 0x0

    .line 1040
    .local v0, CLASS1:Z
    const-string v1, "pref_cmas_receive_class1"

    const/4 v2, 0x1

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1041
    const-string v1, "Mms/CmasReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CLASS1 settings "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    return v0
.end method

.method public static isCmasMessage(I)Z
    .locals 1
    .parameter "msgId"

    .prologue
    .line 1047
    const/16 v0, 0x1112

    if-lt p0, v0, :cond_0

    const/16 v0, 0x111f

    if-gt p0, v0, :cond_0

    .line 1048
    const/4 v0, 0x1

    .line 1050
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isExtremeAlertActive(Landroid/content/SharedPreferences;)Z
    .locals 5
    .parameter "prefs"

    .prologue
    .line 1054
    const/4 v1, 0x0

    .line 1056
    .local v1, extreme:Z
    :try_start_0
    const-string v2, "#cmas#type##extreme#enabled"

    const/4 v3, 0x1

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1060
    :goto_0
    const-string v2, "Mms/CmasReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extreme settings "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    return v1

    .line 1057
    :catch_0
    move-exception v0

    .line 1058
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isRMT_ExerciseAlertActive(Landroid/content/SharedPreferences;)Z
    .locals 5
    .parameter "prefs"

    .prologue
    .line 1088
    const/4 v1, 0x0

    .line 1090
    .local v1, rmt_exercise:Z
    :try_start_0
    const-string v2, "#cmas#type##exercise#enabled"

    const/4 v3, 0x0

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1094
    :goto_0
    const-string v2, "Mms/CmasReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rmt_exercise settings "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    return v1

    .line 1091
    :catch_0
    move-exception v0

    .line 1092
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isReservedCmasmessage(I)Z
    .locals 4
    .parameter "msgId"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1023
    const v2, 0xa000

    if-lt p0, v2, :cond_0

    const v2, 0xafff

    if-gt p0, v2, :cond_0

    .line 1024
    const-string v1, "Mms/CmasReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KOR : isReservedCmasmessage() : msgId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    :goto_0
    return v0

    .line 1027
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    const/16 v2, 0x111c

    if-ne p0, v2, :cond_1

    .line 1028
    const-string v1, "Mms/CmasReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SKT : isReservedCmasmessage() : msgId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1032
    :cond_1
    const-string v0, "Mms/CmasReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KOR : isReservedCmasmessage() : msgId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1033
    goto :goto_0
.end method

.method public static isSeverityAlertActive(Landroid/content/SharedPreferences;)Z
    .locals 5
    .parameter "prefs"

    .prologue
    .line 1065
    const/4 v1, 0x0

    .line 1067
    .local v1, severity:Z
    :try_start_0
    const-string v2, "#cmas#type##severe#enabled"

    const/4 v3, 0x1

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1071
    :goto_0
    const-string v2, "Mms/CmasReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "severity settings "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    return v1

    .line 1068
    :catch_0
    move-exception v0

    .line 1069
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private launchMessage()V
    .locals 5

    .prologue
    .line 1519
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1520
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1521
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1522
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.mms"

    const-string v4, "com.android.mms.ui.ConversationComposer"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1525
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/mms/transaction/CmasReceiverService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1529
    :goto_0
    return-void

    .line 1526
    :catch_0
    move-exception v0

    .line 1527
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static removeCmasdialog()V
    .locals 1

    .prologue
    .line 1536
    sget-object v0, Lcom/android/mms/transaction/CmasReceiverService;->cmasDataVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1540
    :goto_0
    return-void

    .line 1539
    :cond_0
    sget-object v0, Lcom/android/mms/transaction/CmasReceiverService;->cmasDataVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    goto :goto_0
.end method

.method private showCMASDialog(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "messageUri"
    .parameter "AlertIdentifier"
    .parameter "msgBody"

    .prologue
    const/4 v5, 0x1

    .line 1162
    invoke-virtual {p0}, Lcom/android/mms/transaction/CmasReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1163
    .local v2, sp:Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    const-string v3, "pref_key_enable_notifications"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "Presidential Alert"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1208
    :goto_0
    return-void

    .line 1171
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isKORCMASFeatureEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1172
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/android/mms/ui/CMASDialog;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1173
    .local v0, cmasDialogIntent:Landroid/content/Intent;
    const-string v3, "msgIdentifier"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1174
    const-string v3, "body"

    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1175
    const-string v3, "cmas_message_uri"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1176
    const/high16 v3, 0x1800

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1178
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/mms/ui/CMASDialog;->sIsCMASDialogActivityAlive:Z

    .line 1179
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasMessagePriorityCheckFeature()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1180
    invoke-direct {p0, p2, v0}, Lcom/android/mms/transaction/CmasReceiverService;->handleCMASDialog(Ljava/lang/String;Landroid/content/Intent;)V

    .line 1203
    :goto_1
    const-string v3, "Mms/CmasReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showCMASDialog, msgId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", msgBody="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1204
    .end local v0           #cmasDialogIntent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 1205
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "Mms/CmasReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error in creating CMAS dialog "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1182
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #cmasDialogIntent:Landroid/content/Intent;
    :cond_1
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/CmasReceiverService;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 1186
    .end local v0           #cmasDialogIntent:Landroid/content/Intent;
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/android/mms/ui/CMASDialog_single_top;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1187
    .restart local v0       #cmasDialogIntent:Landroid/content/Intent;
    const-string v3, "msgIdentifier"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1188
    const-string v3, "body"

    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1189
    const-string v3, "cmas_message_uri"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1190
    const/high16 v3, 0x3000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1192
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/mms/ui/CMASDialog;->sIsCMASDialogActivityAlive:Z

    .line 1193
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasMessagePriorityCheckFeature()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1194
    invoke-direct {p0, p2, v0}, Lcom/android/mms/transaction/CmasReceiverService;->handleCMASDialog(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_1

    .line 1196
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/CmasReceiverService;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static showCMASDialogAgain(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 1231
    const-string v0, "Mms/CmasReceiverService"

    const-string v1, "showCMASDialogAgain"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    sget-object v0, Lcom/android/mms/transaction/CmasReceiverService;->cmasDataVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1233
    sget-object v0, Lcom/android/mms/transaction/CmasReceiverService;->cmasDataVector:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;

    iget-object v0, v0, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1235
    :cond_0
    return-void
.end method

.method public static showNextCMASDialog(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 1222
    sget-object v0, Lcom/android/mms/transaction/CmasReceiverService;->cmasDataVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1223
    sget-object v0, Lcom/android/mms/transaction/CmasReceiverService;->cmasDataVector:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 1224
    :cond_0
    sget-object v0, Lcom/android/mms/transaction/CmasReceiverService;->cmasDataVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1225
    sget-object v0, Lcom/android/mms/transaction/CmasReceiverService;->cmasDataVector:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;

    iget-object v0, v0, Lcom/android/mms/transaction/CmasReceiverService$CmasDialogData;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1227
    :cond_1
    return-void
.end method

.method private storeCMASMessage(Landroid/content/Context;JLandroid/content/ContentValues;II)Landroid/net/Uri;
    .locals 8
    .parameter "context"
    .parameter "threadId"
    .parameter "smsContentValues"
    .parameter "serviceCategory"
    .parameter "serialNumber"

    .prologue
    .line 1428
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, v5, v6, p4}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 1431
    .local v3, messageUri:Landroid/net/Uri;
    const/4 v2, 0x0

    .line 1432
    .local v2, insertedCmasUri:Landroid/net/Uri;
    if-eqz v3, :cond_1

    .line 1433
    invoke-direct {p0, v3}, Lcom/android/mms/transaction/CmasReceiverService;->getInsertedSmsID(Landroid/net/Uri;)I

    move-result v4

    .line 1436
    .local v4, smsId:I
    new-instance v0, Landroid/content/ContentValues;

    const/16 v5, 0x9

    invoke-direct {v0, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 1437
    .local v0, cmasContentValues:Landroid/content/ContentValues;
    const-string v5, "sms_id"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1438
    const-string v5, "thread_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1439
    const-string v5, "service_category"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1440
    const-string v5, "identifier"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1442
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCdmaCmasOverLte()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1443
    invoke-direct {p0, p5, v0}, Lcom/android/mms/transaction/CmasReceiverService;->fillRecordTypeFirst(ILandroid/content/ContentValues;)V

    .line 1447
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Telephony$Cmas;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, v5, v6, v0}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1458
    .end local v0           #cmasContentValues:Landroid/content/ContentValues;
    .end local v3           #messageUri:Landroid/net/Uri;
    .end local v4           #smsId:I
    :goto_0
    return-object v3

    .line 1449
    .restart local v0       #cmasContentValues:Landroid/content/ContentValues;
    .restart local v3       #messageUri:Landroid/net/Uri;
    .restart local v4       #smsId:I
    :catch_0
    move-exception v1

    .line 1450
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {p0}, Lcom/android/mms/transaction/CmasReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0

    .line 1453
    .end local v0           #cmasContentValues:Landroid/content/ContentValues;
    .end local v1           #e:Landroid/database/sqlite/SQLiteException;
    .end local v4           #smsId:I
    :cond_1
    const-string v5, "Mms/CmasReceiverService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "messageUri is null, can not insert Cmas data"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1455
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private storeGSMCMASData(IILjava/lang/String;)Landroid/net/Uri;
    .locals 12
    .parameter "serviceCategory"
    .parameter "serialNumber"
    .parameter "msgBody"

    .prologue
    .line 1118
    const-string v0, "DEBUG"

    const-string v1, "storeGSMCMASData"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    const/4 v7, 0x0

    .line 1120
    .local v7, address:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCdmaCmasOverLte()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1121
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/CmasReceiverService;->convertGsmServiceGategoryToCdma(I)I

    move-result v9

    .line 1122
    .local v9, cdmaServiceCategory:I
    invoke-direct {p0, v9}, Lcom/android/mms/transaction/CmasReceiverService;->getCmasAddress(I)Ljava/lang/String;

    move-result-object v7

    .line 1125
    .end local v9           #cdmaServiceCategory:I
    :cond_0
    new-instance v4, Landroid/content/ContentValues;

    const/4 v0, 0x5

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 1126
    .local v4, smsContentValues:Landroid/content/ContentValues;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1127
    new-instance v7, Ljava/lang/String;

    .end local v7           #address:Ljava/lang/String;
    const-string v0, "#CMAS#CMASALL"

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1130
    .restart local v7       #address:Ljava/lang/String;
    :cond_1
    const-wide/16 v2, 0x0

    .line 1131
    .local v2, threadId:J
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1132
    invoke-static {p0, v7}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    .line 1133
    const-string v0, "thread_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1134
    const-string v0, "address"

    invoke-virtual {v4, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    :cond_2
    :try_start_0
    const-string v0, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1139
    const-string v0, "read"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1141
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCdmaCmasOverLte()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x1112

    if-eq p1, v0, :cond_3

    .line 1143
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1144
    .local v8, body:Ljava/lang/StringBuilder;
    const/16 v0, 0xa

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1145
    const v0, 0x7f0c01f5

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/CmasReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1146
    const-string v0, " "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1147
    const v0, 0x7f0c01e5

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/CmasReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1148
    const-string v0, "body"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v8           #body:Ljava/lang/StringBuilder;
    :goto_0
    move-object v0, p0

    move-object v1, p0

    move v5, p1

    move v6, p2

    .line 1156
    invoke-direct/range {v0 .. v6}, Lcom/android/mms/transaction/CmasReceiverService;->storeCMASMessage(Landroid/content/Context;JLandroid/content/ContentValues;II)Landroid/net/Uri;

    move-result-object v11

    .line 1157
    .local v11, messageUri:Landroid/net/Uri;
    return-object v11

    .line 1150
    .end local v11           #messageUri:Landroid/net/Uri;
    :cond_3
    :try_start_1
    const-string v0, "body"

    invoke-virtual {v4, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1152
    :catch_0
    move-exception v10

    .line 1153
    .local v10, e:Ljava/lang/Exception;
    const-string v0, "Mms/CmasReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private storeMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)Landroid/net/Uri;
    .locals 35
    .parameter "context"
    .parameter "msgs"
    .parameter "error"

    .prologue
    .line 286
    const-string v31, "Mms/CmasReceiverService"

    const-string v32, "storeMessage()"

    invoke-static/range {v31 .. v32}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const/16 v31, 0x0

    aget-object v27, p2, v31

    .line 289
    .local v27, sms:Landroid/telephony/SmsMessage;
    const/16 v20, 0x0

    .line 293
    .local v20, not_supported_port_message:Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    .local v5, body:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/CmasReceiverService;->getSmsAddressValues(Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;

    move-result-object v29

    .line 295
    .local v29, smscontentvalues:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/CmasReceiverService;->extractCmasContentValues(Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;

    move-result-object v8

    .line 297
    .local v8, cmascontentvalues:Landroid/content/ContentValues;
    const-string v31, "error_code"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 298
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v21, v0

    .line 301
    .local v21, pduCount:I
    invoke-virtual/range {v27 .. v27}, Landroid/telephony/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v15

    .line 303
    .local v15, header:Lcom/android/internal/telephony/SmsHeader;
    if-eqz v15, :cond_1

    iget-object v0, v15, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    move-object/from16 v31, v0

    if-eqz v31, :cond_1

    .line 304
    iget-object v0, v15, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    move/from16 v22, v0

    .line 305
    .local v22, port:I
    const/16 v31, 0x1580

    move/from16 v0, v22

    move/from16 v1, v31

    if-eq v0, v1, :cond_0

    const/16 v31, 0x1581

    move/from16 v0, v22

    move/from16 v1, v31

    if-eq v0, v1, :cond_0

    const/16 v31, 0x1582

    move/from16 v0, v22

    move/from16 v1, v31

    if-eq v0, v1, :cond_0

    const/16 v31, 0x1583

    move/from16 v0, v22

    move/from16 v1, v31

    if-eq v0, v1, :cond_0

    const/16 v31, 0x1585

    move/from16 v0, v22

    move/from16 v1, v31

    if-eq v0, v1, :cond_0

    const/16 v31, 0x1586

    move/from16 v0, v22

    move/from16 v1, v31

    if-eq v0, v1, :cond_0

    const/16 v31, 0x1589

    move/from16 v0, v22

    move/from16 v1, v31

    if-eq v0, v1, :cond_0

    const/16 v31, 0x158a

    move/from16 v0, v22

    move/from16 v1, v31

    if-eq v0, v1, :cond_0

    const/16 v31, 0x15e1

    move/from16 v0, v22

    move/from16 v1, v31

    if-eq v0, v1, :cond_0

    const/16 v31, 0x15e3

    move/from16 v0, v22

    move/from16 v1, v31

    if-eq v0, v1, :cond_0

    const/16 v31, 0x2134

    move/from16 v0, v22

    move/from16 v1, v31

    if-eq v0, v1, :cond_0

    const/16 v31, 0x2135

    move/from16 v0, v22

    move/from16 v1, v31

    if-eq v0, v1, :cond_0

    const/16 v31, 0x2136

    move/from16 v0, v22

    move/from16 v1, v31

    if-ne v0, v1, :cond_8

    .line 311
    :cond_0
    const-string v31, "<<"

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    const v31, 0x7f0c011a

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/CmasReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    const-string v31, ">>\n"

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    const/16 v20, 0x1

    .line 322
    .end local v22           #port:I
    :cond_1
    if-nez v20, :cond_2

    .line 323
    const/16 v31, 0x1

    move/from16 v0, v21

    move/from16 v1, v31

    if-ne v0, v1, :cond_a

    .line 324
    invoke-virtual/range {v27 .. v27}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v19

    .line 326
    .local v19, msgBody:Ljava/lang/String;
    if-nez v19, :cond_9

    .line 328
    const-string v31, "<<"

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    const v31, 0x7f0c011a

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/CmasReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    const-string v31, ">>\n"

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .end local v19           #msgBody:Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-virtual/range {v27 .. v27}, Landroid/telephony/SmsMessage;->getCMASServiceCategory()I

    move-result v31

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/CmasReceiverService;->getCDMAServiceCategory(I)Ljava/lang/String;

    move-result-object v26

    .line 345
    .local v26, sServicName:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v31

    const/16 v32, 0x4

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_3

    if-eqz v26, :cond_3

    const-string v31, "Presidential Alert"

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_3

    .line 349
    const-wide/16 v31, 0x0

    invoke-virtual/range {v27 .. v27}, Landroid/telephony/SmsMessage;->getCMASMsgExpires()J

    move-result-wide v33

    cmp-long v31, v31, v33

    if-eqz v31, :cond_b

    .line 350
    invoke-virtual/range {v27 .. v27}, Landroid/telephony/SmsMessage;->getCMASMsgExpires()J

    move-result-wide v23

    .line 352
    .local v23, recMillis:J
    new-instance v9, Landroid/text/format/Time;

    invoke-direct {v9}, Landroid/text/format/Time;-><init>()V

    .line 353
    .local v9, curDate:Landroid/text/format/Time;
    const-wide/16 v12, 0x0

    .line 354
    .local v12, finalTime:J
    move-wide/from16 v0, v23

    invoke-virtual {v9, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 355
    move-wide/from16 v12, v23

    .line 357
    new-instance v14, Ljava/text/SimpleDateFormat;

    const-string v31, "MMM dd, yyyy, h:mmaa"

    move-object/from16 v0, v31

    invoke-direct {v14, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 358
    .local v14, formatter1:Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 359
    .local v7, calendar1:Ljava/util/Calendar;
    invoke-virtual {v7, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 360
    const-string v31, "Mms/CmasReceiverService"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v14, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const/16 v31, 0xa

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 363
    const/16 v31, 0xa

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 364
    const v31, 0x7f0c01f5

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/CmasReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    const-string v31, " "

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v14, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .end local v7           #calendar1:Ljava/util/Calendar;
    .end local v9           #curDate:Landroid/text/format/Time;
    .end local v12           #finalTime:J
    .end local v14           #formatter1:Ljava/text/SimpleDateFormat;
    .end local v23           #recMillis:J
    :cond_3
    :goto_1
    const-string v31, "body"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/android/mms/transaction/SmsReceiverService;->FilterCLRF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string v31, "thread_id"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v30

    .line 384
    .local v30, threadId:Ljava/lang/Long;
    const-string v31, "address"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 386
    .local v4, address:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_c

    .line 387
    const/16 v31, 0x1

    move/from16 v0, v31

    invoke-static {v4, v0}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v6

    .line 388
    .local v6, cacheContact:Lcom/android/mms/data/Contact;
    if-eqz v6, :cond_4

    .line 389
    invoke-virtual {v6}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    .line 395
    .end local v6           #cacheContact:Lcom/android/mms/data/Contact;
    :cond_4
    :goto_2
    if-eqz v30, :cond_5

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Long;->longValue()J

    move-result-wide v31

    const-wide/16 v33, 0x0

    cmp-long v31, v31, v33

    if-nez v31, :cond_6

    :cond_5
    if-eqz v4, :cond_6

    .line 396
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    .line 397
    const-string v31, "thread_id"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 400
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    .line 402
    .local v25, resolver:Landroid/content/ContentResolver;
    const/16 v18, 0x0

    .line 405
    .local v18, insertedSmsUri:Landroid/net/Uri;
    :try_start_0
    sget-object v31, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v31

    move-object/from16 v3, v29

    invoke-static {v0, v1, v2, v3}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 412
    :goto_3
    const/16 v17, 0x0

    .line 414
    .local v17, insertedCmasUri:Landroid/net/Uri;
    if-eqz v18, :cond_d

    .line 415
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/CmasReceiverService;->getInsertedSmsID(Landroid/net/Uri;)I

    move-result v28

    .line 418
    .local v28, smsId:I
    const-string v31, "sms_id"

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 419
    const-string v31, "thread_id"

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 421
    :try_start_1
    sget-object v31, Landroid/provider/Telephony$Cmas;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2, v8}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v17

    .line 426
    :goto_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v31

    const/16 v32, 0x4

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_7

    invoke-virtual/range {v27 .. v27}, Landroid/telephony/SmsMessage;->getCMASMsgExpires()J

    move-result-wide v31

    const-wide/16 v33, 0x0

    cmp-long v31, v31, v33

    if-eqz v31, :cond_7

    if-eqz v17, :cond_7

    const-string v31, "expired"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_7

    .line 429
    const-string v31, "expired"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 430
    .local v11, expired:I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v11}, Lcom/android/mms/transaction/CmasReceiverService;->updateCmasExpired(Landroid/content/Context;Landroid/net/Uri;I)V

    .line 437
    .end local v11           #expired:I
    :cond_7
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v31

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/CmasReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v32

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Long;->longValue()J

    move-result-wide v33

    invoke-virtual/range {v31 .. v34}, Lcom/android/mms/util/Recycler$SmsRecycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V

    .line 439
    .end local v4           #address:Ljava/lang/String;
    .end local v17           #insertedCmasUri:Landroid/net/Uri;
    .end local v18           #insertedSmsUri:Landroid/net/Uri;
    .end local v25           #resolver:Landroid/content/ContentResolver;
    .end local v26           #sServicName:Ljava/lang/String;
    .end local v28           #smsId:I
    .end local v30           #threadId:Ljava/lang/Long;
    :goto_5
    return-object v18

    .line 317
    .restart local v22       #port:I
    :cond_8
    const/16 v18, 0x0

    goto :goto_5

    .line 332
    .end local v22           #port:I
    .restart local v19       #msgBody:Ljava/lang/String;
    :cond_9
    invoke-virtual/range {v27 .. v27}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 337
    .end local v19           #msgBody:Ljava/lang/String;
    :cond_a
    const/16 v16, 0x0

    .local v16, i:I
    :goto_6
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    .line 338
    aget-object v27, p2, v16

    .line 339
    invoke-virtual/range {v27 .. v27}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 369
    .end local v16           #i:I
    .restart local v26       #sServicName:Ljava/lang/String;
    :cond_b
    const-string v31, "Mms/CmasReceiverService"

    const-string v32, "msgExpiry is null"

    invoke-static/range {v31 .. v32}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const/16 v31, 0xa

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 371
    const/16 v31, 0xa

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 372
    const v31, 0x7f0c01f5

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/CmasReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    const-string v31, " "

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    const v31, 0x7f0c01e5

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/CmasReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 392
    .restart local v4       #address:Ljava/lang/String;
    .restart local v30       #threadId:Ljava/lang/Long;
    :cond_c
    new-instance v4, Ljava/lang/String;

    .end local v4           #address:Ljava/lang/String;
    const-string v31, "Unknown"

    move-object/from16 v0, v31

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 393
    .restart local v4       #address:Ljava/lang/String;
    const-string v31, "address"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 406
    .restart local v18       #insertedSmsUri:Landroid/net/Uri;
    .restart local v25       #resolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v10

    .line 407
    .local v10, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/CmasReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-static {v0, v10}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto/16 :goto_3

    .line 422
    .end local v10           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v17       #insertedCmasUri:Landroid/net/Uri;
    .restart local v28       #smsId:I
    :catch_1
    move-exception v10

    .line 423
    .restart local v10       #e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/CmasReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-static {v0, v10}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto/16 :goto_4

    .line 433
    .end local v10           #e:Landroid/database/sqlite/SQLiteException;
    .end local v28           #smsId:I
    :cond_d
    const-string v31, "Mms/CmasReceiverService"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "insertedSmsUri is null, can not insert Cmas data"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const/16 v18, 0x0

    goto/16 :goto_5
.end method

.method private updateCmasExpired(Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 8
    .parameter "context"
    .parameter "cmasUri"
    .parameter "expired"

    .prologue
    .line 1627
    const-string v0, "Mms/CmasReceiverService"

    const-string v1, "UpdateExpired"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1628
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1639
    :cond_0
    :goto_0
    return-void

    .line 1632
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 1633
    .local v3, values:Landroid/content/ContentValues;
    const-string v0, "expired"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1635
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    .line 1636
    .local v6, cmasId:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1637
    .local v4, selection:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Threads;->CMAS_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 1638
    .local v7, updatedRows:I
    const-string v0, "Mms/CmasReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set expired value of cmas : id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " updatedRows="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public checkThisAlertIsSetOn(Landroid/telephony/SmsMessage;)Z
    .locals 7
    .parameter "sms"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 254
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 257
    .local v2, sharedpref:Landroid/content/SharedPreferences;
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getCMASServiceCategory()I

    move-result v1

    .line 260
    .local v1, nCmasCat:I
    const/4 v0, 0x0

    .line 261
    .local v0, bTemp:Z
    const/16 v3, 0x1000

    if-ne v3, v1, :cond_1

    .line 262
    const-string v3, "#cmas#type##presidential#enabled"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 280
    :cond_0
    :goto_0
    const-string v3, "Mms/CmasReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkThisAlertIsSetOn: Category = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is set as "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    return v0

    .line 263
    :cond_1
    const/16 v3, 0x1001

    if-ne v3, v1, :cond_2

    .line 264
    const-string v3, "#cmas#type##extreme#enabled"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    .line 265
    :cond_2
    const/16 v3, 0x1002

    if-ne v3, v1, :cond_3

    .line 266
    const-string v3, "#cmas#type##severe#enabled"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    .line 267
    :cond_3
    const/16 v3, 0x1003

    if-ne v3, v1, :cond_4

    .line 268
    const-string v3, "#cmas#type##amber#enabled"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    .line 269
    :cond_4
    const/16 v3, 0x1004

    if-ne v3, v1, :cond_7

    .line 270
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasTestMessageWithHiddenMenu()Z

    move-result v3

    if-ne v3, v5, :cond_6

    .line 271
    const-string v3, "sys.hiddenmenu.enable"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eq v5, v3, :cond_5

    invoke-static {}, Lcom/android/mms/ui/CMASPreferenceActivity;->checkHiddenMenuEnable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 272
    :cond_5
    const-string v3, "#cmas#type##test#enabled"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    .line 275
    :cond_6
    const-string v3, "#cmas#type##test#enabled"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    .line 277
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCDMAServiceCategory(I)Ljava/lang/String;
    .locals 4
    .parameter "serviceCategory"

    .prologue
    const/4 v3, 0x1

    .line 1401
    const/4 v0, 0x0

    .line 1402
    .local v0, servicName:Ljava/lang/String;
    const/16 v1, 0x1000

    if-ne v1, p1, :cond_1

    .line 1403
    const-string v0, "Presidential Alert"

    .line 1424
    :cond_0
    :goto_0
    return-object v0

    .line 1404
    :cond_1
    const/16 v1, 0x1001

    if-ne v1, p1, :cond_2

    .line 1405
    const-string v0, "Extreme Alert"

    goto :goto_0

    .line 1406
    :cond_2
    const/16 v1, 0x1002

    if-ne v1, p1, :cond_3

    .line 1407
    const-string v0, "Severe Alert"

    goto :goto_0

    .line 1408
    :cond_3
    const/16 v1, 0x1003

    if-ne v1, p1, :cond_5

    .line 1409
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 1410
    const-string v0, "Amber Alert"

    goto :goto_0

    .line 1412
    :cond_4
    const-string v0, "AMBER Alert"

    goto :goto_0

    .line 1413
    :cond_5
    const/16 v1, 0x1004

    if-ne v1, p1, :cond_8

    .line 1414
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasTestMessageWithHiddenMenu()Z

    move-result v1

    if-ne v1, v3, :cond_7

    .line 1415
    const-string v1, "sys.hiddenmenu.enable"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v3, v1, :cond_6

    invoke-static {}, Lcom/android/mms/ui/CMASPreferenceActivity;->checkHiddenMenuEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1416
    :cond_6
    const-string v0, "Emergency Test Alert"

    goto :goto_0

    .line 1419
    :cond_7
    const-string v0, "Emergency Test Alert"

    goto :goto_0

    .line 1421
    :cond_8
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 195
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 154
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "Mms/CmasReceiverService"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 155
    .local v1, thread:Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 157
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/transaction/CmasReceiverService;->mServiceLooper:Landroid/os/Looper;

    .line 158
    new-instance v2, Lcom/android/mms/transaction/CmasReceiverService$ServiceHandler;

    iget-object v3, p0, Lcom/android/mms/transaction/CmasReceiverService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v2, p0, v3}, Lcom/android/mms/transaction/CmasReceiverService$ServiceHandler;-><init>(Lcom/android/mms/transaction/CmasReceiverService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/mms/transaction/CmasReceiverService;->mServiceHandler:Lcom/android/mms/transaction/CmasReceiverService$ServiceHandler;

    .line 160
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 161
    .local v0, intentFilter:Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/mms/transaction/CmasReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/transaction/CmasReceiverService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 162
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/mms/transaction/CmasReceiverService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 172
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/mms/transaction/CmasReceiverService;->checkCallState()V

    .line 179
    iget-object v1, p0, Lcom/android/mms/transaction/CmasReceiverService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    .line 180
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/mms/transaction/CmasReceiverService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/mms/transaction/CmasReceiverService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/android/mms/transaction/CmasReceiverService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/mms/transaction/CmasReceiverService;->listener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 185
    iget-object v1, p0, Lcom/android/mms/transaction/CmasReceiverService;->mServiceHandler:Lcom/android/mms/transaction/CmasReceiverService$ServiceHandler;

    invoke-virtual {v1}, Lcom/android/mms/transaction/CmasReceiverService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 186
    .local v0, msg:Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 187
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 188
    iget-object v1, p0, Lcom/android/mms/transaction/CmasReceiverService;->mServiceHandler:Lcom/android/mms/transaction/CmasReceiverService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/mms/transaction/CmasReceiverService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 189
    const/4 v1, 0x2

    return v1
.end method
