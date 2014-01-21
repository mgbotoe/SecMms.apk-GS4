.class public Lcom/android/mms/ui/ManageSDMessages;
.super Landroid/app/Activity;
.source "ManageSDMessages.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;,
        Lcom/android/mms/ui/ManageSDMessages$SaveRunnable;,
        Lcom/android/mms/ui/ManageSDMessages$CancelListener;
    }
.end annotation


# static fields
.field public static final DIALOG_DELETE_CONFIRM:I = 0x3fc

.field public static final DIALOG_DELETE_ERROR:I = 0x3f7

.field public static final DIALOG_IMPORT_ERROR:I = 0x3f2

.field public static final DIALOG_IMPORT_PROGRESS_BAR:I = 0x3ed

.field private static final MENU_COPY_TO_PHONE_MEMORY:I = 0x0

.field private static final MENU_DELETE_FROM_SDCARD:I = 0x1

.field private static final MENU_VIEW:I = 0x2

.field private static final OPTION_MENU_COPY_SEL:I = 0x1

.field private static final OPTION_MENU_DELETE_SEL:I = 0x0

.field private static final SHOW_BUSY:I = 0x2

.field private static final SHOW_EMPTY:I = 0x1

.field private static final SHOW_LIST:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Mms/ManageSDMessages"

.field private static final VMSG_BODY:I = 0x5

.field private static final VMSG_DATE:I = 0x4

.field private static final VMSG_INBOX_ADDR:I = 0x2

.field private static final VMSG_SENT_ADDR:I = 0x3

.field private static final VMSG_TYPE:I = 0x0

.field private static final VMSG_TYPE_SENT:Ljava/lang/String; = "SENT"


# instance fields
.field private MsgListAdapter:Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;

.field private arFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private arMsgItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/MsgItem;",
            ">;"
        }
    .end annotation
.end field

.field private countChecked:I

