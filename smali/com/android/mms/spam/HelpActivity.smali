.class public Lcom/android/mms/spam/HelpActivity;
.super Landroid/app/Activity;
.source "HelpActivity.java"


# static fields
.field private static final CHECK_SMART_INTERCEPTER_DIALOG:I = 0x0

.field private static final HELP_ITEM:I = 0x4

.field private static final MSG_HIDE_CHECK_PROGRESS:I = 0x0

.field private static final MSG_HIDE_UPDATE_PROGRESS:I = 0x1

.field private static final MSG_NETWORK_ERROR:I = 0x3

.field private static final MSG_UPDATE_ERROR:I = 0x4

.field private static final MSG_UPDATE_OK:I = 0x5

.field private static final MSG_UPDATE_PROGRESS:I = 0x2

.field static final TAG:Ljava/lang/String; = "Mms/HelpActivity"

.field private static final UPDATE_ITEM:I = 0x5

.field private static final UPDATE_SMART_INTERCEPTER_DIALOG:I = 0x1

.field public static bCheckError:Z

.field public static myCheckService:Lcom/tencent/engine/IEngineService;

.field public static myService:Lcom/tencent/update/IUpdateService;


# instance fields
.field public checkserviceConnection:Landroid/content/ServiceConnection;

.field private mActionBar:Landroid/app/ActionBar;

.field private mCheckResults:Lcom/tencent/update/BinderCheckResult;

.field public mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mMenuHelp:Landroid/view/MenuItem;

.field private mMenuUpdate:Landroid/view/MenuItem;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSwitch:Landroid/widget/Switch;

.field private mTextView:Landroid/widget/TextView;

.field public serviceConnection:Landroid/content/ServiceConnection;

.field private versioninfo:Lcom/tencent/engine/BinderVersionInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    sput-object v0, Lcom/android/mms/spam/HelpActivity;->myService:Lcom/tencent/update/IUpdateService;

    .line 63
    sput-object v0, Lcom/android/mms/spam/HelpActivity;->myCheckService:Lcom/tencent/engine/IEngineService;

    .line 64
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/spam/HelpActivity;->bCheckError:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    iput-object v0, p0, Lcom/android/mms/spam/HelpActivity;->mMenuHelp:Landroid/view/MenuItem;

    .line 60
    iput-object v0, p0, Lcom/android/mms/spam/HelpActivity;->mMenuUpdate:Landroid/view/MenuItem;

    .line 66
    iput-object v0, p0, Lcom/android/mms/spam/HelpActivity;->mContext:Landroid/content/Context;

    .line 68
    new-instance v0, Lcom/android/mms/spam/HelpActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/spam/HelpActivity$1;-><init>(Lcom/android/mms/spam/HelpActivity;)V

    iput-object v0, p0, Lcom/android/mms/spam/HelpActivity;->checkserviceConnection:Landroid/content/ServiceConnection;

    .line 79
    new-instance v0, Lcom/android/mms/spam/HelpActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/spam/HelpActivity$2;-><init>(Lcom/android/mms/spam/HelpActivity;)V

    iput-object v0, p0, Lcom/android/mms/spam/HelpActivity;->serviceConnection:Landroid/content/ServiceConnection;

    .line 97
    new-instance v0, Lcom/android/mms/spam/HelpActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/spam/HelpActivity$3;-><init>(Lcom/android/mms/spam/HelpActivity;)V

    iput-object v0, p0, Lcom/android/mms/spam/HelpActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/spam/HelpActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/mms/spam/HelpActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/mms/spam/HelpActivity;Lcom/tencent/update/BinderCheckResult;)Lcom/tencent/update/BinderCheckResult;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/mms/spam/HelpActivity;->mCheckResults:Lcom/tencent/update/BinderCheckResult;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/mms/spam/HelpActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/mms/spam/HelpActivity;->updateRuleStore()V

    return-void
.end method

