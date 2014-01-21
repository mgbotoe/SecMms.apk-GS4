.class public Lcom/android/mms/ui/MessageDatabaseBackupActivity;
.super Landroid/app/Activity;
.source "MessageDatabaseBackupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageDatabaseBackupActivity$CryptoClass;,
        Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;
    }
.end annotation


# static fields
.field private static final BACKUP_FILE_NAME_PREFIX:Ljava/lang/String; = "MMS_BACKUP_"

.field private static final BACKUP_FILE_PATH:Ljava/lang/String; = "/mnt/sdcard/"

.field private static final BACKUP_MSG_DATA_PATH:Ljava/lang/String; = "/data/data/com.android.mms/"

.field private static final BACKUP_RESULT_FOLDER_NAME:Ljava/lang/String; = "/mnt/sdcard/MMS_BACKUP"

.field private static final BTN_NAME_BACKUP:Ljava/lang/String; = "1. MESSAGE DB BACKUP"

.field private static final BTN_NAME_CHANGE_APN:Ljava/lang/String; = "MESSAGE APN CHANGE"

.field private static final BTN_NAME_CMAS_Test_OFF:Ljava/lang/String; = "CMAS Test Mode"

.field private static final BTN_NAME_RESTORE:Ljava/lang/String; = "2. MEESSAGE DB RESTORE"

.field private static BUFFER_SIZE:I = 0x0

.field private static final CHK_NAME_DBRESTORE:Ljava/lang/String; = "DB Restore"

.field private static final DEFAULT_CRYPTO_KEY:Ljava/lang/String; = "12345678901234567890123456789012"

.field private static final EXT_MSG:Ljava/lang/String; = ".edb"

.field private static final EXT_ZIP:Ljava/lang/String; = ".zip"

.field private static final FLAG_DB_BACKUP_COMPLETE:I = 0x1

.field private static final FLAG_DB_BACKUP_START:I = 0x0

.field private static final FLAG_DB_RESTORE_COMPLETE:I = 0x3

.field private static final FLAG_DB_RESTORE_START:I = 0x2

.field private static final RET_VALUE_FALSE:I = 0x0

.field private static final RET_VALUE_TRUE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MessageDatabaseBackupActivity"

.field private static final WORKTHREAD_MODE_BACKUP:I = 0x0

.field private static final WORKTHREAD_MODE_RESTORE:I = 0x1


# instance fields
.field public CMASTestchangeButton:Landroid/widget/Button;

.field public mAdapterPathName:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mArrayPathName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDlgProg:Landroid/app/ProgressDialog;

.field private mEventHandler:Landroid/os/Handler;

.field public mListView:Landroid/widget/ListView;

.field public mTextviewBackupFileName:Landroid/widget/TextView;

.field public mTextviewRestoreFileName:Landroid/widget/TextView;

.field private mWorkThread:Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const/16 v0, 0x800

    sput v0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->BUFFER_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mArrayPathName:Ljava/util/ArrayList;

    .line 969
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessageDatabaseBackupActivity;)Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mWorkThread:Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/mms/ui/MessageDatabaseBackupActivity;Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;)Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mWorkThread:Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MessageDatabaseBackupActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 50
    sget v0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->BUFFER_SIZE:I

    return v0
.end method

