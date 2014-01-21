.class public Lcom/android/mms/ui/ManageSimMessages;
.super Landroid/app/Activity;
.source "ManageSimMessages.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lcom/android/mms/data/Contact$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;,
        Lcom/android/mms/ui/ManageSimMessages$SimMessageInfo;,
        Lcom/android/mms/ui/ManageSimMessages$QueryHandler;
    }
.end annotation


# static fields
.field private static final COMPLETE_COPY_TO_PHONE_MEMORY:I = 0x64

.field private static final COMPLETE_DELETE_FROM_SIM:I = 0x65

.field private static final ICC_URI:Landroid/net/Uri; = null

.field public static final LIST_MODE_COPY_TO_PHONE:I = 0x2

.field public static final LIST_MODE_DELETE:I = 0x1

.field public static final LIST_MODE_NORMAL:I = 0x0

.field private static final MENU_COPY_TO_PHONE_MEMORY:I = 0x0

.field private static final MENU_DELETE_FROM_SIM:I = 0x1

.field private static final OPTION_MENU_CANCEL:I = 0x1

.field private static final OPTION_MENU_COPY:I = 0x3

.field private static final OPTION_MENU_DELETE:I = 0x2

.field private static final OPTION_MENU_DONE:I = 0x0

.field public static final SIM_FULL_NOTIFICATION_ID:I = 0xea

.field private static final SIM_MESSAGES_QUERY_TOKEN:I = 0x61a8

.field private static final TAG:Ljava/lang/String; = "Mms/ManageSimMessages"


# instance fields
.field private mAirplaneModeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mCompleteHandler:Landroid/os/Handler;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

.field public mListMode:I

.field private mMenuDone:Landroid/view/MenuItem;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mRefreshSimListReceiver:Landroid/content/BroadcastReceiver;

.field private mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mSelectAllLayout:Landroid/widget/LinearLayout;

.field private mSimList:Landroid/widget/ListView;