.method private makeScreen()V
    .locals 0

    .prologue
    .line 458
    return-void
.end method

.method private openDialog()Landroid/app/Dialog;
    .locals 7

    .prologue
    const v2, 0x7f0c03c5

    const/4 v6, 0x0

    const v3, 0x7f0c03cc

    const v5, 0x1080027

    const/high16 v4, 0x104

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 389
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/mms/spam/HelpActivity;->mCheckResults:Lcom/tencent/update/BinderCheckResult;

    if-nez v1, :cond_0

    .line 390
    invoke-virtual {p0, v2}, Lcom/android/mms/spam/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    const v1, 0x7f0c03c7

    invoke-virtual {p0, v1}, Lcom/android/mms/spam/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 415
    :goto_0
    return-object v1

    .line 399
    :cond_0
    iget-object v1, p0, Lcom/android/mms/spam/HelpActivity;->mCheckResults:Lcom/tencent/update/BinderCheckResult;

    iget-object v1, v1, Lcom/tencent/update/BinderCheckResult;->mUpdateInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 401
    invoke-virtual {p0, v2}, Lcom/android/mms/spam/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    const v1, 0x7f0c03c7

    invoke-virtual {p0, v1}, Lcom/android/mms/spam/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 413
    :cond_1
    const v1, 0x7f0c03c6

    invoke-virtual {p0, v1}, Lcom/android/mms/spam/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c03c8

    new-instance v3, Lcom/android/mms/spam/HelpActivity$8;

    invoke-direct {v3, p0}, Lcom/android/mms/spam/HelpActivity$8;-><init>(Lcom/android/mms/spam/HelpActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0
.end method

.method private updateRuleStore()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 320
    invoke-virtual {p0, v2}, Lcom/android/mms/spam/HelpActivity;->removeDialog(I)V

    .line 322
    iget-object v0, p0, Lcom/android/mms/spam/HelpActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/util/NetworkConnectionUtils;->isMobileAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/spam/HelpActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/util/NetworkConnectionUtils;->isWifiAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    const v0, 0x7f0c03d3

    invoke-virtual {p0, v0}, Lcom/android/mms/spam/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 383
    :goto_0
    return-void

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/android/mms/spam/HelpActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0c03d0

    invoke-virtual {p0, v1}, Lcom/android/mms/spam/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 328
    iget-object v0, p0, Lcom/android/mms/spam/HelpActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 329
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/spam/HelpActivity;->showDialog(I)V

    .line 331
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/spam/HelpActivity$7;

    invoke-direct {v1, p0}, Lcom/android/mms/spam/HelpActivity$7;-><init>(Lcom/android/mms/spam/HelpActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method


# virtual methods
.method public checkRuleStore()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 242
    sget-object v1, Lcom/android/mms/spam/HelpActivity;->myService:Lcom/tencent/update/IUpdateService;

    if-nez v1, :cond_0

    .line 317
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-object v1, p0, Lcom/android/mms/spam/HelpActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/util/NetworkConnectionUtils;->isMobileAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/spam/HelpActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/util/NetworkConnectionUtils;->isWifiAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 246
    const v1, 0x7f0c03d3

    invoke-virtual {p0, v1}, Lcom/android/mms/spam/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 250
    :cond_1
    sput-boolean v4, Lcom/android/mms/spam/HelpActivity;->bCheckError:Z

    .line 252
    :try_start_0
    new-instance v1, Lcom/tencent/engine/BinderVersionInfo;

    invoke-direct {v1}, Lcom/tencent/engine/BinderVersionInfo;-><init>()V

    iput-object v1, p0, Lcom/android/mms/spam/HelpActivity;->versioninfo:Lcom/tencent/engine/BinderVersionInfo;

    .line 253
    sget-object v1, Lcom/android/mms/spam/HelpActivity;->myCheckService:Lcom/tencent/engine/IEngineService;

    iget-object v2, p0, Lcom/android/mms/spam/HelpActivity;->versioninfo:Lcom/tencent/engine/BinderVersionInfo;

    invoke-interface {v1, v2}, Lcom/tencent/engine/IEngineService;->checkVersionInfo(Lcom/tencent/engine/BinderVersionInfo;)V

    .line 254
    const-string v1, "demo1"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check versioninfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/spam/HelpActivity;->versioninfo:Lcom/tencent/engine/BinderVersionInfo;

    iget v3, v3, Lcom/tencent/engine/BinderVersionInfo;->mTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",md5:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/spam/HelpActivity;->versioninfo:Lcom/tencent/engine/BinderVersionInfo;

    iget-object v3, v3, Lcom/tencent/engine/BinderVersionInfo;->md5str:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :goto_1
    :try_start_1
    sget-object v1, Lcom/android/mms/spam/HelpActivity;->myService:Lcom/tencent/update/IUpdateService;

    invoke-interface {v1}, Lcom/tencent/update/IUpdateService;->setWupStaticProperties()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 267
    :goto_2
    :try_start_2
    sget-object v1, Lcom/android/mms/spam/HelpActivity;->myService:Lcom/tencent/update/IUpdateService;

    iget-object v2, p0, Lcom/android/mms/spam/HelpActivity;->versioninfo:Lcom/tencent/engine/BinderVersionInfo;

    iget v2, v2, Lcom/tencent/engine/BinderVersionInfo;->mTime:I

    iget-object v3, p0, Lcom/android/mms/spam/HelpActivity;->versioninfo:Lcom/tencent/engine/BinderVersionInfo;

    iget-object v3, v3, Lcom/tencent/engine/BinderVersionInfo;->md5str:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/tencent/update/IUpdateService;->setVersionInfo(ILjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 272
    :goto_3
    invoke-virtual {p0, v4}, Lcom/android/mms/spam/HelpActivity;->removeDialog(I)V

    .line 273
    invoke-virtual {p0, v5}, Lcom/android/mms/spam/HelpActivity;->removeDialog(I)V

    .line 274
    iget-object v1, p0, Lcom/android/mms/spam/HelpActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const v2, 0x7f0c03d1

    invoke-virtual {p0, v2}, Lcom/android/mms/spam/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v1, p0, Lcom/android/mms/spam/HelpActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 276
    invoke-virtual {p0, v4}, Lcom/android/mms/spam/HelpActivity;->showDialog(I)V

    .line 278
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/mms/spam/HelpActivity$6;

    invoke-direct {v2, p0}, Lcom/android/mms/spam/HelpActivity$6;-><init>(Lcom/android/mms/spam/HelpActivity;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 255
    :catch_0
    move-exception v0

    .line 257
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 262
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 263
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 268
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v0

    .line 270
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/16 v4, 0x10

    const/4 v8, -0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 146
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 147
    const v2, 0x7f04003f

    invoke-virtual {p0, v2}, Lcom/android/mms/spam/HelpActivity;->setContentView(I)V

    .line 148
    invoke-virtual {p0}, Lcom/android/mms/spam/HelpActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/spam/HelpActivity;->mActionBar:Landroid/app/ActionBar;

    .line 149
    iget-object v2, p0, Lcom/android/mms/spam/HelpActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 151
    iget-object v2, p0, Lcom/android/mms/spam/HelpActivity;->mActionBar:Landroid/app/ActionBar;

    const v3, 0x7f0c03cb

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setTitle(I)V

    .line 152
    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, p0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/mms/spam/HelpActivity;->mSwitch:Landroid/widget/Switch;

    .line 154
    invoke-virtual {p0}, Lcom/android/mms/spam/HelpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/spam/HelpActivity;->mContext:Landroid/content/Context;

    .line 156
    invoke-virtual {p0}, Lcom/android/mms/spam/HelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0042

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 158
    .local v0, padding:I
    iget-object v2, p0, Lcom/android/mms/spam/HelpActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v6, v6, v0, v6}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 160
    iget-object v2, p0, Lcom/android/mms/spam/HelpActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 163
    iget-object v2, p0, Lcom/android/mms/spam/HelpActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v3, p0, Lcom/android/mms/spam/HelpActivity;->mSwitch:Landroid/widget/Switch;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const/16 v5, 0x15

    invoke-direct {v4, v8, v8, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 168
    invoke-virtual {p0}, Lcom/android/mms/spam/HelpActivity;->setActionSwitch()V

    .line 170
    const v2, 0x7f0b0130

    invoke-virtual {p0, v2}, Lcom/android/mms/spam/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/spam/HelpActivity;->mTextView:Landroid/widget/TextView;

    .line 171
    iget-object v2, p0, Lcom/android/mms/spam/HelpActivity;->mTextView:Landroid/widget/TextView;

    const v3, 0x7f0c03cd

    invoke-virtual {p0, v3}, Lcom/android/mms/spam/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    const v2, 0x7f0b0131

    invoke-virtual {p0, v2}, Lcom/android/mms/spam/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 174
    .local v1, update_btn:Landroid/widget/Button;
    new-instance v2, Lcom/android/mms/spam/HelpActivity$4;

    invoke-direct {v2, p0}, Lcom/android/mms/spam/HelpActivity$4;-><init>(Lcom/android/mms/spam/HelpActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/mms/spam/HelpActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 183
    iget-object v2, p0, Lcom/android/mms/spam/HelpActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 185
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.tencent.update.IUpdateService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/mms/spam/HelpActivity;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v2, v3, v7}, Lcom/android/mms/spam/HelpActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 186
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.tencent.engine.IEngineService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/mms/spam/HelpActivity;->checkserviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v2, v3, v7}, Lcom/android/mms/spam/HelpActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 188
    :cond_0
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 428
    packed-switch p1, :pswitch_data_0

    .line 435
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 430
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/spam/HelpActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 432
    :pswitch_1
    invoke-direct {p0}, Lcom/android/mms/spam/HelpActivity;->openDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 428
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 220
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 222
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/android/mms/spam/HelpActivity;->serviceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/mms/spam/HelpActivity;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/android/mms/spam/HelpActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/android/mms/spam/HelpActivity;->checkserviceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/android/mms/spam/HelpActivity;->checkserviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/android/mms/spam/HelpActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/android/mms/spam/HelpActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_2

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/spam/HelpActivity;->mActionBar:Landroid/app/ActionBar;

    .line 230
    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 439
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 446
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 441
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/spam/SetupSpamKeywordList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 442
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/spam/HelpActivity;->setResult(ILandroid/content/Intent;)V

    .line 443
    invoke-virtual {p0}, Lcom/android/mms/spam/HelpActivity;->finish()V

    .line 444
    const/4 v1, 0x1

    goto :goto_0

    .line 439
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 238
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 239
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 450
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 452
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 234
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 235
    return-void
.end method

.method setActionSwitch()V
    .locals 5

    .prologue
    .line 191
    const/4 v1, 0x0

    .line 192
    .local v1, iCheck:I
    const/4 v0, 0x0

    .line 193
    .local v0, bCheck:Z
    iget-object v2, p0, Lcom/android/mms/spam/HelpActivity;->mSwitch:Landroid/widget/Switch;

    new-instance v3, Lcom/android/mms/spam/HelpActivity$5;

    invoke-direct {v3, p0}, Lcom/android/mms/spam/HelpActivity$5;-><init>(Lcom/android/mms/spam/HelpActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 209
    invoke-virtual {p0}, Lcom/android/mms/spam/HelpActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "key_spam_smart"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 210
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 211
    const/4 v0, 0x1

    .line 215
    :goto_0
    iget-object v2, p0, Lcom/android/mms/spam/HelpActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 216
    return-void

    .line 213
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
