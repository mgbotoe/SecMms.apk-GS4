.class public Lcom/android/mms/ui/MessageOptions;
.super Ljava/lang/Object;
.source "MessageOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageOptions$CancelMessageListener;,
        Lcom/android/mms/ui/MessageOptions$SendNowListener;,
        Lcom/android/mms/ui/MessageOptions$RestoreMessageListener;,
        Lcom/android/mms/ui/MessageOptions$RestoreSpamTask;,
        Lcom/android/mms/ui/MessageOptions$AttachCancelListener;,
        Lcom/android/mms/ui/MessageOptions$AttachOkListener;,
        Lcom/android/mms/ui/MessageOptions$FileEndWithFilter;,
        Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;,
        Lcom/android/mms/ui/MessageOptions$DeleteMessageListener;,
        Lcom/android/mms/ui/MessageOptions$CreationOkListener;,
        Lcom/android/mms/ui/MessageOptions$ResendGroupSmsListener;
    }
.end annotation


# static fields
.field private static final ALL_THREADS_PROJECTION:[Ljava/lang/String; = null

.field private static final ATT_SERVICE_CONTACT:Ljava/lang/String; = "7726"

.field static final COLUMN_ID:I = 0x0

.field static final COLUMN_MMS_MESSAGE_BOX:I = 0x2

.field static final COLUMN_MMS_MESSAGE_TYPE:I = 0x1

.field static final COLUMN_SMS_ADDRESS:I = 0x2

.field static final COLUMN_SMS_DATE:I = 0x3

.field static final COLUMN_SMS_ERROR_CODE:I = 0x4

.field static final COLUMN_SMS_PRIORITY:I = 0x6

.field static final COLUMN_SMS_TYPE:I = 0x1

.field public static final CONTENT_RESTRICTION:I = -0x5

.field public static final COPY_TO_SIM_FAIL:I = 0x1

.field public static final COPY_TO_SIM_FUL:I = 0x3

.field public static final COPY_TO_SIM_INVALID_FORMAT:I = 0x4

.field public static final COPY_TO_SIM_LMS:I = 0x5

.field public static final COPY_TO_SIM_MMS:I = 0x6

.field public static final COPY_TO_SIM_NOTAVAILABLE:I = 0x2

.field public static final COPY_TO_SIM_SUCCESS:I = 0x0

.field private static final DELETE_MESSAGE_TOKEN:I = 0x25e4

.field public static final IMAGE_TOO_LARGE:I = -0x4

.field public static final LAUNCH_DEFAULT:I = 0x0

.field public static final LAUNCH_FROM_CONTACT_HISTORY:I = 0x1

.field public static final LAUNCH_FROM_FOLDER_VIEW:I = 0x2

.field public static final LAUNCH_FROM_MISSED_WIDGET:I = 0x3

.field public static final LAUNCH_FROM_SEARCHLIST_ON_FOLDER_VIEW:I = 0x4

.field public static final MENU_ADD_ADDRESS_TO_CONTACTS:I = 0x1b

.field private static final MENU_ATTACHMENT_LIST:I = 0x23

.field public static final MENU_BLOCK_NUMBER_SETTING:I = 0x29

.field private static final MENU_CALL_RECIPIENT:I = 0x2a

.field private static final MENU_CANCEL_MESSAGE:I = 0x27

.field private static final MENU_CONNECT_URL:I = 0x2e

.field private static final MENU_COPY_MESSAGE_TEXT:I = 0x18

.field private static final MENU_COPY_MESSAGE_TO_SIM:I = 0x1f

.field private static final MENU_COPY_TO_SDCARD:I = 0x21

.field public static final MENU_DELETE_MESSAGE:I = 0x12

.field private static final MENU_DELIVERY_REPORT:I = 0x14

.field public static final MENU_DOWNLOAD_MESSAGE:I = 0x25

.field private static final MENU_EDIT_MESSAGE:I = 0xe

.field private static final MENU_FORWARD_MESSAGE:I = 0x15

.field private static final MENU_LOCK_MESSAGE:I = 0x1c

.field private static final MENU_REGISTER_TO_CALENDAR:I = 0x22

.field public static final MENU_REPLY_MESSAGE:I = 0x20

.field private static final MENU_REPLY_TO_ALL:I = 0x24

.field private static final MENU_RESEND_MESSAGE:I = 0x1e

.field private static final MENU_RESTORE_MESSAGE:I = 0x28

.field private static final MENU_SAVE_RINGTONE:I = 0x2d

.field private static final MENU_SEND_NOW:I = 0x26

.field public static final MENU_UNBLOCK_NUMBER_SETTING:I = 0x2c

.field public static final MENU_UNLOCK_MESSAGE:I = 0x1d

.field private static final MENU_VIDEO_CALL_RECIPIENT:I = 0x2b

.field public static final MENU_VIEW_CONTACT:I = 0x1a

.field private static final MENU_VIEW_MESSAGE_DETAILS:I = 0x11

.field public static final MESSAGE_SIZE_EXCEEDED:I = -0x2

.field public static final OK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Mms/MessageOptions"

.field public static final UNKNOWN_ERROR:I = -0x1

.field public static final UNSUPPORTED_TYPE:I = -0x3

.field public static deleteDialog:Landroid/app/AlertDialog;

.field public static detailDialog:Landroid/app/AlertDialog;

.field public static detailDialogSpam:Landroid/app/AlertDialog;

.field static mLaunchApp:I

.field static mType:Ljava/lang/String;

.field static msgId:J

.field public static sReplyLaunched:Z

.field private static final sResIdRegisterCalendar:I


# instance fields
.field private final LOW_STORAGE_THRESHOLD:J

.field private TargetDirectory:Ljava/io/File;

.field public isLockedMessageList:Z

.field mActivity:Landroid/app/Activity;

.field private mAddressToCall:Ljava/lang/String;

.field private mAttachList:Landroid/widget/ListView;

.field private mAttachmentView:Landroid/widget/LinearLayout;

.field mBackgroundQueryHandler:Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;

.field mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

.field private mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

.field mContentResolver:Landroid/content/ContentResolver;

.field mContext:Landroid/content/Context;

.field private mCurSlideLocation:I

.field private mEditField:Landroid/widget/EditText;

.field private mEmptyNameToast:Landroid/widget/Toast;

.field mMsgItem:Lcom/android/mms/ui/MessageItem;

.field private mNegativeButton:Landroid/widget/Button;

.field private mPositiveButton:Landroid/widget/Button;

.field private mRecipients:Lcom/android/mms/data/ContactList;

.field private mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mSelectAllDivider:Landroid/view/View;

.field private mSelectAllView:Landroid/widget/RelativeLayout;

.field private mSendNowAddr:Ljava/lang/String;

.field private mSendNowBody:Ljava/lang/String;

.field protected mSendNowConfirmDialog:Landroid/content/DialogInterface;

.field private mSendNowDeliveryReport:Z

.field private mSendNowLocked:Z

.field private mSendNowReadReport:Z

.field private mSendNowSize:J

.field private mSendNowThreadId:J

.field private mSendNowType:Ljava/lang/String;

.field private mSendNowUri:Landroid/net/Uri;

.field private mTargetDirectory:Ljava/lang/String;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleIcon:Landroid/widget/ImageView;

.field private mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

.field private numberList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final sb:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 223
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSPannerLabelCaleder()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0c0364

    :goto_0
    sput v0, Lcom/android/mms/ui/MessageOptions;->sResIdRegisterCalendar:I

    .line 685
    sput-object v3, Lcom/android/mms/ui/MessageOptions;->detailDialog:Landroid/app/AlertDialog;

    .line 686
    sput-object v3, Lcom/android/mms/ui/MessageOptions;->detailDialogSpam:Landroid/app/AlertDialog;

    .line 1612
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "date"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/MessageOptions;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    .line 2052
    sput-object v3, Lcom/android/mms/ui/MessageOptions;->deleteDialog:Landroid/app/AlertDialog;

    return-void

    .line 223
    :cond_0
    const v0, 0x7f0c0365

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 6
    .parameter "context"
    .parameter "thisContext"
    .parameter "msg"
    .parameter "compose"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageOptions;->sb:Ljava/lang/StringBuilder;

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageOptions;->numberList:Ljava/util/ArrayList;

    .line 203
    iput-boolean v3, p0, Lcom/android/mms/ui/MessageOptions;->isLockedMessageList:Z

    .line 233
    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowType:Ljava/lang/String;

    .line 234
    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowAddr:Ljava/lang/String;

    .line 235
    iput-wide v4, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowThreadId:J

    .line 236
    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowBody:Ljava/lang/String;

    .line 237
    iput-wide v4, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowSize:J

    .line 238
    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowUri:Landroid/net/Uri;

    .line 239
    iput-boolean v3, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowLocked:Z

    .line 240
    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mAddressToCall:Ljava/lang/String;

    .line 241
    iput-boolean v3, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowDeliveryReport:Z

    .line 242
    iput-boolean v3, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowReadReport:Z

    .line 250
    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mAttachmentView:Landroid/widget/LinearLayout;

    .line 251
    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mAttachList:Landroid/widget/ListView;

    .line 252
    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSelectAllView:Landroid/widget/RelativeLayout;

    .line 253
    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 254
    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSelectAllDivider:Landroid/view/View;

    .line 634
    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mRecipients:Lcom/android/mms/data/ContactList;

    .line 2361
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

    iput-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mTargetDirectory:Ljava/lang/String;

    .line 2363
    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->TargetDirectory:Ljava/io/File;

    .line 2421
    iput-wide v4, p0, Lcom/android/mms/ui/MessageOptions;->LOW_STORAGE_THRESHOLD:J

    .line 3138
    iput v3, p0, Lcom/android/mms/ui/MessageOptions;->mCurSlideLocation:I

    .line 298
    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    .line 299
    iput-object p2, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    .line 300
    iput-object p3, p0, Lcom/android/mms/ui/MessageOptions;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 301
    iput-object p4, p0, Lcom/android/mms/ui/MessageOptions;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    .line 302
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "thisActivity"
    .parameter "msgItem"
    .parameter "messageId"
    .parameter "type"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageOptions;->sb:Ljava/lang/StringBuilder;

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageOptions;->numberList:Ljava/util/ArrayList;

    .line 203
    iput-boolean v3, p0, Lcom/android/mms/ui/MessageOptions;->isLockedMessageList:Z

    .line 233
    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowType:Ljava/lang/String;

    .line 234
    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowAddr:Ljava/lang/String;

    .line 235
    iput-wide v4, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowThreadId:J

    .line 236
    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowBody:Ljava/lang/String;

    .line 237
    iput-wide v4, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowSize:J

    .line 238
    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowUri:Landroid/net/Uri;

    .line 239
    iput-boolean v3, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowLocked:Z

    .line 240
    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mAddressToCall:Ljava/lang/String;

    .line 241
    iput-boolean v3, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowDeliveryReport:Z

    .line 242
    iput-boolean v3, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowReadReport:Z

    .line 250
    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mAttachmentView:Landroid/widget/LinearLayout;

    .line 251
    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mAttachList:Landroid/widget/ListView;

    .line 252
    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSelectAllView:Landroid/widget/RelativeLayout;

    .line 253
    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 254
    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSelectAllDivider:Landroid/view/View;

    .line 634
    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mRecipients:Lcom/android/mms/data/ContactList;

    .line 2361
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

    iput-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mTargetDirectory:Ljava/lang/String;

    .line 2363
    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->TargetDirectory:Ljava/io/File;

    .line 2421
    iput-wide v4, p0, Lcom/android/mms/ui/MessageOptions;->LOW_STORAGE_THRESHOLD:J

    .line 3138
    iput v3, p0, Lcom/android/mms/ui/MessageOptions;->mCurSlideLocation:I

    .line 263
    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    .line 264
    iput-object p2, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    .line 265
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    .line 266
    sput-wide p4, Lcom/android/mms/ui/MessageOptions;->msgId:J

    .line 267
    sput-object p6, Lcom/android/mms/ui/MessageOptions;->mType:Ljava/lang/String;

    .line 268
    iput-object p3, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 271
    sput v3, Lcom/android/mms/ui/MessageOptions;->mLaunchApp:I

    .line 273
    new-instance v0, Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;-><init>(Lcom/android/mms/ui/MessageOptions;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mBackgroundQueryHandler:Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;

    .line 275
    const-string v0, "Mms/MessageOptions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLaunchApp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/ui/MessageOptions;->mLaunchApp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;I)V
    .locals 6
    .parameter "context"
    .parameter "thisActivity"
    .parameter "msgItem"
    .parameter "messageId"
    .parameter "type"
    .parameter "launchMode"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageOptions;->sb:Ljava/lang/StringBuilder;

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageOptions;->numberList:Ljava/util/ArrayList;

    .line 203
    iput-boolean v3, p0, Lcom/android/mms/ui/MessageOptions;->isLockedMessageList:Z

    .line 233
    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowType:Ljava/lang/String;

    .line 234
    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowAddr:Ljava/lang/String;

    .line 235
    iput-wide v4, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowThreadId:J

    .line 236
    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowBody:Ljava/lang/String;

    .line 237
    iput-wide v4, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowSize:J

    .line 238
    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowUri:Landroid/net/Uri;

    .line 239
    iput-boolean v3, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowLocked:Z

    .line 240
    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mAddressToCall:Ljava/lang/String;

    .line 241
    iput-boolean v3, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowDeliveryReport:Z

    .line 242
    iput-boolean v3, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowReadReport:Z

    .line 250
    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mAttachmentView:Landroid/widget/LinearLayout;

    .line 251
    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mAttachList:Landroid/widget/ListView;

    .line 252
    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSelectAllView:Landroid/widget/RelativeLayout;

    .line 253
    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 254
    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSelectAllDivider:Landroid/view/View;

    .line 634
    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mRecipients:Lcom/android/mms/data/ContactList;

    .line 2361
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

    iput-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mTargetDirectory:Ljava/lang/String;

    .line 2363
    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->TargetDirectory:Ljava/io/File;

    .line 2421
    iput-wide v4, p0, Lcom/android/mms/ui/MessageOptions;->LOW_STORAGE_THRESHOLD:J

    .line 3138
    iput v3, p0, Lcom/android/mms/ui/MessageOptions;->mCurSlideLocation:I

    .line 281
    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    .line 282
    iput-object p2, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    .line 283
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    .line 284
    sput-wide p4, Lcom/android/mms/ui/MessageOptions;->msgId:J

    .line 285
    sput-object p6, Lcom/android/mms/ui/MessageOptions;->mType:Ljava/lang/String;

    .line 286
    iput-object p3, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 289
    sput p7, Lcom/android/mms/ui/MessageOptions;->mLaunchApp:I

    .line 291
    new-instance v0, Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;-><init>(Lcom/android/mms/ui/MessageOptions;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mBackgroundQueryHandler:Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;

    .line 293
    const-string v0, "Mms/MessageOptions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLaunchApp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/ui/MessageOptions;->mLaunchApp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method public static MultipleCopyMessageToSIM(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;I)I
    .locals 19
    .parameter "context"
    .parameter "time"
    .parameter "body"
    .parameter "address"
    .parameter "BoxId"

    .prologue
    .line 3313
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static/range {p4 .. p4}, Lcom/android/mms/ui/MessageUtils;->isValidSmsAddress(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3314
    :cond_0
    const/4 v14, 0x4

    .line 3383
    :cond_1
    :goto_0
    return v14

    .line 3317
    :cond_2
    const/4 v14, 0x1

    .line 3324
    .local v14, ret_value:I
    new-instance v18, Landroid/text/format/Time;

    invoke-direct/range {v18 .. v18}, Landroid/text/format/Time;-><init>()V

    .line 3325
    .local v18, ts:Landroid/text/format/Time;
    move-object/from16 v0, v18

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 3326
    invoke-virtual/range {v18 .. v18}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v15

    .line 3328
    .local v15, stime:Ljava/lang/String;
    const-string v4, "Mms/MessageOptions"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[MultipleCopyMessageToSIM] stime : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3330
    const/4 v4, 0x2

    const/16 v6, 0x8

    invoke-virtual {v15, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 3331
    .local v16, temp_date:Ljava/lang/String;
    const/16 v4, 0x9

    const/16 v6, 0xf

    invoke-virtual {v15, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 3333
    .local v17, temp_time:Ljava/lang/String;
    const-string v4, "Mms/MessageOptions"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[MultipleCopyMessageToSIM] temp_date : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3334
    const-string v4, "Mms/MessageOptions"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[MultipleCopyMessageToSIM] temp_date : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3336
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3338
    .local v8, mTimestamp:Ljava/lang/String;
    const-string v4, "Mms/MessageOptions"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "timestamp : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3340
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v3

    .line 3342
    .local v3, smsManager:Landroid/telephony/SmsManager;
    const/4 v10, 0x0

    .line 3343
    .local v10, messageCount:I
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 3344
    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 3345
    .local v11, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 3348
    .end local v11           #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 3349
    .local v12, prefs:Landroid/content/SharedPreferences;
    const-string v4, "pref_key_manage_smsc_address"

    const-string v6, "Not Set"

    invoke-interface {v12, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3351
    .local v5, sca:Ljava/lang/String;
    const/4 v4, 0x1

    if-le v10, v4, :cond_4

    .line 3352
    const/4 v14, 0x5

    goto/16 :goto_0

    .line 3356
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSMSP()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3357
    invoke-virtual {v3}, Landroid/telephony/SmsManager;->getSMSPAvailable()Z

    move-result v4

    if-nez v4, :cond_5

    .line 3358
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 3362
    :cond_5
    const-string v4, "Mms/MessageOptions"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[MultipleCopyMessageToSIM] Copy Address : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3368
    :try_start_0
    const-string v4, "Mms/MessageOptions"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[MultipleCopyMessageToSIM] Copy body : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    .line 3369
    invoke-virtual/range {v3 .. v8}, Landroid/telephony/SmsManager;->MakeSimPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 3370
    .local v13, result:I
    const/4 v4, 0x1

    if-eq v13, v4, :cond_6

    const/4 v4, 0x2

    if-ne v13, v4, :cond_7

    .line 3371
    :cond_6
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 3373
    :cond_7
    const/4 v4, 0x3

    if-ne v13, v4, :cond_8

    .line 3374
    const/4 v14, 0x3

    goto/16 :goto_0

    .line 3376
    :cond_8
    if-nez v13, :cond_1

    .line 3377
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 3379
    .end local v13           #result:I
    :catch_0
    move-exception v9

    .line 3380
    .local v9, e:Ljava/lang/NumberFormatException;
    const-string v4, "Mms/MessageOptions"

    const-string v6, "NumberFormatException :"

    invoke-static {v4, v6, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3381
    const v4, 0x7f0c001f

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageItem;[Ljava/lang/String;Lcom/android/mms/data/Conversation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 129
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/MessageOptions;->resendGroupSmsMessageItem(Lcom/android/mms/ui/MessageItem;[Ljava/lang/String;Lcom/android/mms/data/Conversation;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageItem;ZLcom/google/android/mms/pdu/SendReq;Ljava/lang/String;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 129
    invoke-direct/range {p0 .. p6}, Lcom/android/mms/ui/MessageOptions;->forwardMessageStartActivityForMms(Lcom/android/mms/ui/MessageItem;ZLcom/google/android/mms/pdu/SendReq;Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/MessageOptions;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 129
    iget-wide v0, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowThreadId:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/android/mms/ui/MessageOptions;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput-wide p1, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowThreadId:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/MessageOptions;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowBody:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/mms/ui/MessageOptions;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowBody:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/MessageOptions;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 129
    iget-wide v0, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowSize:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/android/mms/ui/MessageOptions;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput-wide p1, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowSize:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/MessageOptions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowLocked:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/mms/ui/MessageOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowLocked:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/MessageOptions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowDeliveryReport:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/mms/ui/MessageOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowDeliveryReport:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/MessageOptions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowReadReport:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/mms/ui/MessageOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowReadReport:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageItem;ZLcom/google/android/mms/pdu/SendReq;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 129
    invoke-direct/range {p0 .. p5}, Lcom/android/mms/ui/MessageOptions;->forwardMessageStartActivityForMms(Lcom/android/mms/ui/MessageItem;ZLcom/google/android/mms/pdu/SendReq;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MessageOptions;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/mms/ui/MessageOptions;->finishViewerCheckFolderViewMode()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MessageOptions;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/MessageOptions;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/mms/ui/MessageOptions;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/mms/ui/MessageOptions;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/mms/ui/MessageOptions;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/mms/ui/MessageOptions;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowAddr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/mms/ui/MessageOptions;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowAddr:Ljava/lang/String;

    return-object p1
.end method

.method private buildFileNumber(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "prefix"
    .parameter "num"

    .prologue
    .line 2486
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 2487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2495
    .local v0, t:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 2488
    .end local v0           #t:Ljava/lang/String;
    :cond_0
    const/16 v1, 0xb

    if-ge p2, v1, :cond_1

    .line 2489
    add-int/lit8 p2, p2, -0x1

    .line 2490
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #t:Ljava/lang/String;
    goto :goto_0

    .line 2492
    .end local v0           #t:Ljava/lang/String;
    :cond_1
    add-int/lit8 p2, p2, -0x1

    .line 2493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #t:Ljava/lang/String;
    goto :goto_0
.end method

.method private checkAvailableStorage()Z
    .locals 4

    .prologue
    .line 2424
    invoke-direct {p0}, Lcom/android/mms/ui/MessageOptions;->getAvailableStorage()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2425
    const/4 v0, 0x1

    .line 2426
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkCRForRawAttachment()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 2044
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/model/CarrierContentRestriction;->getMmsCreationMode(Landroid/content/Context;)I

    move-result v0

    .line 2046
    .local v0, creationMode:I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    .line 2048
    :cond_0
    new-instance v1, Lcom/android/mms/ContentRestrictionException;

    const-string v2, "Raw Attachment"

    invoke-direct {v1, v2}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2050
    :cond_1
    return-void
.end method

.method private checkFileNumber(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 4
    .parameter "title"
    .parameter "context"

    .prologue
    .line 2477
    const/4 v1, 0x0

    .line 2478
    .local v1, files:[Ljava/io/File;
    new-instance v0, Lcom/android/mms/ui/MessageOptions$FileEndWithFilter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".vmg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/mms/ui/MessageOptions$FileEndWithFilter;-><init>(Lcom/android/mms/ui/MessageOptions;Ljava/lang/String;)V

    .line 2480
    .local v0, filenameFilter:Ljava/io/FilenameFilter;
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->TargetDirectory:Ljava/io/File;

    invoke-virtual {v2, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 2481
    if-eqz v1, :cond_0

    array-length v2, v1

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkMsgCount(J)I
    .locals 9
    .parameter "threadId"

    .prologue
    .line 1829
    const/4 v8, -0x1

    .line 1830
    .local v8, retVal:I
    const/4 v6, 0x0

    .line 1833
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1834
    .local v1, contentThreadUri:Landroid/net/Uri;
    if-nez v1, :cond_0

    .line 1835
    const/4 v8, 0x0

    .line 1837
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/mms/ui/MessageOptions;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1843
    .end local v1           #contentThreadUri:Landroid/net/Uri;
    :goto_0
    if-eqz v6, :cond_1

    .line 1850
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    .line 1853
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1856
    :cond_1
    const-string v0, "Mms/MessageOptions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkMsgCount : retVal="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1857
    return v8

    .line 1839
    :catch_0
    move-exception v7

    .line 1840
    .local v7, e:Ljava/lang/NullPointerException;
    const-string v0, "Mms/MessageOptions"

    const-string v2, "exception : NullPointerException @ forwardMessage"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1853
    .end local v7           #e:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static closeDeleteDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3127
    sget-object v1, Lcom/android/mms/ui/MessageOptions;->deleteDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/mms/ui/MessageOptions;->deleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3129
    :try_start_0
    sget-object v1, Lcom/android/mms/ui/MessageOptions;->deleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 3130
    const/4 v1, 0x0

    sput-object v1, Lcom/android/mms/ui/MessageOptions;->deleteDialog:Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3136
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_0
    return-void

    .line 3131
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_0
    move-exception v0

    .line 3132
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "Mms/MessageOptions"

    const-string v2, "Catch a IllegalArgumentException: "

    invoke-static {v1, v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3133
    sput-object v3, Lcom/android/mms/ui/MessageOptions;->deleteDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public static closeDetailDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3141
    sget-object v1, Lcom/android/mms/ui/MessageOptions;->detailDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/mms/ui/MessageOptions;->detailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3143
    :try_start_0
    sget-object v1, Lcom/android/mms/ui/MessageOptions;->detailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 3144
    const/4 v1, 0x0

    sput-object v1, Lcom/android/mms/ui/MessageOptions;->detailDialog:Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3150
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_0
    return-void

    .line 3145
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_0
    move-exception v0

    .line 3146
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "Mms/MessageOptions"

    const-string v2, "Catch a IllegalArgumentException: "

    invoke-static {v1, v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3147
    sput-object v3, Lcom/android/mms/ui/MessageOptions;->detailDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public static closeDetailSpamDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3153
    sget-object v1, Lcom/android/mms/ui/MessageOptions;->detailDialogSpam:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/mms/ui/MessageOptions;->detailDialogSpam:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3155
    :try_start_0
    sget-object v1, Lcom/android/mms/ui/MessageOptions;->detailDialogSpam:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 3156
    const/4 v1, 0x0

    sput-object v1, Lcom/android/mms/ui/MessageOptions;->detailDialogSpam:Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3162
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_0
    return-void

    .line 3157
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_0
    move-exception v0

    .line 3158
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "Mms/MessageOptions"

    const-string v2, "Catch a IllegalArgumentException: "

    invoke-static {v1, v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3159
    sput-object v3, Lcom/android/mms/ui/MessageOptions;->detailDialogSpam:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private confirmCancelDialog(Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 3
    .parameter "listener"
    .parameter "locked"

    .prologue
    .line 3053
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3054
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c012f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3056
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 3057
    if-eqz p2, :cond_0

    const v1, 0x7f0c0354

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 3059
    const v1, 0x104000a

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3060
    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3061
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3062
    return-void

    .line 3057
    :cond_0
    const v1, 0x7f0c0353

    goto :goto_0
.end method

.method private confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 3
    .parameter "listener"
    .parameter "locked"

    .prologue
    .line 2054
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2055
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c0075

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2057
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2058
    if-eqz p2, :cond_0

    const v1, 0x7f0c0078

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2060
    const v1, 0x104000a

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2061
    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2062
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    sput-object v1, Lcom/android/mms/ui/MessageOptions;->deleteDialog:Landroid/app/AlertDialog;

    .line 2063
    sget-object v1, Lcom/android/mms/ui/MessageOptions;->deleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 2064
    return-void

    .line 2058
    :cond_0
    const v1, 0x7f0c0077

    goto :goto_0
.end method

.method private confirmRestoreDialog(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 2885
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2886
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c0278

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2888
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2889
    const v1, 0x7f0c027b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2890
    const v1, 0x104000a

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2891
    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2892
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2893
    return-void
.end method

.method private convertAddress(Ljava/lang/String;J)Ljava/lang/String;
    .locals 6
    .parameter "address"
    .parameter "messageId"

    .prologue
    .line 2020
    iget-object v5, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v5, v5, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2021
    iget-object v5, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    invoke-static {v5, p2, p3}, Lcom/android/mms/ui/MessageUtils;->getViewTitleStrings(Landroid/content/Context;J)Ljava/util/ArrayList;

    move-result-object v4

    .line 2023
    .local v4, phoneNumbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2024
    .local v0, displayAddress:Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2025
    .local v2, numberCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 2026
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2027
    .local v3, phoneNumber:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2029
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2030
    :cond_0
    add-int/lit8 v5, v2, -0x1

    if-eq v1, v5, :cond_1

    .line 2031
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2025
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2035
    .end local v3           #phoneNumber:Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2039
    .end local v0           #displayAddress:Ljava/lang/StringBuilder;
    .end local v1           #i:I
    .end local v2           #numberCount:I
    .end local v4           #phoneNumbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local p1
    :cond_3
    return-object p1
.end method

.method private createAttachmentDialog(ZJLjava/util/ArrayList;Z)V
    .locals 13
    .parameter "bSave"
    .parameter "msgId"
    .parameter
    .parameter "audioOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZJ",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 2556
    .local p4, showAttachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    new-instance v9, Lcom/android/mms/ui/AttachmentListAdapter;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const v3, 0x7f040016

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-direct {v9, v2, v3, v0, v1}, Lcom/android/mms/ui/AttachmentListAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Z)V

    .line 2558
    .local v9, attachAdapter:Lcom/android/mms/ui/AttachmentListAdapter;
    new-instance v11, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-direct {v11, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2559
    .local v11, b:Landroid/app/AlertDialog$Builder;
    if-eqz p5, :cond_0

    .line 2560
    const v2, 0x7f0c0436

    invoke-virtual {v11, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2564
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2567
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040015

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mAttachmentView:Landroid/widget/LinearLayout;

    .line 2568
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mAttachmentView:Landroid/widget/LinearLayout;

    const v3, 0x7f0b003b

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSelectAllView:Landroid/widget/RelativeLayout;

    .line 2569
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mAttachmentView:Landroid/widget/LinearLayout;

    const v3, 0x7f0b003f

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mAttachList:Landroid/widget/ListView;

    .line 2570
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mAttachmentView:Landroid/widget/LinearLayout;

    const v3, 0x7f0b003d

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 2571
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mAttachmentView:Landroid/widget/LinearLayout;

    const v3, 0x7f0b003e

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSelectAllDivider:Landroid/view/View;

    .line 2572
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mAttachList:Landroid/widget/ListView;

    invoke-virtual {v2, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2574
    if-nez p5, :cond_1

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 2575
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSelectAllView:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2576
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSelectAllDivider:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2582
    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSelectAllView:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020228

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2584
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSelectAllView:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/android/mms/ui/MessageOptions$4;

    invoke-direct {v3, p0, v9}, Lcom/android/mms/ui/MessageOptions$4;-><init>(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/AttachmentListAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2599
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mAttachmentView:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2602
    if-eqz p1, :cond_3

    .line 2603
    if-eqz p5, :cond_2

    .line 2604
    const v12, 0x7f0c017b

    new-instance v2, Lcom/android/mms/ui/MessageOptions$AttachOkListener;

    iget-object v4, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object v3, p0

    move v5, p1

    move-wide v6, p2

    move/from16 v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/mms/ui/MessageOptions$AttachOkListener;-><init>(Lcom/android/mms/ui/MessageOptions;Landroid/content/Context;ZJZ)V

    invoke-virtual {v11, v12, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2612
    :goto_2
    const v2, 0x7f0c0050

    new-instance v3, Lcom/android/mms/ui/MessageOptions$AttachCancelListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/mms/ui/MessageOptions$AttachCancelListener;-><init>(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageOptions$1;)V

    invoke-virtual {v11, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2621
    new-instance v2, Lcom/android/mms/ui/MessageOptions$5;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MessageOptions$5;-><init>(Lcom/android/mms/ui/MessageOptions;)V

    invoke-virtual {v11, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 2651
    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    .line 2652
    .local v10, attachListDialog:Landroid/app/AlertDialog;
    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V

    .line 2653
    const/4 v2, -0x1

    invoke-virtual {v10, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/android/mms/ui/AttachmentListAdapter;->setSaveButton(Landroid/widget/Button;)V

    .line 2654
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v9, v2}, Lcom/android/mms/ui/AttachmentListAdapter;->setSelectAllCheckbox(Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    .line 2655
    return-void

    .line 2562
    .end local v10           #attachListDialog:Landroid/app/AlertDialog;
    :cond_0
    const v2, 0x7f0c011d

    invoke-virtual {v11, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 2578
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSelectAllView:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2579
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSelectAllDivider:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 2606
    :cond_2
    const v12, 0x7f0c00dd

    new-instance v2, Lcom/android/mms/ui/MessageOptions$AttachOkListener;

    iget-object v4, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object v3, p0

    move v5, p1

    move-wide v6, p2

    move/from16 v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/mms/ui/MessageOptions$AttachOkListener;-><init>(Lcom/android/mms/ui/MessageOptions;Landroid/content/Context;ZJZ)V

    invoke-virtual {v11, v12, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 2609
    :cond_3
    const v8, 0x7f0c002c

    new-instance v2, Lcom/android/mms/ui/MessageOptions$AttachOkListener;

    iget-object v4, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object v3, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/mms/ui/MessageOptions$AttachOkListener;-><init>(Lcom/android/mms/ui/MessageOptions;Landroid/content/Context;ZJ)V

    invoke-virtual {v11, v8, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2
.end method

.method private deleteFailedMsg(Lcom/android/mms/ui/MessageItem;)V
    .locals 9
    .parameter "msgItem"

    .prologue
    const/4 v8, 0x0

    .line 1870
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v2

    .line 1871
    .local v2, threadId:J
    invoke-direct {p0, v2, v3}, Lcom/android/mms/ui/MessageOptions;->checkMsgCount(J)I

    move-result v1

    .line 1872
    .local v1, messageCount:I
    const/4 v5, 0x1

    if-ne v1, v5, :cond_0

    .line 1873
    iget-object v5, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const/4 v6, 0x0

    invoke-static {v5, v2, v3, v6}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 1874
    .local v0, conversation:Lcom/android/mms/data/Conversation;
    invoke-virtual {v0, v2, v3}, Lcom/android/mms/data/Conversation;->clearThreadId(J)V

    .line 1875
    iget-object v5, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/android/mms/data/Conversation;->init(Landroid/content/Context;)V

    .line 1878
    .end local v0           #conversation:Lcom/android/mms/data/Conversation;
    :cond_0
    const-string v5, "sms"

    iget-object v6, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1880
    sget-object v5, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 1881
    .local v4, uri:Landroid/net/Uri;
    iget-object v5, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v5, v6, v4, v8, v8}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1887
    .end local v4           #uri:Landroid/net/Uri;
    :cond_1
    :goto_0
    return-void

    .line 1883
    :cond_2
    const-string v5, "mms"

    iget-object v6, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1884
    sget-object v5, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 1885
    .restart local v4       #uri:Landroid/net/Uri;
    iget-object v5, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v5, v6, v4, v8, v8}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private finishViewerCheckFolderViewMode()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 2138
    const-string v0, "Mms/MessageOptions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishViewerCheckFolderViewMode(), mLaunchApp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/ui/MessageOptions;->mLaunchApp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2139
    sget v0, Lcom/android/mms/ui/MessageOptions;->mLaunchApp:I

    if-eq v0, v3, :cond_5

    .line 2141
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2142
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/mms/ui/SlideshowActivity;

    if-eqz v0, :cond_1

    .line 2144
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setResult(I)V

    .line 2145
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 2176
    :cond_0
    :goto_0
    return-void

    .line 2146
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/mms/ui/MmsSinglePageActivity;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/mms/ui/SmsViewerActivity;

    if-eqz v0, :cond_0

    .line 2147
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 2150
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/mms/ui/SlideshowActivity;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/mms/ui/MmsSinglePageActivity;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/mms/ui/SmsViewerActivity;

    if-eqz v0, :cond_0

    .line 2151
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 2163
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/mms/ui/BoxListViewActivity;

    if-eqz v0, :cond_6

    .line 2164
    const-string v0, "Mms/MessageOptions"

    const-string v1, "finishViewerCheckFolderViewMode()[1] BoxListViewActivity"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2165
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/mms/ui/SlideshowActivity;

    if-eqz v0, :cond_7

    .line 2166
    const-string v0, "Mms/MessageOptions"

    const-string v1, "finishViewerCheckFolderViewMode()[2] SlideshowActivity"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2168
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setResult(I)V

    .line 2169
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 2171
    :cond_7
    const-string v0, "Mms/MessageOptions"

    const-string v1, "finishViewerCheckFolderViewMode()[3]"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2173
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private forwardMessageStartActivityForMms(Lcom/android/mms/ui/MessageItem;ZLcom/google/android/mms/pdu/SendReq;Ljava/lang/String;Z)V
    .locals 7
    .parameter "msgItem"
    .parameter "IsSlideshow"
    .parameter "sendReq"
    .parameter "subject"
    .parameter "checkCRMode"

    .prologue
    .line 1955
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/MessageOptions;->forwardMessageStartActivityForMms(Lcom/android/mms/ui/MessageItem;ZLcom/google/android/mms/pdu/SendReq;Ljava/lang/String;ZZ)V

    .line 1956
    return-void
.end method

.method private forwardMessageStartActivityForMms(Lcom/android/mms/ui/MessageItem;ZLcom/google/android/mms/pdu/SendReq;Ljava/lang/String;ZZ)V
    .locals 12
    .parameter "msgItem"
    .parameter "IsSlideshow"
    .parameter "sendReq"
    .parameter "subject"
    .parameter "checkCRMode"
    .parameter "editMsg"

    .prologue
    .line 1961
    const-string v2, "Mms/MessageOptions"

    const-string v3, "forwardMessageStartActivityForMms()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1963
    new-instance v9, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v9, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1964
    .local v9, intent:Landroid/content/Intent;
    const-string v2, "exit_on_sent"

    const/4 v3, 0x1

    invoke-virtual {v9, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1965
    const-string v2, "forwarded_message"

    const/4 v3, 0x1

    invoke-virtual {v9, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1966
    const/4 v2, 0x1

    move/from16 v0, p6

    if-ne v0, v2, :cond_0

    .line 1967
    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    iget-wide v3, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-direct {p0, v2, v3, v4}, Lcom/android/mms/ui/MessageOptions;->convertAddress(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v7

    .line 1970
    .local v7, address:Ljava/lang/String;
    const-string v2, "recipients"

    invoke-virtual {v9, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1971
    const-string v2, "edit_message"

    const/4 v3, 0x1

    invoke-virtual {v9, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1974
    sget v2, Lcom/android/mms/ui/MessageOptions;->mLaunchApp:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 1975
    const-string v2, "fromFolderView"

    const/4 v3, 0x1

    invoke-virtual {v9, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1977
    .end local v7           #address:Ljava/lang/String;
    :cond_0
    const/4 v11, 0x0

    .line 1979
    .local v11, uri:Landroid/net/Uri;
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    .line 1980
    .local v1, persister:Lcom/google/android/mms/pdu/PduPersister;
    sget-object v3, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getIsGroupMmsEnabled(Landroid/content/Context;)Z

    move-result v5

    const/4 v6, 0x0

    move-object v2, p3

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 1988
    const-string v2, "msg_uri"

    invoke-virtual {v9, v2, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1989
    const-string v2, "subject"

    move-object/from16 v0, p4

    invoke-virtual {v9, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1990
    const-string v2, "IsSlide"

    invoke-virtual {v9, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1991
    const-string v2, "checkCRMode"

    move/from16 v0, p5

    invoke-virtual {v9, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1992
    const/4 v2, 0x1

    move/from16 v0, p6

    if-ne v0, v2, :cond_1

    .line 1993
    iget-wide v2, p1, Lcom/android/mms/ui/MessageItem;->mReserved:J

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 1994
    const-string v2, "reserved"

    const/4 v3, 0x1

    invoke-virtual {v9, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1995
    const-string v2, "reservedTime"

    iget-wide v3, p1, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    invoke-virtual {v9, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1998
    :cond_1
    iget-boolean v2, p0, Lcom/android/mms/ui/MessageOptions;->isLockedMessageList:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    iget-wide v2, p1, Lcom/android/mms/ui/MessageItem;->mReserved:J

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 1999
    :cond_2
    const-string v2, "locked_message_list"

    const/4 v3, 0x1

    invoke-virtual {v9, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2000
    :cond_3
    if-nez p6, :cond_4

    .line 2001
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMenuInsertSenderInfoWhenFwdMsg()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->isInsertSenderInfoWhenFwdMsgEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2002
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-static {v2, p1}, Lcom/android/mms/ui/MessageUtils;->getSenderInformation(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v10

    .line 2003
    .local v10, senderInformation:Ljava/lang/String;
    if-eqz v10, :cond_4

    .line 2004
    const-string v2, "sender_information"

    invoke-virtual {v9, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2007
    .end local v10           #senderInformation:Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const-string v3, "com.android.mms.ui.ForwardMessageActivity"

    invoke-virtual {v9, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 2009
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v9}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2010
    const/4 v2, 0x1

    move/from16 v0, p6

    if-ne v0, v2, :cond_5

    .line 2011
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageOptions;->deleteFailedMsg(Lcom/android/mms/ui/MessageItem;)V

    .line 2012
    invoke-direct {p0}, Lcom/android/mms/ui/MessageOptions;->finishViewerCheckFolderViewMode()V

    .line 2014
    .end local v1           #persister:Lcom/google/android/mms/pdu/PduPersister;
    :cond_5
    :goto_0
    return-void

    .line 1982
    :catch_0
    move-exception v8

    .line 1983
    .local v8, e:Lcom/google/android/mms/MmsException;
    const-string v2, "Mms/MessageOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to copy message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1984
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0c0041

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private getAvailableStorage()J
    .locals 6

    .prologue
    .line 2430
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 2431
    .local v0, AvailableStorage:Ljava/lang/String;
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2432
    .local v1, stat:Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    return-wide v2
.end method

.method private getCallableRecipient()Ljava/lang/String;
    .locals 4

    .prologue
    .line 621
    invoke-direct {p0}, Lcom/android/mms/ui/MessageOptions;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    .line 623
    .local v1, recipients:Lcom/android/mms/data/ContactList;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 624
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 626
    .local v0, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->isEmail()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->isPhoneNumber()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 627
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mAddressToCall:Ljava/lang/String;

    .line 628
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    .line 631
    .end local v0           #contact:Lcom/android/mms/data/Contact;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getFailedAddress(J)[Ljava/lang/String;
    .locals 11
    .parameter "groupId"

    .prologue
    .line 1260
    const/4 v10, 0x0

    .line 1261
    .local v10, dests:[Ljava/lang/String;
    const/4 v9, 0x0

    .line 1262
    .local v9, cursor:Landroid/database/Cursor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "group_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1265
    .local v4, selection:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "address"

    aput-object v6, v3, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1270
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1271
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v10, v0, [Ljava/lang/String;

    .line 1272
    const/4 v7, 0x0

    .local v7, count:I
    move v8, v7

    .line 1274
    .end local v7           #count:I
    .local v8, count:I
    :goto_0
    add-int/lit8 v7, v8, 0x1

    .end local v8           #count:I
    .restart local v7       #count:I
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v8

    .line 1275
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 1278
    .end local v7           #count:I
    :cond_0
    if-eqz v9, :cond_1

    .line 1279
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1282
    :cond_1
    return-object v10

    .line 1278
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_2

    .line 1279
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1278
    :cond_2
    throw v0

    .restart local v7       #count:I
    :cond_3
    move v8, v7

    .end local v7           #count:I
    .restart local v8       #count:I
    goto :goto_0
.end method

.method private getNameWithoutEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "title"

    .prologue
    .line 2436
    const/16 v2, 0xb

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\\"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "/"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, ":"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string v3, "*"

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string v3, "?"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string v3, "\""

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "<"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, ">"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "|"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string v3, ";"

    aput-object v3, v0, v2

    const/16 v2, 0xa

    const-string v3, "\n"

    aput-object v3, v0, v2

    .line 2439
    .local v0, INVALID_CHAR:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 2440
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 2442
    const-string v2, "\\\\"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "[*]"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "[?]"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\""

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "<"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ">"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "[|]"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ";"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2449
    :cond_0
    return-object p1

    .line 2439
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getRecipients()Lcom/android/mms/data/ContactList;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 638
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mRecipients:Lcom/android/mms/data/ContactList;

    if-nez v1, :cond_0

    .line 639
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v1, v1, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 640
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v2, v2, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    invoke-static {v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->getAddressByThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 642
    .local v0, recipients:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 643
    invoke-static {v0, v5, v5}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mRecipients:Lcom/android/mms/data/ContactList;

    .line 647
    .end local v0           #recipients:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mRecipients:Lcom/android/mms/data/ContactList;

    return-object v1
.end method

.method private getRecordFileName(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 7
    .parameter "msgItem"

    .prologue
    .line 2453
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v5, "yyMMdd_HHmm_S"

    invoke-direct {v1, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2454
    .local v1, df:Ljava/text/SimpleDateFormat;
    iget-wide v5, p1, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2456
    .local v0, date:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2457
    .local v3, fileName:Ljava/lang/StringBuilder;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2458
    const-string v5, "_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2460
    const-string v2, ""

    .line 2461
    .local v2, displayname:Ljava/lang/String;
    iget-object v5, p1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/mms/ui/MessageOptions;->getNameWithoutEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2462
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2464
    const/4 v4, 0x1

    .line 2467
    .local v4, num:I
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v4}, Lcom/android/mms/ui/MessageOptions;->buildFileNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v5, v6}, Lcom/android/mms/ui/MessageOptions;->checkFileNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2468
    add-int/lit8 v4, v4, 0x1

    .line 2469
    goto :goto_0

    .line 2473
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v4}, Lcom/android/mms/ui/MessageOptions;->buildFileNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private hasBody()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 604
    const/4 v0, 0x0

    .line 606
    .local v0, hasBody:Z
    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 607
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 608
    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getBodyAll()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 616
    :goto_0
    const-string v1, "Mms/MessageOptions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasBody = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    return v0

    :cond_1
    move v0, v2

    .line 608
    goto :goto_0

    .line 610
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v4, p0, Lcom/android/mms/ui/MessageOptions;->mCurSlideLocation:I

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/MessageItem;->getBodyAt(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v1

    :goto_1
    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    .line 613
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSingleSms(Lcom/android/mms/ui/MessageItem;)Z
    .locals 5
    .parameter "msgItem"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2515
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v1

    .line 2518
    .local v1, smsManager:Landroid/telephony/SmsManager;
    iget-object v4, p0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 2524
    :cond_0
    :goto_0
    return v2

    .line 2521
    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2522
    .local v0, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v4, v3, :cond_0

    move v2, v3

    .line 2524
    goto :goto_0
.end method

.method private islockmessage(Ljava/lang/String;)Z
    .locals 10
    .parameter "type"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 653
    const/4 v7, 0x0

    .line 655
    .local v7, islocked:Z
    const-string v0, "mms"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 656
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "locked"

    aput-object v0, v2, v4

    .line 659
    .local v2, PROJECTION:[Ljava/lang/String;
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-wide v4, Lcom/android/mms/ui/MessageOptions;->msgId:J

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 660
    .local v1, messageUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 669
    .local v6, cursor:Landroid/database/Cursor;
    :goto_0
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 670
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v8

    .line 671
    .local v8, islocked_long:J
    const-wide/16 v3, 0x1

    cmp-long v0, v8, v3

    if-nez v0, :cond_0

    .line 672
    const/4 v7, 0x1

    .line 676
    .end local v8           #islocked_long:J
    :cond_0
    if-eqz v6, :cond_1

    .line 677
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 680
    :cond_1
    return v7

    .line 662
    .end local v1           #messageUri:Landroid/net/Uri;
    .end local v2           #PROJECTION:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_2
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "locked"

    aput-object v0, v2, v4

    .line 665
    .restart local v2       #PROJECTION:[Ljava/lang/String;
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-wide v4, Lcom/android/mms/ui/MessageOptions;->msgId:J

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 666
    .restart local v1       #messageUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .restart local v6       #cursor:Landroid/database/Cursor;
    goto :goto_0

    .line 676
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 677
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 676
    :cond_3
    throw v0
.end method

.method private launchOrMoveBackToComposerForReply()V
    .locals 8

    .prologue
    .line 1020
    iget-object v5, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v3

    .line 1021
    .local v3, threadId:J
    iget-object v5, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-static {v5, v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v1

    .line 1022
    .local v1, intent:Landroid/content/Intent;
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gtz v5, :cond_0

    .line 1023
    const-string v5, "address"

    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v6, v6, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1026
    :cond_0
    const/4 v2, 0x0

    .line 1027
    .local v2, launchInNewTask:Z
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLockedMsgManager()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1028
    iget-object v5, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "requestLockedMessageView"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1029
    .local v0, fromLockedMsgManager:Z
    if-eqz v0, :cond_1

    .line 1030
    const/4 v2, 0x1

    .line 1034
    .end local v0           #fromLockedMsgManager:Z
    :cond_1
    if-eqz v2, :cond_2

    .line 1035
    const/high16 v5, 0x1000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1036
    iget-object v5, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const-string v6, "com.android.mms.ui.ReplyMessageActivity"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1041
    :goto_0
    iget-object v5, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1042
    return-void

    .line 1038
    :cond_2
    const/high16 v5, 0x400

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static notifyFolderViewerClose()V
    .locals 1

    .prologue
    .line 689
    sget-object v0, Lcom/android/mms/ui/MessageOptions;->detailDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mms/ui/MessageOptions;->detailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    sget-object v0, Lcom/android/mms/ui/MessageOptions;->detailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 691
    :cond_0
    return-void
.end method

.method private openNewcomposerStartActivityForMms(Ljava/util/ArrayList;ZZ)V
    .locals 7
    .parameter
    .parameter "checkCRMode"
    .parameter "setFocusRecipient"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .local p1, numList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3259
    const-string v3, "Mms/MessageOptions"

    const-string v4, "openNewcomposerStartActivityForMms()"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3260
    const/4 v2, 0x0

    .line 3262
    .local v2, subject:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const-class v4, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3263
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "add_recipient_message"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3264
    const-string v3, "sendto"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3266
    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3267
    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3269
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSubjectLength()I

    move-result v1

    .line 3270
    .local v1, maxSubjectLength:I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v1, :cond_0

    .line 3271
    invoke-virtual {v2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 3274
    .end local v1           #maxSubjectLength:I
    :cond_0
    const-string v3, "msg_uri"

    iget-object v4, p0, Lcom/android/mms/ui/MessageOptions;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->getMessageUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3275
    const-string v3, "subject"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3277
    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3, v5}, Lcom/android/mms/data/WorkingMessage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3278
    const-string v3, "sms_body"

    iget-object v4, p0, Lcom/android/mms/ui/MessageOptions;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4, v5}, Lcom/android/mms/data/WorkingMessage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3280
    :cond_1
    const-string v3, "checkCRMode"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3281
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->hasOnlySignatureText()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3287
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->resetDraftMessage()V

    .line 3288
    invoke-static {v6}, Lcom/android/mms/model/SlideshowModel;->setAddAttachmentSlideForCompose(Z)V

    .line 3289
    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->onNewIntent(Landroid/content/Intent;)V

    .line 3290
    return-void

    .line 3285
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Lcom/android/mms/data/WorkingMessage;->saveDraft(ZZ)Z

    goto :goto_0
.end method

.method public static reportAsSpam(Lcom/android/mms/ui/MessageItem;Landroid/app/Activity;Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 4
    .parameter "msgItem"
    .parameter "activity"
    .parameter "composer"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3387
    invoke-static {p1, p2}, Lcom/android/mms/data/WorkingMessage;->createEmpty(Landroid/content/Context;Lcom/android/mms/data/WorkingMessage$MessageStatusListener;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    .line 3388
    .local v0, msg:Lcom/android/mms/data/WorkingMessage;
    const-string v1, "7726"

    invoke-static {v1, v2, v3}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-static {p1, v1, v2, v2}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Lcom/android/mms/data/ContactList;ZZ)Lcom/android/mms/data/Conversation;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;Z)V

    .line 3389
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    .line 3390
    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->send()V

    .line 3391
    return-void
.end method

.method private resendGroupSmsMessageItem(Lcom/android/mms/ui/MessageItem;[Ljava/lang/String;Lcom/android/mms/data/Conversation;)V
    .locals 10
    .parameter "msgItem"
    .parameter "dests"
    .parameter "conversation"

    .prologue
    .line 1329
    const-wide/16 v4, 0x0

    .line 1330
    .local v4, threadId:J
    if-nez p3, :cond_1

    .line 1331
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v4

    .line 1335
    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v1, v4, v1

    if-nez v1, :cond_2

    .line 1336
    const-string v1, "Mms/MessageOptions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send SMS message, threadId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    :cond_0
    :goto_1
    return-void

    .line 1333
    :cond_1
    invoke-virtual {p3}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v4

    goto :goto_0

    .line 1341
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SKT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LGU+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KOR_OPEN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1345
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/mms/util/TelephonyUtils;->checkCSAvailability(Landroid/content/Context;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1352
    :cond_4
    new-instance v0, Lcom/android/mms/transaction/SmsMessageSender;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    iget-wide v6, p1, Lcom/android/mms/ui/MessageItem;->mGroupId:J

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JJ)V

    .local v0, sender:Lcom/android/mms/transaction/MessageSender;
    move-object v1, v0

    .line 1353
    check-cast v1, Lcom/android/mms/transaction/SmsMessageSender;

    iget-boolean v2, p1, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    invoke-virtual {v1, v2}, Lcom/android/mms/transaction/SmsMessageSender;->setLocked(Z)V

    .line 1355
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1356
    const-string v1, "Mms/MessageOptions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PriorityLevel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/mms/ui/MessageItem;->mSMSPriority:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    iget v1, p1, Lcom/android/mms/ui/MessageItem;->mSMSPriority:I

    invoke-interface {v0, v1}, Lcom/android/mms/transaction/MessageSender;->setPriorityLevel(I)V

    .line 1360
    :cond_5
    :try_start_0
    invoke-interface {v0, v4, v5}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1365
    :goto_2
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->SMS_GROUP_CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p1, Lcom/android/mms/ui/MessageItem;->mGroupId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 1366
    .local v9, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "type=5"

    const/4 v6, 0x0

    invoke-static {v1, v2, v9, v3, v6}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1369
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/android/mms/ui/MessageOptions;->mLaunchApp:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1370
    invoke-direct {p0}, Lcom/android/mms/ui/MessageOptions;->finishViewerCheckFolderViewMode()V

    goto/16 :goto_1

    .line 1361
    .end local v9           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v8

    .line 1362
    .local v8, e:Ljava/lang/Exception;
    const-string v1, "Mms/MessageOptions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send SMS message, threadId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private resendMmsMessageItem(Lcom/android/mms/ui/MessageItem;)V
    .locals 18
    .parameter "msgItem"

    .prologue
    .line 1208
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1209
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/mms/util/TelephonyUtils;->checkPSAvailability(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1256
    :cond_0
    :goto_0
    return-void

    .line 1214
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v14

    .line 1215
    .local v14, threadId:J
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    .line 1217
    .local v12, mmsUri:Landroid/net/Uri;
    const/4 v8, 0x0

    .line 1219
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "m_size"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1223
    if-eqz v8, :cond_4

    .line 1224
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSizeScaleForPendingMmsAllowed()I

    move-result v1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-long v10, v1

    .line 1226
    .local v10, maxMessageSize:J
    const-wide/16 v16, 0x0

    .line 1227
    .local v16, totalPendingSize:J
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1228
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    add-long v16, v16, v1

    goto :goto_1

    .line 1230
    :cond_2
    cmp-long v1, v16, v10

    if-ltz v1, :cond_4

    .line 1231
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const v2, 0x7f0c00e2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1237
    if-eqz v8, :cond_0

    .line 1238
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1237
    .end local v10           #maxMessageSize:J
    .end local v16           #totalPendingSize:J
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_3

    .line 1238
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1237
    :cond_3
    throw v1

    :cond_4
    if-eqz v8, :cond_5

    .line 1238
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1242
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->updatePendingStatus()V

    .line 1243
    new-instance v13, Lcom/android/mms/transaction/MmsMessageSender;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    int-to-long v2, v2

    invoke-direct {v13, v1, v12, v2, v3}, Lcom/android/mms/transaction/MmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 1245
    .local v13, sender:Lcom/android/mms/transaction/MessageSender;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1246
    const-string v1, "Mms/MessageOptions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PriorityLevel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/mms/ui/MessageItem;->mMMSPriority:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    move-object/from16 v0, p1

    iget v1, v0, Lcom/android/mms/ui/MessageItem;->mMMSPriority:I

    invoke-interface {v13, v1}, Lcom/android/mms/transaction/MessageSender;->setPriorityLevel(I)V

    .line 1250
    :cond_6
    :try_start_1
    invoke-interface {v13, v14, v15}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1251
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v12, v3, v4}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1253
    :catch_0
    move-exception v9

    .line 1254
    .local v9, e:Ljava/lang/Exception;
    const-string v1, "Mms/MessageOptions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", threadId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method private resendSmsMessageItem(Lcom/android/mms/ui/MessageItem;)V
    .locals 11
    .parameter "msgItem"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1171
    const-string v1, "Mms/MessageOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resendSmsMessageItem(),msgItem="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v4

    .line 1174
    .local v4, threadId:J
    new-array v2, v9, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    aput-object v3, v2, v1

    .line 1177
    .local v2, dests:[Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SKT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v1

    const-string v3, "KT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v1

    const-string v3, "LGU+"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v1

    const-string v3, "KOR_OPEN"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1181
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    invoke-static {v1, v9}, Lcom/android/mms/util/TelephonyUtils;->checkCSAvailability(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1205
    :goto_0
    return-void

    .line 1188
    :cond_1
    new-instance v0, Lcom/android/mms/transaction/SmsMessageSender;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;J)V

    .local v0, sender:Lcom/android/mms/transaction/MessageSender;
    move-object v1, v0

    .line 1190
    check-cast v1, Lcom/android/mms/transaction/SmsMessageSender;

    iget-boolean v3, p1, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    invoke-virtual {v1, v3}, Lcom/android/mms/transaction/SmsMessageSender;->setLocked(Z)V

    .line 1192
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1193
    const-string v1, "Mms/MessageOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PriorityLevel="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v8, p1, Lcom/android/mms/ui/MessageItem;->mSMSPriority:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    iget v1, p1, Lcom/android/mms/ui/MessageItem;->mSMSPriority:I

    invoke-interface {v0, v1}, Lcom/android/mms/transaction/MessageSender;->setPriorityLevel(I)V

    .line 1197
    :cond_2
    :try_start_0
    invoke-interface {v0, v4, v5}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1203
    :goto_1
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v8, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v1, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 1204
    .local v7, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v3, v7, v10, v10}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 1198
    .end local v7           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v6

    .line 1199
    .local v6, e:Ljava/lang/Exception;
    const-string v1, "Mms/MessageOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to send SMS message, threadId="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private setLockIcon(Z)V
    .locals 3
    .parameter "isLock"

    .prologue
    .line 2722
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2724
    const-string v0, "kkahn/Mms/MessageOptions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLockIcon/mLaunchApp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/ui/MessageOptions;->mLaunchApp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2725
    sget v0, Lcom/android/mms/ui/MessageOptions;->mLaunchApp:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 2727
    const-string v0, "sms"

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2728
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/SmsViewerActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/SmsViewerActivity;->getMViewTitleHeader()Lcom/android/mms/ui/ViewTitleHeader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ViewTitleHeader;->setLockIcon(Z)V

    .line 2811
    :cond_0
    :goto_0
    return-void

    .line 2730
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2737
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/mms/ui/SlideshowActivity;

    if-ne v0, v1, :cond_2

    .line 2738
    const-string v0, "kkahn/Mms/MessageOptions"

    const-string v1, "setLockIcon/MMS/SlideshowActivity[1]"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2739
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/SlideshowActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowActivity;->getViewTitleHeader()Lcom/android/mms/ui/ViewTitleHeader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ViewTitleHeader;->setLockIcon(Z)V

    goto :goto_0

    .line 2740
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/mms/ui/MmsSinglePageActivity;

    if-ne v0, v1, :cond_0

    .line 2741
    const-string v0, "kkahn/Mms/MessageOptions"

    const-string v1, "setLockIcon/MMS/MmsSinglePageActivity[2]"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2743
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/MmsSinglePageActivity;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MmsSinglePageActivity;->setLockIcon(Z)V

    goto :goto_0

    .line 2747
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/mms/ui/SlideshowActivity;

    if-eqz v0, :cond_0

    .line 2748
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/SlideshowActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowActivity;->getViewTitleHeader()Lcom/android/mms/ui/ViewTitleHeader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ViewTitleHeader;->setLockIcon(Z)V

    goto :goto_0

    .line 2754
    :cond_4
    const-string v0, "sms"

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2755
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/SmsViewerActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/SmsViewerActivity;->getMViewTitleHeader()Lcom/android/mms/ui/ViewTitleHeader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ViewTitleHeader;->setLockIcon(Z)V

    goto :goto_0

    .line 2757
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2764
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/mms/ui/SlideshowActivity;

    if-ne v0, v1, :cond_6

    .line 2765
    const-string v0, "kkahn/Mms/MessageOptions"

    const-string v1, "setLockIcon/MMS/SlideshowActivity[1]"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2766
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/SlideshowActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowActivity;->getViewTitleHeader()Lcom/android/mms/ui/ViewTitleHeader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ViewTitleHeader;->setLockIcon(Z)V

    goto/16 :goto_0

    .line 2767
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/mms/ui/MmsSinglePageActivity;

    if-ne v0, v1, :cond_0

    .line 2768
    const-string v0, "kkahn/Mms/MessageOptions"

    const-string v1, "setLockIcon/MMS/MmsSinglePageActivity[2]"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2770
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/MmsSinglePageActivity;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MmsSinglePageActivity;->setLockIcon(Z)V

    goto/16 :goto_0

    .line 2774
    :cond_7
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/mms/ui/SlideshowActivity;

    if-eqz v0, :cond_0

    .line 2775
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/SlideshowActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowActivity;->getViewTitleHeader()Lcom/android/mms/ui/ViewTitleHeader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ViewTitleHeader;->setLockIcon(Z)V

    goto/16 :goto_0

    .line 2783
    :cond_8
    const-string v0, "sms"

    sget-object v1, Lcom/android/mms/ui/MessageOptions;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2784
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/mms/ui/SmsViewerActivity;

    if-eqz v0, :cond_0

    .line 2785
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/SmsViewerActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/SmsViewerActivity;->getMViewTitleHeader()Lcom/android/mms/ui/ViewTitleHeader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ViewTitleHeader;->setLockIcon(Z)V

    goto/16 :goto_0

    .line 2788
    :cond_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2795
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/mms/ui/SlideshowActivity;

    if-ne v0, v1, :cond_a

    .line 2796
    const-string v0, "kkahn/Mms/MessageOptions"

    const-string v1, "setLockIcon/MMS/SlideshowActivity[1]"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2797
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/SlideshowActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowActivity;->getViewTitleHeader()Lcom/android/mms/ui/ViewTitleHeader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ViewTitleHeader;->setLockIcon(Z)V

    goto/16 :goto_0

    .line 2798
    :cond_a
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/mms/ui/MmsSinglePageActivity;

    if-ne v0, v1, :cond_0

    .line 2799
    const-string v0, "kkahn/Mms/MessageOptions"

    const-string v1, "setLockIcon/MMS/SlideshowActivitySinglePage[2]"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2801
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/MmsSinglePageActivity;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MmsSinglePageActivity;->setLockIcon(Z)V

    goto/16 :goto_0

    .line 2805
    :cond_b
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/mms/ui/SlideshowActivity;

    if-eqz v0, :cond_0

    .line 2806
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/SlideshowActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowActivity;->getViewTitleHeader()Lcom/android/mms/ui/ViewTitleHeader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ViewTitleHeader;->setLockIcon(Z)V

    goto/16 :goto_0
.end method

.method private tryToResendGroupSms(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;Z)V
    .locals 13
    .parameter "msgItem"
    .parameter "conversation"
    .parameter "closeActivity"

    .prologue
    .line 1306
    iget-wide v0, p1, Lcom/android/mms/ui/MessageItem;->mGroupId:J

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MessageOptions;->getFailedAddress(J)[Ljava/lang/String;

    move-result-object v3

    .line 1307
    .local v3, dests:[Ljava/lang/String;
    if-nez v3, :cond_0

    .line 1326
    :goto_0
    return-void

    .line 1310
    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1311
    .local v11, recipients:Ljava/lang/StringBuilder;
    move-object v6, v3

    .local v6, arr$:[Ljava/lang/String;
    array-length v9, v6

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_1
    if-ge v8, v9, :cond_2

    aget-object v10, v6, v8

    .line 1312
    .local v10, recipient:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1313
    const-string v0, ", "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1315
    :cond_1
    invoke-static {v10}, Lcom/android/mms/data/Contact;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1311
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1318
    .end local v10           #recipient:Ljava/lang/String;
    :cond_2
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1319
    .local v7, builder:Landroid/app/AlertDialog$Builder;
    const v0, 0x7f0c0183

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1320
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0184

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v11, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1322
    const v12, 0x7f0c017b

    new-instance v0, Lcom/android/mms/ui/MessageOptions$ResendGroupSmsListener;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/MessageOptions$ResendGroupSmsListener;-><init>(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageItem;[Ljava/lang/String;Lcom/android/mms/data/Conversation;Z)V

    invoke-virtual {v7, v12, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1324
    const v0, 0x7f0c017c

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1325
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method


# virtual methods
.method public ReplyAllMessage(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;Ljava/util/ArrayList;)V
    .locals 6
    .parameter "context"
    .parameter "msgItem"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/mms/ui/MessageItem;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, recipients:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v5, 0x7f0c0037

    const/4 v4, 0x1

    .line 1892
    const/4 v0, 0x0

    .line 1894
    .local v0, TempSubject:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSubject()Z

    move-result v2

    if-eq v2, v4, :cond_2

    .line 1895
    iget-object v2, p2, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1896
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1897
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1907
    :cond_0
    :goto_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1908
    .local v1, replyallIntent:Landroid/content/Intent;
    const-string v2, "sendto"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1909
    iget-object v2, p2, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1910
    const-string v2, "subject"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1912
    :cond_1
    const-string v2, "replyAll"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1913
    const/high16 v2, 0x1400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1914
    const-string v2, "smsto:"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1915
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1916
    return-void

    .line 1900
    .end local v1           #replyallIntent:Landroid/content/Intent;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1902
    iget-object v2, p2, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1903
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public SpamOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2838
    iget-object v5, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-nez v5, :cond_0

    .line 2860
    :goto_0
    return v3

    .line 2842
    :cond_0
    const/4 v2, 0x0

    .line 2843
    .local v2, uri:Landroid/net/Uri;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    .line 2857
    :sswitch_0
    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {p0, v3, v6, v4}, Lcom/android/mms/ui/MessageOptions;->viewSpamMessageDetail(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;Z)V

    move v3, v4

    .line 2858
    goto :goto_0

    .line 2845
    :sswitch_1
    new-instance v1, Lcom/android/mms/ui/MessageOptions$RestoreMessageListener;

    invoke-direct {v1, p0, v6}, Lcom/android/mms/ui/MessageOptions$RestoreMessageListener;-><init>(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageOptions$1;)V

    .line 2846
    .local v1, Rl:Lcom/android/mms/ui/MessageOptions$RestoreMessageListener;
    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessageOptions;->confirmRestoreDialog(Landroid/content/DialogInterface$OnClickListener;)V

    move v3, v4

    .line 2847
    goto :goto_0

    .line 2849
    .end local v1           #Rl:Lcom/android/mms/ui/MessageOptions$RestoreMessageListener;
    :sswitch_2
    const-string v5, "mms"

    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v6, v6, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2850
    sget-object v5, Landroid/provider/Telephony$SpamMms;->CONTENT_URI:Landroid/net/Uri;

    sget-wide v6, Lcom/android/mms/ui/MessageOptions;->msgId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 2853
    :goto_1
    new-instance v0, Lcom/android/mms/ui/MessageOptions$DeleteMessageListener;

    invoke-direct {v0, p0, v2, v3}, Lcom/android/mms/ui/MessageOptions$DeleteMessageListener;-><init>(Lcom/android/mms/ui/MessageOptions;Landroid/net/Uri;Z)V

    .line 2854
    .local v0, Dl:Lcom/android/mms/ui/MessageOptions$DeleteMessageListener;
    invoke-direct {p0, v0, v3}, Lcom/android/mms/ui/MessageOptions;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V

    move v3, v4

    .line 2855
    goto :goto_0

    .line 2852
    .end local v0           #Dl:Lcom/android/mms/ui/MessageOptions$DeleteMessageListener;
    :cond_1
    sget-object v5, Landroid/provider/Telephony$SpamSms;->CONTENT_URI:Landroid/net/Uri;

    sget-wide v6, Lcom/android/mms/ui/MessageOptions;->msgId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    goto :goto_1

    .line 2843
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x12 -> :sswitch_2
        0x28 -> :sswitch_1
    .end sparse-switch
.end method

.method public addChnRecomposeOption(Landroid/view/Menu;)V
    .locals 8
    .parameter "menu"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 3079
    iget-object v4, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v4, :cond_4

    .line 3086
    iget-object v4, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v4, v4, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    .line 3087
    const-string v2, ""

    .line 3088
    .local v2, szRecipients:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v5, v5, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    invoke-static {v4, v5, v6}, Lcom/android/mms/ui/MessageUtils;->getAddressByThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 3090
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 3091
    const-string v4, ";"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3092
    .local v0, dests:[Ljava/lang/String;
    array-length v4, v0

    if-ne v4, v1, :cond_4

    .line 3093
    aget-object v4, v0, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 3099
    iget-object v4, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v4, v4, Lcom/android/mms/ui/MessageItem;->mReserved:J

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3100
    :cond_0
    const/16 v4, 0xe

    const v5, 0x7f0c0090

    invoke-interface {p1, v3, v4, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f02009b

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3103
    :cond_1
    aget-object v4, v0, v3

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->isValidSmsAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3104
    iget-object v4, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/util/TelephonyUtils;->isVoiceCallAvailabe(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3105
    const/16 v4, 0x2a

    const v5, 0x7f0c0005

    invoke-interface {p1, v3, v4, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f02008d

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMenuItemActionForOrientation()I

    move-result v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 3109
    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/MmsConfig;->getEnableEasyMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/android/mms/MmsConfig;->isDisableEasyModeForComposer()Z

    move-result v4

    if-nez v4, :cond_5

    .line 3110
    .local v1, isEasyModeOn:Z
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVideoCall()Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v1, :cond_3

    .line 3111
    const/16 v4, 0x2b

    const v5, 0x7f0c022b

    invoke-interface {p1, v3, v4, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f0200bd

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3115
    :cond_3
    aget-object v3, v0, v3

    iput-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mAddressToCall:Ljava/lang/String;

    .line 3122
    .end local v0           #dests:[Ljava/lang/String;
    .end local v1           #isEasyModeOn:Z
    .end local v2           #szRecipients:Ljava/lang/String;
    :cond_4
    return-void

    .restart local v0       #dests:[Ljava/lang/String;
    .restart local v2       #szRecipients:Ljava/lang/String;
    :cond_5
    move v1, v3

    .line 3109
    goto :goto_0
.end method

.method public confirmRegisterAsSpamNumber()V
    .locals 3

    .prologue
    .line 3293
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3294
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c0405

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3296
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 3297
    const v1, 0x7f0c0407

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 3298
    const v1, 0x104000a

    new-instance v2, Lcom/android/mms/ui/MessageOptions$6;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MessageOptions$6;-><init>(Lcom/android/mms/ui/MessageOptions;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3306
    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3307
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3308
    return-void
.end method

.method public copyMessageToSDCARD(Lcom/android/mms/ui/MessageItem;)V
    .locals 3
    .parameter "msgItem"

    .prologue
    const/4 v2, 0x0

    .line 2366
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/ui/MessageOptions;->writeFile(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2367
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c00a0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2373
    :goto_0
    return-void

    .line 2370
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0266

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public copyMessageToSIM(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;)V
    .locals 30
    .parameter "msgItem"
    .parameter "conversation"

    .prologue
    .line 2211
    const-string v6, "Mms/MessageOptions"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "copyMessageToSIM(),msgItem="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v6, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2213
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mReserved:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x1

    cmp-long v6, v26, v28

    if-nez v6, :cond_0

    .line 2214
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f0c0355

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v6, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 2358
    :goto_0
    return-void

    .line 2219
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v7

    .line 2220
    .local v7, mboxId:I
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    .line 2226
    .local v4, str:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    move-wide/from16 v22, v0

    .line 2227
    .local v22, time:J
    new-instance v25, Landroid/text/format/Time;

    invoke-direct/range {v25 .. v25}, Landroid/text/format/Time;-><init>()V

    .line 2228
    .local v25, ts:Landroid/text/format/Time;
    move-object/from16 v0, v25

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 2229
    invoke-virtual/range {v25 .. v25}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v18

    .line 2231
    .local v18, stime:Ljava/lang/String;
    const-string v6, "Mms/MessageOptions"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "stime : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v6, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2233
    const/4 v6, 0x2

    const/16 v26, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 2234
    .local v20, temp_date:Ljava/lang/String;
    const/16 v6, 0x9

    const/16 v26, 0xf

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 2236
    .local v21, temp_time:Ljava/lang/String;
    const-string v6, "Mms/MessageOptions"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "temp_date : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v6, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2237
    const-string v6, "Mms/MessageOptions"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "temp_date : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v6, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2239
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2241
    .local v8, mTimestamp:Ljava/lang/String;
    const-string v6, "Mms/MessageOptions"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "timestamp : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v6, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2243
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 2244
    .local v16, prefs:Landroid/content/SharedPreferences;
    const-string v6, "pref_key_manage_smsc_address"

    const-string v26, "Not Set"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2248
    .local v5, sca:Ljava/lang/String;
    if-eqz v4, :cond_1

    if-nez v5, :cond_2

    .line 2249
    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f0c001e

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v6, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 2254
    :cond_2
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v3

    .line 2255
    .local v3, smsManager:Landroid/telephony/SmsManager;
    invoke-virtual {v3, v4}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    .line 2256
    .local v15, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 2258
    .local v14, messageCount:I
    const/4 v6, 0x1

    if-le v14, v6, :cond_3

    .line 2259
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f0c001e

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v6, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 2265
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSMSP()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2266
    invoke-virtual {v3}, Landroid/telephony/SmsManager;->getSMSPAvailable()Z

    move-result v6

    if-nez v6, :cond_4

    .line 2267
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f0c001e

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v6, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 2275
    :cond_4
    const/4 v10, 0x0

    .line 2276
    .local v10, dests:[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isGroupSms()Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz p2, :cond_5

    .line 2277
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v10

    .line 2283
    :goto_1
    if-nez v10, :cond_6

    .line 2284
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f0c001f

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v6, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 2279
    :cond_5
    const/4 v6, 0x1

    new-array v10, v6, [Ljava/lang/String;

    .end local v10           #dests:[Ljava/lang/String;
    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v10, v6

    .restart local v10       #dests:[Ljava/lang/String;
    goto :goto_1

    .line 2289
    :cond_6
    const/16 v24, 0x0

    .line 2290
    .local v24, totalResult:I
    const/4 v12, 0x0

    .line 2291
    .local v12, failedCount:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_2
    array-length v6, v10

    if-ge v13, v6, :cond_a

    .line 2293
    :try_start_0
    aget-object v6, v10, v13

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    aget-object v6, v10, v13

    invoke-static {v6}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 2294
    :cond_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f0c001f

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v6, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2321
    :catch_0
    move-exception v11

    .line 2322
    .local v11, e:Ljava/lang/NumberFormatException;
    const-string v6, "Mms/MessageOptions"

    const-string v26, "NumberFormatException :"

    move-object/from16 v0, v26

    invoke-static {v6, v0, v11}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2323
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f0c001f

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v6, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 2291
    .end local v11           #e:Ljava/lang/NumberFormatException;
    :cond_8
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 2300
    :cond_9
    :try_start_1
    aget-object v6, v10, v13

    invoke-virtual/range {v3 .. v8}, Landroid/telephony/SmsManager;->MakeSimPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v17

    .line 2301
    .local v17, result:I
    const-string v6, "Mms/MessageOptions"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "copyMessageToSIM() i="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " result="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v6, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2303
    if-eqz v17, :cond_8

    .line 2308
    const/4 v6, 0x3

    move/from16 v0, v17

    if-ne v0, v6, :cond_b

    .line 2309
    array-length v6, v10
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    sub-int/2addr v6, v13

    add-int/2addr v12, v6

    .line 2310
    move/from16 v24, v17

    .line 2329
    .end local v17           #result:I
    :cond_a
    :goto_4
    const-string v6, "Mms/MessageOptions"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "copyMessageToSIM() totalResult="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v6, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2330
    if-nez v24, :cond_e

    .line 2331
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f0c0192

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v6, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 2312
    .restart local v17       #result:I
    :cond_b
    const/4 v6, 0x1

    move/from16 v0, v17

    if-eq v0, v6, :cond_c

    const/4 v6, 0x2

    move/from16 v0, v17

    if-ne v0, v6, :cond_d

    .line 2313
    :cond_c
    move/from16 v24, v17

    goto :goto_4

    .line 2316
    :cond_d
    move/from16 v24, v17

    .line 2317
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    .line 2332
    .end local v17           #result:I
    :cond_e
    const/4 v6, 0x1

    move/from16 v0, v24

    if-eq v0, v6, :cond_f

    const/4 v6, 0x2

    move/from16 v0, v24

    if-ne v0, v6, :cond_12

    .line 2333
    :cond_f
    new-instance v9, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-direct {v9, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2334
    .local v9, builder:Landroid/app/AlertDialog$Builder;
    const v6, 0x7f0c017f

    invoke-virtual {v9, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2335
    const/4 v6, 0x2

    move/from16 v0, v24

    if-ne v0, v6, :cond_11

    .line 2336
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f0c008f

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v26, " "

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f0c034d

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2340
    :cond_10
    :goto_5
    const v6, 0x7f0c017b

    const/16 v26, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v9, v6, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2341
    sget-object v6, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v9, v6}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 2342
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 2337
    :cond_11
    const/4 v6, 0x1

    move/from16 v0, v24

    if-ne v0, v6, :cond_10

    .line 2338
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f0c008f

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v26, " "

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f0c034e

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_5

    .line 2344
    .end local v9           #builder:Landroid/app/AlertDialog$Builder;
    :cond_12
    new-instance v9, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-direct {v9, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2345
    .restart local v9       #builder:Landroid/app/AlertDialog$Builder;
    array-length v6, v10

    sub-int v19, v6, v12

    .line 2346
    .local v19, successCount:I
    if-nez v19, :cond_13

    .line 2347
    const v6, 0x7f0c0185

    invoke-virtual {v9, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2348
    const v6, 0x7f0c0186

    invoke-virtual {v9, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2353
    :goto_6
    const v6, 0x7f0c017b

    const/16 v26, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v9, v6, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2354
    sget-object v6, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v9, v6}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 2355
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 2350
    :cond_13
    const v6, 0x7f0c0187

    invoke-virtual {v9, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2351
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const v26, 0x7f0c0188

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    move/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v6, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_6
.end method

.method public createOptionsMenu(Landroid/view/Menu;)V
    .locals 13
    .parameter "menu"

    .prologue
    .line 306
    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-nez v9, :cond_1

    .line 599
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/mms/MmsConfig;->getEnableEasyMode(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->isDisableEasyModeForComposer()Z

    move-result v9

    if-nez v9, :cond_3

    const/4 v3, 0x1

    .line 311
    .local v3, isEasyModeOn:Z
    :goto_1
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 313
    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v9, v9, Lcom/android/mms/ui/MessageItem;->mReserved:J

    const-wide/16 v11, 0x1

    cmp-long v9, v9, v11

    if-nez v9, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isDraftMessage()Z

    move-result v9

    if-nez v9, :cond_2

    .line 315
    const/4 v9, 0x0

    const/16 v10, 0x26

    const/4 v11, 0x0

    const v12, 0x7f0c02d0

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200b8

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 318
    const/4 v9, 0x0

    const/16 v10, 0x27

    const/4 v11, 0x0

    const v12, 0x7f0c02d1

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f02008e

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 322
    :cond_2
    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-boolean v9, v9, Lcom/android/mms/ui/MessageItem;->mIsCMASSms:Z

    if-eqz v9, :cond_4

    .line 323
    const/4 v9, 0x0

    const/16 v10, 0x12

    const/4 v11, 0x0

    const v12, 0x7f0c043b

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f020095

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMenuItemActionForOrientation()I

    move-result v10

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    .line 309
    .end local v3           #isEasyModeOn:Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 328
    .restart local v3       #isEasyModeOn:Z
    :cond_4
    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-boolean v9, v9, Lcom/android/mms/ui/MessageItem;->mIsCbSms:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    .line 329
    const/4 v9, 0x0

    const/16 v10, 0x12

    const/4 v11, 0x0

    const v12, 0x7f0c043b

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f020095

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMenuItemActionForOrientation()I

    move-result v10

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 332
    const/4 v9, 0x0

    const/16 v10, 0x18

    const/4 v11, 0x0

    const v12, 0x7f0c043c

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f020092

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 339
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 341
    sget v9, Lcom/android/mms/ui/MessageOptions;->mLaunchApp:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_6

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isDraftMessage()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    .line 343
    const/4 v9, 0x0

    const/16 v10, 0x12

    const/4 v11, 0x0

    const v12, 0x7f0c043b

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f020095

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMenuItemActionForOrientation()I

    move-result v10

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_0

    .line 350
    :cond_6
    const-string v9, "wpm"

    sget-object v10, Lcom/android/mms/ui/MessageOptions;->mType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 351
    const/4 v9, 0x0

    const/16 v10, 0x12

    const/4 v11, 0x0

    const v12, 0x7f0c043b

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f020095

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 353
    const/4 v9, 0x0

    const/16 v10, 0x18

    const/4 v11, 0x0

    const v12, 0x7f0c043c

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f020092

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 359
    :cond_7
    sget v9, Lcom/android/mms/ui/MessageOptions;->mLaunchApp:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_8

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_8

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v9, v9, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    const/16 v10, 0x82

    if-ne v9, v10, :cond_8

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v9

    if-nez v9, :cond_8

    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v10, v10, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Lcom/android/mms/util/DownloadManager;->getState(Landroid/net/Uri;)I

    move-result v9

    const/16 v10, 0x81

    if-eq v9, v10, :cond_8

    .line 365
    const/4 v9, 0x0

    const/16 v10, 0x25

    const/4 v11, 0x0

    const v12, 0x7f0c0017

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f020097

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 371
    :cond_8
    const-string v9, "wpm"

    sget-object v10, Lcom/android/mms/ui/MessageOptions;->mType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 372
    const/4 v9, 0x0

    const/16 v10, 0x12

    const/4 v11, 0x0

    const v12, 0x7f0c043b

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f020095

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMenuItemActionForOrientation()I

    move-result v10

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 375
    const/4 v9, 0x0

    const/16 v10, 0x18

    const/4 v11, 0x0

    const v12, 0x7f0c043c

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f020092

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 380
    :cond_9
    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 381
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v9, v9, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b

    :cond_a
    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v9, v9, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/mms/ui/MessageUtils;->isLocalNumber(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 383
    const/4 v9, 0x0

    const/16 v10, 0x20

    const/4 v11, 0x0

    const v12, 0x7f0c0092

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200b1

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 387
    :cond_b
    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 388
    const/4 v9, 0x0

    const/16 v10, 0x1e

    const/4 v11, 0x0

    const v12, 0x7f0c0091

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200b2

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 393
    :cond_c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAllContextMenuInMsgViewer()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 394
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageOptions;->addChnRecomposeOption(Landroid/view/Menu;)V

    .line 398
    :cond_d
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRilSmsTidMessage()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 399
    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-static {v9}, Lcom/android/mms/util/TelephonyUtils;->isEnableLinkUrlService(Lcom/android/mms/ui/MessageItem;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 400
    const/4 v9, 0x0

    const/16 v10, 0x2e

    const/4 v11, 0x0

    const v12, 0x7f0c0197

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200a2

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 405
    :cond_e
    if-nez v3, :cond_f

    .line 407
    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 408
    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v9, v9, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v9, :cond_24

    .line 409
    const/4 v9, 0x0

    const/16 v10, 0x23

    const/4 v11, 0x0

    const v12, 0x7f0c011d

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200b4

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 410
    invoke-static {}, Lcom/android/mms/MmsConfig;->isDisableSaveRingtone()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 411
    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    iget-object v10, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v10, v10, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v9, v10, v11}, Lcom/android/mms/ui/MessageUtils;->isDrmRingtoneWithRights(Landroid/content/Context;J)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 412
    const/4 v9, 0x0

    const/16 v10, 0x2d

    const/4 v11, 0x0

    const v12, 0x7f0c0372

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200b4

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 429
    :cond_f
    :goto_2
    if-nez v3, :cond_10

    .line 430
    sget-object v9, Lcom/android/mms/ui/MessageOptions;->mType:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/mms/ui/MessageOptions;->islockmessage(Ljava/lang/String;)Z

    move-result v5

    .line 431
    .local v5, islocked:Z
    if-eqz v5, :cond_25

    .line 432
    const/4 v9, 0x0

    const/16 v10, 0x1d

    const/4 v11, 0x0

    const v12, 0x7f0c043e

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200bb

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 439
    .end local v5           #islocked:Z
    :cond_10
    :goto_3
    if-nez v3, :cond_12

    .line 449
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v9

    if-eqz v9, :cond_26

    .line 450
    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->getBodyAll()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_12

    .line 451
    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v9

    if-nez v9, :cond_11

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v9

    if-eqz v9, :cond_12

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v9

    if-eqz v9, :cond_12

    .line 452
    :cond_11
    const/4 v9, 0x0

    const/16 v10, 0x18

    const/4 v11, 0x0

    const v12, 0x7f0c043c

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f020092

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 467
    :cond_12
    :goto_4
    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v9

    if-nez v9, :cond_13

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v9

    if-eqz v9, :cond_15

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v9

    if-eqz v9, :cond_15

    :cond_13
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRilSmsTidMessage()Z

    move-result v9

    if-eqz v9, :cond_14

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-static {v9}, Lcom/android/mms/util/TelephonyUtils;->isEnableSpecificTidService(Lcom/android/mms/ui/MessageItem;)Z

    move-result v9

    if-nez v9, :cond_15

    .line 470
    :cond_14
    const/4 v9, 0x0

    const/16 v10, 0x15

    const/4 v11, 0x0

    const v12, 0x7f0c0016

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f02009e

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 474
    :cond_15
    const/16 v9, 0x2a

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    if-nez v9, :cond_17

    invoke-direct {p0}, Lcom/android/mms/ui/MessageOptions;->getCallableRecipient()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_17

    .line 475
    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/mms/util/TelephonyUtils;->isVoiceCallAvailabe(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 476
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVoLTE()Z

    move-result v9

    if-eqz v9, :cond_29

    .line 477
    new-instance v6, Lcom/android/mms/VoLTEStateTracker;

    invoke-direct {v6}, Lcom/android/mms/VoLTEStateTracker;-><init>()V

    .line 478
    .local v6, mVoLTEStateTracker:Lcom/android/mms/VoLTEStateTracker;
    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v9}, Lcom/android/mms/VoLTEStateTracker;->isVolteEnabled(Landroid/content/Context;)Z

    move-result v4

    .line 480
    .local v4, isVoLTEAvailable:Z
    if-eqz v4, :cond_28

    .line 481
    const/4 v9, 0x0

    const/16 v10, 0x2a

    const/4 v11, 0x0

    const v12, 0x7f0c0005

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f020282

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMenuItemActionForOrientation()I

    move-result v10

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 493
    .end local v4           #isVoLTEAvailable:Z
    .end local v6           #mVoLTEStateTracker:Lcom/android/mms/VoLTEStateTracker;
    :cond_16
    :goto_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVideoCall()Z

    move-result v9

    if-eqz v9, :cond_17

    .line 494
    const/4 v9, 0x0

    const/16 v10, 0x2b

    const/4 v11, 0x0

    const v12, 0x7f0c022b

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200bd

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 499
    :cond_17
    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v9, v9, Lcom/android/mms/ui/MessageItem;->mReserved:J

    const-wide/16 v11, 0x1

    cmp-long v9, v9, v11

    if-eqz v9, :cond_18

    .line 500
    const/4 v9, 0x0

    const/16 v10, 0x12

    const/4 v11, 0x0

    const v12, 0x7f0c043b

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f020095

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMenuItemActionForOrientation()I

    move-result v10

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 504
    :cond_18
    invoke-direct {p0}, Lcom/android/mms/ui/MessageOptions;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v7

    .line 505
    .local v7, recipients:Lcom/android/mms/data/ContactList;
    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const-string v10, "com.android.contacts"

    invoke-static {v9, v10}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_19

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const-string v10, "com.android.jcontacts"

    invoke-static {v9, v10}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1b

    :cond_19
    if-eqz v7, :cond_1b

    invoke-virtual {v7}, Lcom/android/mms/data/ContactList;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1b

    .line 507
    invoke-direct {p0}, Lcom/android/mms/ui/MessageOptions;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    .line 508
    .local v1, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v9

    if-eqz v9, :cond_2a

    .line 509
    new-instance v2, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v2, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 510
    .local v2, intent:Landroid/content/Intent;
    const/high16 v9, 0x8

    invoke-virtual {v2, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 511
    invoke-static {}, Lcom/android/mms/MmsConfig;->getContactReplacePackageAs()Ljava/lang/String;

    move-result-object v9

    const-string v10, "com.android.jcontacts"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 512
    const-string v9, "com.android.jcontacts"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 514
    :cond_1a
    const/4 v9, 0x0

    const/16 v10, 0x1a

    const/4 v11, 0x0

    const v12, 0x7f0c004c

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f020090

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 527
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1b
    :goto_6
    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v9

    if-eqz v9, :cond_20

    .line 528
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCopyToSim()Z

    move-result v9

    if-eqz v9, :cond_1e

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v9

    if-eqz v9, :cond_1e

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v9, v9, Lcom/android/mms/ui/MessageItem;->mReserved:J

    const-wide/16 v11, 0x1

    cmp-long v9, v9, v11

    if-eqz v9, :cond_1e

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v9

    const/4 v10, 0x5

    if-ne v9, v10, :cond_1e

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-static {v9}, Lcom/android/mms/ui/MessageOptions;->isSingleSms(Lcom/android/mms/ui/MessageItem;)Z

    move-result v9

    if-eqz v9, :cond_1e

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRilSmsTidMessage()Z

    move-result v9

    if-eqz v9, :cond_1c

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-static {v9}, Lcom/android/mms/util/TelephonyUtils;->isEnableSpecificTidService(Lcom/android/mms/ui/MessageItem;)Z

    move-result v9

    if-nez v9, :cond_1e

    :cond_1c
    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_1d

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1e

    :cond_1d
    if-nez v3, :cond_1e

    .line 535
    const/4 v9, 0x0

    const/16 v10, 0x1f

    const/4 v11, 0x0

    const v12, 0x7f0c001d

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f020094

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 539
    :cond_1e
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveVMessage()Z

    move-result v9

    if-eqz v9, :cond_20

    .line 540
    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-static {v9}, Lcom/android/mms/ui/MessageOptions;->isSingleSms(Lcom/android/mms/ui/MessageItem;)Z

    move-result v9

    if-eqz v9, :cond_20

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isExternalSdCardMounted()Z

    move-result v9

    if-eqz v9, :cond_20

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v9, v9, Lcom/android/mms/ui/MessageItem;->mReserved:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-nez v9, :cond_20

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_1f

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_20

    :cond_1f
    if-nez v3, :cond_20

    .line 544
    const/4 v9, 0x0

    const/16 v10, 0x21

    const/4 v11, 0x0

    const v12, 0x7f0c0264

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f020093

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 550
    :cond_20
    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v9

    if-eqz v9, :cond_21

    .line 552
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableReplyAll()Z

    move-result v9

    if-eqz v9, :cond_21

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v9

    if-eqz v9, :cond_21

    if-nez v3, :cond_21

    .line 554
    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v11, p0, Lcom/android/mms/ui/MessageOptions;->numberList:Ljava/util/ArrayList;

    invoke-static {v9, v10, v11}, Lcom/android/mms/ui/MessageUtils;->getReplyAllCount(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;Ljava/util/ArrayList;)Z

    move-result v9

    if-eqz v9, :cond_21

    .line 555
    const/4 v9, 0x0

    const/16 v10, 0x24

    const/4 v11, 0x0

    const v12, 0x7f0c019e

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200b1

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 563
    :cond_21
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRegisterCalendar()Z

    move-result v9

    if-eqz v9, :cond_22

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v9

    if-eqz v9, :cond_22

    invoke-direct {p0}, Lcom/android/mms/ui/MessageOptions;->hasBody()Z

    move-result v9

    if-eqz v9, :cond_22

    if-nez v3, :cond_22

    .line 567
    const/4 v9, 0x0

    const/16 v10, 0x22

    const/4 v11, 0x0

    sget v12, Lcom/android/mms/ui/MessageOptions;->sResIdRegisterCalendar:I

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200c2

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 574
    :cond_22
    if-nez v3, :cond_23

    .line 575
    const/4 v9, 0x0

    const/16 v10, 0x11

    const/4 v11, 0x0

    const v12, 0x7f0c000e

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200a0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 580
    :cond_23
    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackList()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 581
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v9

    if-eqz v9, :cond_2b

    .line 582
    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v9, v9, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v9}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 583
    const/4 v9, 0x0

    const/16 v10, 0x29

    const/4 v11, 0x0

    const v12, 0x7f0c02a4

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f02008c

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 417
    .end local v7           #recipients:Lcom/android/mms/data/ContactList;
    :cond_24
    :try_start_0
    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    sget-object v10, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-wide v11, Lcom/android/mms/ui/MessageOptions;->msgId:J

    invoke-static {v10, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/mms/model/SlideshowModel;

    move-result-object v8

    .line 419
    .local v8, slideshow:Lcom/android/mms/model/SlideshowModel;
    if-eqz v8, :cond_f

    .line 420
    const/4 v9, 0x0

    const/16 v10, 0x23

    const/4 v11, 0x0

    const v12, 0x7f0c011d

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 422
    .end local v8           #slideshow:Lcom/android/mms/model/SlideshowModel;
    :catch_0
    move-exception v9

    goto/16 :goto_2

    .line 435
    .restart local v5       #islocked:Z
    :cond_25
    const/4 v9, 0x0

    const/16 v10, 0x1c

    const/4 v11, 0x0

    const v12, 0x7f0c043d

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200a4

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 456
    .end local v5           #islocked:Z
    :cond_26
    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v10, p0, Lcom/android/mms/ui/MessageOptions;->mCurSlideLocation:I

    invoke-virtual {v9, v10}, Lcom/android/mms/ui/MessageItem;->getBodyAt(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_12

    .line 457
    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v9

    if-nez v9, :cond_27

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v9

    if-eqz v9, :cond_12

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v9

    if-eqz v9, :cond_12

    .line 458
    :cond_27
    const/4 v9, 0x0

    const/16 v10, 0x18

    const/4 v11, 0x0

    const v12, 0x7f0c043c

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f020092

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 484
    .restart local v4       #isVoLTEAvailable:Z
    .restart local v6       #mVoLTEStateTracker:Lcom/android/mms/VoLTEStateTracker;
    :cond_28
    const/4 v9, 0x0

    const/16 v10, 0x2a

    const/4 v11, 0x0

    const v12, 0x7f0c0005

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f02008d

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMenuItemActionForOrientation()I

    move-result v10

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_5

    .line 488
    .end local v4           #isVoLTEAvailable:Z
    .end local v6           #mVoLTEStateTracker:Lcom/android/mms/VoLTEStateTracker;
    :cond_29
    const/4 v9, 0x0

    const/16 v10, 0x2a

    const/4 v11, 0x0

    const v12, 0x7f0c0005

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f02008d

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMenuItemActionForOrientation()I

    move-result v10

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_5

    .line 516
    .restart local v1       #contact:Lcom/android/mms/data/Contact;
    .restart local v7       #recipients:Lcom/android/mms/data/ContactList;
    :cond_2a
    invoke-direct {p0}, Lcom/android/mms/ui/MessageOptions;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/data/Contact;

    invoke-virtual {v9}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 517
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 518
    .restart local v2       #intent:Landroid/content/Intent;
    const/4 v9, 0x0

    const/16 v10, 0x1b

    const/4 v11, 0x0

    const v12, 0x7f0c004d

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f02008b

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto/16 :goto_6

    .line 586
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_2b
    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v9, v9, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v9, v9, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    if-nez v3, :cond_0

    .line 589
    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    iget-object v10, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v10, v10, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/android/mms/ui/MessageUtils;->SpamNumberisAlreadInUse(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2c

    .line 590
    const/4 v9, 0x0

    const/16 v10, 0x2c

    const/4 v11, 0x0

    const v12, 0x7f0c040c

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200bc

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 592
    :cond_2c
    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-boolean v9, v9, Lcom/android/mms/ui/MessageItem;->mIsCMASSms:Z

    if-nez v9, :cond_0

    .line 593
    const/4 v9, 0x0

    const/16 v10, 0x29

    const/4 v11, 0x0

    const v12, 0x7f0c0405

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f0200ae

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method public createSpamOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 2822
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 2824
    const/16 v0, 0x28

    const v1, 0x7f0c0278

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200c0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2827
    const/16 v0, 0x12

    const v1, 0x7f0c043b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020095

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMenuItemActionForOrientation()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2830
    const/16 v0, 0x11

    const v1, 0x7f0c000e

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200a0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2833
    return-void
.end method

.method public forwardMessage(ZLcom/android/mms/ui/MessageItem;)V
    .locals 1
    .parameter "IsSlideshow"
    .parameter "msgItem"

    .prologue
    .line 1397
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/mms/ui/MessageOptions;->forwardMessage(ZLcom/android/mms/ui/MessageItem;Ljava/lang/Runnable;)V

    .line 1398
    return-void
.end method

.method public forwardMessage(ZLcom/android/mms/ui/MessageItem;Ljava/lang/Runnable;)V
    .locals 1
    .parameter "IsSlideshow"
    .parameter "msgItem"
    .parameter "exitRunnable"

    .prologue
    .line 1405
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/mms/ui/MessageOptions;->forwardMessage(ZLcom/android/mms/ui/MessageItem;Ljava/lang/Runnable;Z)V

    .line 1406
    return-void
.end method

.method public forwardMessage(ZLcom/android/mms/ui/MessageItem;Ljava/lang/Runnable;Z)V
    .locals 30
    .parameter "IsSlideshow"
    .parameter "msgItem"
    .parameter "exitRunnable"
    .parameter "editMsg"

    .prologue
    .line 1409
    const-string v2, "Mms/MessageOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "forwardMessage(),IsSlideshow="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", msgItem="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", exitRunnable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", editMsg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1411
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/mms/model/SlideshowModel;->setAddAttachmentSlideForCompose(Z)V

    .line 1412
    const-string v2, "mms"

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1413
    new-instance v5, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v5}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    .line 1415
    .local v5, sendReq:Lcom/google/android/mms/pdu/SendReq;
    const/4 v6, 0x0

    .line 1417
    .local v6, subject:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSubject()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1418
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1419
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_6

    .line 1420
    const-string v6, ""

    .line 1424
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1438
    :cond_0
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSubjectLength()I

    move-result v22

    .line 1439
    .local v22, maxSubjectLength:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLimitOnMmsSubjectByByte()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1440
    move/from16 v0, v22

    invoke-static {v6, v0}, Lcom/android/mms/util/TelephonyUtils;->substringByByteSize(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 1445
    :cond_1
    :goto_2
    if-eqz v6, :cond_2

    .line 1446
    new-instance v2, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v2, v6}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Lcom/google/android/mms/pdu/SendReq;->setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 1449
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAnonymousThread()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1450
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/mms/pdu/EncodedStringValue;

    const/4 v3, 0x0

    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-static {}, Lcom/android/mms/data/Conversation;->getTempThreadIdStr()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-virtual {v5, v2}, Lcom/google/android/mms/pdu/SendReq;->setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 1452
    :cond_3
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideshowModel;->makeCopy(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/google/android/mms/pdu/SendReq;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    .line 1454
    const/16 v26, 0x0

    .line 1455
    .local v26, result:I
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v29, v0

    .line 1457
    .local v29, slideShow:Lcom/android/mms/model/SlideshowModel;
    if-eqz v29, :cond_c

    .line 1458
    invoke-virtual/range {v29 .. v29}, Lcom/android/mms/model/SlideshowModel;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/mms/model/SlideModel;

    .line 1459
    .local v28, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual/range {v28 .. v28}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/mms/model/MediaModel;

    .line 1461
    .local v23, media:Lcom/android/mms/model/MediaModel;
    :try_start_0
    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1462
    move-object/from16 v0, v23

    check-cast v0, Lcom/android/mms/model/ImageModel;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/mms/model/ImageModel;->checkCreationMode()V

    .line 1463
    check-cast v23, Lcom/android/mms/model/ImageModel;

    .end local v23           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/model/ImageModel;->checkContentRestriction()V
    :try_end_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/mms/ResolutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_3

    .line 1471
    :catch_0
    move-exception v15

    .line 1472
    .local v15, e:Lcom/android/mms/UnsupportContentTypeException;
    const/16 v26, -0x3

    .line 1479
    goto :goto_3

    .line 1422
    .end local v15           #e:Lcom/android/mms/UnsupportContentTypeException;
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v22           #maxSubjectLength:I
    .end local v26           #result:I
    .end local v28           #slide:Lcom/android/mms/model/SlideModel;
    .end local v29           #slideShow:Lcom/android/mms/model/SlideshowModel;
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0c0036

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 1427
    :cond_7
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_8

    .line 1428
    const-string v6, ""

    .line 1433
    :goto_4
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1434
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 1430
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0c0036

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    .line 1441
    .restart local v22       #maxSubjectLength:I
    :cond_9
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    move/from16 v0, v22

    if-le v2, v0, :cond_1

    .line 1442
    const/4 v2, 0x0

    move/from16 v0, v22

    invoke-virtual {v6, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2

    .line 1464
    .restart local v18       #i$:Ljava/util/Iterator;
    .restart local v23       #media:Lcom/android/mms/model/MediaModel;
    .restart local v26       #result:I
    .restart local v28       #slide:Lcom/android/mms/model/SlideModel;
    .restart local v29       #slideShow:Lcom/android/mms/model/SlideshowModel;
    :cond_a
    :try_start_1
    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1465
    move-object/from16 v0, v23

    check-cast v0, Lcom/android/mms/model/AudioModel;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/mms/model/AudioModel;->checkCreationMode()V

    .line 1466
    check-cast v23, Lcom/android/mms/model/AudioModel;

    .end local v23           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/model/AudioModel;->checkContentRestriction()V

    goto/16 :goto_3

    .line 1473
    :catch_1
    move-exception v15

    .line 1474
    .local v15, e:Lcom/android/mms/ExceedMessageSizeException;
    const/16 v26, -0x2

    .line 1479
    goto/16 :goto_3

    .line 1467
    .end local v15           #e:Lcom/android/mms/ExceedMessageSizeException;
    .restart local v23       #media:Lcom/android/mms/model/MediaModel;
    :cond_b
    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1468
    move-object/from16 v0, v23

    check-cast v0, Lcom/android/mms/model/VideoModel;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/mms/model/VideoModel;->checkCreationMode()V

    .line 1469
    check-cast v23, Lcom/android/mms/model/VideoModel;

    .end local v23           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/model/VideoModel;->checkContentRestriction()V
    :try_end_1
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/mms/ResolutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_3

    .line 1475
    :catch_2
    move-exception v15

    .line 1476
    .local v15, e:Lcom/android/mms/ResolutionException;
    const/16 v26, -0x4

    .line 1479
    goto/16 :goto_3

    .line 1477
    .end local v15           #e:Lcom/android/mms/ResolutionException;
    :catch_3
    move-exception v15

    .line 1478
    .local v15, e:Lcom/android/mms/ContentRestrictionException;
    const/16 v26, -0x5

    goto/16 :goto_3

    .line 1483
    .end local v15           #e:Lcom/android/mms/ContentRestrictionException;
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v28           #slide:Lcom/android/mms/model/SlideModel;
    :cond_c
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsList()Ljava/util/ArrayList;

    move-result-object v11

    .line 1484
    .local v11, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    if-eqz v11, :cond_f

    .line 1485
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1486
    .local v10, attachCount:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_5
    move/from16 v0, v16

    if-ge v0, v10, :cond_f

    .line 1488
    :try_start_2
    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {v2}, Lcom/android/mms/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/x-vNote"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {v2}, Lcom/android/mms/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/x-vtodo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1490
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MessageOptions;->checkCRForRawAttachment()V
    :try_end_2
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/android/mms/ResolutionException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_2 .. :try_end_2} :catch_7

    .line 1486
    :cond_e
    :goto_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 1492
    :catch_4
    move-exception v15

    .line 1493
    .local v15, e:Lcom/android/mms/UnsupportContentTypeException;
    const/16 v26, -0x3

    .line 1500
    goto :goto_6

    .line 1494
    .end local v15           #e:Lcom/android/mms/UnsupportContentTypeException;
    :catch_5
    move-exception v15

    .line 1495
    .local v15, e:Lcom/android/mms/ExceedMessageSizeException;
    const/16 v26, -0x2

    .line 1500
    goto :goto_6

    .line 1496
    .end local v15           #e:Lcom/android/mms/ExceedMessageSizeException;
    :catch_6
    move-exception v15

    .line 1497
    .local v15, e:Lcom/android/mms/ResolutionException;
    const/16 v26, -0x4

    .line 1500
    goto :goto_6

    .line 1498
    .end local v15           #e:Lcom/android/mms/ResolutionException;
    :catch_7
    move-exception v15

    .line 1499
    .local v15, e:Lcom/android/mms/ContentRestrictionException;
    const/16 v26, -0x5

    goto :goto_6

    .line 1504
    .end local v10           #attachCount:I
    .end local v15           #e:Lcom/android/mms/ContentRestrictionException;
    .end local v16           #i:I
    :cond_f
    const/4 v2, -0x5

    move/from16 v0, v26

    if-eq v0, v2, :cond_10

    const/4 v2, -0x4

    move/from16 v0, v26

    if-ne v0, v2, :cond_15

    .line 1505
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/mms/model/CarrierContentRestriction;->getMmsCreationMode(Landroid/content/Context;)I

    move-result v13

    .line 1507
    .local v13, creationMode:I
    const/4 v2, 0x1

    if-ne v13, v2, :cond_12

    .line 1508
    new-instance v12, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-direct {v12, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1510
    .local v12, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0c0080

    invoke-virtual {v12, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1511
    const v2, 0x7f0c012b

    invoke-virtual {v12, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1512
    const v8, 0x7f0c004f

    new-instance v2, Lcom/android/mms/ui/MessageOptions$CreationOkListener;

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/mms/ui/MessageOptions$CreationOkListener;-><init>(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageItem;Lcom/google/android/mms/pdu/SendReq;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v12, v8, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1513
    const v2, 0x7f0c0050

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1514
    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1608
    .end local v5           #sendReq:Lcom/google/android/mms/pdu/SendReq;
    .end local v6           #subject:Ljava/lang/String;
    .end local v11           #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    .end local v12           #builder:Landroid/app/AlertDialog$Builder;
    .end local v13           #creationMode:I
    .end local v22           #maxSubjectLength:I
    .end local v26           #result:I
    .end local v29           #slideShow:Lcom/android/mms/model/SlideshowModel;
    :cond_11
    :goto_7
    return-void

    .line 1515
    .restart local v5       #sendReq:Lcom/google/android/mms/pdu/SendReq;
    .restart local v6       #subject:Ljava/lang/String;
    .restart local v11       #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    .restart local v13       #creationMode:I
    .restart local v22       #maxSubjectLength:I
    .restart local v26       #result:I
    .restart local v29       #slideShow:Lcom/android/mms/model/SlideshowModel;
    :cond_12
    if-nez v13, :cond_14

    .line 1516
    new-instance v12, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-direct {v12, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1517
    .restart local v12       #builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0200c3

    invoke-virtual {v12, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1518
    const/4 v2, -0x4

    move/from16 v0, v26

    if-ne v0, v2, :cond_13

    .line 1519
    const v2, 0x7f0c0030

    invoke-virtual {v12, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1523
    :goto_8
    const v2, 0x7f0c0134

    invoke-virtual {v12, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1524
    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1525
    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_7

    .line 1521
    :cond_13
    const v2, 0x7f0c00f5

    invoke-virtual {v12, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_8

    .line 1527
    .end local v12           #builder:Landroid/app/AlertDialog$Builder;
    :cond_14
    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move/from16 v4, p1

    move/from16 v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/mms/ui/MessageOptions;->forwardMessageStartActivityForMms(Lcom/android/mms/ui/MessageItem;ZLcom/google/android/mms/pdu/SendReq;Ljava/lang/String;ZZ)V

    .line 1528
    if-eqz p3, :cond_11

    .line 1529
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    const-wide/16 v3, 0x3e8

    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7

    .line 1533
    .end local v13           #creationMode:I
    :cond_15
    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move/from16 v4, p1

    move/from16 v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/mms/ui/MessageOptions;->forwardMessageStartActivityForMms(Lcom/android/mms/ui/MessageItem;ZLcom/google/android/mms/pdu/SendReq;Ljava/lang/String;ZZ)V

    .line 1534
    if-eqz p3, :cond_11

    .line 1535
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    const-wide/16 v3, 0x3e8

    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7

    .line 1539
    .end local v5           #sendReq:Lcom/google/android/mms/pdu/SendReq;
    .end local v6           #subject:Ljava/lang/String;
    .end local v11           #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    .end local v22           #maxSubjectLength:I
    .end local v26           #result:I
    .end local v29           #slideShow:Lcom/android/mms/model/SlideshowModel;
    :cond_16
    new-instance v19, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/android/mms/ui/ConversationComposer;

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1540
    .local v19, intent:Landroid/content/Intent;
    const-string v2, "exit_on_sent"

    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1541
    const-string v2, "forwarded_message"

    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1544
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_1a

    .line 1545
    const-string v2, "sms_body"

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1561
    :goto_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAllContextMenuInMsgViewer()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1562
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    const-string v3, "history_searchView"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/MmsApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    .line 1563
    .local v21, mFromSearchView:Landroid/content/SharedPreferences;
    const-string v2, "FromSearchView"

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1564
    const-string v2, "FromNestedSearchActivity"

    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1566
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    instance-of v2, v2, Lcom/android/mms/ui/ConversationComposer;

    if-nez v2, :cond_18

    .line 1567
    const/high16 v2, 0x1000

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1570
    .end local v21           #mFromSearchView:Landroid/content/SharedPreferences;
    :cond_18
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_21

    .line 1572
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/ui/MessageItem;->isGroupSms()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1573
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/android/mms/ui/MessageItem;->mGroupId:J

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/mms/ui/MessageOptions;->getFailedAddress(J)[Ljava/lang/String;

    move-result-object v14

    .line 1574
    .local v14, dests:[Ljava/lang/String;
    if-eqz v14, :cond_11

    .line 1577
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    .line 1578
    .local v25, recipients:Ljava/lang/StringBuilder;
    move-object v9, v14

    .local v9, arr$:[Ljava/lang/String;
    array-length v0, v9

    move/from16 v20, v0

    .local v20, len$:I
    const/16 v17, 0x0

    .local v17, i$:I
    :goto_a
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_1e

    aget-object v24, v9, v17

    .line 1579
    .local v24, recipient:Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_19

    .line 1580
    const-string v2, ", "

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1582
    :cond_19
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1578
    add-int/lit8 v17, v17, 0x1

    goto :goto_a

    .line 1547
    .end local v9           #arr$:[Ljava/lang/String;
    .end local v14           #dests:[Ljava/lang/String;
    .end local v17           #i$:I
    .end local v20           #len$:I
    .end local v24           #recipient:Ljava/lang/String;
    .end local v25           #recipients:Ljava/lang/StringBuilder;
    :cond_1a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsForwardPrefix()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1548
    const-string v2, "sms_body"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const v7, 0x7f0c0036

    invoke-virtual {v4, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_9

    .line 1549
    :cond_1b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMenuInsertSenderInfoWhenFwdMsg()Z

    move-result v2

    if-eqz v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->isInsertSenderInfoWhenFwdMsgEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1550
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p2

    invoke-static {v2, v0}, Lcom/android/mms/ui/MessageUtils;->getSenderInformation(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v27

    .line 1551
    .local v27, senderInformation:Ljava/lang/String;
    if-eqz v27, :cond_1c

    .line 1552
    const-string v2, "sms_body"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_9

    .line 1554
    :cond_1c
    const-string v2, "sms_body"

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_9

    .line 1557
    .end local v27           #senderInformation:Ljava/lang/String;
    :cond_1d
    const-string v2, "sms_body"

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_9

    .line 1584
    .restart local v9       #arr$:[Ljava/lang/String;
    .restart local v14       #dests:[Ljava/lang/String;
    .restart local v17       #i$:I
    .restart local v20       #len$:I
    .restart local v25       #recipients:Ljava/lang/StringBuilder;
    :cond_1e
    const-string v2, "recipients"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1589
    .end local v9           #arr$:[Ljava/lang/String;
    .end local v14           #dests:[Ljava/lang/String;
    .end local v17           #i$:I
    .end local v20           #len$:I
    .end local v25           #recipients:Ljava/lang/StringBuilder;
    :goto_b
    const-string v2, "edit_message"

    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1590
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/android/mms/ui/MessageItem;->mReserved:J

    const-wide/16 v7, 0x1

    cmp-long v2, v2, v7

    if-nez v2, :cond_1f

    .line 1591
    const-string v2, "reserved"

    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1592
    const-string v2, "reservedTime"

    move-object/from16 v0, p2

    iget-wide v3, v0, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1594
    :cond_1f
    sget v2, Lcom/android/mms/ui/MessageOptions;->mLaunchApp:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_20

    .line 1595
    const-string v2, "fromFolderView"

    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1596
    :cond_20
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessageOptions;->deleteFailedMsg(Lcom/android/mms/ui/MessageItem;)V

    .line 1597
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MessageOptions;->finishViewerCheckFolderViewMode()V

    .line 1600
    :cond_21
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/MessageOptions;->isLockedMessageList:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_22

    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/android/mms/ui/MessageItem;->mReserved:J

    const-wide/16 v7, 0x1

    cmp-long v2, v2, v7

    if-nez v2, :cond_23

    .line 1601
    :cond_22
    const-string v2, "locked_message_list"

    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1602
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const-string v3, "com.android.mms.ui.ForwardMessageActivity"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1603
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1604
    if-eqz p3, :cond_11

    .line 1605
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    const-wide/16 v3, 0x3e8

    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_7

    .line 1587
    :cond_24
    const-string v2, "recipients"

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_b
.end method

.method public forwardMessage(ZLcom/android/mms/ui/MessageItem;Z)V
    .locals 1
    .parameter "IsSlideshow"
    .parameter "msgItem"
    .parameter "editMsg"

    .prologue
    .line 1401
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/mms/ui/MessageOptions;->forwardMessage(ZLcom/android/mms/ui/MessageItem;Ljava/lang/Runnable;Z)V

    .line 1403
    return-void
.end method

.method public forwardMessageWithCloseComposer(Lcom/android/mms/ui/ComposeMessageFragment;ZLcom/android/mms/ui/MessageItem;)V
    .locals 1
    .parameter "comp"
    .parameter "isSlideshow"
    .parameter "msgItem"

    .prologue
    .line 1383
    new-instance v0, Lcom/android/mms/ui/MessageOptions$2;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/ui/MessageOptions$2;-><init>(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 1393
    .local v0, composerClose:Ljava/lang/Runnable;
    invoke-virtual {p0, p2, p3, v0}, Lcom/android/mms/ui/MessageOptions;->forwardMessage(ZLcom/android/mms/ui/MessageItem;Ljava/lang/Runnable;)V

    .line 1394
    return-void
.end method

.method public getCurrentSlideLocation()I
    .locals 1

    .prologue
    .line 3169
    iget v0, p0, Lcom/android/mms/ui/MessageOptions;->mCurSlideLocation:I

    return v0
.end method

.method public isPlayerStop(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 2814
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    .line 2815
    :cond_0
    const/4 v0, 0x1

    .line 2817
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lockMessage(Lcom/android/mms/ui/MessageItem;Z)V
    .locals 7
    .parameter "msgItem"
    .parameter "locked"

    .prologue
    const/4 v3, 0x1

    .line 2180
    const-string v4, "Mms/MessageOptions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lockMessage(),msgItem="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",locked="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2183
    const-string v4, "sms"

    iget-object v5, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2184
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isGroupSms()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2185
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->SMS_GROUP_CONTENT_URI:Landroid/net/Uri;

    .line 2195
    .local v1, uri:Landroid/net/Uri;
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAllContextMenuInMsgViewer()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2196
    iput-boolean p2, p1, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    .line 2199
    :cond_0
    iget-wide v4, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 2200
    .local v0, lockUri:Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 2201
    .local v2, values:Landroid/content/ContentValues;
    const-string v4, "locked"

    if-eqz p2, :cond_4

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2203
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/mms/ui/MessageOptions$3;

    invoke-direct {v4, p0, v0, v2}, Lcom/android/mms/ui/MessageOptions$3;-><init>(Lcom/android/mms/ui/MessageOptions;Landroid/net/Uri;Landroid/content/ContentValues;)V

    const-string v5, "lockMessage"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 2208
    return-void

    .line 2187
    .end local v0           #lockUri:Landroid/net/Uri;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_1
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .restart local v1       #uri:Landroid/net/Uri;
    goto :goto_0

    .line 2188
    .end local v1           #uri:Landroid/net/Uri;
    :cond_2
    const-string v4, "mms"

    iget-object v5, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2189
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .restart local v1       #uri:Landroid/net/Uri;
    goto :goto_0

    .line 2191
    .end local v1           #uri:Landroid/net/Uri;
    :cond_3
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->WAP_PUSH_MESSAGE_BY_ID_CONTENT_URI:Landroid/net/Uri;

    .restart local v1       #uri:Landroid/net/Uri;
    goto :goto_0

    .line 2201
    .restart local v0       #lockUri:Landroid/net/Uri;
    .restart local v2       #values:Landroid/content/ContentValues;
    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public openNewComposer(Ljava/util/ArrayList;ZJ)V
    .locals 4
    .parameter
    .parameter "setFocusRecipient"
    .parameter "reservationTime"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;ZJ)V"
        }
    .end annotation

    .prologue
    .local p1, numList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 3239
    const-string v1, "Mms/MessageOptions"

    const-string v2, "openNewComposer"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3240
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-nez v1, :cond_0

    .line 3241
    const-string v1, "Mms/MessageOptions"

    const-string v2, "openNewComposer mWorkingMessage is null."

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3255
    :goto_0
    return-void

    .line 3244
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3245
    invoke-direct {p0, p1, v3, p2}, Lcom/android/mms/ui/MessageOptions;->openNewcomposerStartActivityForMms(Ljava/util/ArrayList;ZZ)V

    goto :goto_0

    .line 3247
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3248
    .local v0, addIntent:Landroid/content/Intent;
    const-string v1, "add_recipient_message"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3249
    const-string v1, "sendto"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3250
    const-string v1, "reservationtime"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3251
    const-string v2, "sms_body"

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1, v3}, Lcom/android/mms/data/WorkingMessage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3252
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->resetDraftMessage()V

    .line 3253
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 3251
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1, v3}, Lcom/android/mms/data/WorkingMessage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public optionItemSelected(Landroid/view/MenuItem;)Z
    .locals 31
    .parameter "item"

    .prologue
    .line 696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v25, v0

    if-nez v25, :cond_0

    .line 697
    const/16 v25, 0x0

    .line 1015
    :goto_0
    return v25

    .line 699
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v25

    packed-switch v25, :pswitch_data_0

    .line 1015
    :pswitch_0
    const/16 v25, 0x0

    goto :goto_0

    .line 702
    :pswitch_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v25

    if-eqz v25, :cond_4

    .line 704
    sget v25, Lcom/android/mms/ui/MessageOptions;->mLaunchApp:I

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v25, v0

    const-wide/16 v26, 0x0

    invoke-static/range {v25 .. v27}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v12

    .line 707
    .local v12, intent:Landroid/content/Intent;
    const-string v25, "address"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->finish()V

    .line 727
    .end local v12           #intent:Landroid/content/Intent;
    :goto_1
    const/16 v25, 0x1

    goto :goto_0

    .line 711
    :cond_1
    sget v25, Lcom/android/mms/ui/MessageOptions;->mLaunchApp:I

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_2

    sget v25, Lcom/android/mms/ui/MessageOptions;->mLaunchApp:I

    const/16 v26, 0x4

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_3

    .line 712
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v25, v0

    const-wide/16 v26, 0x0

    invoke-static/range {v25 .. v27}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v12

    .line 713
    .restart local v12       #intent:Landroid/content/Intent;
    const-string v25, "address"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 714
    const-string v25, "exit_on_sent"

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 715
    const-string v25, "fromFolderView"

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 716
    const-string v25, "replyComposer"

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 719
    .end local v12           #intent:Landroid/content/Intent;
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MessageOptions;->launchOrMoveBackToComposerForReply()V

    goto :goto_1

    .line 724
    :cond_4
    const/16 v25, 0x1

    sput-boolean v25, Lcom/android/mms/ui/MessageOptions;->sReplyLaunched:Z

    .line 725
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MessageOptions;->launchOrMoveBackToComposerForReply()V

    goto :goto_1

    .line 730
    :pswitch_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v25

    if-eqz v25, :cond_8

    .line 732
    sget v25, Lcom/android/mms/ui/MessageOptions;->mLaunchApp:I

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_7

    .line 735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageOptions;->resendMessage(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;Z)Z

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    instance-of v0, v0, Lcom/android/mms/ui/BoxListViewActivity;

    move/from16 v25, v0

    if-eqz v25, :cond_6

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/mms/ui/BoxListViewActivity;

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/mms/ui/BoxListViewActivity;->notifyBoxDataChanged(Z)V

    .line 757
    :cond_5
    :goto_2
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 741
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/ui/MessageItem;->isGroupSms()Z

    move-result v25

    if-nez v25, :cond_5

    .line 742
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MessageOptions;->finishViewerCheckFolderViewMode()V

    goto :goto_2

    .line 745
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageOptions;->resendMessage(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;Z)Z

    goto :goto_2

    .line 749
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v25

    if-eqz v25, :cond_9

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-static/range {v25 .. v26}, Lcom/android/mms/util/TelephonyUtils;->checkPSAvailability(Landroid/content/Context;Z)Z

    move-result v25

    if-eqz v25, :cond_9

    .line 751
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 754
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageOptions;->resendMessage(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;Z)Z

    goto :goto_2

    .line 759
    :pswitch_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v25

    if-eqz v25, :cond_a

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/mms/ui/MessageItem;->getBodyAll()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/android/mms/util/UIUtils;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;)V

    .line 764
    :goto_3
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 762
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MessageOptions;->mCurSlideLocation:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/android/mms/ui/MessageItem;->getBodyAt(I)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/android/mms/util/UIUtils;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    .line 766
    :pswitch_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCopyToSim()Z

    move-result v25

    if-eqz v25, :cond_b

    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MessageOptions;->copyMessageToSIM(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;)V

    .line 768
    :cond_b
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 771
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageOptions;->copyMessageToSDCARD(Lcom/android/mms/ui/MessageItem;)V

    .line 772
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 779
    :pswitch_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAllContextMenuInMsgViewer()Z

    move-result v25

    if-eqz v25, :cond_d

    .line 780
    const/4 v13, 0x0

    .line 781
    .local v13, isSlideTmp:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    instance-of v0, v0, Lcom/android/mms/ui/SlideshowActivity;

    move/from16 v25, v0

    if-eqz v25, :cond_c

    .line 782
    const/4 v13, 0x1

    .line 785
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v13, v1, v2}, Lcom/android/mms/ui/MessageOptions;->forwardMessage(ZLcom/android/mms/ui/MessageItem;Z)V

    .line 791
    .end local v13           #isSlideTmp:Z
    :goto_5
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 784
    .restart local v13       #isSlideTmp:Z
    :cond_c
    const/4 v13, 0x0

    goto :goto_4

    .line 788
    .end local v13           #isSlideTmp:Z
    :cond_d
    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MessageOptions;->forwardMessage(ZLcom/android/mms/ui/MessageItem;)V

    goto :goto_5

    .line 794
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageOptions;->viewMessageDetail(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;Z)V

    .line 795
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 797
    :pswitch_8
    sget-object v25, Lcom/android/mms/ui/MessageOptions;->mType:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessageOptions;->islockmessage(Ljava/lang/String;)Z

    move-result v14

    .line 798
    .local v14, islocked:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v24, v0

    .line 799
    .local v24, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/ui/MessageItem;->isGroupSms()Z

    move-result v25

    if-eqz v25, :cond_e

    .line 800
    sget-object v25, Lcom/android/mms/ui/MessageUtils;->SMS_GROUP_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v26

    invoke-static/range {v25 .. v27}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v24

    .line 801
    :cond_e
    new-instance v15, Lcom/android/mms/ui/MessageOptions$DeleteMessageListener;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v15, v0, v1, v14}, Lcom/android/mms/ui/MessageOptions$DeleteMessageListener;-><init>(Lcom/android/mms/ui/MessageOptions;Landroid/net/Uri;Z)V

    .line 802
    .local v15, l:Lcom/android/mms/ui/MessageOptions$DeleteMessageListener;
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v14}, Lcom/android/mms/ui/MessageOptions;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V

    .line 803
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 806
    .end local v14           #islocked:Z
    .end local v15           #l:Lcom/android/mms/ui/MessageOptions$DeleteMessageListener;
    .end local v24           #uri:Landroid/net/Uri;
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    sget-wide v27, Lcom/android/mms/ui/MessageOptions;->msgId:J

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    move-wide/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/mms/ui/MessageOptions;->showAttachmentList(Lcom/android/mms/model/SlideshowModel;ZJ)V

    .line 807
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 810
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    move-wide/from16 v29, v0

    invoke-static/range {v28 .. v30}, Lcom/android/mms/ui/MessageUtils;->saveRingtone(Landroid/content/Context;J)Z

    move-result v28

    invoke-static/range {v25 .. v28}, Lcom/android/mms/ui/MessageUtils;->getDrmMimeSavedStringRsrc(Landroid/content/Context;JZ)I

    move-result v19

    .line 812
    .local v19, resId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v19

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Toast;->show()V

    .line 813
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 817
    .end local v19           #resId:I
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->numberList:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageOptions;->ReplyAllMessage(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;Ljava/util/ArrayList;)V

    .line 818
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 823
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MessageOptions;->lockMessage(Lcom/android/mms/ui/MessageItem;Z)V

    .line 824
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessageOptions;->setLockIcon(Z)V

    .line 825
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 828
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MessageOptions;->lockMessage(Lcom/android/mms/ui/MessageItem;Z)V

    .line 829
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessageOptions;->setLockIcon(Z)V

    .line 830
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 833
    :pswitch_e
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v12

    .line 834
    .restart local v12       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v25, v0

    const/16 v26, 0x1b

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v12, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 835
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 838
    .end local v12           #intent:Landroid/content/Intent;
    :pswitch_f
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v12

    .line 839
    .restart local v12       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 840
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 845
    .end local v12           #intent:Landroid/content/Intent;
    :pswitch_10
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getAvailableStorage()J

    move-result-wide v25

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v27

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v27, v0

    cmp-long v25, v25, v27

    if-gez v25, :cond_f

    .line 846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const v26, 0x7f0c014a

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 847
    .local v22, unableToDownload:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Toast;->show()V

    .line 875
    .end local v22           #unableToDownload:Ljava/lang/String;
    :goto_6
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 863
    :cond_f
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsSendingForChn()Z

    move-result v25

    if-eqz v25, :cond_10

    .line 864
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/android/mms/util/DownloadManager;->Isexpired(Landroid/net/Uri;)Z

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_10

    .line 865
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/android/mms/util/DownloadManager;->markExpriedState(Landroid/net/Uri;)V

    .line 866
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 870
    :cond_10
    new-instance v12, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const-class v26, Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 871
    .restart local v12       #intent:Landroid/content/Intent;
    const-string v25, "uri"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 872
    const-string v25, "type"

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_6

    .line 882
    .end local v12           #intent:Landroid/content/Intent;
    :pswitch_11
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAllContextMenuInMsgViewer()Z

    move-result v25

    if-eqz v25, :cond_11

    .line 883
    const/4 v13, 0x0

    .line 884
    .restart local v13       #isSlideTmp:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    instance-of v0, v0, Lcom/android/mms/ui/SlideshowActivity;

    move/from16 v25, v0

    if-eqz v25, :cond_12

    .line 885
    const/4 v13, 0x1

    .line 888
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v13, v1, v2}, Lcom/android/mms/ui/MessageOptions;->forwardMessage(ZLcom/android/mms/ui/MessageItem;Z)V

    .line 892
    .end local v13           #isSlideTmp:Z
    :cond_11
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 887
    .restart local v13       #isSlideTmp:Z
    :cond_12
    const/4 v13, 0x0

    goto :goto_7

    .line 898
    .end local v13           #isSlideTmp:Z
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v8

    .line 900
    .local v8, contact:Lcom/android/mms/data/Contact;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v25

    if-eqz v25, :cond_13

    .line 901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-static {v0, v8}, Lcom/android/mms/ui/MessageUtils;->createblockNumberSettingDialog(Landroid/content/Context;Lcom/android/mms/data/Contact;)V

    .line 904
    :goto_8
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 903
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageOptions;->confirmRegisterAsSpamNumber()V

    goto :goto_8

    .line 908
    .end local v8           #contact:Lcom/android/mms/data/Contact;
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v23

    .line 909
    .local v23, unblockContact:Lcom/android/mms/data/Contact;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v25, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/android/mms/ui/MessageUtils;->unregisterSpamNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_14

    .line 910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v25, v0

    const v26, 0x7f0c0409

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Toast;->show()V

    .line 911
    :cond_14
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 915
    .end local v23           #unblockContact:Lcom/android/mms/data/Contact;
    :pswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v25

    if-eqz v25, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v26, v0

    const v27, 0x7f0c000d

    invoke-virtual/range {v26 .. v27}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_19

    .line 916
    const/16 v17, 0x0

    .line 918
    .local v17, msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v25

    move-object/from16 v0, v25

    check-cast v0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    move-object/from16 v17, v0
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 922
    :goto_9
    const/16 v21, 0x0

    .line 923
    .local v21, to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v17, :cond_15

    .line 924
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v21

    .line 926
    :cond_15
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 928
    .local v20, sb:Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .line 929
    .local v9, count:I
    if-eqz v21, :cond_18

    .line 930
    move-object/from16 v6, v21

    .local v6, arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    array-length v0, v6

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_a
    move/from16 v0, v16

    if-ge v11, v0, :cond_17

    aget-object v18, v6, v11

    .line 931
    .local v18, recipient:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-lez v9, :cond_16

    .line 932
    const-string v25, ", "

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 934
    :cond_16
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/mms/data/Contact;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 935
    add-int/lit8 v9, v9, 0x1

    .line 930
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    .line 919
    .end local v6           #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v9           #count:I
    .end local v11           #i$:I
    .end local v16           #len$:I
    .end local v18           #recipient:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v20           #sb:Ljava/lang/StringBuilder;
    .end local v21           #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_0
    move-exception v10

    .line 920
    .local v10, e:Lcom/google/android/mms/MmsException;
    const-string v25, "Mms/MessageOptions"

    const-string v26, "Failed to load the message: "

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v10}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 937
    .end local v10           #e:Lcom/google/android/mms/MmsException;
    .restart local v6       #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v9       #count:I
    .restart local v11       #i$:I
    .restart local v16       #len$:I
    .restart local v20       #sb:Ljava/lang/StringBuilder;
    .restart local v21       #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_17
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 959
    .end local v6           #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v11           #i$:I
    .end local v16           #len$:I
    .end local v17           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .end local v21           #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .local v5, address:Ljava/lang/String;
    :goto_b
    new-instance v25, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v26, v0

    invoke-direct/range {v25 .. v26}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v26, 0x7f0c012c

    invoke-virtual/range {v25 .. v26}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v26, v0

    const v27, 0x7f0c02d2

    invoke-virtual/range {v26 .. v27}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v26

    const-string v27, "%s"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v25

    const v26, 0x7f0c004f

    new-instance v27, Lcom/android/mms/ui/MessageOptions$SendNowListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/MessageOptions$SendNowListener;-><init>(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual/range {v25 .. v27}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v25

    const v26, 0x7f0c0050

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v25

    sget-object v26, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual/range {v25 .. v26}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageOptions;->mSendNowConfirmDialog:Landroid/content/DialogInterface;

    .line 967
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 939
    .end local v5           #address:Ljava/lang/String;
    .restart local v17       #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .restart local v21       #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v25, v0

    const v26, 0x7f0c0122

    invoke-virtual/range {v25 .. v26}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #address:Ljava/lang/String;
    goto :goto_b

    .line 943
    .end local v5           #address:Ljava/lang/String;
    .end local v9           #count:I
    .end local v17           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .end local v20           #sb:Ljava/lang/StringBuilder;
    .end local v21           #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_19
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 944
    .restart local v20       #sb:Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .line 946
    .restart local v9       #count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, ";"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .local v6, arr$:[Ljava/lang/String;
    array-length v0, v6

    move/from16 v16, v0

    .restart local v16       #len$:I
    const/4 v11, 0x0

    .restart local v11       #i$:I
    :goto_c
    move/from16 v0, v16

    if-ge v11, v0, :cond_1c

    aget-object v18, v6, v11

    .line 947
    .local v18, recipient:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_1a

    .line 946
    :goto_d
    add-int/lit8 v11, v11, 0x1

    goto :goto_c

    .line 950
    :cond_1a
    if-lez v9, :cond_1b

    .line 951
    const-string v25, ", "

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 953
    :cond_1b
    invoke-static/range {v18 .. v18}, Lcom/android/mms/data/Contact;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 954
    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    .line 956
    .end local v18           #recipient:Ljava/lang/String;
    :cond_1c
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #address:Ljava/lang/String;
    goto/16 :goto_b

    .line 970
    .end local v5           #address:Ljava/lang/String;
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v9           #count:I
    .end local v11           #i$:I
    .end local v16           #len$:I
    .end local v20           #sb:Ljava/lang/StringBuilder;
    :pswitch_15
    sget-object v25, Lcom/android/mms/ui/MessageOptions;->mType:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessageOptions;->islockmessage(Ljava/lang/String;)Z

    move-result v14

    .line 971
    .restart local v14       #islocked:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v24, v0

    .line 972
    .restart local v24       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/ui/MessageItem;->isGroupSms()Z

    move-result v25

    if-eqz v25, :cond_1d

    .line 973
    sget-object v25, Lcom/android/mms/ui/MessageUtils;->SMS_GROUP_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v26

    invoke-static/range {v25 .. v27}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v24

    .line 974
    :cond_1d
    new-instance v15, Lcom/android/mms/ui/MessageOptions$CancelMessageListener;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v15, v0, v1, v14}, Lcom/android/mms/ui/MessageOptions$CancelMessageListener;-><init>(Lcom/android/mms/ui/MessageOptions;Landroid/net/Uri;Z)V

    .line 975
    .local v15, l:Lcom/android/mms/ui/MessageOptions$CancelMessageListener;
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v14}, Lcom/android/mms/ui/MessageOptions;->confirmCancelDialog(Landroid/content/DialogInterface$OnClickListener;Z)V

    .line 977
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 980
    .end local v14           #islocked:Z
    .end local v15           #l:Lcom/android/mms/ui/MessageOptions$CancelMessageListener;
    .end local v24           #uri:Landroid/net/Uri;
    :pswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mAddressToCall:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_1e

    .line 981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mAddressToCall:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v25 .. v26}, Lcom/android/mms/ui/MessageUtils;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    .line 982
    :cond_1e
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 985
    :pswitch_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mAddressToCall:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_1f

    .line 986
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mAddressToCall:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v25 .. v26}, Lcom/android/mms/ui/MessageUtils;->makeVideoCall(Landroid/content/Context;Ljava/lang/String;)V

    .line 987
    :cond_1f
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 991
    :pswitch_18
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRegisterCalendar()Z

    move-result v25

    if-eqz v25, :cond_20

    .line 992
    const-string v7, ""

    .line 993
    .local v7, calendarstr:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v25

    if-eqz v25, :cond_21

    .line 994
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/ui/MessageItem;->getBodyAll()Ljava/lang/String;

    move-result-object v7

    .line 999
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-static {v0, v7}, Lcom/android/mms/ui/MessageUtils;->registerToCalendar(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1000
    const-string v25, "Mms/MessageOptions"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "register calendar,len = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    .end local v7           #calendarstr:Ljava/lang/String;
    :cond_20
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 996
    .restart local v7       #calendarstr:Ljava/lang/String;
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MessageOptions;->mCurSlideLocation:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/android/mms/ui/MessageItem;->getBodyAt(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_e

    .line 1006
    .end local v7           #calendarstr:Ljava/lang/String;
    :pswitch_19
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRilSmsTidMessage()Z

    move-result v25

    if-eqz v25, :cond_22

    .line 1007
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/mms/util/TelephonyUtils;->isEnableLinkUrlService(Lcom/android/mms/ui/MessageItem;)Z

    move-result v25

    if-eqz v25, :cond_22

    .line 1008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v26, v0

    invoke-static/range {v25 .. v26}, Lcom/android/mms/util/TelephonyUtils;->connectSpecificTidService(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)V

    .line 1011
    :cond_22
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 699
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_c
        :pswitch_d
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_18
        :pswitch_9
        :pswitch_b
        :pswitch_10
        :pswitch_14
        :pswitch_15
        :pswitch_0
        :pswitch_12
        :pswitch_16
        :pswitch_17
        :pswitch_13
        :pswitch_a
        :pswitch_19
    .end packed-switch
.end method

.method public resendMessage(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;Z)Z
    .locals 6
    .parameter "msgItem"
    .parameter "conversation"
    .parameter "closeActivity"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1130
    const-string v3, "Mms/MessageOptions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resendMessage(),msgItem="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const-string v4, "device_policy"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 1139
    .local v0, mDPM:Landroid/app/admin/DevicePolicyManager;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getAllowTextMessaging(Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1140
    const-string v2, "Mms/MessageOptions"

    const-string v3, "message sending is disabled"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0c0159

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1167
    :goto_0
    return v1

    .line 1146
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SKT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LGU+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KOR_OPEN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1148
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/mms/util/TelephonyUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1149
    const-string v3, "Mms/MessageOptions"

    const-string v4, "isAirplaneModeOn"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c03f1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1156
    :cond_2
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1157
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageOptions;->resendMmsMessageItem(Lcom/android/mms/ui/MessageItem;)V

    .line 1158
    if-eqz p3, :cond_3

    .line 1159
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_3
    :goto_1
    move v1, v2

    .line 1167
    goto :goto_0

    .line 1160
    :cond_4
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isGroupSms()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1161
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/MessageOptions;->tryToResendGroupSms(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;Z)V

    goto :goto_1

    .line 1163
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageOptions;->resendSmsMessageItem(Lcom/android/mms/ui/MessageItem;)V

    .line 1164
    if-eqz p3, :cond_3

    .line 1165
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_1
.end method

.method public setCurrentSlideLocation(I)V
    .locals 0
    .parameter "slideLocation"

    .prologue
    .line 3165
    iput p1, p0, Lcom/android/mms/ui/MessageOptions;->mCurSlideLocation:I

    .line 3166
    return-void
.end method

.method public showAttachmentList(Lcom/android/mms/model/SlideshowModel;ZJ)V
    .locals 6
    .parameter "slideshow"
    .parameter "bSave"
    .parameter "msgId"

    .prologue
    const/4 v5, 0x0

    .line 2528
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->getMessageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/mms/content/MmsPartExport;->getMmsAttachmentsAsModelList(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/util/ArrayList;

    move-result-object v4

    .line 2531
    .local v4, showAttachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 2532
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0c011e

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2536
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    move v1, p2

    move-wide v2, p3

    .line 2534
    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/MessageOptions;->createAttachmentDialog(ZJLjava/util/ArrayList;Z)V

    goto :goto_0
.end method

.method public showAudioList(Lcom/android/mms/model/SlideshowModel;J)V
    .locals 6
    .parameter "slideshow"
    .parameter "msgId"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 2539
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getMessageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v2, v1, v1}, Lcom/samsung/mms/content/MmsPartExport;->getMmsAttachmentsAsModelList(Landroid/content/Context;Landroid/net/Uri;ZZ)Ljava/util/ArrayList;

    move-result-object v4

    .line 2542
    .local v4, showAttachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 2543
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0c011e

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2551
    :cond_0
    :goto_0
    return-void

    .line 2544
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 2545
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2546
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMessageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v2, v0, v1, v1}, Lcom/samsung/mms/content/MmsPartExport;->savePartForRingtone(Landroid/net/Uri;Landroid/net/Uri;ZZ)V

    goto :goto_0

    :cond_2
    move-object v0, p0

    move-wide v2, p2

    move v5, v1

    .line 2549
    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/MessageOptions;->createAttachmentDialog(ZJLjava/util/ArrayList;Z)V

    goto :goto_0
.end method

.method public startViewer(Lcom/android/mms/ui/MessageItem;)V
    .locals 10
    .parameter "msgItem"

    .prologue
    const/high16 v9, 0x2400

    const/4 v8, 0x1

    .line 3174
    const/4 v0, 0x0

    .line 3175
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v2

    .line 3176
    .local v2, msgId:J
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v4

    .line 3180
    .local v4, threadId:J
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isWpm()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3181
    :cond_0
    iget-boolean v6, p1, Lcom/android/mms/ui/MessageItem;->mIsCMASSms:Z

    if-nez v6, :cond_2

    .line 3182
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const-class v7, Lcom/android/mms/ui/SmsViewerActivity;

    invoke-direct {v0, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3183
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v6, "msgId"

    invoke-virtual {v0, v6, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3184
    const-string v6, "thread_id"

    invoke-virtual {v0, v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3185
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isWpm()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3186
    const-string v6, "isWapPush"

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3187
    :cond_1
    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3236
    :cond_2
    :goto_0
    return-void

    .line 3191
    :cond_3
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v6

    if-eqz v6, :cond_2

    iget v6, p1, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    const/16 v7, 0x82

    if-eq v6, v7, :cond_2

    .line 3193
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3194
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const-class v7, Lcom/android/mms/ui/MmsSinglePageActivity;

    invoke-direct {v0, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3196
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3197
    const-string v6, "msgId"

    invoke-virtual {v0, v6, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3198
    const-string v6, "thread_id"

    invoke-virtual {v0, v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3199
    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 3201
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v6, :cond_5

    iget-object v6, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6}, Lcom/android/mms/model/SlideshowModel;->hasLocation()Z

    move-result v6

    if-ne v6, v8, :cond_5

    .line 3203
    iget-object v6, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6}, Lcom/android/mms/model/SlideshowModel;->getLocationModel()Lcom/samsung/mms/model/LocationVcardModel;

    move-result-object v1

    .line 3204
    .local v1, locModel:Lcom/samsung/mms/model/LocationVcardModel;
    if-eqz v1, :cond_2

    .line 3206
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const-class v7, Lcom/samsung/mms/location/LocationMapActivity;

    invoke-direct {v0, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3207
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v6, "extra_startup_flag"

    const/4 v7, 0x4

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3209
    const-string v6, "extra_map_url"

    invoke-virtual {v1}, Lcom/samsung/mms/model/LocationVcardModel;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3210
    const-string v6, "extra_selected_place"

    invoke-virtual {v1}, Lcom/samsung/mms/model/LocationVcardModel;->getPlaceBytes()[B

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 3212
    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 3225
    .end local v1           #locModel:Lcom/samsung/mms/model/LocationVcardModel;
    :cond_5
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const-class v7, Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {v0, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3227
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3229
    const-string v6, "selectText"

    const-string v7, "selectTextLaunch"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3230
    const-string v6, "msgId"

    invoke-virtual {v0, v6, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3231
    const-string v6, "thread_id"

    invoke-virtual {v0, v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3232
    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public viewMessageDetail(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;Z)V
    .locals 26
    .parameter "msgItem"
    .parameter "conversation"
    .parameter "isView"

    .prologue
    .line 1045
    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "m_type"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string v5, "msg_box"

    aput-object v5, v4, v2

    .line 1050
    .local v4, PROJECTION_Mms:[Ljava/lang/String;
    const/4 v2, 0x7

    new-array v12, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v12, v2

    const/4 v2, 0x1

    const-string v5, "type"

    aput-object v5, v12, v2

    const/4 v2, 0x2

    const-string v5, "address"

    aput-object v5, v12, v2

    const/4 v2, 0x3

    const-string v5, "date"

    aput-object v5, v12, v2

    const/4 v2, 0x4

    const-string v5, "error_code"

    aput-object v5, v12, v2

    const/4 v2, 0x5

    const-string v5, "group_id"

    aput-object v5, v12, v2

    const/4 v2, 0x6

    const-string v5, "pri"

    aput-object v5, v12, v2

    .line 1062
    .local v12, PROJECTION_Sms:[Ljava/lang/String;
    const/16 v19, 0x0

    .line 1063
    .local v19, address:Ljava/lang/String;
    const-string v8, "sms_id = ? AND sms._id = sms_id AND cmas.thread_id = ?"

    .line 1065
    .local v8, SELECTION_SMS_CMAS_OPTION:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 1067
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    const-string v5, ", "

    invoke-virtual {v2, v5}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1069
    :cond_0
    const-string v2, "mms"

    sget-object v5, Lcom/android/mms/ui/MessageOptions;->mType:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1070
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-wide v5, Lcom/android/mms/ui/MessageOptions;->msgId:J

    invoke-static {v2, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 1071
    .local v3, messageUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1090
    .local v14, cursor:Landroid/database/Cursor;
    :goto_0
    if-eqz v14, :cond_1

    .line 1092
    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1093
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v15, v2, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v18

    move/from16 v17, p3

    invoke-static/range {v13 .. v18}, Lcom/android/mms/ui/MessageUtils;->getMessageDetails(Landroid/content/Context;Landroid/database/Cursor;ILcom/android/mms/ui/MessageItem;ZZ)Ljava/lang/String;

    move-result-object v23

    .line 1096
    .local v23, messageDetails:Ljava/lang/String;
    new-instance v20, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1099
    .local v20, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0c007d

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v5, 0x7f0c017b

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1103
    invoke-virtual/range {v20 .. v20}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    sput-object v2, Lcom/android/mms/ui/MessageOptions;->detailDialog:Landroid/app/AlertDialog;

    .line 1105
    sget-object v2, Lcom/android/mms/ui/MessageOptions;->detailDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/mms/ui/MessageOptions$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/mms/ui/MessageOptions$1;-><init>(Lcom/android/mms/ui/MessageOptions;)V

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1117
    sget-object v2, Lcom/android/mms/ui/MessageOptions;->detailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1122
    if-eqz v14, :cond_1

    .line 1123
    .end local v20           #builder:Landroid/app/AlertDialog$Builder;
    .end local v23           #messageDetails:Ljava/lang/String;
    :goto_1
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1127
    :cond_1
    return-void

    .line 1074
    .end local v3           #messageUri:Landroid/net/Uri;
    .end local v14           #cursor:Landroid/database/Cursor;
    :cond_2
    const/16 v22, 0x0

    .line 1075
    .local v22, isCmas:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v0, v2, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    move-wide/from16 v24, v0

    .line 1077
    .local v24, threadId:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-boolean v0, v2, Lcom/android/mms/ui/MessageItem;->mIsCMASSms:Z

    move/from16 v22, v0

    .line 1079
    if-eqz v22, :cond_3

    .line 1080
    sget-object v2, Landroid/provider/Telephony$Cmas;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v24

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 1081
    .restart local v3       #messageUri:Landroid/net/Uri;
    const/4 v2, 0x2

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-wide v5, Lcom/android/mms/ui/MessageOptions;->msgId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v2

    const/4 v2, 0x1

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v2

    .line 1082
    .local v9, selectionArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/android/mms/ui/CMASViewer;->PROJECTION_SMS_CMAS:[Ljava/lang/String;

    const-string v10, "date DESC"

    move-object v6, v3

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1084
    .restart local v14       #cursor:Landroid/database/Cursor;
    goto/16 :goto_0

    .line 1085
    .end local v3           #messageUri:Landroid/net/Uri;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .end local v14           #cursor:Landroid/database/Cursor;
    :cond_3
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-wide v5, Lcom/android/mms/ui/MessageOptions;->msgId:J

    invoke-static {v2, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 1086
    .restart local v3       #messageUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v11, v3

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .restart local v14       #cursor:Landroid/database/Cursor;
    goto/16 :goto_0

    .line 1119
    .end local v22           #isCmas:Z
    .end local v24           #threadId:J
    :catch_0
    move-exception v21

    .line 1120
    .local v21, e:Landroid/view/WindowManager$BadTokenException;
    :try_start_1
    const-string v2, "Mms/MessageOptions"

    const-string v5, "Failed view message details"

    move-object/from16 v0, v21

    invoke-static {v2, v5, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1122
    if-eqz v14, :cond_1

    goto :goto_1

    .end local v21           #e:Landroid/view/WindowManager$BadTokenException;
    :catchall_0
    move-exception v2

    if-eqz v14, :cond_4

    .line 1123
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1122
    :cond_4
    throw v2
.end method

.method public viewSpamMessageDetail(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;Z)V
    .locals 27
    .parameter "msgItem"
    .parameter "conversation"
    .parameter "isView"

    .prologue
    .line 2896
    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "m_type"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string v5, "msg_box"

    aput-object v5, v4, v2

    .line 2901
    .local v4, PROJECTION_Mms:[Ljava/lang/String;
    const/4 v2, 0x7

    new-array v12, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v12, v2

    const/4 v2, 0x1

    const-string v5, "type"

    aput-object v5, v12, v2

    const/4 v2, 0x2

    const-string v5, "address"

    aput-object v5, v12, v2

    const/4 v2, 0x3

    const-string v5, "date"

    aput-object v5, v12, v2

    const/4 v2, 0x4

    const-string v5, "error_code"

    aput-object v5, v12, v2

    const/4 v2, 0x5

    const-string v5, "group_id"

    aput-object v5, v12, v2

    const/4 v2, 0x6

    const-string v5, "pri"

    aput-object v5, v12, v2

    .line 2913
    .local v12, PROJECTION_Sms:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v2, v5}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v21

    .line 2914
    .local v21, contact:Lcom/android/mms/data/Contact;
    const/16 v19, 0x0

    .line 2916
    .local v19, address:Ljava/lang/String;
    const-string v2, "mms"

    sget-object v5, Lcom/android/mms/ui/MessageOptions;->mType:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2917
    sget-object v2, Landroid/provider/Telephony$SpamMms;->CONTENT_URI:Landroid/net/Uri;

    sget-wide v5, Lcom/android/mms/ui/MessageOptions;->msgId:J

    invoke-static {v2, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 2918
    .local v3, messageUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 2937
    .local v14, cursor:Landroid/database/Cursor;
    :goto_0
    if-eqz v14, :cond_0

    .line 2939
    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2940
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v15, v2, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v18

    move/from16 v17, p3

    invoke-static/range {v13 .. v18}, Lcom/android/mms/ui/MessageUtils;->getMessageDetails(Landroid/content/Context;Landroid/database/Cursor;ILcom/android/mms/ui/MessageItem;ZZ)Ljava/lang/String;

    move-result-object v24

    .line 2943
    .local v24, messageDetails:Ljava/lang/String;
    new-instance v20, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2944
    .local v20, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0c007d

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v5, 0x104000a

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2948
    invoke-virtual/range {v20 .. v20}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    sput-object v2, Lcom/android/mms/ui/MessageOptions;->detailDialogSpam:Landroid/app/AlertDialog;

    .line 2949
    sget-object v2, Lcom/android/mms/ui/MessageOptions;->detailDialogSpam:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2954
    if-eqz v14, :cond_0

    .line 2955
    .end local v20           #builder:Landroid/app/AlertDialog$Builder;
    .end local v24           #messageDetails:Ljava/lang/String;
    :goto_1
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 2959
    :cond_0
    return-void

    .line 2921
    .end local v3           #messageUri:Landroid/net/Uri;
    .end local v14           #cursor:Landroid/database/Cursor;
    :cond_1
    const/16 v23, 0x0

    .line 2922
    .local v23, isCmas:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v0, v2, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    move-wide/from16 v25, v0

    .line 2924
    .local v25, threadId:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-boolean v0, v2, Lcom/android/mms/ui/MessageItem;->mIsCMASSms:Z

    move/from16 v23, v0

    .line 2926
    if-eqz v23, :cond_2

    .line 2927
    sget-object v2, Landroid/provider/Telephony$Cmas;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v25

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 2928
    .restart local v3       #messageUri:Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v2

    .line 2929
    .local v9, selectionArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/android/mms/ui/CMASViewer;->PROJECTION_SMS_CMAS:[Ljava/lang/String;

    const-string v8, "sms._id = sms_id AND cmas.thread_id = ?"

    const-string v10, "date DESC"

    move-object v6, v3

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 2931
    .restart local v14       #cursor:Landroid/database/Cursor;
    goto/16 :goto_0

    .line 2932
    .end local v3           #messageUri:Landroid/net/Uri;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .end local v14           #cursor:Landroid/database/Cursor;
    :cond_2
    sget-object v2, Lcom/android/mms/spam/SpamFilter;->SPAM_SMS_CONTENT_URI:Landroid/net/Uri;

    sget-wide v5, Lcom/android/mms/ui/MessageOptions;->msgId:J

    invoke-static {v2, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 2933
    .restart local v3       #messageUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v11, v3

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .restart local v14       #cursor:Landroid/database/Cursor;
    goto/16 :goto_0

    .line 2951
    .end local v23           #isCmas:Z
    .end local v25           #threadId:J
    :catch_0
    move-exception v22

    .line 2952
    .local v22, e:Landroid/view/WindowManager$BadTokenException;
    :try_start_1
    const-string v2, "Mms/MessageOptions"

    const-string v5, "Failed view message details"

    move-object/from16 v0, v22

    invoke-static {v2, v5, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2954
    if-eqz v14, :cond_0

    goto :goto_1

    .end local v22           #e:Landroid/view/WindowManager$BadTokenException;
    :catchall_0
    move-exception v2

    if-eqz v14, :cond_3

    .line 2955
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 2954
    :cond_3
    throw v2
.end method

.method public writeFile(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)Z
    .locals 10
    .parameter "mContext"
    .parameter "msgItem"

    .prologue
    .line 2377
    const/4 v1, 0x0

    .line 2381
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/MessageOptions;->checkAvailableStorage()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_1

    .line 2408
    if-eqz v1, :cond_0

    .line 2410
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 2418
    :cond_0
    :goto_0
    const/4 v7, 0x0

    :goto_1
    return v7

    .line 2385
    :cond_1
    :try_start_2
    iget-object v7, p0, Lcom/android/mms/ui/MessageOptions;->TargetDirectory:Ljava/io/File;

    if-nez v7, :cond_2

    .line 2386
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/android/mms/ui/MessageOptions;->mTargetDirectory:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/mms/ui/MessageOptions;->TargetDirectory:Ljava/io/File;

    .line 2389
    :cond_2
    iget-object v7, p0, Lcom/android/mms/ui/MessageOptions;->TargetDirectory:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    .line 2390
    iget-object v7, p0, Lcom/android/mms/ui/MessageOptions;->TargetDirectory:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 2393
    :cond_3
    new-instance v0, Ljava/io/File;

    iget-object v7, p0, Lcom/android/mms/ui/MessageOptions;->TargetDirectory:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Lcom/android/mms/ui/MessageOptions;->getRecordFileName(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".vmg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2395
    .local v0, file:Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 2397
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_3
    new-instance v6, Lcom/android/mms/ui/VMessage;

    invoke-direct {v6, p1}, Lcom/android/mms/ui/VMessage;-><init>(Landroid/content/Context;)V

    .line 2398
    .local v6, vmg:Lcom/android/mms/ui/VMessage;
    invoke-virtual {v6, p2}, Lcom/android/mms/ui/VMessage;->createVMessage(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v4

    .line 2400
    .local v4, str:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/FileOutputStream;->write([B)V

    .line 2401
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_8

    .line 2403
    const/4 v7, 0x1

    .line 2408
    if-eqz v2, :cond_4

    .line 2410
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    :cond_4
    :goto_2
    move-object v1, v2

    .line 2403
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_1

    .line 2405
    .end local v0           #file:Ljava/io/File;
    .end local v4           #str:Ljava/lang/String;
    .end local v6           #vmg:Lcom/android/mms/ui/VMessage;
    :catch_0
    move-exception v5

    .line 2406
    .local v5, t:Ljava/lang/Throwable;
    :goto_3
    :try_start_5
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2408
    if-eqz v1, :cond_0

    .line 2410
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 2411
    :catch_1
    move-exception v3

    .line 2412
    .local v3, ie:Ljava/io/IOException;
    const-string v7, "Mms/MessageOptions"

    const-string v8, "Couldn\'t close fileoutputstream"

    .end local v5           #t:Ljava/lang/Throwable;
    :goto_4
    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2408
    .end local v3           #ie:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v1, :cond_5

    .line 2410
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 2408
    :cond_5
    :goto_6
    throw v7

    .line 2411
    :catch_2
    move-exception v3

    .line 2412
    .restart local v3       #ie:Ljava/io/IOException;
    const-string v8, "Mms/MessageOptions"

    const-string v9, "Couldn\'t close fileoutputstream"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 2413
    .end local v3           #ie:Ljava/io/IOException;
    :catch_3
    move-exception v8

    goto :goto_6

    :catch_4
    move-exception v7

    goto/16 :goto_0

    .line 2411
    :catch_5
    move-exception v3

    .line 2412
    .restart local v3       #ie:Ljava/io/IOException;
    const-string v7, "Mms/MessageOptions"

    const-string v8, "Couldn\'t close fileoutputstream"

    goto :goto_4

    .line 2411
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .end local v3           #ie:Ljava/io/IOException;
    .restart local v0       #file:Ljava/io/File;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #str:Ljava/lang/String;
    .restart local v6       #vmg:Lcom/android/mms/ui/VMessage;
    :catch_6
    move-exception v3

    .line 2412
    .restart local v3       #ie:Ljava/io/IOException;
    const-string v8, "Mms/MessageOptions"

    const-string v9, "Couldn\'t close fileoutputstream"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2413
    .end local v3           #ie:Ljava/io/IOException;
    :catch_7
    move-exception v8

    goto :goto_2

    .line 2408
    .end local v4           #str:Ljava/lang/String;
    .end local v6           #vmg:Lcom/android/mms/ui/VMessage;
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_5

    .line 2405
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_8
    move-exception v5

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_3
.end method