.field private onSimMessageListItemClick:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-string v0, "content://sms/icc"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/ManageSimMessages;->ICC_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 85
    iput-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    .line 86
    iput-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 91
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mListMode:I

    .line 99
    iput-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mMenuDone:Landroid/view/MenuItem;

    .line 571
    new-instance v0, Lcom/android/mms/ui/ManageSimMessages$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ManageSimMessages$5;-><init>(Lcom/android/mms/ui/ManageSimMessages;)V

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mCompleteHandler:Landroid/os/Handler;

    .line 617
    new-instance v0, Lcom/android/mms/ui/ManageSimMessages$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ManageSimMessages$6;-><init>(Lcom/android/mms/ui/ManageSimMessages;)V

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mRefreshSimListReceiver:Landroid/content/BroadcastReceiver;

    .line 635
    new-instance v0, Lcom/android/mms/ui/ManageSimMessages$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ManageSimMessages$7;-><init>(Lcom/android/mms/ui/ManageSimMessages;)V

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mAirplaneModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 670
    new-instance v0, Lcom/android/mms/ui/ManageSimMessages$9;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ManageSimMessages$9;-><init>(Lcom/android/mms/ui/ManageSimMessages;)V

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->onSimMessageListItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ManageSimMessages;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ManageSimMessages;)Lcom/android/mms/ui/SimMessageListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/ManageSimMessages;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ManageSimMessages;->setListMode(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ManageSimMessages;)Landroid/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mMenuDone:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ManageSimMessages;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->refreshMessageList()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/ManageSimMessages;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ManageSimMessages;->deleteFromSim(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/ManageSimMessages;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->cancelSimFullNotification()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/ManageSimMessages;ILjava/lang/String;Ljava/lang/String;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 64
    invoke-direct/range {p0 .. p5}, Lcom/android/mms/ui/ManageSimMessages;->copyToPhoneMemory(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/ManageSimMessages;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mCompleteHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/ManageSimMessages;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ManageSimMessages;->showProgressDialog(I)V

    return-void
.end method

.method private cancelSimFullNotification()V
    .locals 1

    .prologue
    .line 175
    const/16 v0, 0xea

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 176
    return-void
.end method

.method private confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 412
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 413
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c0075

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 415
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 416
    const v1, 0x7f0c017b

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 417
    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 418
    const v1, 0x7f0c0224

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 420
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 421
    return-void
.end method

.method private confirmMultipleDeleteDialog(Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;I)V
    .locals 5
    .parameter "listener"
    .parameter "messageNumber"

    .prologue
    const/4 v3, 0x1

    .line 424
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 425
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c0075

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 427
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 428
    const v1, 0x7f0c017b

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 429
    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 431
    if-le p2, v3, :cond_0

    .line 432
    const v1, 0x7f0c0223

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/ManageSimMessages;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 437
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 438
    return-void

    .line 434
    :cond_0
    const v1, 0x7f0c0224

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private copyToPhoneMemory(ILjava/lang/String;Ljava/lang/String;J)Z
    .locals 8
    .parameter "type"
    .parameter "address"
    .parameter "body"
    .parameter "date"

    .prologue
    const/4 v7, 0x1

    .line 328
    const-string v0, "Mms/ManageSimMessages"

    const-string v1, "copyToPhoneMemory"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    if-ne p1, v7, :cond_0

    .line 332
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    move-object v1, p2

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Landroid/provider/Telephony$Sms$Inbox;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Z)Landroid/net/Uri;

    :goto_0
    move v0, v7

    .line 342
    :goto_1
    return v0

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, p2, p3, v1, v2}, Landroid/provider/Telephony$Sms$Sent;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 336
    :catch_0
    move-exception v6

    .line 337
    .local v6, e:Landroid/database/sqlite/SQLiteException;
    const-string v0, "Mms/ManageSimMessages"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copyToPhoneMemory error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-static {p0, v6}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    .line 339
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private deleteFromSim(I)I
    .locals 5
    .parameter "indexOnIcc"

    .prologue
    const/4 v4, 0x0

    .line 346
    const-string v1, "Mms/ManageSimMessages"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteFromSim indexOnIcc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    sget-object v1, Lcom/android/mms/ui/ManageSimMessages;->ICC_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 349
    .local v0, simUri:Landroid/net/Uri;
    const-string v1, "Mms/ManageSimMessages"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteFromSim simUri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0, v1, v0, v4, v4}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private refreshMessageList()V
    .locals 2

    .prologue
    .line 216
    const-string v0, "Mms/ManageSimMessages"

    const-string v1, "refreshMessageList()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->startQuery()V

    .line 219
    return-void
.end method

.method private setListMode(I)V
    .locals 3
    .parameter "listMode"

    .prologue
    const/4 v2, 0x0

    .line 441
    iget v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mListMode:I

    if-ne v0, p1, :cond_0

    .line 460
    :goto_0
    return-void

    .line 444
    :cond_0
    iput p1, p0, Lcom/android/mms/ui/ManageSimMessages;->mListMode:I

    .line 445
    if-nez p1, :cond_1

    .line 446
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 447
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSelectAllLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 449
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSimMessages;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0c0063

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 458
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    iget v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mListMode:I

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SimMessageListAdapter;->setListMode(I)V

    .line 459
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSimMessages;->invalidateOptionsMenu()V

    goto :goto_0

    .line 451
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 452
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 453
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSelectAllLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 455
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSimMessages;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private showProgressDialog(I)V
    .locals 2
    .parameter "stringId"

    .prologue
    .line 697
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ManageSimMessages;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 699
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 700
    const-string v0, "Mms/ManageSimMessages"

    const-string v1, "show progress"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    :cond_0
    return-void
.end method

.method private startQuery()V
    .locals 9

    .prologue
    .line 195
    const-string v0, "Mms/ManageSimMessages"

    const-string v1, "startQuery"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    const-string v0, "Mms/ManageSimMessages"

    const-string v1, "now is searching"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/16 v1, 0x61a8

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 205
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/16 v1, 0x61a8

    const/4 v2, 0x0

    sget-object v3, Lcom/android/mms/ui/ManageSimMessages;->ICC_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const v0, 0x7f0c0009

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->showProgressDialog(I)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 209
    :catch_0
    move-exception v8

    .line 210
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    const-string v0, "Mms/ManageSimMessages"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startQuery error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-static {p0, v8}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method


