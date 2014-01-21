.class public Lcom/android/mms/csc/CscLoader;
.super Ljava/lang/Object;
.source "CscLoader.java"


# static fields
.field private static final KEY_CSC_CELLBROADCAST:Ljava/lang/String; = "Settings.Messages.SMS.CellBroadcast"

.field private static final KEY_CSC_CELLBROADCASTCHANNEL:Ljava/lang/String; = "Settings.Messages.SMS.CellBroadcastChannel"

.field private static final KEY_CSC_CHARSUPPORT:Ljava/lang/String; = "Settings.Messages.SMS.CharSupport"

.field private static final KEY_CSC_CREATIONMODE:Ljava/lang/String; = "Settings.Messages.MMS.MmsSending.CreationMode"

.field private static final KEY_CSC_DELETEOLDMESSAGE:Ljava/lang/String; = "Settings.Messages.SMS.DeleteOldMessage"

.field private static final KEY_CSC_DELETEOLDMESSAGECNTMMS:Ljava/lang/String; = "Settings.Messages.SMS.DeleteOldMessageCntMms"

.field private static final KEY_CSC_DELETEOLDMESSAGECNTSMS:Ljava/lang/String; = "Settings.Messages.SMS.DeleteOldMessageCntSms"

.field private static final KEY_CSC_DELIVERYREPORT:Ljava/lang/String; = "Settings.Messages.SMS.DeliveryReport"

.field private static final KEY_CSC_EMAILGATEWAY:Ljava/lang/String; = "Settings.Messages.SMS.EmailGateway"

.field private static final KEY_CSC_EXPIRY:Ljava/lang/String; = "Settings.Messages.MMS.MmsSending.Expiry"

.field private static final KEY_CSC_FONTSIZEBYVOLUMEKEY:Ljava/lang/String; = "Settings.Messages.SMS.FontSizeByVolumeKey"

.field private static final KEY_CSC_GROUPMESSAGING:Ljava/lang/String; = "Settings.Messages.MMS.GroupMessaging"

.field private static final KEY_CSC_IMAGERESIZERESOLUTION:Ljava/lang/String; = "Settings.Messages.MMS.MmsSending.ImageResizeResolution"

.field private static final KEY_CSC_MAXRECIPIENT:Ljava/lang/String; = "Settings.Messages.SMS.MaxRecipient"

.field private static final KEY_CSC_MAXRECIPIENTMMS:Ljava/lang/String; = "Settings.Messages.MMS.MmsSending.MaxRecipientMMS"

.field private static final KEY_CSC_MESSAGESIZE:Ljava/lang/String; = "Settings.Messages.MMS.MmsSending.MessageSize"

.field private static final KEY_CSC_MESSAGETONE:Ljava/lang/String; = "Settings.Main.Sound.MessageTone"

.field private static final KEY_CSC_MMSALERT:Ljava/lang/String; = "Settings.Messages.SMS.MmsAlert"

.field private static final KEY_CSC_MMSRECEIVING_HOME:Ljava/lang/String; = "Settings.Messages.MMS.MmsReceiving.Home"

.field private static final KEY_CSC_MMSRECEIVING_ROAMING:Ljava/lang/String; = "Settings.Messages.MMS.MmsReceiving.Roaming"

.field private static final KEY_CSC_MSGSPLITVIEW:Ljava/lang/String; = "Settings.Messages.SMS.MsgSplitView"

.field private static final KEY_CSC_MSGTONEALERTTYPE:Ljava/lang/String; = "Settings.Main.Sound.MsgToneAlertType"

.field private static final KEY_CSC_MSGTONEREPEATINTERVAL:Ljava/lang/String; = "Settings.Main.Sound.MsgToneRepeatInterval"

.field private static final KEY_CSC_PREVIEWMESSAGE:Ljava/lang/String; = "Settings.Messages.SMS.PreviewMessage"

.field private static final KEY_CSC_PUSHLOADING:Ljava/lang/String; = "Settings.Messages.PushMsg.PushLoading"

.field private static final KEY_CSC_RECOPTION:Ljava/lang/String; = "Settings.Messages.PushMsg.RecOption"

.field private static final KEY_CSC_REQDELIVERYREP:Ljava/lang/String; = "Settings.Messages.MMS.MmsSending.ReqDeliveryRep"

.field private static final KEY_CSC_REQREADREP:Ljava/lang/String; = "Settings.Messages.MMS.MmsSending.ReqReadRep"

.field private static final KEY_CSC_SLIDEMAXCOUNT:Ljava/lang/String; = "Settings.Messages.MMS.SlideMaxCount"

.field private static final KEY_CSC_TEXTTEMPLATE:Ljava/lang/String; = "Settings.Messages.SMS.TextTemplate"

.field private static final KEY_CSC_THRESHOLDTYPE:Ljava/lang/String; = "Settings.Messages.SMS.MsgTypeThreshold.ThresholdType"

.field private static final KEY_CSC_THRESHOLDVALUE:Ljava/lang/String; = "Settings.Messages.SMS.MsgTypeThreshold.ThresholdValue"

.field private static final TAG:Ljava/lang/String; = "Mms/CscLoader"