.field private fileList:[Ljava/io/File;

.field private finish:Z

.field private mCancelListener:Lcom/android/mms/ui/ManageSDMessages$CancelListener;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mEmptyView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mLeftSoftkey:Landroid/widget/Button;

.field private mMessageIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mMessageListView:Landroid/widget/ListView;

.field private mProgress:Landroid/app/ProgressDialog;

.field private mProgressCount:I

.field private mSaveRunnable:Lcom/android/mms/ui/ManageSDMessages$SaveRunnable;

.field private mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mSelectAllLayout:Landroid/widget/LinearLayout;

.field private mState:I

.field private mTargetDirectory:Ljava/lang/String;

.field private mUncheckItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected m_Receiver:Landroid/content/BroadcastReceiver;

.field private vmg:Lcom/android/mms/ui/VMessage;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 72
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 102
    iput-object v2, p0, Lcom/android/mms/ui/ManageSDMessages;->arFileList:Ljava/util/ArrayList;

    .line 103
    iput-object v2, p0, Lcom/android/mms/ui/ManageSDMessages;->arMsgItem:Ljava/util/ArrayList;

    .line 104
    iput-object v2, p0, Lcom/android/mms/ui/ManageSDMessages;->fileList:[Ljava/io/File;

    .line 106
    iput-object v2, p0, Lcom/android/mms/ui/ManageSDMessages;->MsgListAdapter:Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;

    .line 107
    new-instance v0, Lcom/android/mms/ui/VMessage;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/VMessage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->vmg:Lcom/android/mms/ui/VMessage;

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getExternalSdCardStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Backup/vMessage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mTargetDirectory:Ljava/lang/String;

    .line 115
    iput v3, p0, Lcom/android/mms/ui/ManageSDMessages;->mProgressCount:I

    .line 118
    new-instance v0, Lcom/android/mms/ui/ManageSDMessages$SaveRunnable;

    invoke-direct {v0, p0, v2}, Lcom/android/mms/ui/ManageSDMessages$SaveRunnable;-><init>(Lcom/android/mms/ui/ManageSDMessages;Lcom/android/mms/ui/ManageSDMessages$1;)V

    iput-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mSaveRunnable:Lcom/android/mms/ui/ManageSDMessages$SaveRunnable;

    .line 119
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mHandler:Landroid/os/Handler;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mMessageIds:Ljava/util/ArrayList;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mUncheckItems:Ljava/util/ArrayList;

    .line 127
    iput v3, p0, Lcom/android/mms/ui/ManageSDMessages;->countChecked:I

    .line 427
    new-instance v0, Lcom/android/mms/ui/ManageSDMessages$CancelListener;

    invoke-direct {v0, p0, v2}, Lcom/android/mms/ui/ManageSDMessages$CancelListener;-><init>(Lcom/android/mms/ui/ManageSDMessages;Lcom/android/mms/ui/ManageSDMessages$1;)V

    iput-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mCancelListener:Lcom/android/mms/ui/ManageSDMessages$CancelListener;

    .line 593
    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ManageSDMessages;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/ManageSDMessages;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mMessageIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/mms/ui/ManageSDMessages;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/mms/ui/ManageSDMessages;->mMessageIds:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/ManageSDMessages;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/mms/ui/ManageSDMessages;->finish:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/mms/ui/ManageSDMessages;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/mms/ui/ManageSDMessages;->finish:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/ManageSDMessages;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/ManageSDMessages;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ManageSDMessages;->copyToPhoneMemory(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/ManageSDMessages;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mUncheckItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ManageSDMessages;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mLeftSoftkey:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/mms/ui/ManageSDMessages;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput p1, p0, Lcom/android/mms/ui/ManageSDMessages;->countChecked:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/mms/ui/ManageSDMessages;)Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->MsgListAdapter:Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/mms/ui/ManageSDMessages;Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;)Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/mms/ui/ManageSDMessages;->MsgListAdapter:Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/mms/ui/ManageSDMessages;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/ManageSDMessages;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSDMessages;->getSDList()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/ui/ManageSDMessages;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->arMsgItem:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/ManageSDMessages;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ManageSDMessages;->updateState(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/ui/ManageSDMessages;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private copyToPhoneMemory(I)Z
    .locals 16
    .parameter "index"

    .prologue
    .line 492
    new-instance v8, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ManageSDMessages;->mTargetDirectory:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ManageSDMessages;->arFileList:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 494
    .local v8, currentFile:Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ManageSDMessages;->vmg:Lcom/android/mms/ui/VMessage;

    invoke-virtual {v1, v8}, Lcom/android/mms/ui/VMessage;->readFileFromSDCard1(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v7

    .line 495
    .local v7, arlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v7, :cond_0

    .line 496
    const/4 v1, 0x0

    .line 547
    :goto_0
    return v1

    .line 499
    :cond_0
    new-instance v14, Ljava/text/SimpleDateFormat;

    const-string v1, "h:mma, yyyy MMM dd"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v14, v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 500
    .local v14, sdf:Ljava/text/SimpleDateFormat;
    const/4 v9, 0x0

    .line 503
    .local v9, date:Ljava/util/Date;
    const-string v2, ""

    .line 504
    .local v2, addr:Ljava/lang/String;
    const-string v3, ""

    .line 505
    .local v3, body:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 506
    .local v11, msgType:Ljava/lang/String;
    const/4 v1, 0x4

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 508
    .local v15, time:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x5

    if-le v1, v4, :cond_1

    .line 509
    const/4 v1, 0x5

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #body:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 511
    .restart local v3       #body:Ljava/lang/String;
    :cond_1
    const-string v1, "SENT"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 512
    const/4 v1, 0x3

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #addr:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 517
    .restart local v2       #addr:Ljava/lang/String;
    :goto_1
    if-nez v2, :cond_2

    .line 518
    const v1, 0x7f0c013b

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ManageSDMessages;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 520
    :cond_2
    if-nez v15, :cond_3

    .line 521
    const-string v15, "2000.1.1.12.00.00"

    .line 524
    :cond_3
    :try_start_0
    invoke-virtual {v14, v15}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 529
    :goto_2
    const-wide/16 v12, 0x0

    .line 531
    .local v12, restoreTime:J
    if-eqz v9, :cond_5

    .line 532
    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    .line 540
    :goto_3
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "SENT"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 542
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ManageSDMessages;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Landroid/provider/Telephony$Sms$Sent;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Landroid/net/Uri;

    .line 547
    :goto_4
    const/4 v1, 0x1

    goto :goto_0

    .line 514
    .end local v12           #restoreTime:J
    :cond_4
    const/4 v1, 0x2

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #addr:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .restart local v2       #addr:Ljava/lang/String;
    goto :goto_1

    .line 525
    :catch_0
    move-exception v10

    .line 526
    .local v10, e:Ljava/text/ParseException;
    invoke-virtual {v10}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_2

    .line 535
    .end local v10           #e:Ljava/text/ParseException;
    .restart local v12       #restoreTime:J
    :cond_5
    const-string v1, "Mms/ManageSDMessages"

    const-string v4, "copyToPhoneMemory(): value of date is null!"

    invoke-static {v1, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    goto :goto_3

    .line 545
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ManageSDMessages;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Landroid/provider/Telephony$Sms$Inbox;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Z)Landroid/net/Uri;

    goto :goto_4
.end method

.method private deleteFromSd(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 473
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages;->mTargetDirectory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/mms/ui/ManageSDMessages;->arFileList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 474
    .local v0, currentFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 475
    iget-object v1, p0, Lcom/android/mms/ui/ManageSDMessages;->arFileList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 476
    iget-object v1, p0, Lcom/android/mms/ui/ManageSDMessages;->arMsgItem:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 477
    return-void
.end method

.method private deleteSelFromSD()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 480
    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages;->MsgListAdapter:Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->getCount()I

    move-result v1

    .local v1, index:I
    :goto_0
    if-lez v1, :cond_1

    .line 481
    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    .line 483
    .local v0, flag:Z
    if-eqz v0, :cond_0

    .line 484
    invoke-direct {p0, v1}, Lcom/android/mms/ui/ManageSDMessages;->deleteFromSd(I)V

    .line 485
    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 480
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 488
    .end local v0           #flag:Z
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 489
    return-void
.end method

.method private getSDList()V
    .locals 8

    .prologue
    .line 217
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/mms/ui/ManageSDMessages;->mTargetDirectory:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 219
    .local v3, targetDirectory:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v4

    if-nez v4, :cond_3

    .line 220
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 221
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/ManageSDMessages;->fileList:[Ljava/io/File;

    .line 230
    :goto_0
    iget-object v4, p0, Lcom/android/mms/ui/ManageSDMessages;->arFileList:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    .line 231
    iget-object v4, p0, Lcom/android/mms/ui/ManageSDMessages;->arFileList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 232
    iget-object v4, p0, Lcom/android/mms/ui/ManageSDMessages;->arFileList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 238
    :cond_1
    :goto_1
    :try_start_0
    iget-object v4, p0, Lcom/android/mms/ui/ManageSDMessages;->fileList:[Ljava/io/File;

    if-eqz v4, :cond_5

    .line 239
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v4, p0, Lcom/android/mms/ui/ManageSDMessages;->fileList:[Ljava/io/File;

    array-length v4, v4

    if-ge v1, v4, :cond_5

    .line 241
    iget-object v4, p0, Lcom/android/mms/ui/ManageSDMessages;->fileList:[Ljava/io/File;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 242
    iget-object v4, p0, Lcom/android/mms/ui/ManageSDMessages;->fileList:[Ljava/io/File;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 243
    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/ManageSDMessages;->arFileList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/mms/ui/ManageSDMessages;->fileList:[Ljava/io/File;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 223
    .end local v1           #i:I
    :cond_3
    new-instance v4, Lcom/android/mms/ui/ManageSDMessages$3;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/ManageSDMessages$3;-><init>(Lcom/android/mms/ui/ManageSDMessages;)V

    invoke-virtual {v3, v4}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/ManageSDMessages;->fileList:[Ljava/io/File;

    goto :goto_0

    .line 234
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/mms/ui/ManageSDMessages;->arFileList:Ljava/util/ArrayList;

    goto :goto_1

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v4, "Mms/ManageSDMessages"

    const-string v5, "NullPointerException in getSDList()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_5
    iget-object v4, p0, Lcom/android/mms/ui/ManageSDMessages;->arMsgItem:Ljava/util/ArrayList;

    if-eqz v4, :cond_9

    .line 252
    iget-object v4, p0, Lcom/android/mms/ui/ManageSDMessages;->arMsgItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 253
    iget-object v4, p0, Lcom/android/mms/ui/ManageSDMessages;->arMsgItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 258
    :cond_6
    :goto_3
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_4
    iget-object v4, p0, Lcom/android/mms/ui/ManageSDMessages;->arFileList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_b

    .line 259
    iget-object v5, p0, Lcom/android/mms/ui/ManageSDMessages;->vmg:Lcom/android/mms/ui/VMessage;

    new-instance v6, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/mms/ui/ManageSDMessages;->mTargetDirectory:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v4, p0, Lcom/android/mms/ui/ManageSDMessages;->arFileList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/android/mms/ui/VMessage;->readFileFromSDCard2(Ljava/io/File;)Lcom/android/mms/ui/MsgItem;

    move-result-object v2

    .line 262
    .local v2, msgitem:Lcom/android/mms/ui/MsgItem;
    if-eqz v2, :cond_8

    iget v4, v2, Lcom/android/mms/ui/MsgItem;->boxId:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_7

    iget v4, v2, Lcom/android/mms/ui/MsgItem;->boxId:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_8

    :cond_7
    iget-object v4, v2, Lcom/android/mms/ui/MsgItem;->body:Ljava/lang/String;

    if-nez v4, :cond_a

    .line 258
    :cond_8
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 256
    .end local v1           #i:I
    .end local v2           #msgitem:Lcom/android/mms/ui/MsgItem;
    :cond_9
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/mms/ui/ManageSDMessages;->arMsgItem:Ljava/util/ArrayList;

    goto :goto_3

    .line 265
    .restart local v1       #i:I
    .restart local v2       #msgitem:Lcom/android/mms/ui/MsgItem;
    :cond_a
    iget-object v4, p0, Lcom/android/mms/ui/ManageSDMessages;->arMsgItem:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 267
    .end local v2           #msgitem:Lcom/android/mms/ui/MsgItem;
    :cond_b
    return-void
.end method

.method private initResourceRefs()V
    .locals 2

    .prologue
    .line 185
    const v0, 0x7f0b003b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSDMessages;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mSelectAllLayout:Landroid/widget/LinearLayout;

    .line 186
    const v0, 0x7f0b003d

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSDMessages;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 189
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mSelectAllLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/mms/ui/ManageSDMessages$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ManageSDMessages$2;-><init>(Lcom/android/mms/ui/ManageSDMessages;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 211
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 212
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 213
    return-void
.end method

.method private initSDLists()V
    .locals 2

    .prologue
    .line 270
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/ManageSDMessages$4;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ManageSDMessages$4;-><init>(Lcom/android/mms/ui/ManageSDMessages;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 298
    return-void
.end method

.method private updateState(I)V
    .locals 4
    .parameter "state"

    .prologue
    const v3, 0x7f0c0262

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 561
    iget v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mState:I

    if-ne v0, p1, :cond_0

    .line 591
    :goto_0
    return-void

    .line 565
    :cond_0
    iput p1, p0, Lcom/android/mms/ui/ManageSDMessages;->mState:I

    .line 566
    packed-switch p1, :pswitch_data_0

    .line 589
    const-string v0, "Mms/ManageSDMessages"

    const-string v1, "Invalid State"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 568
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mSelectAllLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 569
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 571
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ManageSDMessages;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSDMessages;->setTitle(Ljava/lang/CharSequence;)V

    .line 572
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ManageSDMessages;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_0

    .line 575
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mSelectAllLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 576
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 578
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ManageSDMessages;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSDMessages;->setTitle(Ljava/lang/CharSequence;)V

    .line 579
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ManageSDMessages;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_0

    .line 582
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 584
    const v0, 0x7f0c0009

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSDMessages;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSDMessages;->setTitle(Ljava/lang/CharSequence;)V

    .line 585
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSDMessages;->setProgressBarIndeterminateVisibility(Z)V

    .line 586
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSDMessages;->setProgress(I)V

    goto :goto_0

    .line 566
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 133
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ManageSDMessages;->requestWindowFeature(I)Z

    .line 135
    const v2, 0x7f040070

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ManageSDMessages;->setContentView(I)V

    .line 137
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSDMessages;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ManageSDMessages;->mContentResolver:Landroid/content/ContentResolver;

    .line 138
    const v2, 0x7f0b0241

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ManageSDMessages;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;

    .line 141
    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;

    const v3, 0x7f0b0242

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ManageSDMessages;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 142
    const v2, 0x7f0b023f

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ManageSDMessages;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/mms/ui/ManageSDMessages;->mLeftSoftkey:Landroid/widget/Button;

    .line 143
    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages;->mLeftSoftkey:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 145
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSDMessages;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 147
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 149
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 152
    :cond_0
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ManageSDMessages;->updateState(I)V

    .line 153
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSDMessages;->initResourceRefs()V

    .line 154
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSDMessages;->initSDLists()V

    .line 156
    new-instance v2, Lcom/android/mms/ui/ManageSDMessages$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ManageSDMessages$1;-><init>(Lcom/android/mms/ui/ManageSDMessages;)V

    iput-object v2, p0, Lcom/android/mms/ui/ManageSDMessages;->m_Receiver:Landroid/content/BroadcastReceiver;

    .line 165
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 166
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 169
    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages;->m_Receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/mms/ui/ManageSDMessages;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 171
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .parameter "dialogId"

    .prologue
    const v4, 0x7f0c0260

    const v6, 0x7f0c004f

    const/4 v5, 0x1

    .line 376
    move-object v0, p0

    .line 378
    .local v0, mContext:Landroid/content/Context;
    sparse-switch p1, :sswitch_data_0

    .line 424
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 380
    :sswitch_0
    iget-object v3, p0, Lcom/android/mms/ui/ManageSDMessages;->mMessageIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 382
    .local v2, progressMax:I
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 383
    .local v1, progress:Landroid/app/ProgressDialog;
    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 384
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSDMessages;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c025d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 385
    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 386
    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 387
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/mms/ui/ManageSDMessages;->mProgressCount:I

    goto :goto_0

    .line 391
    .end local v1           #progress:Landroid/app/ProgressDialog;
    .end local v2           #progressMax:I
    :sswitch_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c025e

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/mms/ui/ManageSDMessages$5;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/ManageSDMessages$5;-><init>(Lcom/android/mms/ui/ManageSDMessages;)V

    invoke-virtual {v3, v6, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 400
    :sswitch_2
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c025f

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/mms/ui/ManageSDMessages$6;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/ManageSDMessages$6;-><init>(Lcom/android/mms/ui/ManageSDMessages;)V

    invoke-virtual {v3, v6, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 378
    nop

    :sswitch_data_0
    .sparse-switch
        0x3ed -> :sswitch_0
        0x3f2 -> :sswitch_1
        0x3f7 -> :sswitch_2
    .end sparse-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 301
    const v6, 0x7f0b0153

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 303
    .local v3, mCheckbox:Landroid/widget/CheckBox;
    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    if-nez v6, :cond_1

    move v0, v4

    .line 305
    .local v0, checked:Z
    :goto_0
    const/4 v1, 0x0

    .line 307
    .local v1, count:I
    if-nez v0, :cond_2

    .line 309
    iget v6, p0, Lcom/android/mms/ui/ManageSDMessages;->countChecked:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/android/mms/ui/ManageSDMessages;->countChecked:I

    .line 310
    iget-object v6, p0, Lcom/android/mms/ui/ManageSDMessages;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v6, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 325
    :cond_0
    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 327
    iget v6, p0, Lcom/android/mms/ui/ManageSDMessages;->countChecked:I

    if-lez v6, :cond_5

    .line 328
    iget-object v5, p0, Lcom/android/mms/ui/ManageSDMessages;->mLeftSoftkey:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 331
    :goto_2
    return-void

    .end local v0           #checked:Z
    .end local v1           #count:I
    :cond_1
    move v0, v5

    .line 303
    goto :goto_0

    .line 314
    .restart local v0       #checked:Z
    .restart local v1       #count:I
    :cond_2
    iget v6, p0, Lcom/android/mms/ui/ManageSDMessages;->countChecked:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/mms/ui/ManageSDMessages;->countChecked:I

    .line 316
    const/4 v2, 0x0

    .local v2, index:I
    :goto_3
    iget-object v6, p0, Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCount()I

    move-result v6

    if-ge v2, v6, :cond_4

    .line 317
    iget-object v6, p0, Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;

    invoke-virtual {v6, v2}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 318
    add-int/lit8 v1, v1, 0x1

    .line 316
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 321
    :cond_4
    iget-object v6, p0, Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCount()I

    move-result v6

    if-ne v1, v6, :cond_0

    .line 322
    iget-object v6, p0, Lcom/android/mms/ui/ManageSDMessages;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v6, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_1

    .line 330
    .end local v2           #index:I
    :cond_5
    iget-object v4, p0, Lcom/android/mms/ui/ManageSDMessages;->mLeftSoftkey:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 175
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ManageSDMessages;->setIntent(Landroid/content/Intent;)V

    .line 177
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ManageSDMessages;->updateState(I)V

    .line 179
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSDMessages;->initResourceRefs()V

    .line 180
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSDMessages;->initSDLists()V

    .line 181
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 353
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 358
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 355
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSDMessages;->finish()V

    goto :goto_0

    .line 353
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 557
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 558
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 363
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 364
    packed-switch p1, :pswitch_data_0

    .line 372
    .end local p2
    :goto_0
    return-void

    .line 366
    .restart local p2
    :pswitch_0
    check-cast p2, Landroid/app/ProgressDialog;

    .end local p2
    iput-object p2, p0, Lcom/android/mms/ui/ManageSDMessages;->mProgress:Landroid/app/ProgressDialog;

    .line 367
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mProgress:Landroid/app/ProgressDialog;

    iget v1, p0, Lcom/android/mms/ui/ManageSDMessages;->mProgressCount:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 368
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mProgress:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/mms/ui/ManageSDMessages;->mCancelListener:Lcom/android/mms/ui/ManageSDMessages$CancelListener;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 369
    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mms/ui/ManageSDMessages;->mSaveRunnable:Lcom/android/mms/ui/ManageSDMessages$SaveRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 364
    nop

    :pswitch_data_0
    .packed-switch 0x3ed
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 552
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 553
    return-void
.end method

.method public softkeyLeftRun(Landroid/view/View;)V
    .locals 5
    .parameter "target"

    .prologue
    .line 335
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 336
    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    .line 338
    .local v0, flag:Z
    if-eqz v0, :cond_0

    .line 339
    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages;->mMessageIds:Ljava/util/ArrayList;

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 341
    .end local v0           #flag:Z
    :cond_1
    const/16 v2, 0x3ed

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ManageSDMessages;->showDialog(I)V

    .line 346
    return-void
.end method

.method public softkeyRightRun(Landroid/view/View;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSDMessages;->finish()V

    .line 350
    return-void
.end method
