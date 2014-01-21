.class public Lcom/samsung/mms/util/SaveRestoreOperation;
.super Ljava/lang/Object;
.source "SaveRestoreOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;,
        Lcom/samsung/mms/util/SaveRestoreOperation$DialogSearchMenuBlockKeyListener;,
        Lcom/samsung/mms/util/SaveRestoreOperation$MessageHandler;,
        Lcom/samsung/mms/util/SaveRestoreOperation$BackgroundQueryHandler;,
        Lcom/samsung/mms/util/SaveRestoreOperation$SaveRestoreListener;
    }
.end annotation


# static fields
.field private static final ALL_SMS_TO_SAVE:I = 0x1

.field private static final ANY_MMS_IN_SELECTION:I = 0x2

.field private static final ANY_SMS_PRESENT:I = 0x7

.field private static final CHECK_FOR_DUPLICATES:I = 0x3

.field private static final INVALID_CHAR:[Ljava/lang/String; = null

.field private static final MAX_LENGTH:I = 0x32

.field public static final MAX_PATH_LENGTH:I = 0xfa

.field private static final RESTORE_ERROR:I = 0x5

.field private static final RESTORE_SUCCESS:I = 0x4

.field private static final SMS_ANONYMOUS_DRAFT_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "Mms/SaveRestoreOperation"

.field private static final THREAD_RECIPIENTID_PROJECTION:[Ljava/lang/String; = null

.field private static final USER_CANCELLED:I = 0x6

.field private static sAllCanonical:Landroid/net/Uri;

.field public static final sAllThreadsUri:Landroid/net/Uri;


# instance fields
.field private MAX_MESSAGES_PER_FILE:I

.field private SaveRestoreDestroyed:Z

.field private mActivity:Landroid/app/Activity;

.field mAltDialog:Landroid/app/AlertDialog;

.field private mArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/mms/data/SavedSmsMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mFileCount:I

.field private mHandler:Lcom/samsung/mms/util/SaveRestoreOperation$MessageHandler;

.field private mIsThreadId:Z

.field mNoSdCard:Z

.field private mOkSaveBtn:Landroid/widget/Button;

.field private mQueryHandler:Lcom/samsung/mms/util/SaveRestoreOperation$BackgroundQueryHandler;

.field mRestoreTask:Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;

.field private mRestoreThread:Ljava/lang/Thread;

.field private mSDcardFolderName:Ljava/lang/String;

.field private mSaveCompleteListener:Lcom/samsung/mms/util/SaveRestoreOperation$SaveRestoreListener;

.field private mSdCardReceiver:Landroid/content/BroadcastReceiver;

.field private mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mToast:Landroid/widget/Toast;

.field mfileNameTextView:Landroid/widget/EditText;

.field public nonSmsItemSelected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 94
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\\"

    aput-object v1, v0, v3

    const-string v1, "/"

    aput-object v1, v0, v4

    const-string v1, ":"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "*"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "?"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\""

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "<"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ">"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "|"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\n"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/mms/util/SaveRestoreOperation;->INVALID_CHAR:[Ljava/lang/String;

    .line 322
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "thread_id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/mms/util/SaveRestoreOperation;->SMS_ANONYMOUS_DRAFT_PROJECTION:[Ljava/lang/String;

    .line 655
    const-string v0, "content://mms-sms/canonical-addresses"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/mms/util/SaveRestoreOperation;->sAllCanonical:Landroid/net/Uri;

    .line 656
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "simple"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/mms/util/SaveRestoreOperation;->sAllThreadsUri:Landroid/net/Uri;

    .line 658
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "recipient_ids"

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/mms/util/SaveRestoreOperation;->THREAD_RECIPIENTID_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 97
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-boolean v2, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mIsThreadId:Z

    .line 79
    iput-object v3, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mfileNameTextView:Landroid/widget/EditText;

    .line 81
    iput-object v3, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mAltDialog:Landroid/app/AlertDialog;

    .line 82
    iput-boolean v2, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mNoSdCard:Z

    .line 83
    iput-object v3, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mSaveCompleteListener:Lcom/samsung/mms/util/SaveRestoreOperation$SaveRestoreListener;

    .line 84
    iput-object v3, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mRestoreThread:Ljava/lang/Thread;

    .line 85
    iput-object v3, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mRestoreTask:Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;

    .line 86
    const-string v1, "/Messaging/"

    iput-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mSDcardFolderName:Ljava/lang/String;

    .line 87
    iput v2, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mFileCount:I

    .line 88
    const/16 v1, 0x7d0

    iput v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->MAX_MESSAGES_PER_FILE:I

    .line 89
    iput-boolean v2, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->SaveRestoreDestroyed:Z

    .line 90
    iput-boolean v2, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->nonSmsItemSelected:Z

    .line 554
    new-instance v1, Lcom/samsung/mms/util/SaveRestoreOperation$DialogSearchMenuBlockKeyListener;

    invoke-direct {v1, p0, v3}, Lcom/samsung/mms/util/SaveRestoreOperation$DialogSearchMenuBlockKeyListener;-><init>(Lcom/samsung/mms/util/SaveRestoreOperation;Lcom/samsung/mms/util/SaveRestoreOperation$1;)V

    iput-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 561
    new-instance v1, Lcom/samsung/mms/util/SaveRestoreOperation$11;

    invoke-direct {v1, p0}, Lcom/samsung/mms/util/SaveRestoreOperation$11;-><init>(Lcom/samsung/mms/util/SaveRestoreOperation;)V

    iput-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mTextWatcher:Landroid/text/TextWatcher;

    .line 579
    new-instance v1, Lcom/samsung/mms/util/SaveRestoreOperation$12;

    invoke-direct {v1, p0}, Lcom/samsung/mms/util/SaveRestoreOperation$12;-><init>(Lcom/samsung/mms/util/SaveRestoreOperation;)V

    iput-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mSdCardReceiver:Landroid/content/BroadcastReceiver;

    .line 98
    iput-object p1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    .line 99
    iget-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mContentResolver:Landroid/content/ContentResolver;

    .line 100
    new-instance v1, Lcom/samsung/mms/util/SaveRestoreOperation$BackgroundQueryHandler;

    iget-object v2, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v1, p0, v2}, Lcom/samsung/mms/util/SaveRestoreOperation$BackgroundQueryHandler;-><init>(Lcom/samsung/mms/util/SaveRestoreOperation;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mQueryHandler:Lcom/samsung/mms/util/SaveRestoreOperation$BackgroundQueryHandler;

    .line 101
    iput-object v3, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mArrayList:Ljava/util/ArrayList;

    .line 103
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 104
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mSdCardReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 4
    .parameter "activity"
    .parameter "dialogListener"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 112
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-boolean v2, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mIsThreadId:Z

    .line 79
    iput-object v3, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mfileNameTextView:Landroid/widget/EditText;

    .line 81
    iput-object v3, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mAltDialog:Landroid/app/AlertDialog;

    .line 82
    iput-boolean v2, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mNoSdCard:Z

    .line 83
    iput-object v3, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mSaveCompleteListener:Lcom/samsung/mms/util/SaveRestoreOperation$SaveRestoreListener;

    .line 84
    iput-object v3, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mRestoreThread:Ljava/lang/Thread;

    .line 85
    iput-object v3, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mRestoreTask:Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;

    .line 86
    const-string v1, "/Messaging/"

    iput-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mSDcardFolderName:Ljava/lang/String;

    .line 87
    iput v2, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mFileCount:I

    .line 88
    const/16 v1, 0x7d0

    iput v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->MAX_MESSAGES_PER_FILE:I

    .line 89
    iput-boolean v2, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->SaveRestoreDestroyed:Z

    .line 90
    iput-boolean v2, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->nonSmsItemSelected:Z

    .line 554
    new-instance v1, Lcom/samsung/mms/util/SaveRestoreOperation$DialogSearchMenuBlockKeyListener;

    invoke-direct {v1, p0, v3}, Lcom/samsung/mms/util/SaveRestoreOperation$DialogSearchMenuBlockKeyListener;-><init>(Lcom/samsung/mms/util/SaveRestoreOperation;Lcom/samsung/mms/util/SaveRestoreOperation$1;)V

    iput-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 561
    new-instance v1, Lcom/samsung/mms/util/SaveRestoreOperation$11;

    invoke-direct {v1, p0}, Lcom/samsung/mms/util/SaveRestoreOperation$11;-><init>(Lcom/samsung/mms/util/SaveRestoreOperation;)V

    iput-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mTextWatcher:Landroid/text/TextWatcher;

    .line 579
    new-instance v1, Lcom/samsung/mms/util/SaveRestoreOperation$12;

    invoke-direct {v1, p0}, Lcom/samsung/mms/util/SaveRestoreOperation$12;-><init>(Lcom/samsung/mms/util/SaveRestoreOperation;)V

    iput-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mSdCardReceiver:Landroid/content/BroadcastReceiver;

    .line 113
    iput-object p1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    .line 114
    iget-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mContentResolver:Landroid/content/ContentResolver;

    .line 115
    new-instance v1, Lcom/samsung/mms/util/SaveRestoreOperation$BackgroundQueryHandler;

    iget-object v2, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v1, p0, v2}, Lcom/samsung/mms/util/SaveRestoreOperation$BackgroundQueryHandler;-><init>(Lcom/samsung/mms/util/SaveRestoreOperation;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mQueryHandler:Lcom/samsung/mms/util/SaveRestoreOperation$BackgroundQueryHandler;

    .line 116
    iput-object v3, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mArrayList:Ljava/util/ArrayList;

    .line 117
    iput-object p2, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 118
    new-instance v1, Lcom/samsung/mms/util/SaveRestoreOperation$MessageHandler;

    invoke-direct {v1, p0}, Lcom/samsung/mms/util/SaveRestoreOperation$MessageHandler;-><init>(Lcom/samsung/mms/util/SaveRestoreOperation;)V

    iput-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mHandler:Lcom/samsung/mms/util/SaveRestoreOperation$MessageHandler;

    .line 120
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 121
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mSdCardReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/mms/util/SaveRestoreOperation;)Lcom/samsung/mms/util/SaveRestoreOperation$SaveRestoreListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mSaveCompleteListener:Lcom/samsung/mms/util/SaveRestoreOperation$SaveRestoreListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/mms/util/SaveRestoreOperation;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->MAX_MESSAGES_PER_FILE:I

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/mms/util/SaveRestoreOperation;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/samsung/mms/util/SaveRestoreOperation;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mArrayList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/samsung/mms/util/SaveRestoreOperation;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/samsung/mms/util/SaveRestoreOperation;->showErrorSuccessRestoreDialog(II)V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/mms/util/SaveRestoreOperation;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/samsung/mms/util/SaveRestoreOperation;->fileAlreadyExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/samsung/mms/util/SaveRestoreOperation;)Lcom/samsung/mms/util/SaveRestoreOperation$BackgroundQueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mQueryHandler:Lcom/samsung/mms/util/SaveRestoreOperation$BackgroundQueryHandler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/mms/util/SaveRestoreOperation;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->SaveRestoreDestroyed:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/samsung/mms/util/SaveRestoreOperation;)Lcom/samsung/mms/util/SaveRestoreOperation$MessageHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mHandler:Lcom/samsung/mms/util/SaveRestoreOperation$MessageHandler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/samsung/mms/util/SaveRestoreOperation;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/samsung/mms/util/SaveRestoreOperation;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$1900()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/samsung/mms/util/SaveRestoreOperation;->INVALID_CHAR:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/mms/util/SaveRestoreOperation;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mSDcardFolderName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/mms/util/SaveRestoreOperation;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$402(Lcom/samsung/mms/util/SaveRestoreOperation;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput p1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mFileCount:I

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/mms/util/SaveRestoreOperation;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mIsThreadId:Z

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/mms/util/SaveRestoreOperation;[JZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/samsung/mms/util/SaveRestoreOperation;->checkIfMmsInSelection([JZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/mms/util/SaveRestoreOperation;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/samsung/mms/util/SaveRestoreOperation;->showNoSmsSelectedDialog()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/mms/util/SaveRestoreOperation;[J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/samsung/mms/util/SaveRestoreOperation;->showMmsSelectedDialog([J)V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/mms/util/SaveRestoreOperation;[JZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/samsung/mms/util/SaveRestoreOperation;->showSavedMsgsListDialog([JZ)V

    return-void
.end method

.method private checkIfAnySmsPresent([JZ)V
    .locals 2
    .parameter "ids"
    .parameter "isThreadId"

    .prologue
    .line 307
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mQueryHandler:Lcom/samsung/mms/util/SaveRestoreOperation$BackgroundQueryHandler;

    const/4 v1, 0x7

    invoke-static {v0, v1, p1, p2}, Lcom/android/mms/data/Conversation;->startQueryAllSmsSelected(Landroid/content/AsyncQueryHandler;I[JZ)V

    .line 308
    return-void
.end method

.method private checkIfMmsInSelection([JZ)V
    .locals 2
    .parameter "ids"
    .parameter "isThreadId"

    .prologue
    .line 315
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mQueryHandler:Lcom/samsung/mms/util/SaveRestoreOperation$BackgroundQueryHandler;

    const/4 v1, 0x2

    invoke-static {v0, v1, p1, p2}, Lcom/android/mms/data/Conversation;->startQueryHaveMmsSelected(Landroid/content/AsyncQueryHandler;I[JZ)V

    .line 316
    return-void
.end method

.method private checkIfSmsSelected([JZ)V
    .locals 2
    .parameter "ids"
    .parameter "isThreadId"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mQueryHandler:Lcom/samsung/mms/util/SaveRestoreOperation$BackgroundQueryHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1, p2}, Lcom/android/mms/data/Conversation;->startQueryAllSmsSelected(Landroid/content/AsyncQueryHandler;I[JZ)V

    .line 312
    return-void
.end method

.method private constructDefaultName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 599
    const-string v1, "yyyyMMddHHmmss"

    .line 600
    .local v1, format:Ljava/lang/String;
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 601
    .local v0, dateFormat:Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sms-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private fileAlreadyExists(Ljava/lang/String;)Z
    .locals 5
    .parameter "filename"

    .prologue
    .line 557
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 558
    .local v0, sdCard:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mSDcardFolderName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method private showErrorSuccessRestoreDialog(II)V
    .locals 3
    .parameter "dlgTitle"
    .parameter "dlgMessage"

    .prologue
    .line 427
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 428
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 429
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 430
    const v1, 0x7f0c00e9

    new-instance v2, Lcom/samsung/mms/util/SaveRestoreOperation$4;

    invoke-direct {v2, p0}, Lcom/samsung/mms/util/SaveRestoreOperation$4;-><init>(Lcom/samsung/mms/util/SaveRestoreOperation;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 437
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 438
    return-void
.end method

.method private showMmsSelectedDialog([J)V
    .locals 3
    .parameter "ids"

    .prologue
    .line 400
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c030f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c038e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00e9

    new-instance v2, Lcom/samsung/mms/util/SaveRestoreOperation$3;

    invoke-direct {v2, p0, p1}, Lcom/samsung/mms/util/SaveRestoreOperation$3;-><init>(Lcom/samsung/mms/util/SaveRestoreOperation;[J)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0050

    new-instance v2, Lcom/samsung/mms/util/SaveRestoreOperation$2;

    invoke-direct {v2, p0}, Lcom/samsung/mms/util/SaveRestoreOperation$2;-><init>(Lcom/samsung/mms/util/SaveRestoreOperation;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 416
    return-void
.end method

.method private showNoSmsSelectedDialog()V
    .locals 3

    .prologue
    .line 383
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c03a3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c039d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00e9

    new-instance v2, Lcom/samsung/mms/util/SaveRestoreOperation$1;

    invoke-direct {v2, p0}, Lcom/samsung/mms/util/SaveRestoreOperation$1;-><init>(Lcom/samsung/mms/util/SaveRestoreOperation;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 397
    return-void
.end method

.method private showSavedMsgsListDialog([JZ)V
    .locals 6
    .parameter "ids"
    .parameter "isThreadId"

    .prologue
    const/4 v3, 0x1

    .line 442
    iget v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mFileCount:I

    if-le v1, v3, :cond_0

    .line 443
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 444
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c030f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 445
    iget-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0c03a8

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mFileCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 446
    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 447
    const v1, 0x7f0c00e9

    new-instance v2, Lcom/samsung/mms/util/SaveRestoreOperation$5;

    invoke-direct {v2, p0, p1}, Lcom/samsung/mms/util/SaveRestoreOperation$5;-><init>(Lcom/samsung/mms/util/SaveRestoreOperation;[J)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 452
    const v1, 0x7f0c0050

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 453
    iget-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 454
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 458
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 456
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mIsThreadId:Z

    invoke-virtual {p0, p1, v1}, Lcom/samsung/mms/util/SaveRestoreOperation;->showSaveFileNameDialog([JZ)V

    goto :goto_0
.end method

.method private writeFile(Ljava/io/File;[BI)Z
    .locals 5
    .parameter "file"
    .parameter "input"
    .parameter "encryptedFlag"

    .prologue
    .line 931
    const/4 v3, 0x0

    .line 932
    .local v3, ok:Z
    const/4 v1, 0x0

    .line 934
    .local v1, fOut:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 936
    .end local v1           #fOut:Ljava/io/FileOutputStream;
    .local v2, fOut:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v2, p3}, Ljava/io/FileOutputStream;->write(I)V

    .line 938
    invoke-virtual {v2, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 939
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 940
    const/4 v3, 0x1

    .line 946
    if-eqz v2, :cond_0

    .line 947
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v1, v2

    .line 955
    .end local v2           #fOut:Ljava/io/FileOutputStream;
    .restart local v1       #fOut:Ljava/io/FileOutputStream;
    :cond_1
    :goto_0
    return v3

    .line 949
    .end local v1           #fOut:Ljava/io/FileOutputStream;
    .restart local v2       #fOut:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 950
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 953
    .end local v2           #fOut:Ljava/io/FileOutputStream;
    .restart local v1       #fOut:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 941
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 942
    .restart local v0       #e:Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 946
    if-eqz v1, :cond_1

    .line 947
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 949
    :catch_2
    move-exception v0

    .line 950
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 945
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 946
    :goto_2
    if-eqz v1, :cond_2

    .line 947
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 951
    :cond_2
    :goto_3
    throw v4

    .line 949
    :catch_3
    move-exception v0

    .line 950
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 945
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fOut:Ljava/io/FileOutputStream;
    .restart local v2       #fOut:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2           #fOut:Ljava/io/FileOutputStream;
    .restart local v1       #fOut:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 941
    .end local v1           #fOut:Ljava/io/FileOutputStream;
    .restart local v2       #fOut:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2           #fOut:Ljava/io/FileOutputStream;
    .restart local v1       #fOut:Ljava/io/FileOutputStream;
    goto :goto_1
.end method


# virtual methods
.method public OnDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 130
    const-string v0, "Mms/SaveRestoreOperation"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iput-boolean v2, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->SaveRestoreDestroyed:Z

    .line 132
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mSdCardReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 134
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mQueryHandler:Lcom/samsung/mms/util/SaveRestoreOperation$BackgroundQueryHandler;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mQueryHandler:Lcom/samsung/mms/util/SaveRestoreOperation$BackgroundQueryHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/mms/util/SaveRestoreOperation$BackgroundQueryHandler;->cancelOperation(I)V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mfileNameTextView:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mfileNameTextView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mSaveCompleteListener:Lcom/samsung/mms/util/SaveRestoreOperation$SaveRestoreListener;

    if-eqz v0, :cond_2

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mSaveCompleteListener:Lcom/samsung/mms/util/SaveRestoreOperation$SaveRestoreListener;

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mRestoreTask:Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;

    if-eqz v0, :cond_3

    .line 147
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mRestoreTask:Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;

    invoke-virtual {v0, v2}, Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;->cancel(Z)Z

    .line 149
    :cond_3
    return-void
.end method

.method public declared-synchronized SetOnSaveCompleteListener(Lcom/samsung/mms/util/SaveRestoreOperation$SaveRestoreListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mSaveCompleteListener:Lcom/samsung/mms/util/SaveRestoreOperation$SaveRestoreListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    monitor-exit p0

    return-void

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public checkForDuplicates([J)V
    .locals 3
    .parameter "ids"

    .prologue
    .line 319
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mQueryHandler:Lcom/samsung/mms/util/SaveRestoreOperation$BackgroundQueryHandler;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/android/mms/data/Conversation;->startQueryAllSmsSelected(Landroid/content/AsyncQueryHandler;I[JZ)V

    .line 320
    return-void
.end method

.method public deleteAnonymousThread()V
    .locals 14

    .prologue
    .line 332
    const/4 v7, 0x0

    .line 333
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 334
    .local v13, uri:Landroid/net/Uri;
    const/4 v8, 0x0

    .line 335
    .local v8, foundAnonymousDraft:Z
    const-string v11, "address is NULL"

    .line 338
    .local v11, selection:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$Sms$Draft;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/samsung/mms/util/SaveRestoreOperation;->SMS_ANONYMOUS_DRAFT_PROJECTION:[Ljava/lang/String;

    const-string v4, "address is NULL"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 340
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 341
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-eqz v0, :cond_4

    .line 342
    const/4 v10, 0x0

    .line 344
    .local v10, recipientIdCursor:Landroid/database/Cursor;
    :try_start_1
    const-string v0, "thread_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 346
    .local v12, threadId:Ljava/lang/Long;
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/samsung/mms/util/SaveRestoreOperation;->sAllThreadsUri:Landroid/net/Uri;

    sget-object v3, Lcom/samsung/mms/util/SaveRestoreOperation;->THREAD_RECIPIENTID_PROJECTION:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 347
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 348
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 349
    const-string v0, "recipient_ids"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 350
    .local v9, recipientId:Ljava/lang/String;
    if-eqz v9, :cond_1

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    const-string v0, "Mms/SaveRestoreOperation"

    const-string v1, "Found an anonymous draft..delete it"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    .line 353
    const-string v0, "Mms/SaveRestoreOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " uri of draft = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v13, v2, v3}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 356
    const/4 v8, 0x1

    .line 363
    .end local v9           #recipientId:Ljava/lang/String;
    :cond_2
    if-eqz v10, :cond_3

    .line 364
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 368
    :cond_3
    if-eqz v8, :cond_0

    .line 375
    .end local v10           #recipientIdCursor:Landroid/database/Cursor;
    .end local v12           #threadId:Ljava/lang/Long;
    :cond_4
    if-eqz v7, :cond_5

    .line 376
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 379
    :cond_5
    return-void

    .line 363
    .restart local v10       #recipientIdCursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_6

    .line 364
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 375
    .end local v10           #recipientIdCursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    if-eqz v7, :cond_7

    .line 376
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0
.end method

.method public getEditTextFilter(Landroid/content/Context;I)[Landroid/text/InputFilter;
    .locals 3
    .parameter "ctx"
    .parameter "maxSize"

    .prologue
    .line 961
    const/4 v1, 0x3

    new-array v0, v1, [Landroid/text/InputFilter;

    .line 962
    .local v0, FilterArray:[Landroid/text/InputFilter;
    const/4 v1, 0x0

    new-instance v2, Lcom/samsung/mms/util/SaveRestoreOperation$13;

    invoke-direct {v2, p0, p1}, Lcom/samsung/mms/util/SaveRestoreOperation$13;-><init>(Lcom/samsung/mms/util/SaveRestoreOperation;Landroid/content/Context;)V

    aput-object v2, v0, v1

    .line 1003
    const/4 v1, 0x1

    new-instance v2, Lcom/samsung/mms/util/SaveRestoreOperation$14;

    invoke-direct {v2, p0, p1}, Lcom/samsung/mms/util/SaveRestoreOperation$14;-><init>(Lcom/samsung/mms/util/SaveRestoreOperation;Landroid/content/Context;)V

    aput-object v2, v0, v1

    .line 1020
    const/4 v1, 0x2

    new-instance v2, Lcom/samsung/mms/util/SaveRestoreOperation$15;

    invoke-direct {v2, p0, p1}, Lcom/samsung/mms/util/SaveRestoreOperation$15;-><init>(Lcom/samsung/mms/util/SaveRestoreOperation;Landroid/content/Context;)V

    aput-object v2, v0, v1

    .line 1039
    return-object v0
.end method

.method public restoreSmsFromSdCard()V
    .locals 2

    .prologue
    .line 827
    iget-boolean v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->SaveRestoreDestroyed:Z

    if-nez v0, :cond_0

    .line 828
    const-string v0, "Mms/SaveRestoreOperation"

    const-string v1, "starting DownloadFilesTask"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    new-instance v0, Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;-><init>(Lcom/samsung/mms/util/SaveRestoreOperation;Lcom/samsung/mms/util/SaveRestoreOperation$1;)V

    iput-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mRestoreTask:Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;

    .line 830
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mRestoreTask:Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/samsung/mms/util/SaveRestoreOperation$DownloadFilesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 832
    :cond_0
    return-void
.end method

.method public saveSmsToSdCard(Landroid/database/Cursor;Ljava/lang/String;)Z
    .locals 13
    .parameter "cursor"
    .parameter "fileName"

    .prologue
    .line 605
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    .line 606
    .local v9, state:Ljava/lang/String;
    const/4 v6, 0x0

    .line 608
    .local v6, ok:Z
    const/4 v5, 0x1

    .line 609
    .local v5, mFileCount:I
    const/4 v2, 0x0

    .line 611
    .local v2, file:Ljava/io/File;
    :try_start_0
    const-string v11, "unmounted"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "removed"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "mounted_ro"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 612
    :cond_0
    const-string v11, "Mms/SaveRestoreOperation"

    const-string v12, "SDcard not present, cannot proceed with save"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v6

    .line 652
    .end local v6           #ok:Z
    .local v7, ok:I
    :goto_0
    return v7

    .line 616
    .end local v7           #ok:I
    .restart local v6       #ok:Z
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    .line 617
    .local v8, sdCard:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mSDcardFolderName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 618
    .local v0, dir:Ljava/io/File;
    if-eqz v0, :cond_2

    .line 619
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 624
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v11

    iget v12, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->MAX_MESSAGES_PER_FILE:I

    add-int/2addr v11, v12

    add-int/lit8 v11, v11, -0x1

    iget v12, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->MAX_MESSAGES_PER_FILE:I

    div-int v5, v11, v12

    .line 625
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 627
    const/4 v11, 0x1

    if-ne v5, v11, :cond_3

    .line 628
    new-instance v3, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mSDcardFolderName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".xml"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 629
    .end local v2           #file:Ljava/io/File;
    .local v3, file:Ljava/io/File;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 630
    const/4 v11, 0x0

    invoke-virtual {p0, p1, v3, v11}, Lcom/samsung/mms/util/SaveRestoreOperation;->writeToFile(Landroid/database/Cursor;Ljava/io/File;Z)V

    .line 631
    const/4 v6, 0x1

    move-object v2, v3

    .end local v0           #dir:Ljava/io/File;
    .end local v3           #file:Ljava/io/File;
    .end local v8           #sdCard:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    :goto_1
    move v7, v6

    .line 652
    .restart local v7       #ok:I
    goto :goto_0

    .line 634
    .end local v7           #ok:I
    .restart local v0       #dir:Ljava/io/File;
    .restart local v8       #sdCard:Ljava/io/File;
    :cond_3
    const/4 v4, 0x0

    .local v4, i:I
    move-object v3, v2

    .end local v2           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    :goto_2
    if-ge v4, v5, :cond_6

    .line 635
    const/4 v10, 0x1

    .line 636
    .local v10, success:Z
    new-instance v2, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mSDcardFolderName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".xml"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v2, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 637
    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 638
    if-eqz v4, :cond_4

    .line 640
    iget v11, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->MAX_MESSAGES_PER_FILE:I

    mul-int/2addr v11, v4

    invoke-interface {p1, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v10

    .line 642
    :cond_4
    if-eqz v10, :cond_5

    .line 643
    const/4 v11, 0x1

    invoke-virtual {p0, p1, v2, v11}, Lcom/samsung/mms/util/SaveRestoreOperation;->writeToFile(Landroid/database/Cursor;Ljava/io/File;Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 634
    :cond_5
    add-int/lit8 v4, v4, 0x1

    move-object v3, v2

    .end local v2           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    goto :goto_2

    .line 645
    .end local v10           #success:Z
    :cond_6
    const/4 v6, 0x1

    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_1

    .line 647
    .end local v0           #dir:Ljava/io/File;
    .end local v4           #i:I
    .end local v8           #sdCard:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 648
    .local v1, e:Ljava/io/IOException;
    :goto_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 649
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 650
    .local v1, e:Ljava/lang/Exception;
    :goto_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 649
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #file:Ljava/io/File;
    .restart local v0       #dir:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    .restart local v8       #sdCard:Ljava/io/File;
    :catch_2
    move-exception v1

    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_4

    .line 647
    .end local v2           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    :catch_3
    move-exception v1

    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_3
.end method

.method public showSaveFileNameDialog([JZ)V
    .locals 10
    .parameter "ids"
    .parameter "isThreadId"

    .prologue
    const/4 v9, 0x1

    .line 461
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 462
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0c03a3

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 463
    iget-object v5, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 464
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f040069

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 466
    .local v1, filenameView:Landroid/view/View;
    const v5, 0x7f0b0224

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 467
    .local v3, messageTextView:Landroid/widget/TextView;
    if-eqz v3, :cond_0

    .line 468
    const v5, 0x7f0c03b1

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 470
    :cond_0
    const v5, 0x7f0b0225

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mfileNameTextView:Landroid/widget/EditText;

    .line 471
    iget-object v5, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mfileNameTextView:Landroid/widget/EditText;

    if-eqz v5, :cond_1

    .line 472
    iget-object v5, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mfileNameTextView:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/samsung/mms/util/SaveRestoreOperation;->constructDefaultName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 473
    iget-object v5, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mfileNameTextView:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 474
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    .line 475
    .local v4, sdCardPathLength:I
    iget-object v5, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mfileNameTextView:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v6, v4}, Lcom/samsung/mms/util/SaveRestoreOperation;->getEditTextFilter(Landroid/content/Context;I)[Landroid/text/InputFilter;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 476
    iget-object v5, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mfileNameTextView:Landroid/widget/EditText;

    invoke-virtual {v5, v9}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 477
    iget-object v5, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mfileNameTextView:Landroid/widget/EditText;

    invoke-virtual {v5, v9}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 478
    iget-object v5, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mfileNameTextView:Landroid/widget/EditText;

    const v6, 0x84001

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 479
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    new-instance v6, Lcom/samsung/mms/util/SaveRestoreOperation$6;

    invoke-direct {v6, p0}, Lcom/samsung/mms/util/SaveRestoreOperation$6;-><init>(Lcom/samsung/mms/util/SaveRestoreOperation;)V

    const-wide/16 v7, 0x12c

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 487
    .end local v4           #sdCardPathLength:I
    :cond_1
    const v5, 0x7f0c004f

    new-instance v6, Lcom/samsung/mms/util/SaveRestoreOperation$7;

    invoke-direct {v6, p0}, Lcom/samsung/mms/util/SaveRestoreOperation$7;-><init>(Lcom/samsung/mms/util/SaveRestoreOperation;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 493
    const v5, 0x7f0c0050

    new-instance v6, Lcom/samsung/mms/util/SaveRestoreOperation$8;

    invoke-direct {v6, p0}, Lcom/samsung/mms/util/SaveRestoreOperation$8;-><init>(Lcom/samsung/mms/util/SaveRestoreOperation;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 501
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 502
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 503
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mAltDialog:Landroid/app/AlertDialog;

    .line 504
    iget-object v5, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mAltDialog:Landroid/app/AlertDialog;

    new-instance v6, Lcom/samsung/mms/util/SaveRestoreOperation$9;

    invoke-direct {v6, p0}, Lcom/samsung/mms/util/SaveRestoreOperation$9;-><init>(Lcom/samsung/mms/util/SaveRestoreOperation;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 512
    iget-object v5, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mAltDialog:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 513
    iget-object v5, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mAltDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 515
    iget-object v5, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mAltDialog:Landroid/app/AlertDialog;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mOkSaveBtn:Landroid/widget/Button;

    .line 516
    iget-object v5, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mOkSaveBtn:Landroid/widget/Button;

    new-instance v6, Lcom/samsung/mms/util/SaveRestoreOperation$10;

    invoke-direct {v6, p0, p1}, Lcom/samsung/mms/util/SaveRestoreOperation$10;-><init>(Lcom/samsung/mms/util/SaveRestoreOperation;[J)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 542
    return-void
.end method

.method public startRestoreOperation(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/mms/data/SavedSmsMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 296
    .local p1, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/mms/data/SavedSmsMessage;>;"
    iput-object p1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mArrayList:Ljava/util/ArrayList;

    .line 298
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 299
    iget-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/mms/data/SavedSmsMessage;

    invoke-virtual {v1}, Lcom/samsung/mms/data/SavedSmsMessage;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/mms/data/SavedSmsMessage;

    invoke-virtual {v1}, Lcom/samsung/mms/data/SavedSmsMessage;->getCanonicalAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 300
    const-string v1, "Mms/SaveRestoreOperation"

    const-string v2, "Found an anonymous draft in the restore list...checking for existing one"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-virtual {p0}, Lcom/samsung/mms/util/SaveRestoreOperation;->deleteAnonymousThread()V

    .line 304
    :cond_0
    return-void

    .line 298
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public startSaveOperation([JZZ)V
    .locals 1
    .parameter "ids"
    .parameter "isThreadId"
    .parameter "nonSmsItemSelected"

    .prologue
    .line 280
    iput-boolean p2, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mIsThreadId:Z

    .line 281
    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/mms/ui/ConversationComposer;

    if-eqz v0, :cond_0

    .line 282
    array-length v0, p1

    if-nez v0, :cond_1

    .line 283
    invoke-direct {p0}, Lcom/samsung/mms/util/SaveRestoreOperation;->showNoSmsSelectedDialog()V

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    if-eqz p2, :cond_2

    .line 285
    invoke-direct {p0, p1, p2}, Lcom/samsung/mms/util/SaveRestoreOperation;->checkIfAnySmsPresent([JZ)V

    goto :goto_0

    .line 286
    :cond_2
    array-length v0, p1

    if-lez v0, :cond_3

    if-eqz p3, :cond_3

    .line 287
    invoke-direct {p0, p1}, Lcom/samsung/mms/util/SaveRestoreOperation;->showMmsSelectedDialog([J)V

    goto :goto_0

    .line 290
    :cond_3
    iget-boolean v0, p0, Lcom/samsung/mms/util/SaveRestoreOperation;->mIsThreadId:Z

    invoke-virtual {p0, p1, v0}, Lcom/samsung/mms/util/SaveRestoreOperation;->showSaveFileNameDialog([JZ)V

    goto :goto_0
.end method

.method public writeToFile(Landroid/database/Cursor;Ljava/io/File;Z)V
    .locals 24
    .parameter "cursor"
    .parameter "file"
    .parameter "isMultiple"

    .prologue
    .line 663
    const/4 v15, 0x0

    .line 664
    .local v15, messageCount:I
    const-wide/16 v22, 0x1

    .line 665
    .local v22, threadId:J
    const-wide/16 v16, 0x1

    .line 666
    .local v16, newthreadId:J
    const/4 v9, 0x0

    .line 668
    .local v9, address:Ljava/lang/String;
    const/4 v13, 0x0

    .line 670
    .local v13, fileos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v14, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v14, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 673
    .end local v13           #fileos:Ljava/io/FileOutputStream;
    .local v14, fileos:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v20

    .line 676
    .local v20, serializer:Lorg/xmlpull/v1/XmlSerializer;
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v14, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 679
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 681
    const-string v2, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 684
    const/4 v2, 0x0

    const-string v3, "file"

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 685
    const/4 v2, 0x0

    const-string v3, "ver"

    const-string v4, "2"

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 688
    :cond_0
    const-string v2, "thread_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 689
    const-string v2, "Mms/SaveRestoreOperation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***Starting new ThreadId value is:***"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v22

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    const/4 v2, 0x0

    const-string v3, "thread"

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 692
    const/4 v2, 0x0

    const-string v3, "n"

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 694
    :cond_1
    const-string v2, "thread_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 696
    cmp-long v2, v16, v22

    if-eqz v2, :cond_4

    .line 697
    const-string v2, "Mms/SaveRestoreOperation"

    const-string v3, "***break, create a new thread layout***"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 794
    const/4 v2, 0x0

    const-string v3, "thread"

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 797
    if-eqz p3, :cond_10

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/mms/util/SaveRestoreOperation;->MAX_MESSAGES_PER_FILE:I

    if-lt v15, v2, :cond_10

    .line 798
    const-string v2, "Mms/SaveRestoreOperation"

    const-string v3, "***break, for the outer while loop***"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    :goto_1
    const/4 v2, 0x0

    const-string v3, "file"

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 805
    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 807
    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlSerializer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 816
    if-eqz v14, :cond_2

    .line 817
    :try_start_2
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_2
    move-object v13, v14

    .line 824
    .end local v14           #fileos:Ljava/io/FileOutputStream;
    .end local v20           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v13       #fileos:Ljava/io/FileOutputStream;
    :cond_3
    :goto_2
    return-void

    .line 701
    .end local v13           #fileos:Ljava/io/FileOutputStream;
    .restart local v14       #fileos:Ljava/io/FileOutputStream;
    .restart local v20       #serializer:Lorg/xmlpull/v1/XmlSerializer;
    :cond_4
    const/4 v2, 0x0

    :try_start_3
    const-string v3, "message"

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 702
    const/4 v2, 0x0

    const-string v3, "type"

    const-string v4, "SMS"

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 704
    const-string v2, "address"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 706
    const/4 v2, 0x0

    const-string v3, "address"

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 707
    const-string v2, ""

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 708
    const/4 v2, 0x0

    const-string v3, "address"

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 709
    const/4 v10, 0x0

    .line 710
    .local v10, addressCursor:Landroid/database/Cursor;
    const/16 v19, 0x0

    .line 715
    .local v19, recipientIdCursor:Landroid/database/Cursor;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/mms/util/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/mms/util/SaveRestoreOperation;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/samsung/mms/util/SaveRestoreOperation;->sAllThreadsUri:Landroid/net/Uri;

    sget-object v5, Lcom/samsung/mms/util/SaveRestoreOperation;->THREAD_RECIPIENTID_PROJECTION:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 716
    if-eqz v19, :cond_9

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_9

    .line 718
    const-string v2, "Mms/SaveRestoreOperation"

    const-string v3, "Query for recipient id returned a match for thread id..extract the recipient id from cursor"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    :cond_5
    :goto_3
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 720
    const-string v2, "recipient_ids"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 721
    .local v18, recipientId:Ljava/lang/String;
    if-eqz v18, :cond_8

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 723
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/mms/util/SaveRestoreOperation;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/mms/util/SaveRestoreOperation;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/samsung/mms/util/SaveRestoreOperation;->sAllCanonical:Landroid/net/Uri;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 724
    if-eqz v10, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_5

    .line 725
    :goto_4
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 726
    const-string v2, "address"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 727
    .local v11, canonicalAddress:Ljava/lang/String;
    const-string v2, "Mms/SaveRestoreOperation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "found a match in canonical table - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    const/4 v2, 0x0

    const-string v3, "canonical_address"

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 730
    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 731
    const/4 v2, 0x0

    const-string v3, "canonical_address"

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 742
    .end local v11           #canonicalAddress:Ljava/lang/String;
    .end local v18           #recipientId:Ljava/lang/String;
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_6

    .line 743
    :try_start_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 744
    const/4 v10, 0x0

    .line 746
    :cond_6
    if-eqz v19, :cond_7

    .line 747
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 809
    .end local v10           #addressCursor:Landroid/database/Cursor;
    .end local v19           #recipientIdCursor:Landroid/database/Cursor;
    .end local v20           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v12

    move-object v13, v14

    .line 810
    .end local v14           #fileos:Ljava/io/FileOutputStream;
    .local v12, e:Ljava/io/IOException;
    .restart local v13       #fileos:Ljava/io/FileOutputStream;
    :goto_5
    :try_start_6
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 816
    if-eqz v13, :cond_3

    .line 817
    :try_start_7
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_2

    .line 819
    :catch_1
    move-exception v12

    .line 820
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 737
    .end local v12           #e:Ljava/io/IOException;
    .end local v13           #fileos:Ljava/io/FileOutputStream;
    .restart local v10       #addressCursor:Landroid/database/Cursor;
    .restart local v14       #fileos:Ljava/io/FileOutputStream;
    .restart local v18       #recipientId:Ljava/lang/String;
    .restart local v19       #recipientIdCursor:Landroid/database/Cursor;
    .restart local v20       #serializer:Lorg/xmlpull/v1/XmlSerializer;
    :cond_8
    :try_start_8
    const-string v2, "Mms/SaveRestoreOperation"

    const-string v3, "recipient_id is empty..this is an anonymous draft"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_3

    .line 742
    .end local v18           #recipientId:Ljava/lang/String;
    :cond_9
    if-eqz v10, :cond_a

    .line 743
    :try_start_9
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 744
    const/4 v10, 0x0

    .line 746
    :cond_a
    if-eqz v19, :cond_b

    .line 747
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 757
    .end local v10           #addressCursor:Landroid/database/Cursor;
    .end local v19           #recipientIdCursor:Landroid/database/Cursor;
    :cond_b
    :goto_6
    const/4 v2, 0x0

    const-string v3, "body"

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 758
    const-string v2, "body"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 760
    .local v21, str1:Ljava/lang/String;
    if-eqz v21, :cond_e

    .line 761
    const-string v2, "UTF-8"

    move-object/from16 v0, v21

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 765
    :goto_7
    const/4 v2, 0x0

    const-string v3, "body"

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 767
    const/4 v2, 0x0

    const-string v3, "date"

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 768
    const-string v2, "date"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 769
    const/4 v2, 0x0

    const-string v3, "date"

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 771
    const/4 v2, 0x0

    const-string v3, "read"

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 772
    const-string v2, "read"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 773
    const/4 v2, 0x0

    const-string v3, "read"

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 775
    const/4 v2, 0x0

    const-string v3, "type"

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 776
    const-string v2, "type"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 777
    const/4 v2, 0x0

    const-string v3, "type"

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 779
    const/4 v2, 0x0

    const-string v3, "locked"

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 780
    const-string v2, "locked"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 781
    const/4 v2, 0x0

    const-string v3, "locked"

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 783
    const/4 v2, 0x0

    const-string v3, "message"

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 785
    add-int/lit8 v15, v15, 0x1

    .line 787
    if-eqz p3, :cond_f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/mms/util/SaveRestoreOperation;->MAX_MESSAGES_PER_FILE:I

    if-lt v15, v2, :cond_f

    .line 788
    const-string v2, "Mms/SaveRestoreOperation"

    const-string v3, "***break, for the inner while loop****"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_0

    .line 811
    .end local v20           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .end local v21           #str1:Ljava/lang/String;
    :catch_2
    move-exception v12

    move-object v13, v14

    .line 812
    .end local v14           #fileos:Ljava/io/FileOutputStream;
    .local v12, e:Ljava/lang/Exception;
    .restart local v13       #fileos:Ljava/io/FileOutputStream;
    :goto_8
    :try_start_a
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 816
    if-eqz v13, :cond_3

    .line 817
    :try_start_b
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_2

    .line 819
    :catch_3
    move-exception v12

    .line 820
    .local v12, e:Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 751
    .end local v12           #e:Ljava/io/IOException;
    .end local v13           #fileos:Ljava/io/FileOutputStream;
    .restart local v14       #fileos:Ljava/io/FileOutputStream;
    .restart local v20       #serializer:Lorg/xmlpull/v1/XmlSerializer;
    :cond_c
    :try_start_c
    const-string v2, "address"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 752
    const/4 v2, 0x0

    const-string v3, "address"

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 753
    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 754
    const/4 v2, 0x0

    const-string v3, "address"

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    goto/16 :goto_6

    .line 815
    .end local v20           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    :catchall_1
    move-exception v2

    move-object v13, v14

    .line 816
    .end local v14           #fileos:Ljava/io/FileOutputStream;
    .restart local v13       #fileos:Ljava/io/FileOutputStream;
    :goto_9
    if-eqz v13, :cond_d

    .line 817
    :try_start_d
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    .line 821
    :cond_d
    :goto_a
    throw v2

    .line 763
    .end local v13           #fileos:Ljava/io/FileOutputStream;
    .restart local v14       #fileos:Ljava/io/FileOutputStream;
    .restart local v20       #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v21       #str1:Ljava/lang/String;
    :cond_e
    :try_start_e
    const-string v2, ""

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_7

    .line 791
    :cond_f
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 802
    .end local v21           #str1:Ljava/lang/String;
    :cond_10
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 819
    :catch_4
    move-exception v12

    .line 820
    .restart local v12       #e:Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    move-object v13, v14

    .line 823
    .end local v14           #fileos:Ljava/io/FileOutputStream;
    .restart local v13       #fileos:Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .line 819
    .end local v12           #e:Ljava/io/IOException;
    .end local v20           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    :catch_5
    move-exception v12

    .line 820
    .restart local v12       #e:Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 815
    .end local v12           #e:Ljava/io/IOException;
    :catchall_2
    move-exception v2

    goto :goto_9

    .line 811
    :catch_6
    move-exception v12

    goto :goto_8

    .line 809
    :catch_7
    move-exception v12

    goto/16 :goto_5
.end method