.field public static final USER_KEY_PRFS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 67
    const/16 v0, 0x21

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "pref_key_enable_push_message"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "pref_key_service_loading_action"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "pref_key_sms_delivery_reports"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "pref_key_threshold"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "pref_key_threshold_type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "pref_key_max_recipient"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pref_key_sms_input_mode"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "pref_key_sms_email_gateway"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "pref_key_cb_settings_activation"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "pref_key_cb_settings_channel"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "pref_key_sms_text_template"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "pref_key_auto_delete"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "pref_key_split_view"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "pref_key_font_size_by_volume_key_enable"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "MaxSmsMessagesPerThread"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "MaxMmsMessagesPerThread"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "pref_key_enable_preview_message"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "pref_key_mms_image_resize_resolution"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "pref_key_mms_delivery_reports"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "pref_key_mms_read_reports"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "pref_key_mms_expiry"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "pref_key_mms_max_size"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "pref_key_mms_creation_mode"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "pref_key_mms_max_recipient"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "pref_key_mms_auto_retrieval"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "pref_key_mms_retrieval_during_roaming"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "pref_key_mms_slide_max_count"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "pref_key_msgtone_repeat_interval"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "pref_key_enable_notifications"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "pref_key_ringtone"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "pref_key_vibrateWhen_checkbox"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "pref_key_mms_change_over_alarm"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "pref_key_mms_group_mms"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/csc/CscLoader;->USER_KEY_PRFS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 109
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 111
    return-void
.end method

.method private static getBooleanFromString(Ljava/lang/String;)Z
    .locals 2
    .parameter "text"

    .prologue
    const/4 v0, 0x0

    .line 305
    const-string v1, "on"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "auto"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 306
    :cond_0
    const/4 v0, 0x1

    .line 310
    :cond_1
    :goto_0
    return v0

    .line 307
    :cond_2
    const-string v1, "off"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "manual"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0
.end method