.method private checkExternalStorage()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 266
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 267
    .local v1, szExternalMountPath:Ljava/lang/String;
    const-string v5, "mounted"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 268
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "External Storage mount error!!"

    invoke-static {v5, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 269
    .local v3, toast:Landroid/widget/Toast;
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 270
    const/4 v4, 0x0

    .line 278
    .end local v3           #toast:Landroid/widget/Toast;
    :cond_0
    :goto_0
    return v4

    .line 273
    :cond_1
    const-string v2, "/mnt/sdcard/MMS_BACKUP"

    .line 274
    .local v2, szResultTargetDir:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 275
    .local v0, resultDirectory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 276
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    goto :goto_0
.end method

.method private createEventHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mEventHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 307
    new-instance v0, Lcom/android/mms/ui/MessageDatabaseBackupActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$1;-><init>(Lcom/android/mms/ui/MessageDatabaseBackupActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mEventHandler:Landroid/os/Handler;

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getProgressDialog(Ljava/lang/String;Ljava/lang/String;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "title"
    .parameter "message"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mDlgProg:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 283
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mDlgProg:Landroid/app/ProgressDialog;

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mDlgProg:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method public initRestoreList()V
    .locals 8

    .prologue
    .line 167
    new-instance v3, Ljava/io/File;

    const-string v5, "/mnt/sdcard/MMS_BACKUP"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    .local v3, srcFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    sget-boolean v5, Lcom/android/mms/Log;->ENG_VER:Z

    if-eqz v5, :cond_0

    .line 177
    const v5, 0x7f0b0170

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 178
    .local v2, restoreLayout:Landroid/widget/LinearLayout;
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 180
    iget-object v5, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mArrayPathName:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 181
    iget-object v5, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mAdapterPathName:Landroid/widget/ArrayAdapter;

    if-eqz v5, :cond_2

    .line 182
    iget-object v5, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mAdapterPathName:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5}, Landroid/widget/ArrayAdapter;->clear()V

    .line 185
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 186
    .local v0, arrayFile:[Ljava/io/File;
    if-eqz v0, :cond_4

    .line 187
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v5, v0

    if-ge v1, v5, :cond_4

    .line 188
    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 189
    .local v4, szPathName:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".edb"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 190
    iget-object v5, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mArrayPathName:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 193
    .end local v1           #i:I
    .end local v4           #szPathName:Ljava/lang/String;
    :cond_4
    new-instance v5, Landroid/widget/ArrayAdapter;

    const v6, 0x109000f

    iget-object v7, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mArrayPathName:Ljava/util/ArrayList;

    invoke-direct {v5, p0, v6, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v5, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mAdapterPathName:Landroid/widget/ArrayAdapter;

    .line 195
    iget-object v5, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mAdapterPathName:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 196
    iget-object v5, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mListView:Landroid/widget/ListView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14
    .parameter "v"

    .prologue
    const v11, 0x7f0b016c

    const v10, 0x7f0b0169

    const/4 v13, 0x0

    .line 203
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v9

    if-ne v9, v10, :cond_0

    .line 204
    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 205
    .local v0, CMASTestChangeSwitchWidget:Landroid/widget/ToggleButton;
    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v3

    .line 207
    .local v3, bIsCMASTestOn:Z
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setCMASTestOnOff(Landroid/content/Context;Z)V

    .line 208
    invoke-static {v3}, Lcom/android/mms/MmsConfig;->setCmasTestOnOff(Z)V

    .line 209
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 210
    .local v4, mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v4}, Lcom/android/mms/ui/ChannelUtils;->setCbSettings(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 215
    .end local v0           #CMASTestChangeSwitchWidget:Landroid/widget/ToggleButton;
    .end local v3           #bIsCMASTestOn:Z
    .end local v4           #mSharedPrefs:Landroid/content/SharedPreferences;
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v9

    const v10, 0x7f0b016e

    if-ne v9, v10, :cond_3

    .line 216
    invoke-direct {p0}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->checkExternalStorage()Z

    move-result v9

    if-nez v9, :cond_2

    .line 217
    const-string v9, "External Storage mount failed"

    invoke-static {p0, v9, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    .line 218
    .local v8, toast:Landroid/widget/Toast;
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 262
    .end local v8           #toast:Landroid/widget/Toast;
    :cond_1
    :goto_0
    return-void

    .line 222
    :cond_2
    iget-object v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mTextviewBackupFileName:Landroid/widget/TextView;

    const-string v10, "message backup starting"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MMS_BACKUP_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "yyMMdd_hhmmss"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v10, v11, v12}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 225
    .local v6, szFileName:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/mnt/sdcard/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 226
    .local v7, szPathName:Ljava/lang/String;
    new-instance v9, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;

    iget-object v10, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mEventHandler:Landroid/os/Handler;

    invoke-direct {v9, p0, p0, v10}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;-><init>(Lcom/android/mms/ui/MessageDatabaseBackupActivity;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mWorkThread:Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;

    .line 227
    iget-object v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mWorkThread:Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;

    if-eqz v9, :cond_1

    .line 228
    iget-object v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mWorkThread:Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;

    invoke-virtual {v9, v13, v7, v6}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->setData(ILjava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mWorkThread:Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->start()V

    goto :goto_0

    .line 231
    .end local v6           #szFileName:Ljava/lang/String;
    .end local v7           #szPathName:Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v9

    const v10, 0x7f0b0172

    if-ne v9, v10, :cond_6

    .line 232
    invoke-direct {p0}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->checkExternalStorage()Z

    move-result v9

    if-nez v9, :cond_4

    .line 233
    const-string v9, "External Storage mount failed"

    invoke-static {p0, v9, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    .line 234
    .restart local v8       #toast:Landroid/widget/Toast;
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 237
    .end local v8           #toast:Landroid/widget/Toast;
    :cond_4
    iget-object v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v5

    .line 238
    .local v5, nSel:I
    if-gez v5, :cond_5

    .line 239
    const-string v9, "Select the file in restore list"

    invoke-static {p0, v9, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    .line 240
    .restart local v8       #toast:Landroid/widget/Toast;
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 243
    .end local v8           #toast:Landroid/widget/Toast;
    :cond_5
    iget-object v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mTextviewRestoreFileName:Landroid/widget/TextView;

    const-string v10, "message restore starting"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mAdapterPathName:Landroid/widget/ArrayAdapter;

    invoke-virtual {v9, v5}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 246
    .restart local v7       #szPathName:Ljava/lang/String;
    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    const-string v10, ".edb"

    invoke-virtual {v7, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 247
    .restart local v6       #szFileName:Ljava/lang/String;
    new-instance v9, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;

    iget-object v10, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mEventHandler:Landroid/os/Handler;

    invoke-direct {v9, p0, p0, v10}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;-><init>(Lcom/android/mms/ui/MessageDatabaseBackupActivity;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mWorkThread:Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;

    .line 248
    iget-object v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mWorkThread:Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;

    if-eqz v9, :cond_1

    .line 249
    iget-object v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mWorkThread:Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;

    const/4 v10, 0x1

    invoke-virtual {v9, v10, v7, v6}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->setData(ILjava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v9, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mWorkThread:Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageDatabaseBackupActivity$BackgroundWorkThread;->start()V

    goto/16 :goto_0

    .line 254
    .end local v5           #nSel:I
    .end local v6           #szFileName:Ljava/lang/String;
    .end local v7           #szPathName:Ljava/lang/String;
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v9

    if-ne v9, v11, :cond_1

    .line 255
    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    .line 256
    .local v1, apnChangeSwitchWidget:Landroid/widget/ToggleButton;
    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    .line 258
    .local v2, bIsApnOn:Z
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setApnOnOff(Landroid/content/Context;Z)V

    .line 259
    invoke-static {v2}, Lcom/android/mms/MmsConfig;->setApnOnOff(Z)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "arg0"

    .prologue
    const/4 v12, 0x0

    .line 102
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    const v11, 0x7f04004b

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->setContentView(I)V

    .line 106
    const v11, 0x7f0b016e

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 107
    .local v8, backupButton:Landroid/widget/Button;
    const v11, 0x7f0b0172

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 108
    .local v10, restoreButton:Landroid/widget/Button;
    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    invoke-virtual {v10, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    const-string v11, "1. MESSAGE DB BACKUP"

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 111
    const-string v11, "2. MEESSAGE DB RESTORE"

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 113
    const v11, 0x7f0b0173

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 114
    .local v9, chkRestoreTitle:Landroid/widget/TextView;
    const-string v11, "DB Restore"

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    const v11, 0x7f0b0167

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 119
    .local v2, CMASTestchangeLayout:Landroid/widget/RelativeLayout;
    const v11, 0x7f0b0168

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 120
    .local v1, CMASChangeTitle:Landroid/widget/TextView;
    const v11, 0x7f0b0169

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 122
    .local v0, CMASChangeSwitchWidget:Landroid/widget/ToggleButton;
    const-string v11, "CMAS Test Mode"

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getCMASTestOnOff(Landroid/content/Context;)Z

    move-result v7

    .line 127
    .local v7, bIsCMASTestON:Z
    invoke-virtual {v0, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 129
    invoke-virtual {v8}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 130
    invoke-virtual {v2, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 135
    const v11, 0x7f0b016a

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 136
    .local v5, apnchangeLayout:Landroid/widget/RelativeLayout;
    sget-boolean v11, Lcom/android/mms/Log;->ENG_VER:Z

    if-eqz v11, :cond_0

    .line 137
    const v11, 0x7f0b016b

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 138
    .local v4, apnChangeTitle:Landroid/widget/TextView;
    const v11, 0x7f0b016c

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    .line 140
    .local v3, apnChangeSwitchWidget:Landroid/widget/ToggleButton;
    const-string v11, "MESSAGE APN CHANGE"

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    invoke-virtual {v3, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getApnOnOff(Landroid/content/Context;)Z

    move-result v6

    .line 144
    .local v6, bIsApnOn:Z
    invoke-virtual {v3, v6}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 146
    invoke-virtual {v8}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 147
    invoke-virtual {v5, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 153
    .end local v3           #apnChangeSwitchWidget:Landroid/widget/ToggleButton;
    .end local v4           #apnChangeTitle:Landroid/widget/TextView;
    .end local v6           #bIsApnOn:Z
    :goto_0
    const v11, 0x7f0b016f

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mTextviewBackupFileName:Landroid/widget/TextView;

    .line 154
    const v11, 0x7f0b0175

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mTextviewRestoreFileName:Landroid/widget/TextView;

    .line 155
    const v11, 0x7f0b0177

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ListView;

    iput-object v11, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mListView:Landroid/widget/ListView;

    .line 157
    invoke-direct {p0}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->createEventHandler()Landroid/os/Handler;

    move-result-object v11

    iput-object v11, p0, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->mEventHandler:Landroid/os/Handler;

    .line 158
    return-void

    .line 149
    :cond_0
    const/16 v11, 0x8

    invoke-virtual {v5, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onProgressDlgCompleted(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "title"
    .parameter "message"

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->getProgressDialog(Ljava/lang/String;Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 300
    .local v0, dlg:Landroid/app/ProgressDialog;
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method public onProgressDlgStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "title"
    .parameter "message"

    .prologue
    .line 289
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->getProgressDialog(Ljava/lang/String;Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 290
    .local v0, dlg:Landroid/app/ProgressDialog;
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 291
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 293
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 161
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 162
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageDatabaseBackupActivity;->initRestoreList()V

    .line 163
    return-void
.end method