# virtual methods
.method public hideProgressDialog()V
    .locals 2

    .prologue
    .line 705
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSimMessages;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 712
    :cond_0
    :goto_0
    return-void

    .line 708
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 710
    const-string v0, "Mms/ManageSimMessages"

    const-string v1, "hide progress"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onClickDone()V
    .locals 14

    .prologue
    .line 477
    iget v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mListMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 478
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/SimMessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v9

    .line 480
    .local v9, cursor:Landroid/database/Cursor;
    const v0, 0x7f0c0225

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->showProgressDialog(I)V

    .line 481
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 482
    new-instance v8, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/SimMessageListAdapter;->getCheckedCount()I

    move-result v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 485
    .local v8, checkedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/ManageSimMessages$SimMessageInfo;>;"
    :cond_0
    const-string v0, "_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 486
    .local v12, id:I
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    invoke-virtual {v0, v12}, Lcom/android/mms/ui/SimMessageListAdapter;->isCheckedItem(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 495
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 497
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 498
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/ManageSimMessages$4;

    invoke-direct {v1, p0, v8}, Lcom/android/mms/ui/ManageSimMessages$4;-><init>(Lcom/android/mms/ui/ManageSimMessages;Ljava/util/ArrayList;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 536
    .end local v8           #checkedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/ManageSimMessages$SimMessageInfo;>;"
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v12           #id:I
    :cond_1
    :goto_1
    return-void

    .line 489
    .restart local v8       #checkedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/ManageSimMessages$SimMessageInfo;>;"
    .restart local v9       #cursor:Landroid/database/Cursor;
    .restart local v12       #id:I
    :cond_2
    const-string v0, "type"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 490
    .local v2, type:I
    const-string v0, "address"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 491
    .local v3, address:Ljava/lang/String;
    const-string v0, "date"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 492
    .local v4, date:J
    const-string v0, "body"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 494
    .local v6, body:Ljava/lang/String;
    new-instance v0, Lcom/android/mms/ui/ManageSimMessages$SimMessageInfo;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/ManageSimMessages$SimMessageInfo;-><init>(Lcom/android/mms/ui/ManageSimMessages;ILjava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 515
    .end local v2           #type:I
    .end local v3           #address:Ljava/lang/String;
    .end local v4           #date:J
    .end local v6           #body:Ljava/lang/String;
    .end local v8           #checkedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/ManageSimMessages$SimMessageInfo;>;"
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v12           #id:I
    :cond_3
    iget v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mListMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 516
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/SimMessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v9

    .line 518
    .restart local v9       #cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 519
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/SimMessageListAdapter;->getCheckedCount()I

    move-result v0

    new-array v7, v0, [I

    .line 520
    .local v7, checkedList:[I
    const/4 v10, 0x0

    .line 523
    .local v10, i:I
    :cond_4
    const-string v0, "_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 524
    .restart local v12       #id:I
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    invoke-virtual {v0, v12}, Lcom/android/mms/ui/SimMessageListAdapter;->isCheckedItem(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 529
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 531
    array-length v0, v7

    if-lez v0, :cond_1

    .line 532
    new-instance v0, Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;

    invoke-direct {v0, p0, v7}, Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;-><init>(Lcom/android/mms/ui/ManageSimMessages;[I)V

    array-length v1, v7

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ManageSimMessages;->confirmMultipleDeleteDialog(Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;I)V

    goto :goto_1

    .line 527
    :cond_5
    const-string v0, "index_on_icc"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 528
    .local v13, indexOnIcc:I
    add-int/lit8 v11, v10, 0x1

    .end local v10           #i:I
    .local v11, i:I
    aput v13, v7, v10

    move v10, v11

    .end local v11           #i:I
    .restart local v10       #i:I
    goto :goto_2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 223
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 225
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSimMessages;->invalidateOptionsMenu()V

    .line 226
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 13
    .parameter "item"

    .prologue
    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 260
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v8

    check-cast v8, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 262
    .local v8, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    iget v12, v8, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v12}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v9

    .line 263
    .local v9, itemObject:Ljava/lang/Object;
    instance-of v0, v9, Landroid/database/Cursor;

    if-nez v0, :cond_0

    move v0, v10

    .line 307
    :goto_0
    return v0

    :cond_0
    move-object v6, v9

    .line 266
    check-cast v6, Landroid/database/Cursor;

    .line 267
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    if-ltz v0, :cond_1

    .line 268
    const-string v0, "index_on_icc"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 270
    .local v7, indexOnIcc:I
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 307
    .end local v7           #indexOnIcc:I
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 272
    .restart local v7       #indexOnIcc:I
    :pswitch_0
    const-string v0, "type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 273
    .local v1, type:I
    const-string v0, "address"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 274
    .local v2, address:Ljava/lang/String;
    const-string v0, "date"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 275
    .local v4, date:J
    const-string v0, "body"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .local v3, body:Ljava/lang/String;
    move-object v0, p0

    .line 277
    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ManageSimMessages;->copyToPhoneMemory(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_2

    .line 278
    const-string v0, "Mms/ManageSimMessages"

    const-string v10, "MENU_COPY_TO_PHONE_MEMORY failed"

    invoke-static {v0, v10}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const v0, 0x7f0c0430

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_1
    move v0, v11

    .line 285
    goto :goto_0

    .line 282
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSimMessages;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v12, 0x7f0d0006

    invoke-virtual {v0, v12, v11}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 288
    .end local v1           #type:I
    .end local v2           #address:Ljava/lang/String;
    .end local v3           #body:Ljava/lang/String;
    .end local v4           #date:J
    :pswitch_1
    new-instance v0, Lcom/android/mms/ui/ManageSimMessages$3;

    invoke-direct {v0, p0, v7}, Lcom/android/mms/ui/ManageSimMessages$3;-><init>(Lcom/android/mms/ui/ManageSimMessages;I)V

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;)V

    move v0, v11

    .line 304
    goto/16 :goto_0

    .line 270
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 103
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    const v0, 0x7f04007d

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->setContentView(I)V

    .line 107
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSimMessages;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 109
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSimMessages;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;

    .line 110
    new-instance v0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;

    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1, p0}, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;-><init>(Lcom/android/mms/ui/ManageSimMessages;Landroid/content/ContentResolver;Lcom/android/mms/ui/ManageSimMessages;)V

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 111
    const v0, 0x7f0b0241

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    .line 113
    new-instance v0, Lcom/android/mms/ui/SimMessageListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/mms/ui/SimMessageListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    .line 114
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 115
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->onSimMessageListItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    const v1, 0x7f0b0242

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ManageSimMessages;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 118
    const v0, 0x7f0b003b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSelectAllLayout:Landroid/widget/LinearLayout;

    .line 119
    const v0, 0x7f0b003d

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 120
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setClickable(Z)V

    .line 122
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSelectAllLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/mms/ui/ManageSimMessages$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ManageSimMessages$1;-><init>(Lcom/android/mms/ui/ManageSimMessages;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    const-string v0, ""

    const-string v1, ""

    invoke-static {p0, v0, v1, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 142
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 144
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->cancelSimFullNotification()V

    .line 145
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ManageSimMessages;->setListMode(I)V

    .line 147
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mRefreshSimListReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.REFRESH_SIM_LIST"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ManageSimMessages;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 150
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mAirplaneModeChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ManageSimMessages;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 152
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v7, 0x0

    .line 230
    move-object v2, p3

    check-cast v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 232
    .local v2, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v5, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    if-eqz v5, :cond_0

    if-nez v2, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    iget v6, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v3

    .line 237
    .local v3, itemObject:Ljava/lang/Object;
    instance-of v5, v3, Landroid/database/Cursor;

    if-eqz v5, :cond_0

    move-object v1, v3

    .line 240
    check-cast v1, Landroid/database/Cursor;

    .line 241
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    if-ltz v5, :cond_0

    iget v5, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 244
    const-string v5, "ADDRESS"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 247
    .local v4, nameInContact:Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 248
    const v5, 0x7f0c0221

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 252
    .end local v0           #address:Ljava/lang/String;
    :goto_1
    const v5, 0x7f0c0222

    invoke-interface {p1, v7, v7, v7, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 253
    const/4 v5, 0x1

    const v6, 0x7f0c0099

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 255
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    goto :goto_0

    .line 250
    .restart local v0       #address:Ljava/lang/String;
    :cond_2
    if-nez v4, :cond_3

    .end local v0           #address:Ljava/lang/String;
    :goto_2
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_1

    .restart local v0       #address:Ljava/lang/String;
    :cond_3
    move-object v0, v4

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 312
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 314
    iput-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 316
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SimMessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/SimMessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/SimMessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mRefreshSimListReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 324
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mAirplaneModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 325
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 650
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mListMode:I

    if-eqz v0, :cond_0

    .line 651
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->setListMode(I)V

    .line 652
    const/4 v0, 0x1

    .line 655
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 387
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 408
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_1
    return v0

    .line 389
    :sswitch_0
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ManageSimMessages;->setListMode(I)V

    goto :goto_1

    .line 392
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSimMessages;->onClickDone()V

    goto :goto_1

    .line 395
    :sswitch_2
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->setListMode(I)V

    goto :goto_0

    .line 398
    :sswitch_3
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->setListMode(I)V

    goto :goto_0

    .line 401
    :sswitch_4
    iget v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mListMode:I

    if-nez v0, :cond_0

    .line 402
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSimMessages;->finish()V

    goto :goto_0

    .line 404
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ManageSimMessages;->setListMode(I)V

    goto :goto_0

    .line 387
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x102002c -> :sswitch_4
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    const v2, 0x7f0c007b

    const/4 v7, 0x6

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 356
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 358
    iget v5, p0, Lcom/android/mms/ui/ManageSimMessages;->mListMode:I

    if-nez v5, :cond_1

    .line 359
    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 360
    const/4 v3, 0x3

    const v5, 0x7f0c0222

    invoke-interface {p1, v4, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v5, 0x7f020091

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 362
    invoke-interface {p1, v4, v6, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020095

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 382
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    .line 366
    :cond_1
    const v5, 0x7f0c017c

    invoke-interface {p1, v4, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 367
    .local v1, menuCancel:Landroid/view/MenuItem;
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 369
    iget v5, p0, Lcom/android/mms/ui/ManageSimMessages;->mListMode:I

    if-ne v5, v3, :cond_4

    :goto_1
    invoke-interface {p1, v4, v4, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mMenuDone:Landroid/view/MenuItem;

    .line 370
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 372
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSimMessages;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v6, :cond_5

    move v0, v3

    .line 373
    .local v0, isLandscape:Z
    :goto_2
    if-eqz v0, :cond_2

    .line 374
    const v2, 0x7f02022c

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 375
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mMenuDone:Landroid/view/MenuItem;

    const v5, 0x7f02022d

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 378
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/SimMessageListAdapter;->getCheckedCount()I

    move-result v2

    if-ge v2, v3, :cond_0

    .line 379
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 369
    .end local v0           #isLandscape:Z
    :cond_4
    const v2, 0x7f0c00dd

    goto :goto_1

    :cond_5
    move v0, v4

    .line 372
    goto :goto_2
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 164
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 166
    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 167
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/ui/ManageSimMessages$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ManageSimMessages$2;-><init>(Lcom/android/mms/ui/ManageSimMessages;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 172
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 156
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 158
    invoke-static {p0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 159
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSimMessages;->hideProgressDialog()V

    .line 160
    return-void
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 1
    .parameter "updated"

    .prologue
    .line 660
    new-instance v0, Lcom/android/mms/ui/ManageSimMessages$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ManageSimMessages$8;-><init>(Lcom/android/mms/ui/ManageSimMessages;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 668
    return-void
.end method