.method private static getCscRingtoneUri(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "text"

    .prologue
    const/4 v6, 0x0

    .line 461
    if-nez p1, :cond_0

    .line 490
    :goto_0
    return-object v6

    .line 464
    :cond_0
    new-instance v2, Landroid/media/RingtoneManager;

    invoke-direct {v2, p0}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    .line 466
    .local v2, rm:Landroid/media/RingtoneManager;
    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Landroid/media/RingtoneManager;->setType(I)V

    .line 467
    invoke-virtual {v2}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 468
    .local v0, c:Landroid/database/Cursor;
    const-string v7, "title"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 471
    .local v4, titleIndex:I
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 472
    const/4 v1, 0x0

    .line 474
    .local v1, position:I
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_1

    .line 475
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 476
    .local v3, title:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 482
    .end local v3           #title:Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lt v1, v7, :cond_4

    .line 483
    :cond_2
    const-string v7, "Mms/CscLoader"

    const-string v8, "No matched ringtones."

    invoke-static {v7, v8}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 478
    .restart local v3       #title:Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 479
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 490
    .end local v1           #position:I
    .end local v3           #title:Ljava/lang/String;
    :catchall_0
    move-exception v6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v6

    .line 486
    .restart local v1       #position:I
    :cond_4
    :try_start_2
    invoke-virtual {v2, v1}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v5

    .line 487
    .local v5, uri:Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    .line 490
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private static getMsgTone(Lcom/android/mms/csc/CscParser;)Ljava/lang/String;
    .locals 6
    .parameter "parser"

    .prologue
    const/4 v4, 0x0

    .line 411
    const-string v5, "Settings.Messages.Sound"

    invoke-virtual {p0, v5}, Lcom/android/mms/csc/CscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 412
    .local v0, MsgToneNode:Lorg/w3c/dom/Node;
    if-nez v0, :cond_1

    move-object v3, v4

    .line 426
    :cond_0
    :goto_0
    return-object v3

    .line 416
    :cond_1
    const-string v5, "MessageTone"

    invoke-virtual {p0, v0, v5}, Lcom/android/mms/csc/CscParser;->searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 417
    .local v2, mCustomerList:Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .line 418
    .local v3, mSrc:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 419
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 420
    .local v1, list:Lorg/w3c/dom/Element;
    const-string v5, "src"

    invoke-interface {v1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 423
    .end local v1           #list:Lorg/w3c/dom/Element;
    :cond_2
    if-nez v3, :cond_0

    move-object v3, v4

    .line 424
    goto :goto_0
.end method

.method private static getMsgToneFullPath(Lcom/android/mms/csc/CscParser;)Ljava/lang/String;
    .locals 10
    .parameter "parser"

    .prologue
    const/4 v8, 0x0

    .line 496
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportOperatorMsgTone()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 497
    invoke-static {p0}, Lcom/android/mms/csc/CscLoader;->getMsgTone(Lcom/android/mms/csc/CscParser;)Ljava/lang/String;

    move-result-object v4

    .line 526
    :cond_0
    :goto_0
    return-object v4

    .line 500
    :cond_1
    const-string v9, "Settings.Main.Sound"

    invoke-virtual {p0, v9}, Lcom/android/mms/csc/CscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 501
    .local v0, MsgToneNode:Lorg/w3c/dom/Node;
    if-nez v0, :cond_3

    .line 502
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDocomoAccountAsDefault()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 503
    const/4 v9, 0x2

    invoke-static {v9}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v7

    .line 504
    .local v7, uri:Landroid/net/Uri;
    if-eqz v7, :cond_2

    .line 505
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .end local v7           #uri:Landroid/net/Uri;
    :cond_2
    move-object v4, v8

    .line 507
    goto :goto_0

    .line 510
    :cond_3
    const-string v9, "MessageTone"

    invoke-virtual {p0, v0, v9}, Lcom/android/mms/csc/CscParser;->searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 511
    .local v3, mCustomerList:Lorg/w3c/dom/NodeList;
    const-string v1, "/system/media/audio/notifications/"

    .line 512
    .local v1, filePath:Ljava/lang/String;
    const/4 v4, 0x0

    .line 513
    .local v4, mSrc:Ljava/lang/String;
    if-eqz v3, :cond_4

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-lez v9, :cond_4

    .line 514
    const/4 v9, 0x0

    invoke-interface {v3, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 515
    .local v2, list:Lorg/w3c/dom/Element;
    const-string v9, "src"

    invoke-interface {v2, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 518
    .end local v2           #list:Lorg/w3c/dom/Element;
    :cond_4
    if-nez v4, :cond_5

    move-object v4, v8

    .line 519
    goto :goto_0

    .line 520
    :cond_5
    const-string v8, "Customer"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 521
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 522
    .local v6, title:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 523
    .local v5, pullPath:Ljava/lang/StringBuffer;
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 524
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private static getStringCreationMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "text"

    .prologue
    const/4 v0, 0x0

    .line 440
    if-nez p0, :cond_1

    move-object p0, v0

    .line 446
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 443
    .restart local p0
    :cond_1
    const-string v1, "restricted"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "warning"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "free"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object p0, v0

    .line 446
    goto :goto_0
.end method

.method private static getStringMaxImageResolution(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "text"

    .prologue
    const/4 v0, 0x0

    .line 365
    if-nez p0, :cond_1

    move-object p0, v0

    .line 373
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 368
    .restart local p0
    :cond_1
    const-string v1, "qcif"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "qvga"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "vga"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "wvga"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "hd720"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "4vga"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "uxga"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "hd1080"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "qxga"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "wqxga"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "qsxga"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "quxga"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object p0, v0

    .line 373
    goto :goto_0
.end method

.method private static getStringMessageSize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "text"

    .prologue
    const/4 v0, 0x0

    .line 450
    if-nez p0, :cond_1

    move-object p0, v0

    .line 457
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 453
    .restart local p0
    :cond_1
    const-string v1, "30"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "100"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "300"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "350"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "500"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "600"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1m"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1.2m"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1.5m"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "2m"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "3m"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object p0, v0

    .line 457
    goto :goto_0
.end method

.method private static getStringMmsExpire(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "text"

    .prologue
    const/4 v0, 0x0

    .line 430
    if-nez p0, :cond_1

    move-object p0, v0

    .line 436
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 433
    .restart local p0
    :cond_1
    const-string v1, "max"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1d"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "2d"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1w"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "2w"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object p0, v0

    .line 436
    goto :goto_0
.end method

.method private static getStringMsgNotiAlertInterval(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "text"

    .prologue
    const/4 v0, 0x0

    .line 377
    if-nez p0, :cond_1

    move-object p0, v0

    .line 383
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 380
    .restart local p0
    :cond_1
    const-string v1, "once"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "2m"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "5m"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "10m"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object p0, v0

    .line 383
    goto :goto_0
.end method

.method private static getStringPushLoading(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "text"

    .prologue
    const/4 v0, 0x0

    .line 314
    if-nez p0, :cond_1

    .line 323
    :cond_0
    :goto_0
    return-object v0

    .line 316
    :cond_1
    const-string v1, "always"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 317
    const-string v0, "Always"

    goto :goto_0

    .line 318
    :cond_2
    const-string v1, "prompt"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 319
    const-string v0, "Prompt"

    goto :goto_0

    .line 320
    :cond_3
    const-string v1, "never"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 321
    const-string v0, "Never"

    goto :goto_0
.end method

.method private static getStringcharSupport(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "text"

    .prologue
    const/4 v0, 0x0

    .line 327
    if-nez p0, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-object v0

    .line 330
    :cond_1
    const-string v1, "gsmalpha"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 331
    const-string v0, "GSM alphabet"

    goto :goto_0

    .line 332
    :cond_2
    const-string v1, "automatic"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 333
    const-string v0, "Automatic"

    goto :goto_0

    .line 334
    :cond_3
    const-string v1, "unicode"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 335
    const-string v0, "Unicode"

    goto :goto_0
.end method

.method private static getTagList(Lcom/android/mms/csc/CscParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "parser"
    .parameter "path_Node"
    .parameter "tag_NodeList"

    .prologue
    const/4 v6, 0x0

    .line 387
    invoke-virtual {p0, p1}, Lcom/android/mms/csc/CscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 388
    .local v0, BaseNode:Lorg/w3c/dom/Node;
    if-nez v0, :cond_1

    .line 405
    :cond_0
    :goto_0
    return-object v6

    .line 391
    :cond_1
    invoke-virtual {p0, v0, p2}, Lcom/android/mms/csc/CscParser;->searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 392
    .local v1, ListItems:Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-lez v7, :cond_0

    .line 395
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    new-array v4, v7, [Ljava/lang/String;

    .line 397
    .local v4, items:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 398
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 399
    .local v3, item:Lorg/w3c/dom/Node;
    invoke-virtual {p0, v3}, Lcom/android/mms/csc/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    .line 401
    .local v5, parameter:Ljava/lang/String;
    aput-object v5, v4, v2

    .line 397
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 404
    .end local v3           #item:Lorg/w3c/dom/Node;
    .end local v5           #parameter:Ljava/lang/String;
    :cond_2
    const-string v7, ";"

    invoke-static {v7, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 405
    .local v6, value:Ljava/lang/String;
    goto :goto_0
.end method

.method private static getTagListsToString(Lcom/android/mms/csc/CscParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "parser"
    .parameter "path_Node"
    .parameter "tag_NodeList"

    .prologue
    const/4 v6, 0x0

    .line 341
    invoke-virtual {p0, p1}, Lcom/android/mms/csc/CscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 342
    .local v0, BaseNode:Lorg/w3c/dom/Node;
    if-nez v0, :cond_1

    .line 361
    :cond_0
    :goto_0
    return-object v6

    .line 345
    :cond_1
    invoke-virtual {p0, v0, p2}, Lcom/android/mms/csc/CscParser;->searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 346
    .local v1, ListItems:Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-lez v7, :cond_0

    .line 349
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v6, ""

    invoke-direct {v4, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 351
    .local v4, items:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 352
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 353
    .local v3, item:Lorg/w3c/dom/Node;
    invoke-virtual {p0, v3}, Lcom/android/mms/csc/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    .line 355
    .local v5, parameter:Ljava/lang/String;
    if-lez v2, :cond_2

    .line 356
    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 358
    :cond_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 351
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 361
    .end local v3           #item:Lorg/w3c/dom/Node;
    .end local v5           #parameter:Ljava/lang/String;
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private static loadBoolean(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/csc/CscParser;Landroid/content/SharedPreferences$Editor;)V
    .locals 5
    .parameter "cscKey"
    .parameter "prefKey"
    .parameter "parser"
    .parameter "editor"

    .prologue
    .line 257
    invoke-virtual {p2, p0}, Lcom/android/mms/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, valueStr:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 267
    :goto_0
    return-void

    .line 263
    :cond_0
    invoke-static {v1}, Lcom/android/mms/csc/CscLoader;->getBooleanFromString(Ljava/lang/String;)Z

    move-result v0

    .line 264
    .local v0, value:Z
    invoke-interface {p3, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 266
    const-string v2, "Mms/CscLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static loadInt(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/csc/CscParser;Landroid/content/SharedPreferences$Editor;)V
    .locals 5
    .parameter "cscKey"
    .parameter "prefKey"
    .parameter "parser"
    .parameter "editor"

    .prologue
    .line 270
    invoke-virtual {p2, p0}, Lcom/android/mms/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 272
    .local v1, valueStr:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 279
    :goto_0
    return-void

    .line 276
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 277
    .local v0, value:I
    invoke-interface {p3, p1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 278
    const-string v2, "Mms/CscLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static loadIntThreashhold(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/csc/CscParser;Landroid/content/SharedPreferences$Editor;)V
    .locals 5
    .parameter "cscKey"
    .parameter "prefKey"
    .parameter "parser"
    .parameter "editor"

    .prologue
    .line 293
    invoke-virtual {p2, p0}, Lcom/android/mms/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 295
    .local v1, valueStr:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 302
    :goto_0
    return-void

    .line 299
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 300
    .local v0, value:I
    invoke-interface {p3, p1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 301
    const-string v2, "Mms/CscLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static loadString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V
    .locals 3
    .parameter "cscKey"
    .parameter "valueStr"
    .parameter "prefKey"
    .parameter "editor"

    .prologue
    .line 282
    if-nez p1, :cond_0

    .line 288
    :goto_0
    return-void

    .line 286
    :cond_0
    invoke-interface {p3, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 287
    const-string v0, "Mms/CscLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static partialUpdate(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    .line 229
    const-string v3, "Mms/CscLoader"

    const-string v4, "Start partialUpdate()"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-static {}, Lcom/android/mms/csc/CscParser;->getCustomerInstance()Lcom/android/mms/csc/CscParser;

    move-result-object v1

    .line 231
    .local v1, parser:Lcom/android/mms/csc/CscParser;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/mms/csc/CscParser;->isLoaded()Z

    move-result v3

    if-nez v3, :cond_1

    .line 232
    :cond_0
    const-string v3, "Mms/CscLoader"

    const-string v4, "partial update : can\'t load customer file"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const/4 v3, 0x0

    .line 253
    :goto_0
    return v3

    .line 235
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 236
    .local v2, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 238
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "Settings.Messages.SMS.MsgTypeThreshold.ThresholdValue"

    const-string v4, "pref_key_threshold"

    invoke-static {v3, v4, v1, v0}, Lcom/android/mms/csc/CscLoader;->loadIntThreashhold(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/csc/CscParser;Landroid/content/SharedPreferences$Editor;)V

    .line 240
    const-string v3, "Settings.Messages.SMS.MaxRecipient"

    const-string v4, "pref_key_max_recipient"

    invoke-static {v3, v4, v1, v0}, Lcom/android/mms/csc/CscLoader;->loadInt(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/csc/CscParser;Landroid/content/SharedPreferences$Editor;)V

    .line 241
    const-string v3, "Settings.Messages.MMS.MmsSending.ImageResizeResolution"

    const-string v4, "Settings.Messages.MMS.MmsSending.ImageResizeResolution"

    invoke-virtual {v1, v4}, Lcom/android/mms/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/csc/CscLoader;->getStringMaxImageResolution(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_key_mms_image_resize_resolution"

    invoke-static {v3, v4, v5, v0}, Lcom/android/mms/csc/CscLoader;->loadString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    .line 244
    const-string v3, "Settings.Messages.MMS.MmsSending.MessageSize"

    const-string v4, "Settings.Messages.MMS.MmsSending.MessageSize"

    invoke-virtual {v1, v4}, Lcom/android/mms/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/csc/CscLoader;->getStringMessageSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_key_mms_max_size"

    invoke-static {v3, v4, v5, v0}, Lcom/android/mms/csc/CscLoader;->loadString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    .line 246
    const-string v3, "Settings.Messages.MMS.MmsSending.MaxRecipientMMS"

    const-string v4, "pref_key_mms_max_recipient"

    invoke-static {v3, v4, v1, v0}, Lcom/android/mms/csc/CscLoader;->loadInt(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/csc/CscParser;Landroid/content/SharedPreferences$Editor;)V

    .line 248
    const-string v3, "Settings.Messages.MMS.SlideMaxCount"

    const-string v4, "pref_key_mms_slide_max_count"

    invoke-static {v3, v4, v1, v0}, Lcom/android/mms/csc/CscLoader;->loadInt(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/csc/CscParser;Landroid/content/SharedPreferences$Editor;)V

    .line 251
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 252
    const-string v3, "Mms/CscLoader"

    const-string v4, "End partialUpdate()"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static update(Landroid/content/Context;Z)Z
    .locals 14
    .parameter "context"
    .parameter "enableChameleon"

    .prologue
    .line 121
    const-string v11, "Mms/CscLoader"

    const-string v12, "Start update()"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-static {}, Lcom/android/mms/csc/CscParser;->getCustomerInstance()Lcom/android/mms/csc/CscParser;

    move-result-object v6

    .line 123
    .local v6, parser:Lcom/android/mms/csc/CscParser;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/android/mms/csc/CscParser;->isLoaded()Z

    move-result v11

    if-nez v11, :cond_1

    .line 124
    :cond_0
    const-string v11, "Mms/CscLoader"

    const-string v12, "update : can\'t load customer file"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const/4 v11, 0x0

    .line 225
    :goto_0
    return v11

    .line 129
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 130
    .local v7, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 132
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    const/4 v9, 0x0

    .line 133
    .local v9, valueBoolean:Z
    const/4 v10, 0x0

    .line 137
    .local v10, valueStr:Ljava/lang/String;
    const-string v11, "Settings.Messages.PushMsg.RecOption"

    const-string v12, "pref_key_enable_push_message"

    invoke-static {v11, v12, v6, v3}, Lcom/android/mms/csc/CscLoader;->loadBoolean(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/csc/CscParser;Landroid/content/SharedPreferences$Editor;)V

    .line 138
    const-string v11, "Settings.Messages.PushMsg.PushLoading"

    const-string v12, "Settings.Messages.PushMsg.PushLoading"

    invoke-virtual {v6, v12}, Lcom/android/mms/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/mms/csc/CscLoader;->getStringPushLoading(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "pref_key_service_loading_action"

    invoke-static {v11, v12, v13, v3}, Lcom/android/mms/csc/CscLoader;->loadString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    .line 141
    const-string v11, "Settings.Messages.SMS.DeliveryReport"

    const-string v12, "pref_key_sms_delivery_reports"

    invoke-static {v11, v12, v6, v3}, Lcom/android/mms/csc/CscLoader;->loadBoolean(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/csc/CscParser;Landroid/content/SharedPreferences$Editor;)V

    .line 142
    const-string v11, "Settings.Messages.SMS.MsgTypeThreshold.ThresholdValue"

    const-string v12, "pref_key_threshold"

    invoke-static {v11, v12, v6, v3}, Lcom/android/mms/csc/CscLoader;->loadIntThreashhold(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/csc/CscParser;Landroid/content/SharedPreferences$Editor;)V

    .line 143
    const-string v11, "Settings.Messages.SMS.MaxRecipient"

    const-string v12, "pref_key_max_recipient"

    invoke-static {v11, v12, v6, v3}, Lcom/android/mms/csc/CscLoader;->loadInt(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/csc/CscParser;Landroid/content/SharedPreferences$Editor;)V

    .line 144
    const-string v11, "Settings.Messages.SMS.CharSupport"

    const-string v12, "Settings.Messages.SMS.CharSupport"

    invoke-virtual {v6, v12}, Lcom/android/mms/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/mms/csc/CscLoader;->getStringcharSupport(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "pref_key_sms_input_mode"

    invoke-static {v11, v12, v13, v3}, Lcom/android/mms/csc/CscLoader;->loadString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    .line 145
    const-string v11, "Settings.Messages.SMS.EmailGateway"

    const-string v12, "Settings.Messages.SMS.EmailGateway"

    invoke-virtual {v6, v12}, Lcom/android/mms/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "pref_key_sms_email_gateway"

    invoke-static {v11, v12, v13, v3}, Lcom/android/mms/csc/CscLoader;->loadString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    .line 146
    const-string v11, "Settings.Messages.SMS.CellBroadcast"

    const-string v12, "pref_key_cb_settings_activation"

    invoke-static {v11, v12, v6, v3}, Lcom/android/mms/csc/CscLoader;->loadBoolean(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/csc/CscParser;Landroid/content/SharedPreferences$Editor;)V

    .line 148
    const-string v11, "Settings.Messages.SMS"

    const-string v12, "CellBroadcastChannel"

    invoke-static {v6, v11, v12}, Lcom/android/mms/csc/CscLoader;->getTagListsToString(Lcom/android/mms/csc/CscParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 149
    if-eqz v10, :cond_4

    .line 150
    const-string v11, " "

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 151
    const-string v11, "Mms/CscLoader"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "key=Settings.Messages.SMS.CellBroadcastChannel value="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v11, "pref_key_cb_settings_channel"

    invoke-interface {v3, v11, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 154
    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, CBChannel:[Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 156
    move-object v1, v0

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v2, v1, v4

    .line 157
    .local v2, channelID:Ljava/lang/String;
    const-string v11, "Mms/CscLoader"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "channelID="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v11, "[+-]?\\d+"

    const-string v12, ""

    invoke-virtual {v2, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 159
    const/4 v11, 0x1

    invoke-static {p0, v2, v2, v11}, Lcom/android/mms/ui/ChannelUtils;->addChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 156
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 163
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #channelID:Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_3
    const-string v11, "pref_key_cb_channel_selection"

    const-string v12, "My channel"

    invoke-interface {v3, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 166
    .end local v0           #CBChannel:[Ljava/lang/String;
    :cond_4
    const-string v11, "Settings.Messages.SMS.TextTemplate"

    const-string v12, "Settings.Messages.SMS"

    const-string v13, "TextTemplate"

    invoke-static {v6, v12, v13}, Lcom/android/mms/csc/CscLoader;->getTagList(Lcom/android/mms/csc/CscParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "pref_key_sms_text_template"

    invoke-static {v11, v12, v13, v3}, Lcom/android/mms/csc/CscLoader;->loadString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    .line 167
    const-string v11, "Settings.Messages.SMS.DeleteOldMessage"

    const-string v12, "pref_key_auto_delete"

    invoke-static {v11, v12, v6, v3}, Lcom/android/mms/csc/CscLoader;->loadBoolean(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/csc/CscParser;Landroid/content/SharedPreferences$Editor;)V

    .line 168
    const-string v11, "Settings.Messages.SMS.MsgSplitView"

    const-string v12, "pref_key_split_view"

    invoke-static {v11, v12, v6, v3}, Lcom/android/mms/csc/CscLoader;->loadBoolean(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/csc/CscParser;Landroid/content/SharedPreferences$Editor;)V

    .line 169
    const-string v11, "Settings.Messages.SMS.FontSizeByVolumeKey"

    const-string v12, "pref_key_font_size_by_volume_key_enable"

    invoke-static {v11, v12, v6, v3}, Lcom/android/mms/csc/CscLoader;->loadBoolean(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/csc/CscParser;Landroid/content/SharedPreferences$Editor;)V

    .line 170
    const-string v11, "Settings.Messages.SMS.DeleteOldMessageCntSms"

    const-string v12, "MaxSmsMessagesPerThread"

    invoke-static {v11, v12, v6, v3}, Lcom/android/mms/csc/CscLoader;->loadInt(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/csc/CscParser;Landroid/content/SharedPreferences$Editor;)V

    .line 171
    const-string v11, "Settings.Messages.SMS.DeleteOldMessageCntMms"

    const-string v12, "MaxMmsMessagesPerThread"

    invoke-static {v11, v12, v6, v3}, Lcom/android/mms/csc/CscLoader;->loadInt(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/csc/CscParser;Landroid/content/SharedPreferences$Editor;)V

    .line 172
    const-string v11, "Settings.Messages.SMS.PreviewMessage"

    const-string v12, "pref_key_enable_preview_message"

    invoke-static {v11, v12, v6, v3}, Lcom/android/mms/csc/CscLoader;->loadBoolean(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/csc/CscParser;Landroid/content/SharedPreferences$Editor;)V

    .line 175
    const-string v11, "Settings.Messages.MMS.MmsSending.ImageResizeResolution"

    const-string v12, "Settings.Messages.MMS.MmsSending.ImageResizeResolution"

    invoke-virtual {v6, v12}, Lcom/android/mms/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/mms/csc/CscLoader;->getStringMaxImageResolution(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "pref_key_mms_image_resize_resolution"

    invoke-static {v11, v12, v13, v3}, Lcom/android/mms/csc/CscLoader;->loadString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    .line 176
    const-string v11, "Settings.Messages.MMS.MmsSending.ReqDeliveryRep"

    const-string v12, "pref_key_mms_delivery_reports"

    invoke-static {v11, v12, v6, v3}, Lcom/android/mms/csc/CscLoader;->loadBoolean(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/csc/CscParser;Landroid/content/SharedPreferences$Editor;)V

    .line 177
    const-string v11, "Settings.Messages.MMS.MmsSending.ReqReadRep"

    const-string v12, "pref_key_mms_read_reports"

    invoke-static {v11, v12, v6, v3}, Lcom/android/mms/csc/CscLoader;->loadBoolean(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/csc/CscParser;Landroid/content/SharedPreferences$Editor;)V

    .line 178
    const-string v11, "Settings.Messages.MMS.MmsSending.Expiry"

    const-string v12, "Settings.Messages.MMS.MmsSending.Expiry"

    invoke-virtual {v6, v12}, Lcom/android/mms/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/mms/csc/CscLoader;->getStringMmsExpire(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "pref_key_mms_expiry"

    invoke-static {v11, v12, v13, v3}, Lcom/android/mms/csc/CscLoader;->loadString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    .line 179
    const-string v11, "Settings.Messages.MMS.MmsSending.MessageSize"

    const-string v12, "Settings.Messages.MMS.MmsSending.MessageSize"

    invoke-virtual {v6, v12}, Lcom/android/mms/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/mms/csc/CscLoader;->getStringMessageSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "pref_key_mms_max_size"

    invoke-static {v11, v12, v13, v3}, Lcom/android/mms/csc/CscLoader;->loadString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    .line 181
    const-string v11, "Settings.Messages.MMS.MmsSending.CreationMode"

    const-string v12, "Settings.Messages.MMS.MmsSending.CreationMode"

    invoke-virtual {v6, v12}, Lcom/android/mms/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/mms/csc/CscLoader;->getStringCreationMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "pref_key_mms_creation_mode"

    invoke-static {v11, v12, v13, v3}, Lcom/android/mms/csc/CscLoader;->loadString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    .line 182
    const-string v11, "Settings.Messages.MMS.MmsSending.MaxRecipientMMS"

    const-string v12, "pref_key_mms_max_recipient"

    invoke-static {v11, v12, v6, v3}, Lcom/android/mms/csc/CscLoader;->loadInt(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/csc/CscParser;Landroid/content/SharedPreferences$Editor;)V

    .line 183
    const-string v11, "Settings.Messages.MMS.MmsReceiving.Home"

    const-string v12, "pref_key_mms_auto_retrieval"

    invoke-static {v11, v12, v6, v3}, Lcom/android/mms/csc/CscLoader;->loadBoolean(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/csc/CscParser;Landroid/content/SharedPreferences$Editor;)V

    .line 184
    const-string v11, "Settings.Messages.MMS.MmsReceiving.Roaming"

    const-string v12, "pref_key_mms_retrieval_during_roaming"

    invoke-static {v11, v12, v6, v3}, Lcom/android/mms/csc/CscLoader;->loadBoolean(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/csc/CscParser;Landroid/content/SharedPreferences$Editor;)V

    .line 185
    const-string v11, "Settings.Messages.MMS.SlideMaxCount"

    const-string v12, "pref_key_mms_slide_max_count"

    invoke-static {v11, v12, v6, v3}, Lcom/android/mms/csc/CscLoader;->loadInt(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/csc/CscParser;Landroid/content/SharedPreferences$Editor;)V

    .line 186
    const-string v11, "Settings.Main.Sound.MsgToneRepeatInterval"

    const-string v12, "Settings.Main.Sound.MsgToneRepeatInterval"

    invoke-virtual {v6, v12}, Lcom/android/mms/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/mms/csc/CscLoader;->getStringMsgNotiAlertInterval(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "pref_key_msgtone_repeat_interval"

    invoke-static {v11, v12, v13, v3}, Lcom/android/mms/csc/CscLoader;->loadString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    .line 188
    invoke-static {v6}, Lcom/android/mms/csc/CscLoader;->getMsgToneFullPath(Lcom/android/mms/csc/CscParser;)Ljava/lang/String;

    move-result-object v8

    .line 189
    .local v8, toneTitle:Ljava/lang/String;
    const-string v11, "Settings.Main.Sound.MessageTone"

    const-string v12, "pref_key_ringtone"

    invoke-static {v11, v8, v12, v3}, Lcom/android/mms/csc/CscLoader;->loadString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    .line 190
    if-eqz v8, :cond_5

    .line 191
    const-string v11, "pref_key_enable_notifications"

    const/4 v12, 0x1

    invoke-interface {v3, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 195
    :cond_5
    const-string v11, "Settings.Main.Sound.MsgToneAlertType"

    invoke-virtual {v6, v11}, Lcom/android/mms/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 196
    if-eqz v10, :cond_6

    .line 197
    const-string v11, "Mms/CscLoader"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "key=Settings.Main.Sound.MsgToneAlertType value="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v11, "melody"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 200
    const/4 v9, 0x0

    .line 209
    :goto_2
    const-string v11, "pref_key_vibrateWhen_checkbox"

    invoke-interface {v3, v11, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 213
    :cond_6
    const-string v11, "Settings.Messages.SMS.MmsAlert"

    const-string v12, "pref_key_mms_change_over_alarm"

    invoke-static {v11, v12, v6, v3}, Lcom/android/mms/csc/CscLoader;->loadBoolean(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/csc/CscParser;Landroid/content/SharedPreferences$Editor;)V

    .line 214
    const-string v11, "Settings.Messages.MMS.GroupMessaging"

    const-string v12, "pref_key_mms_group_mms"

    invoke-static {v11, v12, v6, v3}, Lcom/android/mms/csc/CscLoader;->loadBoolean(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/csc/CscParser;Landroid/content/SharedPreferences$Editor;)V

    .line 216
    if-eqz p1, :cond_7

    .line 217
    invoke-static {v3}, Lcom/android/mms/csc/CscLoader;->updateChameleonPreset(Landroid/content/SharedPreferences$Editor;)V

    .line 220
    :cond_7
    invoke-static {v3}, Lcom/android/mms/csc/CscLoader;->updateAutocombinationDefaultValue(Landroid/content/SharedPreferences$Editor;)V

    .line 223
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 224
    const-string v11, "Mms/CscLoader"

    const-string v12, "End update()"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 201
    :cond_8
    const-string v11, "vib"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    const-string v11, "vibmelody"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 202
    :cond_9
    const/4 v9, 0x1

    goto :goto_2

    .line 203
    :cond_a
    const-string v11, "mute"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 204
    const/4 v9, 0x0

    goto :goto_2

    .line 206
    :cond_b
    const/4 v9, 0x0

    goto :goto_2
.end method

.method public static updateAutocombinationDefaultValue(Landroid/content/SharedPreferences$Editor;)V
    .locals 4
    .parameter "editor"

    .prologue
    .line 542
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    .line 548
    .local v0, cscFeature:Lcom/sec/android/app/CscFeature;
    const-string v2, "CscFeature_Message_DefConfgSegmentedSMS"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 549
    .local v1, defaultSegmentedSMSvalue:Ljava/lang/String;
    const-string v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 550
    const-string v2, "pref_key_sms_reassembly"

    const/4 v3, 0x0

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 554
    :goto_0
    return-void

    .line 552
    :cond_0
    const-string v2, "pref_key_sms_reassembly"

    const/4 v3, 0x1

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private static updateChameleon(Landroid/content/SharedPreferences$Editor;I)Z
    .locals 7
    .parameter "editor"
    .parameter "mLanguage"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 557
    const-string v5, "Mms/CscLoader"

    const-string v6, "Start updateChameleon()"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    invoke-static {p1}, Lcom/android/mms/csc/CscParser;->getChameleonInstance(I)Lcom/android/mms/csc/CscParser;

    move-result-object v0

    .line 559
    .local v0, parser:Lcom/android/mms/csc/CscParser;
    if-nez p0, :cond_0

    .line 620
    :goto_0
    return v3

    .line 562
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/mms/csc/CscParser;->isLoaded()Z

    move-result v5

    if-nez v5, :cond_2

    .line 563
    :cond_1
    const-string v4, "Mms/CscLoader"

    const-string v5, "updateChameleon : can\'t load chameleon file"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 567
    :cond_2
    const-string v3, "SMS"

    const-string v5, "PresetMessage"

    invoke-static {v0, v3, v5}, Lcom/android/mms/csc/CscLoader;->getTagList(Lcom/android/mms/csc/CscParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 568
    .local v2, valueStr:Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 570
    const/4 v1, 0x0

    .line 571
    .local v1, prefKey:Ljava/lang/String;
    if-nez p1, :cond_5

    .line 572
    const-string v1, "pref_key_chameleon_text_template_en"

    .line 583
    :cond_3
    :goto_1
    const-string v3, "Mms/CscLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateChameleon prefKey="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 619
    .end local v1           #prefKey:Ljava/lang/String;
    :cond_4
    const-string v3, "Mms/CscLoader"

    const-string v5, "End updateChameleon()"

    invoke-static {v3, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 620
    goto :goto_0

    .line 573
    .restart local v1       #prefKey:Ljava/lang/String;
    :cond_5
    if-ne p1, v4, :cond_6

    .line 574
    const-string v1, "pref_key_chameleon_text_template_es"

    goto :goto_1

    .line 575
    :cond_6
    const/4 v3, 0x2

    if-ne p1, v3, :cond_7

    .line 576
    const-string v1, "pref_key_chameleon_text_template_vi"

    goto :goto_1

    .line 577
    :cond_7
    const/4 v3, 0x3

    if-ne p1, v3, :cond_8

    .line 578
    const-string v1, "pref_key_chameleon_text_template_ko"

    goto :goto_1

    .line 579
    :cond_8
    const/4 v3, 0x4

    if-ne p1, v3, :cond_3

    .line 580
    const-string v1, "pref_key_chameleon_text_template_zh"

    goto :goto_1
.end method

.method public static updateChameleonPreset(Landroid/content/SharedPreferences$Editor;)V
    .locals 2
    .parameter "editor"

    .prologue
    .line 531
    const-string v0, "Mms/CscLoader"

    const-string v1, "Start updateChameleonPrest()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/mms/csc/CscLoader;->updateChameleon(Landroid/content/SharedPreferences$Editor;I)Z

    .line 533
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/mms/csc/CscLoader;->updateChameleon(Landroid/content/SharedPreferences$Editor;I)Z

    .line 534
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/android/mms/csc/CscLoader;->updateChameleon(Landroid/content/SharedPreferences$Editor;I)Z

    .line 535
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/android/mms/csc/CscLoader;->updateChameleon(Landroid/content/SharedPreferences$Editor;I)Z

    .line 536
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/android/mms/csc/CscLoader;->updateChameleon(Landroid/content/SharedPreferences$Editor;I)Z

    .line 537
    const-string v0, "Mms/CscLoader"

    const-string v1, "End updateChameleonPrest()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    return-void
.end method
