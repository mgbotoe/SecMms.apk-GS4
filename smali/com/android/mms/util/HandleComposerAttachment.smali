.class public Lcom/android/mms/util/HandleComposerAttachment;
.super Ljava/lang/Object;
.source "HandleComposerAttachment.java"


# static fields
.field private static final AVATAR_SOURCE:Ljava/lang/String; = "/mnt/sdcard/message_avatar_temp.jpg"

.field private static final AVATAR_TARGET:Ljava/lang/String; = "/data/data/com.android.mms/message_avatar_temp.jpg"

.field private static final AVATAR_TARGET_URI:Ljava/lang/String; = "file:///data/data/com.android.mms/message_avatar_temp.jpg"

.field private static final AVATAR_TARGET_URI_FILENAME:Ljava/lang/String; = "message_avatar_temp.jpg"

.field private static final EXIT_ECM_RESULT:Ljava/lang/String; = "exit_ecm_result"

.field public static final REQUEST_CODE_ADDTEXT_CALENDAR:I = 0x1f

.field public static final REQUEST_CODE_ADDTEXT_CONTACT:I = 0x1d

.field public static final REQUEST_CODE_ADDTEXT_LOCATION:I = 0x23

.field public static final REQUEST_CODE_ADDTEXT_MEMO:I = 0x20

.field public static final REQUEST_CODE_ADDTEXT_NAMECARD:I = 0x1e

.field public static final REQUEST_CODE_ADDTEXT_SMEMO:I = 0x25

.field public static final REQUEST_CODE_ADDTEXT_SNOTE:I = 0x26

.field public static final REQUEST_CODE_ADDTEXT_TASK:I = 0x22

.field public static final REQUEST_CODE_ATTACH_LOCATION:I = 0x27

.field public static final REQUEST_CODE_ECM_EXIT_DIALOG:I = 0x11

.field public static final REQUEST_CODE_INSERT_TEXT:I = 0x3

.field public static final REQUEST_CODE_PICK_AVATAR:I = 0x36

.field public static final REQUEST_CODE_PICK_AVATAR_REPLACE:I = 0x37

.field public static final REQUEST_CODE_PICK_CONTACT:I = 0x13

.field public static final REQUEST_CODE_PICK_DRAWINGPAD:I = 0x33

.field public static final REQUEST_CODE_PICK_LOCATION:I = 0x24

.field public static final REQUEST_CODE_PICK_MULTI_PICTURE:I = 0x38

.field public static final REQUEST_CODE_PICK_PENMEMO:I = 0x32

.field public static final REQUEST_CODE_PICK_PICTURE:I = 0xa

.field public static final REQUEST_CODE_PICK_PICTURE_REPLACE:I = 0x29

.field public static final REQUEST_CODE_PICK_SNOTE:I = 0x35

.field public static final REQUEST_CODE_PICK_SOUND:I = 0xe

.field public static final REQUEST_CODE_PICK_SOUND_REPLACE:I = 0x2d

.field public static final REQUEST_CODE_PICK_VCAL:I = 0x1a

.field public static final REQUEST_CODE_PICK_VCARD:I = 0x14

.field public static final REQUEST_CODE_PICK_VIDEO:I = 0xc

.field public static final REQUEST_CODE_PICK_VIDEO_REPLACE:I = 0x2b

.field public static final REQUEST_CODE_PICK_VNOTE:I = 0x1b

.field public static final REQUEST_CODE_PICK_VTODO:I = 0x21

.field public static final REQUEST_CODE_RECORD_SOUND:I = 0xf

.field public static final REQUEST_CODE_RECORD_SOUND_REPLACE:I = 0x2e

.field public static final REQUEST_CODE_REPLACE_LOCATION:I = 0x28

.field public static final REQUEST_CODE_TAKE_PICTURE:I = 0xb

.field public static final REQUEST_CODE_TAKE_PICTURE_REPLACE:I = 0x2a

.field public static final REQUEST_CODE_TAKE_VIDEO:I = 0xd

.field public static final REQUEST_CODE_TAKE_VIDEO_REPLACE:I = 0x2c

.field public static final REQUEST_CODE_TRANS:I = 0x2f

.field public static final REQUEST_CODE_TRANSLATE:I = 0x4

.field public static final REQUEST_REPORT_TYPE_DELIVERY_REPORT:I = 0x1

.field public static final REQUEST_REPORT_TYPE_READ_REPORT:I = 0x2

.field public static final REQUEST_SETTINGS_RESERVE:I = 0x34

.field public static final REQUEST_SETTINGS_TRANSMIT:I = 0x39

.field private static final SCHEME_CONTENT:Ljava/lang/String; = "content"

.field private static final SCHEME_FILE:Ljava/lang/String; = "file"

.field private static final SMEMO_ADDTEXT_ACTION:Ljava/lang/String; = "intent.smemo.pick"

.field public static final SMEMO_ATTACH_ACTION:Ljava/lang/String; = "android.intent.action.PENMEMO_ATTACH"

.field private static final SNOTE_ATTACH_ACTION:Ljava/lang/String; = "android.intent.action.SNOTE_PICK"

.field private static final TAG:Ljava/lang/String; = "Mms/HandleComposerAttachment"

.field protected static mNativeAccessReturnValue:I


# instance fields
.field private final VIDEO_RESIZE_DEFAULT_RETURE_VALUE:I

.field private final VIDEO_RESIZE_LIB_ERROR_VALUE:I

.field private final VIDEO_RESIZE_MAX_DURATION:I

.field private final VIDEO_RESIZE_OUTPUT_HEIGHT:I

.field private final VIDEO_RESIZE_OUTPUT_WIDTH:I

.field private mActivity:Landroid/app/Activity;

.field private mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

.field private mDialog:Landroid/app/ProgressDialog;

.field private mHasSoundShotDialog:Landroid/app/AlertDialog;

.field private mNativeAccess:Lcom/samsung/app/share/via/external/NativeAccess;

.field private mOutFileSizeEstimated:I

.field private mVideoResizeDialog:Landroid/app/AlertDialog;

.field private mVideoResizeEditDialog:Landroid/app/AlertDialog;

.field private mVideoResizeProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 163
    const/4 v0, -0x1

    sput v0, Lcom/android/mms/util/HandleComposerAttachment;->mNativeAccessReturnValue:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 2
    .parameter "activity"
    .parameter "comp"

    .prologue
    const/4 v1, 0x0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    const v0, 0xea60

    iput v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->VIDEO_RESIZE_MAX_DURATION:I

    .line 152
    const/16 v0, 0xb0

    iput v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->VIDEO_RESIZE_OUTPUT_WIDTH:I

    .line 153
    const/16 v0, 0x90

    iput v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->VIDEO_RESIZE_OUTPUT_HEIGHT:I

    .line 154
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->VIDEO_RESIZE_DEFAULT_RETURE_VALUE:I

    .line 155
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->VIDEO_RESIZE_LIB_ERROR_VALUE:I

    .line 164
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mOutFileSizeEstimated:I

    .line 167
    iput-object p1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    .line 168
    iput-object p2, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    .line 170
    iput-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    .line 171
    iput-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mHasSoundShotDialog:Landroid/app/AlertDialog;

    .line 172
    return-void
.end method

.method static synthetic access$002(Lcom/android/mms/util/HandleComposerAttachment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mHasSoundShotDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/mms/util/HandleComposerAttachment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/mms/util/HandleComposerAttachment;Lcom/samsung/app/share/via/external/ShareviaObj;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/mms/util/HandleComposerAttachment;->nativeAccessForShareviaObj(Lcom/samsung/app/share/via/external/ShareviaObj;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/mms/util/HandleComposerAttachment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/mms/util/HandleComposerAttachment;->showVideoResizingProgressDialog()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/mms/util/HandleComposerAttachment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/mms/util/HandleComposerAttachment;->videoResizingProgress(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1402(Lcom/android/mms/util/HandleComposerAttachment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput p1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mOutFileSizeEstimated:I

    return p1
.end method

.method static synthetic access$1502(Lcom/android/mms/util/HandleComposerAttachment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/mms/util/HandleComposerAttachment;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/mms/util/HandleComposerAttachment;->getVideoFilePathFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/mms/util/HandleComposerAttachment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeEditDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/mms/util/HandleComposerAttachment;Ljava/util/ArrayList;ILandroid/net/Uri;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/util/HandleComposerAttachment;->addPickImage(Ljava/util/ArrayList;ILandroid/net/Uri;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/util/HandleComposerAttachment;)Lcom/android/mms/ui/ComposeMessageFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/util/HandleComposerAttachment;Landroid/net/Uri;IZZZLjava/lang/String;Lcom/samsung/app/share/via/external/ShareviaObj;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 90
    invoke-direct/range {p0 .. p7}, Lcom/android/mms/util/HandleComposerAttachment;->showVideoResizingDialog(Landroid/net/Uri;IZZZLjava/lang/String;Lcom/samsung/app/share/via/external/ShareviaObj;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/util/HandleComposerAttachment;Landroid/net/Uri;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/util/HandleComposerAttachment;->showVideoResizingEditDialog(Landroid/net/Uri;J)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/util/HandleComposerAttachment;Landroid/os/Handler;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/util/HandleComposerAttachment;->singleAttachMent(Landroid/os/Handler;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/util/HandleComposerAttachment;Landroid/os/Handler;Landroid/content/Intent;Landroid/os/Bundle;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/util/HandleComposerAttachment;->multiAttachMent(Landroid/os/Handler;Landroid/content/Intent;Landroid/os/Bundle;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/util/HandleComposerAttachment;)Lcom/samsung/app/share/via/external/NativeAccess;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mNativeAccess:Lcom/samsung/app/share/via/external/NativeAccess;

    return-object v0
.end method

.method private addLocation([BLjava/lang/String;Landroid/net/Uri;Z)Landroid/net/Uri;
    .locals 3
    .parameter "placeData"
    .parameter "locUrl"
    .parameter "imageUri"
    .parameter "append"

    .prologue
    .line 1250
    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/samsung/mms/location/Place;->createPlace([B)Lcom/samsung/mms/location/Place;

    move-result-object v2

    invoke-static {v1, v2, p2, p3}, Lcom/android/mms/util/HandleComposerAttachment;->getLocationUrl(Landroid/content/Context;Lcom/samsung/mms/location/Place;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 1251
    .local v0, locationUri:Landroid/net/Uri;
    return-object v0
.end method

.method private addPickImage(Ljava/util/ArrayList;ILandroid/net/Uri;Z)V
    .locals 7
    .parameter
    .parameter "uriListCount"
    .parameter "fileUri"
    .parameter "append"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;I",
            "Landroid/net/Uri;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 2504
    .local p1, uriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/android/mms/util/HandleComposerAttachment$39;

    move-object v1, p0

    move v2, p2

    move-object v3, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/util/HandleComposerAttachment$39;-><init>(Lcom/android/mms/util/HandleComposerAttachment;ILjava/util/ArrayList;Landroid/net/Uri;Z)V

    const-string v1, "addAttachment"

    invoke-direct {v6, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 2685
    return-void
.end method

.method private createFileNameForVideoResize()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2210
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2211
    .local v0, fileName:Ljava/lang/StringBuffer;
    const-string v1, "/sdcard/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2212
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 2213
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 2214
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 2215
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2216
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 2217
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 2218
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 2219
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 2220
    const-string v1, "(RESIZE).mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2222
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private createShareviaObj(Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/app/share/via/external/ShareviaObj;
    .locals 3
    .parameter "fileName"
    .parameter "filePath"
    .parameter "outputFileTimePossible"

    .prologue
    .line 2400
    const/4 v0, 0x1

    .line 2401
    .local v0, expectedResolution:I
    new-instance v1, Lcom/samsung/app/share/via/external/ShareviaObj;

    invoke-direct {v1}, Lcom/samsung/app/share/via/external/ShareviaObj;-><init>()V

    .line 2403
    .local v1, obj:Lcom/samsung/app/share/via/external/ShareviaObj;
    const/16 v2, 0xb0

    invoke-virtual {v1, v2}, Lcom/samsung/app/share/via/external/ShareviaObj;->setShareViaWidth(I)V

    .line 2404
    const/16 v2, 0x90

    invoke-virtual {v1, v2}, Lcom/samsung/app/share/via/external/ShareviaObj;->setShareViaHeight(I)V

    .line 2405
    invoke-virtual {v1, p2}, Lcom/samsung/app/share/via/external/ShareviaObj;->setShareViaInputFilename(Ljava/lang/String;)V

    .line 2406
    invoke-virtual {v1, p1}, Lcom/samsung/app/share/via/external/ShareviaObj;->setShareViaOutputFilename(Ljava/lang/String;)V

    .line 2407
    invoke-virtual {v1, v0}, Lcom/samsung/app/share/via/external/ShareviaObj;->setShareViaOutputFileResolution(I)V

    .line 2408
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/app/share/via/external/ShareviaObj;->setShareViaStartTime(I)V

    .line 2409
    invoke-virtual {v1, p3}, Lcom/samsung/app/share/via/external/ShareviaObj;->setShareViaEndTime(I)V

    .line 2410
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/app/share/via/external/ShareviaObj;->setShareViamaxDuration(I)V

    .line 2411
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v2

    div-int/lit16 v2, v2, 0x400

    invoke-virtual {v1, v2}, Lcom/samsung/app/share/via/external/ShareviaObj;->setShareViamaxSize(I)V

    .line 2412
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/samsung/app/share/via/external/ShareviaObj;->setShareViaVideoCodec(I)V

    .line 2413
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/samsung/app/share/via/external/ShareviaObj;->setShareViaAudioCodec(I)V

    .line 2415
    return-object v1
.end method

.method private getFileNameFromContentUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 2458
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2460
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 2461
    const-string v0, "Mms/HandleComposerAttachment"

    const-string v1, "cursor is null"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2490
    :goto_0
    return-object v3

    .line 2466
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2467
    :cond_1
    const-string v0, "Mms/HandleComposerAttachment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returns 0 or multiple rows."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2468
    const-string v0, "Mms/HandleComposerAttachment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cursor count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2469
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2470
    const-string v0, "Mms/HandleComposerAttachment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returns 0 or multiple rows. so just return null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2488
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2475
    :cond_2
    if-eqz p1, :cond_4

    :try_start_1
    invoke-static {p1}, Lcom/android/mms/model/ImageModel;->isMmsUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2476
    const-string v0, "fn"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2477
    .local v8, filePath:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2478
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 2488
    :cond_3
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v3, v8

    .line 2490
    goto/16 :goto_0

    .line 2481
    .end local v8           #filePath:Ljava/lang/String;
    :cond_4
    if-eqz p1, :cond_5

    :try_start_2
    invoke-static {p1}, Lcom/android/mms/util/HandleComposerAttachment;->isMediaUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2482
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .restart local v8       #filePath:Ljava/lang/String;
    goto :goto_1

    .line 2484
    .end local v8           #filePath:Ljava/lang/String;
    :cond_5
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    .restart local v8       #filePath:Ljava/lang/String;
    goto :goto_1

    .line 2488
    .end local v8           #filePath:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getLocationUrl(Landroid/content/Context;Lcom/samsung/mms/location/Place;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 7
    .parameter "paramContext"
    .parameter "paramPlace"
    .parameter "paramString"
    .parameter "paramUri"

    .prologue
    .line 2171
    const/4 v2, 0x0

    .line 2173
    .local v2, localFileOutputStream:Ljava/io/FileOutputStream;
    :try_start_0
    const-string v4, "vcard.vcf"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 2175
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, p2, v4}, Lcom/samsung/mms/model/LocationVcardModel;->packlocationData(Lcom/samsung/mms/location/Place;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2176
    .local v3, vCardString:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 2177
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 2179
    :cond_0
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 2180
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "vcard.vcf"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 2185
    if-eqz v2, :cond_1

    .line 2187
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2193
    .end local v3           #vCardString:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v4

    .line 2188
    .restart local v3       #vCardString:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2189
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 2181
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #vCardString:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 2182
    .local v1, localException:Ljava/lang/Exception;
    :try_start_2
    const-string v4, "LocationUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createVCardUri() - error writing out the vcardfile. Details: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2183
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2185
    if-eqz v2, :cond_2

    .line 2187
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 2193
    :cond_2
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 2188
    :catch_2
    move-exception v0

    .line 2189
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 2185
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #localException:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_3

    .line 2187
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 2190
    :cond_3
    :goto_2
    throw v4

    .line 2188
    :catch_3
    move-exception v0

    .line 2189
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private getOutputFileDurationPossible(Ljava/lang/String;)I
    .locals 6
    .parameter "filePath"

    .prologue
    .line 2392
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mNativeAccess:Lcom/samsung/app/share/via/external/NativeAccess;

    if-nez v0, :cond_0

    .line 2393
    new-instance v0, Lcom/samsung/app/share/via/external/NativeAccess;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/app/share/via/external/NativeAccess;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mNativeAccess:Lcom/samsung/app/share/via/external/NativeAccess;

    .line 2395
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->mmsMessageSize()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit16 v2, v0, 0x400

    .line 2396
    .local v2, outputSize:I
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mNativeAccess:Lcom/samsung/app/share/via/external/NativeAccess;

    const/16 v3, 0xb0

    const/16 v4, 0x90

    const/4 v5, 0x5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/app/share/via/external/NativeAccess;->getInputParamerterAnalysis(Ljava/lang/String;IIII)I

    move-result v0

    return v0
.end method

.method private getVideoFileDurationTime(Ljava/lang/String;)I
    .locals 8
    .parameter "filePath"

    .prologue
    const/4 v6, -0x1

    .line 2419
    const/4 v0, 0x0

    .line 2420
    .local v0, duration:I
    if-nez p1, :cond_1

    .line 2453
    :cond_0
    :goto_0
    return v6

    .line 2424
    :cond_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2426
    .local v5, targetFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2430
    new-instance v4, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v4}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 2431
    .local v4, retriever:Landroid/media/MediaMetadataRetriever;
    const/4 v2, 0x0

    .line 2434
    .local v2, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 2435
    .end local v2           #fis:Ljava/io/FileInputStream;
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    .line 2444
    if-eqz v3, :cond_2

    .line 2445
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    move-object v2, v3

    .line 2451
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :cond_3
    :goto_1
    const/16 v6, 0x9

    invoke-virtual {v4, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v6, v0

    .line 2453
    goto :goto_0

    .line 2447
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 2448
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 2450
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_1

    .line 2436
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 2437
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2444
    if-eqz v2, :cond_3

    .line 2445
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 2447
    :catch_2
    move-exception v1

    .line 2448
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 2438
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 2439
    .local v1, e:Ljava/lang/IllegalArgumentException;
    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2444
    if-eqz v2, :cond_3

    .line 2445
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 2447
    :catch_4
    move-exception v1

    .line 2448
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 2440
    .end local v1           #e:Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 2441
    .restart local v1       #e:Ljava/io/IOException;
    :goto_4
    :try_start_7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2444
    if-eqz v2, :cond_3

    .line 2445
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_1

    .line 2447
    :catch_6
    move-exception v1

    .line 2448
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 2443
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 2444
    :goto_5
    if-eqz v2, :cond_4

    .line 2445
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 2449
    :cond_4
    :goto_6
    throw v6

    .line 2447
    :catch_7
    move-exception v1

    .line 2448
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 2443
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_5

    .line 2440
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_8
    move-exception v1

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_4

    .line 2438
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_9
    move-exception v1

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .line 2436
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_a
    move-exception v1

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private getVideoFilePathFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .parameter "uri"

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 2367
    const/4 v6, 0x0

    .line 2368
    .local v6, columnIndex:I
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v9

    .line 2369
    .local v2, filePathColumn:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2371
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 2380
    :goto_0
    return-object v3

    .line 2375
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2376
    aget-object v0, v2, v9

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 2377
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2378
    .local v8, filePath:Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v3, v8

    .line 2380
    goto :goto_0
.end method

.method private getVideoFileSize(Ljava/lang/String;)I
    .locals 3
    .parameter "filePath"

    .prologue
    .line 2384
    if-nez p1, :cond_0

    .line 2385
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v1

    .line 2388
    :goto_0
    return v1

    .line 2387
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2388
    .local v0, targetFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v1, v1

    goto :goto_0
.end method

.method private static isMediaUri(Landroid/net/Uri;)Z
    .locals 3
    .parameter "uri"

    .prologue
    .line 2494
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 2495
    .local v0, authority:Ljava/lang/String;
    const-string v1, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2497
    const/4 v1, 0x1

    .line 2499
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private multiAttachMent(Landroid/os/Handler;Landroid/content/Intent;Landroid/os/Bundle;I)V
    .locals 9
    .parameter "handler"
    .parameter "intent"
    .parameter "extras"
    .parameter "importCount"

    .prologue
    .line 2737
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2738
    .local v3, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    move v2, p4

    .line 2740
    .local v2, numberToImport:I
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    .line 2741
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0c0178

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2742
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    sget-object v1, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 2744
    new-instance v5, Lcom/android/mms/util/HandleComposerAttachment$41;

    invoke-direct {v5, p0}, Lcom/android/mms/util/HandleComposerAttachment$41;-><init>(Lcom/android/mms/util/HandleComposerAttachment;)V

    .line 2750
    .local v5, showProgress:Ljava/lang/Runnable;
    new-instance v6, Lcom/android/mms/util/HandleComposerAttachment$42;

    invoke-direct {v6, p0, p2}, Lcom/android/mms/util/HandleComposerAttachment$42;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/content/Intent;)V

    .line 2764
    .local v6, dismissProgress:Ljava/lang/Runnable;
    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v5, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2766
    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/android/mms/util/HandleComposerAttachment$43;

    move-object v1, p0

    move-object v4, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/util/HandleComposerAttachment$43;-><init>(Lcom/android/mms/util/HandleComposerAttachment;ILjava/util/ArrayList;Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/content/Intent;)V

    const-string v1, "addAttachment"

    invoke-direct {v8, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 2870
    return-void
.end method

.method private nativeAccessForShareviaObj(Lcom/samsung/app/share/via/external/ShareviaObj;)V
    .locals 1
    .parameter "obj"

    .prologue
    .line 2202
    new-instance v0, Lcom/android/mms/util/HandleComposerAttachment$32;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/util/HandleComposerAttachment$32;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Lcom/samsung/app/share/via/external/ShareviaObj;)V

    invoke-virtual {v0}, Lcom/android/mms/util/HandleComposerAttachment$32;->start()V

    .line 2207
    return-void
.end method

.method private resizeImage(Lcom/google/android/mms/pdu/PduPart;ZZZ)I
    .locals 20
    .parameter "part"
    .parameter "append"
    .parameter "sendMultiple"
    .parameter "wasMms"

    .prologue
    .line 1331
    const-string v2, "Mms/HandleComposerAttachment"

    const-string v3, "onResizeResult()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    if-nez p1, :cond_1

    .line 1334
    const/4 v3, -0x1

    const v4, 0x7f0c00bf

    const/4 v5, 0x0

    const/16 v6, 0xa

    move-object/from16 v2, p0

    move/from16 v7, p3

    move/from16 v8, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/mms/util/HandleComposerAttachment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    .line 1336
    const/4 v8, -0x1

    .line 1395
    :cond_0
    :goto_0
    return v8

    .line 1339
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    .line 1340
    .local v15, context:Landroid/content/Context;
    invoke-static {v15}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v19

    .line 1342
    .local v19, persister:Lcom/google/android/mms/pdu/PduPersister;
    const/4 v6, 0x0

    .line 1343
    .local v6, dataUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->getMessageUri()Landroid/net/Uri;

    move-result-object v18

    .line 1344
    .local v18, messageUri:Landroid/net/Uri;
    if-nez v18, :cond_2

    .line 1345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    move-result-object v18

    .line 1346
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1347
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v2, :cond_2

    .line 1348
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/mms/ui/MessageListAdapter;->setWorkingMessageUri(Landroid/net/Uri;)V

    .line 1352
    :cond_2
    if-nez v18, :cond_7

    .line 1353
    :try_start_0
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string v3, "messageUri is NULL : Unknown Parameter!!!"

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1362
    :catch_0
    move-exception v16

    .line 1363
    .local v16, e:Lcom/google/android/mms/MmsException;
    const-string v2, "Mms/HandleComposerAttachment"

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/MmsException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    const/4 v8, -0x1

    .line 1369
    .end local v16           #e:Lcom/google/android/mms/MmsException;
    .local v8, result:I
    :cond_3
    :goto_1
    if-nez v8, :cond_4

    .line 1370
    move/from16 v14, p3

    .line 1371
    .local v14, bsendMultiple:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2, v14}, Lcom/android/mms/ui/ComposeMessageFragment;->onAttachmentChanged(Z)V

    .line 1374
    .end local v14           #bsendMultiple:Z
    :cond_4
    const v9, 0x7f0c00bf

    const/16 v11, 0xa

    move-object/from16 v7, p0

    move-object v10, v6

    move/from16 v12, p3

    move/from16 v13, p2

    invoke-virtual/range {v7 .. v13}, Lcom/android/mms/util/HandleComposerAttachment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    .line 1376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/mms/ui/ComposeMessageFragment;->isResizingImage:Z

    .line 1378
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1379
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    move-result-object v18

    .line 1380
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v2, :cond_5

    .line 1381
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/mms/ui/MessageListAdapter;->setWorkingMessageUri(Landroid/net/Uri;)V

    .line 1387
    :cond_5
    :goto_2
    sget-boolean v2, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v2, :cond_6

    .line 1388
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    .line 1391
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v17

    .line 1392
    .local v17, isMms:Z
    if-nez p4, :cond_0

    if-eqz v17, :cond_0

    .line 1393
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/16 v3, 0x20

    move/from16 v0, v17

    invoke-virtual {v2, v0, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->onProtocolChanged(ZI)V

    goto/16 :goto_0

    .line 1355
    .end local v8           #result:I
    .end local v17           #isMms:Z
    :cond_7
    :try_start_1
    invoke-static/range {v18 .. v18}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    const/4 v5, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/google/android/mms/pdu/PduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;JLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v6

    .line 1356
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getMmsRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v4

    .line 1357
    .local v4, location:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x1

    const/4 v8, 0x0

    move/from16 v7, p2

    move/from16 v9, p3

    invoke-virtual/range {v2 .. v9}, Lcom/android/mms/data/WorkingMessage;->setAttachment(Landroid/content/ContentResolver;IILandroid/net/Uri;ZZZ)I

    move-result v8

    .line 1359
    .restart local v8       #result:I
    const-string v2, "Mms:app"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1360
    const-string v2, "Mms/HandleComposerAttachment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ResizeImageResultCallback: dataUri="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 1365
    .end local v4           #location:I
    .end local v8           #result:I
    :catch_1
    move-exception v16

    .line 1366
    .local v16, e:Ljava/lang/NullPointerException;
    const-string v2, "Mms/HandleComposerAttachment"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    const/4 v8, -0x1

    .restart local v8       #result:I
    goto/16 :goto_1

    .line 1384
    .end local v16           #e:Ljava/lang/NullPointerException;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    goto/16 :goto_2
.end method

.method private showVideoResizingDialog(Landroid/net/Uri;IZZZLjava/lang/String;Lcom/samsung/app/share/via/external/ShareviaObj;)V
    .locals 13
    .parameter "uri"
    .parameter "location"
    .parameter "flagCRMode"
    .parameter "sendMultiple"
    .parameter "append"
    .parameter "fileName"
    .parameter "obj"

    .prologue
    .line 2281
    invoke-direct {p0, p1}, Lcom/android/mms/util/HandleComposerAttachment;->getVideoFilePathFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 2282
    .local v3, mFilePathFromUri:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2284
    .local v6, outPutFilePath:Ljava/lang/String;
    new-instance v11, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-direct {v11, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2285
    .local v11, b:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c041d

    invoke-virtual {v11, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2286
    const v1, 0x7f0c041c

    invoke-virtual {v11, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2288
    const v12, 0x7f0c004f

    new-instance v1, Lcom/android/mms/util/HandleComposerAttachment$35;

    move-object v2, p0

    move-object/from16 v4, p7

    move-object/from16 v5, p6

    move v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-direct/range {v1 .. v10}, Lcom/android/mms/util/HandleComposerAttachment$35;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Ljava/lang/String;Lcom/samsung/app/share/via/external/ShareviaObj;Ljava/lang/String;Ljava/lang/String;IZZZ)V

    invoke-virtual {v11, v12, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2315
    const v1, 0x7f0c0050

    const/4 v2, 0x0

    invoke-virtual {v11, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2316
    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeDialog:Landroid/app/AlertDialog;

    .line 2317
    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/mms/util/HandleComposerAttachment$36;

    invoke-direct {v2, p0}, Lcom/android/mms/util/HandleComposerAttachment$36;-><init>(Lcom/android/mms/util/HandleComposerAttachment;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2322
    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeDialog:Landroid/app/AlertDialog;

    sget-object v2, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 2323
    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 2324
    return-void
.end method

.method private showVideoResizingEditDialog(Landroid/net/Uri;J)V
    .locals 3
    .parameter "uri"
    .parameter "outputSize"

    .prologue
    .line 2327
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2328
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c041d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2329
    const v1, 0x7f0c043a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2330
    const v1, 0x7f0c004f

    new-instance v2, Lcom/android/mms/util/HandleComposerAttachment$37;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/mms/util/HandleComposerAttachment$37;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/net/Uri;J)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2354
    const v1, 0x7f0c0050

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2355
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeEditDialog:Landroid/app/AlertDialog;

    .line 2356
    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeEditDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/mms/util/HandleComposerAttachment$38;

    invoke-direct {v2, p0}, Lcom/android/mms/util/HandleComposerAttachment$38;-><init>(Lcom/android/mms/util/HandleComposerAttachment;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2361
    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeEditDialog:Landroid/app/AlertDialog;

    sget-object v2, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 2362
    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeEditDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 2363
    return-void
.end method

.method private showVideoResizingProgressDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2226
    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2227
    .local v0, res:Landroid/content/res/Resources;
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    .line 2228
    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    const v2, 0x7f0c041e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2229
    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 2230
    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 2231
    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    iget v2, p0, Lcom/android/mms/util/HandleComposerAttachment;->mOutFileSizeEstimated:I

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 2232
    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 2233
    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 2234
    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/android/mms/util/HandleComposerAttachment$33;

    invoke-direct {v2, p0}, Lcom/android/mms/util/HandleComposerAttachment$33;-><init>(Lcom/android/mms/util/HandleComposerAttachment;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2239
    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 2240
    return-void
.end method

.method private singleAttachMent(Landroid/os/Handler;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 8
    .parameter "handler"
    .parameter "intent"
    .parameter "extras"

    .prologue
    .line 2688
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 2689
    .local v3, uri:Landroid/net/Uri;
    const-string v0, "vcard"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2691
    .local v4, extrastring:Ljava/lang/String;
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/android/mms/util/HandleComposerAttachment$40;

    move-object v1, p0

    move-object v2, p2

    move-object v5, p3

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/util/HandleComposerAttachment$40;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Handler;)V

    const-string v1, "addAttachment"

    invoke-direct {v7, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 2733
    return-void
.end method

.method private videoResizingProgress(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "fileName"
    .parameter "mFilePathFromUri"

    .prologue
    .line 2243
    const/4 v2, 0x0

    .line 2244
    .local v2, outPutFileSize:I
    iget v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mOutFileSizeEstimated:I

    .line 2248
    .local v1, maximumFileSize:I
    :goto_0
    iget-object v3, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    if-nez v3, :cond_1

    .line 2276
    :goto_1
    iget-object v3, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_0

    .line 2277
    iget-object v3, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2278
    :cond_0
    return-void

    .line 2251
    :cond_1
    sget v3, Lcom/android/mms/util/HandleComposerAttachment;->mNativeAccessReturnValue:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 2253
    sget v3, Lcom/android/mms/util/HandleComposerAttachment;->mNativeAccessReturnValue:I

    if-nez v3, :cond_2

    .line 2254
    iget-object v3, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    new-instance v4, Lcom/android/mms/util/HandleComposerAttachment$34;

    invoke-direct {v4, p0}, Lcom/android/mms/util/HandleComposerAttachment$34;-><init>(Lcom/android/mms/util/HandleComposerAttachment;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 2263
    :cond_2
    iget-object v3, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    goto :goto_1

    .line 2266
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/mms/util/HandleComposerAttachment;->getVideoFileSize(Ljava/lang/String;)I

    move-result v2

    .line 2267
    iget-object v3, p0, Lcom/android/mms/util/HandleComposerAttachment;->mVideoResizeProgressDialog:Landroid/app/ProgressDialog;

    div-int/lit16 v4, v2, 0x400

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 2268
    const-string v3, "Mms/HandleComposerAttachment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resizing video size ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2270
    const-wide/16 v3, 0x32

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2271
    :catch_0
    move-exception v0

    .line 2272
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public HandleMultiAttachmentFromIntent(Landroid/os/Handler;Landroid/content/Intent;Landroid/os/Bundle;)Z
    .locals 26
    .parameter "handler"
    .parameter "intent"
    .parameter "extras"

    .prologue
    .line 2087
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v23

    .line 2088
    .local v23, slideShow:Lcom/android/mms/model/SlideshowModel;
    const-string v4, "android.intent.extra.STREAM"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v24

    .line 2089
    .local v24, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    if-eqz v23, :cond_0

    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v11

    .line 2091
    .local v11, currentSlideCount:I
    :goto_0
    if-nez v24, :cond_1

    .line 2092
    const/4 v4, 0x0

    .line 2167
    :goto_1
    return v4

    .line 2089
    .end local v11           #currentSlideCount:I
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .line 2096
    .restart local v11       #currentSlideCount:I
    :cond_1
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 2097
    .local v14, importCount:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSlideCount()I

    move-result v17

    .line 2099
    .local v17, maxSlideCount:I
    add-int v4, v14, v11

    move/from16 v0, v17

    if-le v4, v0, :cond_2

    .line 2100
    sub-int v4, v17, v11

    invoke-static {v4, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 2101
    if-nez v14, :cond_8

    .line 2102
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v6, 0x7f0c0045

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 2110
    :cond_2
    :goto_2
    const/4 v12, 0x0

    .line 2111
    .local v12, filepath:Ljava/lang/String;
    const/4 v13, 0x0

    .line 2114
    .local v13, hasSoundShot:Z
    const/16 v16, 0x0

    .local v16, j:I
    :goto_3
    move/from16 v0, v16

    if-ge v0, v14, :cond_5

    .line 2115
    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/net/Uri;

    .line 2116
    .local v21, selectedImageUri:Landroid/net/Uri;
    if-eqz v21, :cond_3

    .line 2117
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->getFileNameFromContentUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v12

    .line 2118
    :cond_3
    const/16 v20, 0x0

    .line 2119
    .local v20, qdioData:Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;
    if-eqz v12, :cond_4

    .line 2120
    invoke-static {v12}, Lcom/quramsoft/qdio/QdioJNI;->checkAudioInJPEG(Ljava/lang/String;)Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;

    move-result-object v20

    .line 2122
    :cond_4
    if-eqz v20, :cond_9

    .line 2123
    const/4 v13, 0x1

    .line 2128
    .end local v20           #qdioData:Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;
    .end local v21           #selectedImageUri:Landroid/net/Uri;
    :cond_5
    if-eqz v13, :cond_a

    .line 2129
    move v9, v14

    .line 2130
    .local v9, import_count:I
    new-instance v10, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-direct {v10, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2131
    .local v10, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0c041d

    invoke-virtual {v10, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2132
    const v4, 0x7f0c041f

    invoke-virtual {v10, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2133
    const v4, 0x7f0c00e9

    new-instance v5, Lcom/android/mms/util/HandleComposerAttachment$30;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/mms/util/HandleComposerAttachment$30;-><init>(Lcom/android/mms/util/HandleComposerAttachment;)V

    invoke-virtual {v10, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2138
    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mHasSoundShotDialog:Landroid/app/AlertDialog;

    .line 2139
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mHasSoundShotDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 2140
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mHasSoundShotDialog:Landroid/app/AlertDialog;

    sget-object v5, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 2141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/HandleComposerAttachment;->mHasSoundShotDialog:Landroid/app/AlertDialog;

    move-object/from16 v25, v0

    new-instance v4, Lcom/android/mms/util/HandleComposerAttachment$31;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/mms/util/HandleComposerAttachment$31;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/os/Handler;Landroid/content/Intent;Landroid/os/Bundle;I)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2151
    .end local v9           #import_count:I
    .end local v10           #builder:Landroid/app/AlertDialog$Builder;
    :goto_4
    const-string v4, "android.intent.extra.SUBJECT"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "android.intent.extra.TEXT"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2152
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v19

    .line 2153
    .local v19, prefs:Landroid/content/SharedPreferences;
    const-string v4, "pref_key_signature_text"

    const-string v5, ""

    move-object/from16 v0, v19

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 2154
    .local v22, signature:Ljava/lang/String;
    const-string v4, "pref_key_enable_signature"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .line 2156
    .local v15, isSignatureEnabled:Z
    const-string v4, "\n"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "android.intent.extra.SUBJECT"

    const-string v8, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "android.intent.extra.TEXT"

    const-string v8, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/android/mms/ui/MessageUtils;->joinContents(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2161
    .local v18, msgBody:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v4

    if-eqz v4, :cond_b

    if-eqz v15, :cond_b

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    .line 2162
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->refreshSignatureInEditor(Ljava/lang/String;)V

    .line 2167
    .end local v15           #isSignatureEnabled:Z
    .end local v18           #msgBody:Ljava/lang/String;
    .end local v19           #prefs:Landroid/content/SharedPreferences;
    .end local v22           #signature:Ljava/lang/String;
    :cond_7
    :goto_5
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 2105
    .end local v12           #filepath:Ljava/lang/String;
    .end local v13           #hasSoundShot:Z
    .end local v16           #j:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v6, 0x7f0c0044

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v7, v8

    const/4 v8, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 2114
    .restart local v12       #filepath:Ljava/lang/String;
    .restart local v13       #hasSoundShot:Z
    .restart local v16       #j:I
    .restart local v20       #qdioData:Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;
    .restart local v21       #selectedImageUri:Landroid/net/Uri;
    :cond_9
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_3

    .line 2148
    .end local v20           #qdioData:Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;
    .end local v21           #selectedImageUri:Landroid/net/Uri;
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v14}, Lcom/android/mms/util/HandleComposerAttachment;->multiAttachMent(Landroid/os/Handler;Landroid/content/Intent;Landroid/os/Bundle;I)V

    goto/16 :goto_4

    .line 2164
    .restart local v15       #isSignatureEnabled:Z
    .restart local v18       #msgBody:Ljava/lang/String;
    .restart local v19       #prefs:Landroid/content/SharedPreferences;
    .restart local v22       #signature:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->addText(Ljava/lang/String;)Z

    goto :goto_5
.end method

.method public HandleSingleAttachMentFromIntent(Landroid/os/Handler;Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/SharedPreferences;)Z
    .locals 17
    .parameter "handler"
    .parameter "intent"
    .parameter "extras"
    .parameter "prefs"

    .prologue
    .line 1988
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v10

    .line 1989
    .local v10, type:Ljava/lang/String;
    const-string v12, "android.intent.extra.STREAM"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1990
    new-instance v12, Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-direct {v12, v13}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    .line 1991
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v14, 0x7f0c0178

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1992
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    sget-object v13, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v12, v13}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1993
    const-string v12, "android.intent.extra.STREAM"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/net/Uri;

    .line 1995
    .local v11, uri:Landroid/net/Uri;
    const/4 v5, 0x0

    .line 1996
    .local v5, filepath:Ljava/lang/String;
    const/4 v8, 0x0

    .line 1998
    .local v8, qdioData:Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;
    if-eqz v10, :cond_0

    const-string v12, "image/"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1999
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/mms/util/HandleComposerAttachment;->getFileNameFromContentUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 2000
    if-eqz v5, :cond_0

    .line 2001
    invoke-static {v5}, Lcom/quramsoft/qdio/QdioJNI;->checkAudioInJPEG(Ljava/lang/String;)Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;

    move-result-object v8

    .line 2005
    :cond_0
    if-eqz v8, :cond_4

    .line 2006
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, v12}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2007
    .local v4, builder:Landroid/app/AlertDialog$Builder;
    const v12, 0x7f0c041d

    invoke-virtual {v4, v12}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2008
    const v12, 0x7f0c041f

    invoke-virtual {v4, v12}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2009
    const v12, 0x7f0c00e9

    new-instance v13, Lcom/android/mms/util/HandleComposerAttachment$27;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/mms/util/HandleComposerAttachment$27;-><init>(Lcom/android/mms/util/HandleComposerAttachment;)V

    invoke-virtual {v4, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2014
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/mms/util/HandleComposerAttachment;->mHasSoundShotDialog:Landroid/app/AlertDialog;

    .line 2015
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/util/HandleComposerAttachment;->mHasSoundShotDialog:Landroid/app/AlertDialog;

    invoke-virtual {v12}, Landroid/app/AlertDialog;->show()V

    .line 2016
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/util/HandleComposerAttachment;->mHasSoundShotDialog:Landroid/app/AlertDialog;

    sget-object v13, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 2017
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/util/HandleComposerAttachment;->mHasSoundShotDialog:Landroid/app/AlertDialog;

    new-instance v13, Lcom/android/mms/util/HandleComposerAttachment$28;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v13, v0, v1, v2, v3}, Lcom/android/mms/util/HandleComposerAttachment$28;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/os/Handler;Landroid/content/Intent;Landroid/os/Bundle;)V

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2030
    .end local v4           #builder:Landroid/app/AlertDialog$Builder;
    .end local v5           #filepath:Ljava/lang/String;
    .end local v8           #qdioData:Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;
    .end local v11           #uri:Landroid/net/Uri;
    :cond_1
    :goto_0
    const-string v12, "android.intent.extra.SUBJECT"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    const-string v12, "android.intent.extra.TEXT"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 2032
    :cond_2
    const-string v12, "pref_key_signature_text"

    const-string v13, ""

    move-object/from16 v0, p4

    invoke-interface {v0, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2033
    .local v9, signature:Ljava/lang/String;
    const-string v12, "pref_key_enable_signature"

    const/4 v13, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 2035
    .local v6, isSignatureEnabled:Z
    const-string v12, "\n"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "android.intent.extra.SUBJECT"

    const-string v16, ""

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const-string v15, "android.intent.extra.TEXT"

    const-string v16, ""

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/android/mms/ui/MessageUtils;->joinContents(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2040
    .local v7, msgBody:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v12

    if-eqz v12, :cond_5

    if-eqz v6, :cond_5

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_5

    .line 2041
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v12, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->refreshSignatureInEditor(Ljava/lang/String;)V

    .line 2046
    .end local v6           #isSignatureEnabled:Z
    .end local v7           #msgBody:Ljava/lang/String;
    .end local v9           #signature:Ljava/lang/String;
    :cond_3
    :goto_1
    const/4 v12, 0x1

    return v12

    .line 2025
    .restart local v5       #filepath:Ljava/lang/String;
    .restart local v8       #qdioData:Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;
    .restart local v11       #uri:Landroid/net/Uri;
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v12}, Landroid/app/ProgressDialog;->show()V

    .line 2026
    invoke-direct/range {p0 .. p3}, Lcom/android/mms/util/HandleComposerAttachment;->singleAttachMent(Landroid/os/Handler;Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    .line 2043
    .end local v5           #filepath:Ljava/lang/String;
    .end local v8           #qdioData:Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;
    .end local v11           #uri:Landroid/net/Uri;
    .restart local v6       #isSignatureEnabled:Z
    .restart local v7       #msgBody:Ljava/lang/String;
    .restart local v9       #signature:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/mms/util/HandleComposerAttachment;->addText(Ljava/lang/String;)Z

    goto :goto_1
.end method

.method public addAudio(Landroid/net/Uri;IZZZ)I
    .locals 8
    .parameter "uri"
    .parameter "location"
    .parameter "flagCRMode"
    .parameter "sendMultiple"
    .parameter "append"

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x3

    move v2, p2

    move-object v4, p1

    move v5, p5

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/data/WorkingMessage;->setAttachment(Landroid/content/ContentResolver;IILandroid/net/Uri;ZZZ)I

    move-result v1

    .line 1181
    .local v1, result:I
    const v2, 0x7f0c00be

    const/16 v4, 0xe

    move-object v0, p0

    move-object v3, p1

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/mms/util/HandleComposerAttachment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    .line 1183
    return v1
.end method

.method public addImage(Landroid/net/Uri;IZZZ)I
    .locals 22
    .parameter "uri"
    .parameter "location"
    .parameter "flagCRMode"
    .parameter "sendMultiple"
    .parameter "append"

    .prologue
    .line 1061
    const-string v5, "Mms:app"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1062
    const-string v5, "Mms/HandleComposerAttachment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addImage: uri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    :cond_0
    const/4 v13, 0x0

    .line 1067
    .local v13, c:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p1

    invoke-static/range {v5 .. v11}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1069
    if-nez v13, :cond_3

    const-string v5, "content"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "content"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "file"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1071
    :cond_1
    const/4 v6, -0x1

    const v7, 0x7f0c00bf

    const/4 v8, 0x0

    const/16 v9, 0xa

    move-object/from16 v5, p0

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-virtual/range {v5 .. v11}, Lcom/android/mms/util/HandleComposerAttachment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    .line 1073
    const-string v5, "Mms/HandleComposerAttachment"

    const-string v6, "Cursor is null or invalid uri enter"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1074
    const/16 v19, -0x1

    .line 1077
    if-eqz v13, :cond_2

    .line 1078
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1126
    :cond_2
    :goto_0
    return v19

    .line 1077
    :cond_3
    if-eqz v13, :cond_4

    .line 1078
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1082
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v21

    .line 1083
    .local v21, wasMms:Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v8, 0x1

    move/from16 v7, p2

    move-object/from16 v9, p1

    move/from16 v10, p5

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-virtual/range {v5 .. v12}, Lcom/android/mms/data/WorkingMessage;->setAttachment(Landroid/content/ContentResolver;IILandroid/net/Uri;ZZZ)I

    move-result v19

    .line 1086
    .local v19, result:I
    const/4 v5, -0x4

    move/from16 v0, v19

    if-eq v0, v5, :cond_5

    const/4 v5, -0x2

    move/from16 v0, v19

    if-eq v0, v5, :cond_5

    const/4 v5, -0x8

    move/from16 v0, v19

    if-ne v0, v5, :cond_a

    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lcom/android/mms/ui/MessageUtils;->isAnimatedImage(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 1091
    if-nez p4, :cond_6

    .line 1092
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    new-instance v6, Lcom/android/mms/util/HandleComposerAttachment$16;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/mms/util/HandleComposerAttachment$16;-><init>(Lcom/android/mms/util/HandleComposerAttachment;)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1098
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v20

    .line 1099
    .local v20, sizeLimit:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 1100
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->getRemainContentsSize()I

    move-result v20

    .line 1103
    :cond_7
    :try_start_1
    new-instance v16, Lcom/android/mms/ui/UriImage;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v5, v1}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1104
    .local v16, image:Lcom/android/mms/ui/UriImage;
    new-instance v18, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct/range {v18 .. v18}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 1105
    .local v18, part:Lcom/google/android/mms/pdu/PduPart;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/android/mms/model/CarrierContentRestriction;->getMmsCreationMode(Landroid/content/Context;)I

    move-result v14

    .line 1106
    .local v14, creationMode:I
    if-nez v14, :cond_9

    .line 1107
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageWidthRestrictedMode()I

    move-result v5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageHeightRestrictedMode()I

    move-result v6

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v5, v6, v1}, Lcom/android/mms/ui/UriImage;->getResizedImageAsPart(III)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v18

    .line 1113
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, p5

    move/from16 v3, p4

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/util/HandleComposerAttachment;->resizeImage(Lcom/google/android/mms/pdu/PduPart;ZZZ)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v19

    goto/16 :goto_0

    .line 1077
    .end local v14           #creationMode:I
    .end local v16           #image:Lcom/android/mms/ui/UriImage;
    .end local v18           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v19           #result:I
    .end local v20           #sizeLimit:I
    .end local v21           #wasMms:Z
    :catchall_0
    move-exception v5

    if-eqz v13, :cond_8

    .line 1078
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v5

    .line 1110
    .restart local v14       #creationMode:I
    .restart local v16       #image:Lcom/android/mms/ui/UriImage;
    .restart local v18       #part:Lcom/google/android/mms/pdu/PduPart;
    .restart local v19       #result:I
    .restart local v20       #sizeLimit:I
    .restart local v21       #wasMms:Z
    :cond_9
    :try_start_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageWidth()I

    move-result v5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageHeight()I

    move-result v6

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v5, v6, v1}, Lcom/android/mms/ui/UriImage;->getResizedImageAsPart(III)Lcom/google/android/mms/pdu/PduPart;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v18

    goto :goto_1

    .line 1114
    .end local v14           #creationMode:I
    .end local v16           #image:Lcom/android/mms/ui/UriImage;
    .end local v18           #part:Lcom/google/android/mms/pdu/PduPart;
    :catch_0
    move-exception v15

    .line 1115
    .local v15, e:Ljava/lang/IllegalArgumentException;
    const/4 v6, -0x1

    const v7, 0x7f0c00bf

    const/16 v9, 0xa

    move-object/from16 v5, p0

    move-object/from16 v8, p1

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-virtual/range {v5 .. v11}, Lcom/android/mms/util/HandleComposerAttachment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    goto/16 :goto_0

    .line 1119
    .end local v15           #e:Ljava/lang/IllegalArgumentException;
    .end local v20           #sizeLimit:I
    :cond_a
    const v7, 0x7f0c00bf

    const/16 v9, 0xa

    move-object/from16 v5, p0

    move/from16 v6, v19

    move-object/from16 v8, p1

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-virtual/range {v5 .. v11}, Lcom/android/mms/util/HandleComposerAttachment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    .line 1121
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v17

    .line 1122
    .local v17, isMms:Z
    if-nez v21, :cond_2

    if-eqz v17, :cond_2

    .line 1123
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->vibrateChangingMms()V

    goto/16 :goto_0
.end method

.method public addMedia(ILandroid/net/Uri;ZZZ)I
    .locals 11
    .parameter "type"
    .parameter "fileUri"
    .parameter "append"
    .parameter "sendMultiple"
    .parameter "saveMms"

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getMmsRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v2

    .line 1016
    .local v2, location:I
    const/4 v10, -0x1

    .line 1018
    .local v10, result:I
    packed-switch p1, :pswitch_data_0

    .line 1043
    :goto_0
    :pswitch_0
    if-nez p5, :cond_0

    if-nez p4, :cond_2

    .line 1044
    :cond_0
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1045
    const/4 v9, 0x0

    .line 1046
    .local v9, messageUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    move-result-object v9

    .line 1047
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1048
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v0, :cond_1

    .line 1049
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0, v9}, Lcom/android/mms/ui/MessageListAdapter;->setWorkingMessageUri(Landroid/net/Uri;)V

    .line 1052
    :cond_1
    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_2

    .line 1053
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    .line 1057
    .end local v9           #messageUri:Landroid/net/Uri;
    :cond_2
    return v10

    .line 1020
    :pswitch_1
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p2

    move v4, p4

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/util/HandleComposerAttachment;->addImage(Landroid/net/Uri;IZZZ)I

    move-result v10

    .line 1021
    goto :goto_0

    .line 1023
    :pswitch_2
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p2

    move v4, p4

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/util/HandleComposerAttachment;->addVideo(Landroid/net/Uri;IZZZ)I

    move-result v10

    .line 1024
    goto :goto_0

    .line 1026
    :pswitch_3
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p2

    move v4, p4

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/util/HandleComposerAttachment;->addAudio(Landroid/net/Uri;IZZZ)I

    move-result v10

    .line 1027
    goto :goto_0

    .line 1029
    :pswitch_4
    const/4 v6, 0x0

    const/16 v8, 0x14

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    move v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/mms/util/HandleComposerAttachment;->addRawMedia(Landroid/net/Uri;ZZZI)I

    move-result v10

    .line 1030
    goto :goto_0

    .line 1032
    :pswitch_5
    const/4 v6, 0x0

    const/16 v8, 0x1a

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    move v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/mms/util/HandleComposerAttachment;->addRawMedia(Landroid/net/Uri;ZZZI)I

    move-result v10

    .line 1033
    goto :goto_0

    .line 1035
    :pswitch_6
    const/4 v6, 0x1

    const/16 v8, 0x1b

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    move v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/mms/util/HandleComposerAttachment;->addRawMedia(Landroid/net/Uri;ZZZI)I

    move-result v10

    .line 1036
    goto/16 :goto_0

    .line 1038
    :pswitch_7
    const/4 v6, 0x1

    const/16 v8, 0x21

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    move v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/mms/util/HandleComposerAttachment;->addRawMedia(Landroid/net/Uri;ZZZI)I

    move-result v10

    .line 1039
    goto/16 :goto_0

    .line 1018
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public addMedia(Ljava/lang/String;Landroid/net/Uri;ZZ)I
    .locals 7
    .parameter "type"
    .parameter "uri"
    .parameter "append"
    .parameter "sendMultiple"

    .prologue
    .line 1399
    const/4 v6, -0x1

    .line 1400
    .local v6, result:I
    if-eqz p2, :cond_1

    .line 1401
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getAvailableStorage()J

    move-result-wide v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v0

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    .line 1402
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/android/mms/util/HandleComposerAttachment$22;

    invoke-direct {v2, p0}, Lcom/android/mms/util/HandleComposerAttachment$22;-><init>(Lcom/android/mms/util/HandleComposerAttachment;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1408
    const/4 v0, -0x2

    .line 1439
    :goto_0
    return v0

    .line 1410
    :cond_0
    const/4 v1, 0x0

    .line 1411
    .local v1, mediaType:I
    const-string v0, "image/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1412
    const/4 v1, 0x1

    .line 1434
    :goto_1
    if-eqz v1, :cond_1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_1

    const/4 v0, 0x5

    if-eq v1, v0, :cond_1

    .line 1435
    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/util/HandleComposerAttachment;->addMedia(ILandroid/net/Uri;ZZZ)I

    move-result v6

    .end local v1           #mediaType:I
    :cond_1
    move v0, v6

    .line 1439
    goto :goto_0

    .line 1413
    .restart local v1       #mediaType:I
    :cond_2
    const-string v0, "video/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1414
    const/4 v1, 0x2

    goto :goto_1

    .line 1415
    :cond_3
    const-string v0, "audio/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "application/ogg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1416
    :cond_4
    const/4 v1, 0x3

    goto :goto_1

    .line 1417
    :cond_5
    const-string v0, "text/x-vCard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1418
    const/4 v1, 0x6

    goto :goto_1

    .line 1419
    :cond_6
    const-string v0, "text/x-vCalendar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1420
    const/4 v1, 0x7

    goto :goto_1

    .line 1421
    :cond_7
    const-string v0, "text/x-vNote"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1422
    const/16 v1, 0x8

    goto :goto_1

    .line 1423
    :cond_8
    const-string v0, "text/x-vtodo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1424
    const/16 v1, 0x9

    goto :goto_1

    .line 1426
    :cond_9
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/android/mms/util/HandleComposerAttachment$23;

    invoke-direct {v2, p0}, Lcom/android/mms/util/HandleComposerAttachment$23;-><init>(Lcom/android/mms/util/HandleComposerAttachment;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public addRawMedia(Landroid/net/Uri;ZZZI)I
    .locals 13
    .parameter "uri"
    .parameter "append"
    .parameter "checkCRMode"
    .parameter "sendMultiple"
    .parameter "reqCode"

    .prologue
    .line 1187
    const-string v1, "Mms:app"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1188
    const-string v1, "Mms/HandleComposerAttachment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addRawMedia: append="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", uri="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    :cond_0
    const/4 v12, -0x1

    .line 1192
    .local v12, result:I
    if-eqz p3, :cond_1

    .line 1193
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->checkCRForRawAttachment()V

    .line 1195
    :cond_1
    const/16 v1, 0x14

    move/from16 v0, p5

    if-eq v1, v0, :cond_2

    const/16 v1, 0x1a

    move/from16 v0, p5

    if-eq v1, v0, :cond_2

    const/16 v1, 0x1b

    move/from16 v0, p5

    if-eq v1, v0, :cond_2

    const/16 v1, 0x21

    move/from16 v0, p5

    if-ne v1, v0, :cond_4

    .line 1200
    :cond_2
    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->getMmsRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v3

    .line 1201
    .local v3, location:I
    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x5

    const/4 v7, 0x0

    move-object v5, p1

    move v6, p2

    move/from16 v8, p4

    invoke-virtual/range {v1 .. v8}, Lcom/android/mms/data/WorkingMessage;->setAttachment(Landroid/content/ContentResolver;IILandroid/net/Uri;ZZZ)I
    :try_end_0
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 1204
    .end local v3           #location:I
    .end local v12           #result:I
    .local v5, result:I
    :goto_0
    const v6, 0x7f0c0128

    move-object v4, p0

    move-object v7, p1

    move/from16 v8, p5

    move/from16 v9, p4

    move v10, p2

    :try_start_1
    invoke-virtual/range {v4 .. v10}, Lcom/android/mms/util/HandleComposerAttachment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    .line 1205
    if-nez v5, :cond_3

    .line 1206
    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/util/HandleComposerAttachment$20;

    invoke-direct {v2, p0}, Lcom/android/mms/util/HandleComposerAttachment$20;-><init>(Lcom/android/mms/util/HandleComposerAttachment;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1218
    :cond_3
    :goto_1
    return v5

    .line 1214
    .end local v5           #result:I
    .restart local v12       #result:I
    :catch_0
    move-exception v11

    move v5, v12

    .line 1215
    .end local v12           #result:I
    .restart local v5       #result:I
    .local v11, cre:Lcom/android/mms/ContentRestrictionException;
    :goto_2
    const/4 v5, -0x5

    .line 1216
    const v6, 0x7f0c0128

    const/4 v9, 0x0

    move-object v4, p0

    move-object v7, p1

    move/from16 v8, p5

    move v10, p2

    invoke-virtual/range {v4 .. v10}, Lcom/android/mms/util/HandleComposerAttachment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    goto :goto_1

    .line 1214
    .end local v11           #cre:Lcom/android/mms/ContentRestrictionException;
    :catch_1
    move-exception v11

    goto :goto_2

    .end local v5           #result:I
    .restart local v12       #result:I
    :cond_4
    move v5, v12

    .end local v12           #result:I
    .restart local v5       #result:I
    goto :goto_0
.end method

.method public addText(Ljava/lang/String;)Z
    .locals 8
    .parameter "text"

    .prologue
    const/4 v5, 0x0

    .line 1222
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1246
    :goto_0
    return v5

    .line 1226
    :cond_0
    iget-object v6, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->getMmsRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 1227
    .local v0, editText:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    .line 1229
    .local v2, selectionStart:I
    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v6

    if-lez v6, :cond_1

    if-lez v2, :cond_1

    .line 1230
    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v4

    .line 1231
    .local v4, start:I
    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    .line 1232
    .local v1, end:I
    if-lt v1, v4, :cond_2

    move v3, v4

    .line 1233
    .local v3, smaller:I
    :goto_1
    if-eqz v3, :cond_1

    add-int/lit8 v6, v3, -0x1

    if-lez v6, :cond_3

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    add-int/lit8 v7, v3, -0x1

    invoke-interface {v6, v7}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_3

    .line 1240
    .end local v1           #end:I
    .end local v3           #smaller:I
    .end local v4           #start:I
    :cond_1
    :goto_2
    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1241
    invoke-virtual {p0, v0, p1, v5}, Lcom/android/mms/util/HandleComposerAttachment;->insertText(Landroid/widget/EditText;Ljava/lang/String;Z)V

    .line 1245
    :goto_3
    const-string v5, "Mms/HandleComposerAttachment"

    const-string v6, "AddText..."

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    const/4 v5, 0x1

    goto :goto_0

    .restart local v1       #end:I
    .restart local v4       #start:I
    :cond_2
    move v3, v1

    .line 1232
    goto :goto_1

    .line 1236
    .restart local v3       #smaller:I
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 1243
    .end local v1           #end:I
    .end local v3           #smaller:I
    .end local v4           #start:I
    :cond_4
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method public addVideo(Landroid/net/Uri;IZZZ)I
    .locals 18
    .parameter "uri"
    .parameter "location"
    .parameter "flagCRMode"
    .parameter "sendMultiple"
    .parameter "append"

    .prologue
    .line 1130
    const/4 v15, -0x1

    .line 1131
    .local v15, result:I
    if-eqz p1, :cond_1

    .line 1132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x2

    move/from16 v4, p2

    move-object/from16 v6, p1

    move/from16 v7, p5

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-virtual/range {v2 .. v9}, Lcom/android/mms/data/WorkingMessage;->setAttachment(Landroid/content/ContentResolver;IILandroid/net/Uri;ZZZ)I

    move-result v15

    .line 1133
    if-eqz p5, :cond_0

    if-nez v15, :cond_0

    .line 1134
    add-int/lit8 v13, p2, 0x1

    .line 1136
    .local v13, mNewlocation:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/mms/util/HandleComposerAttachment$17;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v13}, Lcom/android/mms/util/HandleComposerAttachment$17;-><init>(Lcom/android/mms/util/HandleComposerAttachment;I)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1143
    .end local v13           #mNewlocation:I
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAutoVideoResize()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, -0x2

    if-ne v15, v2, :cond_4

    .line 1144
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/util/HandleComposerAttachment;->getVideoFilePathFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v16

    .line 1145
    .local v16, videoFilePath:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->getOutputFileDurationPossible(Ljava/lang/String;)I

    move-result v12

    .line 1146
    .local v12, durationPossible:I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->getVideoFileDurationTime(Ljava/lang/String;)I

    move-result v11

    .line 1147
    .local v11, durationOriginalFile:I
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/util/HandleComposerAttachment;->createFileNameForVideoResize()Ljava/lang/String;

    move-result-object v9

    .line 1148
    .local v9, fileName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v9, v1, v12}, Lcom/android/mms/util/HandleComposerAttachment;->createShareviaObj(Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/app/share/via/external/ShareviaObj;

    move-result-object v10

    .line 1149
    .local v10, obj:Lcom/samsung/app/share/via/external/ShareviaObj;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mNativeAccess:Lcom/samsung/app/share/via/external/NativeAccess;

    invoke-virtual {v2, v10}, Lcom/samsung/app/share/via/external/NativeAccess;->getOutputFileSize(Lcom/samsung/app/share/via/external/ShareviaObj;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mOutFileSizeEstimated:I

    .line 1150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->mmsMessageSize()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mOutFileSizeEstimated:I

    mul-int/lit16 v3, v3, 0x400

    add-int v14, v2, v3

    .line 1151
    .local v14, objectTotalSize:I
    const-string v2, "Mms/HandleComposerAttachment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "durationPossible:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " durationOriginalFile:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mOutFileSizeEstimated:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mOutFileSizeEstimated:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " objectTotalSize"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    if-nez p4, :cond_2

    const/16 v2, 0x5dc

    if-le v11, v2, :cond_2

    if-gt v11, v12, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v2

    if-gt v14, v2, :cond_2

    .line 1154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    new-instance v2, Lcom/android/mms/util/HandleComposerAttachment$18;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {v2 .. v10}, Lcom/android/mms/util/HandleComposerAttachment$18;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/net/Uri;IZZZLjava/lang/String;Lcom/samsung/app/share/via/external/ShareviaObj;)V

    const-wide/16 v3, 0xa

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1175
    .end local v9           #fileName:Ljava/lang/String;
    .end local v10           #obj:Lcom/samsung/app/share/via/external/ShareviaObj;
    .end local v11           #durationOriginalFile:I
    .end local v12           #durationPossible:I
    .end local v14           #objectTotalSize:I
    .end local v16           #videoFilePath:Ljava/lang/String;
    :cond_1
    :goto_0
    return v15

    .line 1159
    .restart local v9       #fileName:Ljava/lang/String;
    .restart local v10       #obj:Lcom/samsung/app/share/via/external/ShareviaObj;
    .restart local v11       #durationOriginalFile:I
    .restart local v12       #durationPossible:I
    .restart local v14       #objectTotalSize:I
    .restart local v16       #videoFilePath:Ljava/lang/String;
    :cond_2
    if-nez p4, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->mmsMessageSize()I

    move-result v2

    add-int/lit16 v2, v2, 0x2800

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1160
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/mms/util/HandleComposerAttachment$19;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lcom/android/mms/util/HandleComposerAttachment$19;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/net/Uri;)V

    const-wide/16 v4, 0xa

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1168
    :cond_3
    const v4, 0x7f0c00c0

    const/16 v6, 0xc

    move-object/from16 v2, p0

    move v3, v15

    move-object/from16 v5, p1

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-virtual/range {v2 .. v8}, Lcom/android/mms/util/HandleComposerAttachment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    goto :goto_0

    .line 1172
    .end local v9           #fileName:Ljava/lang/String;
    .end local v10           #obj:Lcom/samsung/app/share/via/external/ShareviaObj;
    .end local v11           #durationOriginalFile:I
    .end local v12           #durationPossible:I
    .end local v14           #objectTotalSize:I
    .end local v16           #videoFilePath:Ljava/lang/String;
    :cond_4
    const v4, 0x7f0c00c0

    const/16 v6, 0xc

    move-object/from16 v2, p0

    move v3, v15

    move-object/from16 v5, p1

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-virtual/range {v2 .. v8}, Lcom/android/mms/util/HandleComposerAttachment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    goto :goto_0
.end method

.method public addnamecard()V
    .locals 3

    .prologue
    .line 1969
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.INTERACTION_LIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1970
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "additional"

    const-string v2, "namecard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1971
    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/16 v2, 0x1e

    invoke-virtual {v1, v0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1972
    return-void
.end method

.method public checkEmailBeforeMakeToButton(Lcom/android/mms/data/ContactList;)V
    .locals 10
    .parameter "contacts"

    .prologue
    .line 967
    new-instance v5, Lcom/android/mms/data/ContactList;

    invoke-direct {v5}, Lcom/android/mms/data/ContactList;-><init>()V

    .line 968
    .local v5, nonEmailcontacts:Lcom/android/mms/data/ContactList;
    iget-object v7, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v6

    .line 970
    .local v6, wasMms:Z
    if-nez v6, :cond_3

    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->containsEmail()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRemoveEmailDialog()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 971
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 973
    .local v2, emailRecipients:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v7

    if-ge v3, v7, :cond_2

    .line 974
    invoke-virtual {p1, v3}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/data/Contact;

    invoke-virtual {v7}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 975
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 976
    const-string v7, "\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    :cond_0
    invoke-virtual {p1, v3}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/data/Contact;

    invoke-virtual {v7}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 979
    :cond_1
    invoke-virtual {p1, v3}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 983
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 984
    .local v1, emailContact:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const v9, 0x7f0c0422

    invoke-virtual {v8, v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getResourcesString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 987
    .local v4, message:Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 988
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v7, 0x7f0c0423

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 989
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 990
    const v7, 0x7f0c004f

    new-instance v8, Lcom/android/mms/util/HandleComposerAttachment$14;

    invoke-direct {v8, p0, v5}, Lcom/android/mms/util/HandleComposerAttachment$14;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Lcom/android/mms/data/ContactList;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 998
    const v7, 0x7f0c0050

    new-instance v8, Lcom/android/mms/util/HandleComposerAttachment$15;

    invoke-direct {v8, p0, p1}, Lcom/android/mms/util/HandleComposerAttachment$15;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Lcom/android/mms/data/ContactList;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1006
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 1007
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1012
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #emailContact:Ljava/lang/String;
    .end local v2           #emailRecipients:Ljava/lang/StringBuilder;
    .end local v3           #i:I
    .end local v4           #message:Ljava/lang/String;
    :goto_2
    return-void

    .line 1009
    :cond_3
    iget-object v7, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/android/mms/data/WorkingMessage;->addWorkingRecipients(Lcom/android/mms/data/ContactList;)V

    .line 1010
    iget-object v7, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v8, 0x0

    invoke-virtual {v7, p1, v8}, Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtonByContactList(Lcom/android/mms/data/ContactList;Z)V

    goto :goto_2
.end method

.method public dismissDialog()V
    .locals 1

    .prologue
    .line 2197
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 2198
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2199
    :cond_0
    return-void
.end method

.method public getAddContactUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 15
    .parameter "originalUri"

    .prologue
    .line 2050
    move-object/from16 v0, p1

    .line 2051
    .local v0, contactUri:Landroid/net/Uri;
    const-string v6, "content://com.android.contacts/contacts/as_multi_vcard/"

    .line 2052
    .local v6, prefixstr:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x37

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 2053
    .local v7, refstr:Ljava/lang/String;
    const-string v10, "%3A"

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 2054
    .local v8, refstrs:[Ljava/lang/String;
    array-length v4, v8

    .line 2055
    .local v4, len:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxRawAttachmentCount()I

    move-result v3

    .line 2058
    .local v3, importCount:I
    iget-object v10, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v11, 0x7f0c00f0

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 2060
    .local v9, toastMessage:Ljava/lang/String;
    if-le v4, v3, :cond_1

    .line 2061
    iget-object v10, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    new-instance v11, Lcom/android/mms/util/HandleComposerAttachment$29;

    invoke-direct {v11, p0, v9}, Lcom/android/mms/util/HandleComposerAttachment$29;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2070
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2072
    .local v5, newUri:Landroid/text/SpannableStringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 2074
    aget-object v10, v8, v2

    invoke-virtual {v5, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2075
    add-int/lit8 v10, v3, -0x1

    if-ge v2, v10, :cond_0

    .line 2076
    const-string v10, "%3A"

    invoke-virtual {v5, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2072
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v2           #i:I
    .end local v5           #newUri:Landroid/text/SpannableStringBuilder;
    :cond_1
    move-object v1, v0

    .line 2081
    .end local v0           #contactUri:Landroid/net/Uri;
    .local v1, contactUri:Landroid/net/Uri;
    :goto_1
    return-object v1

    .line 2080
    .end local v1           #contactUri:Landroid/net/Uri;
    .restart local v0       #contactUri:Landroid/net/Uri;
    .restart local v2       #i:I
    .restart local v5       #newUri:Landroid/text/SpannableStringBuilder;
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v1, v0

    .line 2081
    .end local v0           #contactUri:Landroid/net/Uri;
    .restart local v1       #contactUri:Landroid/net/Uri;
    goto :goto_1
.end method

.method public handleAddAttachmentError(IILandroid/net/Uri;IZZ)V
    .locals 11
    .parameter "error"
    .parameter "mediaTypeStringId"
    .parameter "dataUri"
    .parameter "reqCode"
    .parameter "sendMultiple"
    .parameter "append"

    .prologue
    .line 1256
    new-instance v9, Ljava/lang/StringBuffer;

    const/16 v1, 0x78

    invoke-direct {v9, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1257
    .local v9, sb:Ljava/lang/StringBuffer;
    const-string v1, "handleAddAttachmentError(),error="

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ",mediaTypeStringId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ",reqCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ",sendMultiple="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    move/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ",append="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    move/from16 v0, p6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 1261
    const-string v1, "Mms/HandleComposerAttachment"

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    if-nez p1, :cond_0

    .line 1328
    :goto_0
    return-void

    .line 1266
    :cond_0
    iget-object v10, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/android/mms/util/HandleComposerAttachment$21;

    move-object v2, p0

    move v3, p2

    move v4, p1

    move/from16 v5, p5

    move-object v6, p3

    move v7, p4

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/mms/util/HandleComposerAttachment$21;-><init>(Lcom/android/mms/util/HandleComposerAttachment;IIZLandroid/net/Uri;IZ)V

    invoke-virtual {v10, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public insertText(Landroid/widget/EditText;Ljava/lang/String;Z)V
    .locals 5
    .parameter "editText"
    .parameter "newString"
    .parameter "isSubject"

    .prologue
    .line 1975
    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    .line 1976
    .local v1, start:I
    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 1978
    .local v0, end:I
    if-le v1, v0, :cond_0

    .line 1979
    move v2, v1

    .line 1980
    .local v2, temp:I
    move v1, v0

    .line 1981
    move v0, v2

    .line 1983
    .end local v2           #temp:I
    :cond_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3, v1, v0, p2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1984
    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v3

    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v4

    if-le v3, v4, :cond_1

    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v3

    :goto_0
    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 1985
    return-void

    .line 1984
    :cond_1
    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v3

    goto :goto_0
.end method

.method public launchAppInfo(ILandroid/app/AlertDialog;)V
    .locals 4
    .parameter "command"
    .parameter "dlgToClose"

    .prologue
    .line 1949
    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1950
    const-string v2, "Mms/HandleComposerAttachment"

    const-string v3, "attachAppinfo, Fragment already detached. just Finish"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1965
    :cond_0
    :goto_0
    return-void

    .line 1954
    :cond_1
    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/mms/ui/IconListAdapter;->commandToPackage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 1956
    .local v1, pkg:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1957
    if-eqz p2, :cond_2

    .line 1958
    invoke-virtual {p2}, Landroid/app/AlertDialog;->dismiss()V

    .line 1961
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1962
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1963
    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public processingActivityResult(IILandroid/content/Intent;)V
    .locals 90
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 175
    const-string v5, "Mms/HandleComposerAttachment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onActivityResult: requestCode="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, ", resultCode="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, ", has data="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz p3, :cond_3

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mWaitingForSubActivity:Z

    .line 177
    const/4 v13, 0x1

    .line 178
    .local v13, appendMedia:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientFlag:Z

    .line 180
    const/16 v4, 0x2a

    move/from16 v0, p1

    if-eq v0, v4, :cond_0

    const/16 v4, 0x29

    move/from16 v0, p1

    if-eq v0, v4, :cond_0

    const/16 v4, 0x2c

    move/from16 v0, p1

    if-eq v0, v4, :cond_0

    const/16 v4, 0x2b

    move/from16 v0, p1

    if-eq v0, v4, :cond_0

    const/16 v4, 0x2d

    move/from16 v0, p1

    if-eq v0, v4, :cond_0

    const/16 v4, 0x2e

    move/from16 v0, p1

    if-eq v0, v4, :cond_0

    const/16 v4, 0x37

    move/from16 v0, p1

    if-eq v0, v4, :cond_0

    const/16 v4, 0x28

    move/from16 v0, p1

    if-ne v0, v4, :cond_1

    .line 188
    :cond_0
    const/4 v13, 0x0

    .line 190
    :cond_1
    const/16 v4, 0xb

    move/from16 v0, p1

    if-eq v0, v4, :cond_4

    const/16 v4, 0x36

    move/from16 v0, p1

    if-eq v0, v4, :cond_4

    .line 191
    if-nez p3, :cond_5

    .line 192
    const-string v4, "Mms/HandleComposerAttachment"

    const-string v5, "onActivityResult : data is null"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    .end local v13           #appendMedia:Z
    :cond_2
    :goto_1
    return-void

    .line 175
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 195
    .restart local v13       #appendMedia:Z
    :cond_4
    const/4 v4, -0x1

    move/from16 v0, p2

    if-eq v0, v4, :cond_5

    .line 196
    const-string v4, "Mms/HandleComposerAttachment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onActivityResult(),fail due to resultCode="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 200
    :cond_5
    packed-switch p1, :pswitch_data_0

    .line 963
    .end local v13           #appendMedia:Z
    :cond_6
    :goto_2
    :pswitch_0
    const-string v4, "Mms/HandleComposerAttachment"

    const-string v5, "onActivityResult()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 202
    .restart local v13       #appendMedia:Z
    :pswitch_1
    if-nez p3, :cond_7

    .line 203
    const-string v4, "Mms/HandleComposerAttachment"

    const-string v5, "onActivityResult : data is null REQUEST_CODE_PICK_MULTI_PICTURE"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 206
    :cond_7
    new-instance v4, Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    .line 207
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v10, 0x7f0c0178

    invoke-virtual {v5, v10}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 208
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    sget-object v5, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 210
    const-string v4, "selectedItems"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 211
    .local v6, uriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const-string v4, "selectedCount"

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 212
    .local v7, uriListCount:I
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 213
    .local v8, fileUri:Landroid/net/Uri;
    move v9, v13

    .line 215
    .local v9, append:Z
    const/16 v34, 0x0

    .line 216
    .local v34, filepath:Ljava/lang/String;
    const/16 v35, 0x0

    .line 219
    .local v35, hasSoundShot:Z
    const/16 v44, 0x0

    .local v44, j:I
    :goto_3
    move/from16 v0, v44

    if-ge v0, v7, :cond_8

    .line 220
    move/from16 v0, v44

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v74

    check-cast v74, Landroid/net/Uri;

    .line 221
    .local v74, selectedImageUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v74

    invoke-direct {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->getFileNameFromContentUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v34

    .line 222
    invoke-static/range {v34 .. v34}, Lcom/quramsoft/qdio/QdioJNI;->checkAudioInJPEG(Ljava/lang/String;)Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;

    move-result-object v66

    .line 223
    .local v66, qdioData:Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;
    if-eqz v66, :cond_9

    .line 224
    const/16 v35, 0x1

    .line 229
    .end local v66           #qdioData:Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;
    .end local v74           #selectedImageUri:Landroid/net/Uri;
    :cond_8
    if-eqz v35, :cond_a

    .line 230
    new-instance v26, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, v26

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 231
    .local v26, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0c041d

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 232
    const v4, 0x7f0c041f

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 233
    const v4, 0x7f0c00e9

    new-instance v5, Lcom/android/mms/util/HandleComposerAttachment$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/mms/util/HandleComposerAttachment$1;-><init>(Lcom/android/mms/util/HandleComposerAttachment;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 238
    invoke-virtual/range {v26 .. v26}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mHasSoundShotDialog:Landroid/app/AlertDialog;

    .line 239
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mHasSoundShotDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 240
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mHasSoundShotDialog:Landroid/app/AlertDialog;

    sget-object v5, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 241
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/util/HandleComposerAttachment;->mHasSoundShotDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/android/mms/util/HandleComposerAttachment$2;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/mms/util/HandleComposerAttachment$2;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Ljava/util/ArrayList;ILandroid/net/Uri;Z)V

    invoke-virtual {v10, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_2

    .line 219
    .end local v26           #builder:Landroid/app/AlertDialog$Builder;
    .restart local v66       #qdioData:Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;
    .restart local v74       #selectedImageUri:Landroid/net/Uri;
    :cond_9
    add-int/lit8 v44, v44, 0x1

    goto :goto_3

    .line 249
    .end local v66           #qdioData:Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;
    .end local v74           #selectedImageUri:Landroid/net/Uri;
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->show()V

    .line 250
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/android/mms/util/HandleComposerAttachment;->addPickImage(Ljava/util/ArrayList;ILandroid/net/Uri;Z)V

    goto/16 :goto_2

    .line 256
    .end local v6           #uriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v7           #uriListCount:I
    .end local v8           #fileUri:Landroid/net/Uri;
    .end local v9           #append:Z
    .end local v34           #filepath:Ljava/lang/String;
    .end local v35           #hasSoundShot:Z
    .end local v44           #j:I
    :pswitch_2
    const-string v4, "message_avatar_temp.jpg"

    const-string v5, "/mnt/sdcard/message_avatar_temp.jpg"

    const-string v10, "/data/data/com.android.mms/message_avatar_temp.jpg"

    invoke-static {v4, v5, v10}, Lcom/android/mms/ui/MessageUtils;->copyBackgroundFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 257
    const-string v4, "file:///data/data/com.android.mms/message_avatar_temp.jpg"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 259
    .restart local v8       #fileUri:Landroid/net/Uri;
    move v9, v13

    .line 260
    .restart local v9       #append:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v5, ""

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v11, 0x7f0c0178

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v4, v5, v10, v11}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    .line 261
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    sget-object v5, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 262
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/mms/util/HandleComposerAttachment$3;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v8, v9}, Lcom/android/mms/util/HandleComposerAttachment$3;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/net/Uri;Z)V

    const-string v10, "addAttachment"

    invoke-direct {v4, v5, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    .line 273
    .end local v8           #fileUri:Landroid/net/Uri;
    .end local v9           #append:Z
    :pswitch_3
    if-nez p3, :cond_b

    .line 274
    const-string v4, "Mms/HandleComposerAttachment"

    const-string v5, "onActivityResult : data is null REQUEST_CODE_TAKE_PICTURE"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 277
    :cond_b
    const-string v4, "uri-data"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 279
    .local v33, fileString:Ljava/lang/String;
    if-nez v33, :cond_c

    .line 280
    const-string v4, "Mms/HandleComposerAttachment"

    const-string v5, "fileString is null so just return"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 284
    :cond_c
    invoke-static/range {v33 .. v33}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 285
    .restart local v8       #fileUri:Landroid/net/Uri;
    move v9, v13

    .line 286
    .restart local v9       #append:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v5, ""

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v11, 0x7f0c0178

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v4, v5, v10, v11}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    .line 287
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    sget-object v5, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 288
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/mms/util/HandleComposerAttachment$4;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v8, v9}, Lcom/android/mms/util/HandleComposerAttachment$4;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/net/Uri;Z)V

    const-string v10, "addAttachment"

    invoke-direct {v4, v5, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    .line 302
    .end local v8           #fileUri:Landroid/net/Uri;
    .end local v9           #append:Z
    .end local v33           #fileString:Ljava/lang/String;
    :pswitch_4
    if-nez p3, :cond_d

    .line 303
    const-string v4, "Mms/HandleComposerAttachment"

    const-string v5, "onActivityResult : data is null REQUEST_CODE_PICK_PICTURE"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 306
    :cond_d
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 308
    .restart local v8       #fileUri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAttachmentFilenameEncoding()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_e

    .line 309
    new-instance v87, Lcom/android/mms/ui/UriImage;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, v87

    invoke-direct {v0, v4, v8}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 310
    .local v87, uriImage:Lcom/android/mms/ui/UriImage;
    invoke-virtual/range {v87 .. v87}, Lcom/android/mms/ui/UriImage;->getSrc()Ljava/lang/String;

    move-result-object v52

    .line 312
    .local v52, mSrc:Ljava/lang/String;
    const-string v4, "."

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x32

    if-le v4, v5, :cond_e

    .line 313
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v10, 0x7f0c014d

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x1

    invoke-static {v4, v5, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 319
    .end local v52           #mSrc:Ljava/lang/String;
    .end local v87           #uriImage:Lcom/android/mms/ui/UriImage;
    :cond_e
    move v9, v13

    .line 320
    .restart local v9       #append:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v5, ""

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v11, 0x7f0c0178

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v4, v5, v10, v11}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    .line 321
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    sget-object v5, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 322
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/mms/util/HandleComposerAttachment$5;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v8, v9}, Lcom/android/mms/util/HandleComposerAttachment$5;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/net/Uri;Z)V

    const-string v10, "addAttachment"

    invoke-direct {v4, v5, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    .line 334
    .end local v8           #fileUri:Landroid/net/Uri;
    .end local v9           #append:Z
    :pswitch_5
    if-nez p3, :cond_f

    .line 335
    const-string v4, "Mms/HandleComposerAttachment"

    const-string v5, "onActivityResult : data is null REQUEST_CODE_PICK_DRAWINGPAD"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 338
    :cond_f
    const-string v4, "android.intent.extra.STREAM"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 339
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 340
    .restart local v8       #fileUri:Landroid/net/Uri;
    move v9, v13

    .line 341
    .restart local v9       #append:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v5, ""

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v11, 0x7f0c0178

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v4, v5, v10, v11}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    .line 344
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    sget-object v5, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 345
    const-string v4, "android.intent.extra.STREAM"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v43

    .line 346
    .local v43, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    const-string v4, "android.intent.extra.TEXT"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v73

    .line 347
    .local v73, sSnoteString:Ljava/lang/String;
    if-eqz v73, :cond_10

    .line 348
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->addText(Ljava/lang/String;)Z

    .line 350
    :cond_10
    if-nez v43, :cond_11

    .line 351
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/mms/util/HandleComposerAttachment$6;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v8, v9}, Lcom/android/mms/util/HandleComposerAttachment$6;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/net/Uri;Z)V

    const-string v10, "addAttachment"

    invoke-direct {v4, v5, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    .line 361
    :cond_11
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/mms/util/HandleComposerAttachment$7;

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v5, v0, v1}, Lcom/android/mms/util/HandleComposerAttachment$7;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Ljava/util/ArrayList;)V

    const-string v10, "addAttachment"

    invoke-direct {v4, v5, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    .line 389
    .end local v8           #fileUri:Landroid/net/Uri;
    .end local v9           #append:Z
    .end local v43           #itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    .end local v73           #sSnoteString:Ljava/lang/String;
    :pswitch_6
    if-nez p3, :cond_12

    .line 390
    const-string v4, "Mms/HandleComposerAttachment"

    const-string v5, "onActivityResult : data is null REQUEST_CODE_TAKE_VIDEO"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 393
    :cond_12
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v85

    .line 394
    .local v85, uri:Landroid/net/Uri;
    move v9, v13

    .line 395
    .restart local v9       #append:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v5, ""

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v11, 0x7f0c0178

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v4, v5, v10, v11}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    .line 396
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    sget-object v5, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 398
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/mms/util/HandleComposerAttachment$8;

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-direct {v5, v0, v1, v9}, Lcom/android/mms/util/HandleComposerAttachment$8;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/net/Uri;Z)V

    const-string v10, "addAttachment"

    invoke-direct {v4, v5, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    .line 411
    .end local v9           #append:Z
    .end local v85           #uri:Landroid/net/Uri;
    :pswitch_7
    if-nez p3, :cond_13

    .line 412
    const-string v4, "Mms/HandleComposerAttachment"

    const-string v5, "onActivityResult : data is null REQUEST_CODE_PICK_SOUND"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 415
    :cond_13
    const-string v4, "FILE_URI"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v85

    check-cast v85, Landroid/net/Uri;

    .line 416
    .restart local v85       #uri:Landroid/net/Uri;
    move v9, v13

    .line 417
    .restart local v9       #append:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v5, ""

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v11, 0x7f0c0178

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v4, v5, v10, v11}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    .line 418
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    sget-object v5, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 420
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/mms/util/HandleComposerAttachment$9;

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-direct {v5, v0, v1, v9}, Lcom/android/mms/util/HandleComposerAttachment$9;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/net/Uri;Z)V

    const-string v10, "addAttachment"

    invoke-direct {v4, v5, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    .line 434
    .end local v9           #append:Z
    .end local v85           #uri:Landroid/net/Uri;
    :pswitch_8
    if-nez p3, :cond_14

    .line 435
    const-string v4, "Mms/HandleComposerAttachment"

    const-string v5, "onActivityResult : data is null REQUEST_CODE_RECORD_SOUND"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 438
    :cond_14
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v85

    .line 439
    .restart local v85       #uri:Landroid/net/Uri;
    move v9, v13

    .line 440
    .restart local v9       #append:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v5, ""

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v11, 0x7f0c0178

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v4, v5, v10, v11}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    .line 441
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    sget-object v5, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 443
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/mms/util/HandleComposerAttachment$10;

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-direct {v5, v0, v1, v9}, Lcom/android/mms/util/HandleComposerAttachment$10;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/net/Uri;Z)V

    const-string v10, "addAttachment"

    invoke-direct {v4, v5, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    .line 456
    .end local v9           #append:Z
    .end local v85           #uri:Landroid/net/Uri;
    :pswitch_9
    if-nez p3, :cond_15

    .line 457
    const-string v4, "Mms/HandleComposerAttachment"

    const-string v5, "onActivityResult : data is null REQUEST_CODE_ECM_EXIT_DIALOG"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 460
    :cond_15
    const-string v4, "exit_ecm_result"

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v60

    .line 461
    .local v60, outOfEmergencyMode:Z
    if-eqz v60, :cond_6

    .line 462
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/ComposeMessageFragment;->sendMessage(Z)V

    goto/16 :goto_2

    .line 467
    .end local v60           #outOfEmergencyMode:Z
    :pswitch_a
    if-nez p3, :cond_16

    .line 468
    const-string v4, "Mms/HandleComposerAttachment"

    const-string v5, "onActivityResult : data is null REQUEST_CODE_PICK_VCARD"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 471
    :cond_16
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v31

    .line 472
    .local v31, extras:Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    .line 474
    .local v22, action:Ljava/lang/String;
    const-string v4, "android.intent.action.SEND"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 475
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v5, ""

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v11, 0x7f0c0178

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v4, v5, v10, v11}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    .line 476
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    sget-object v5, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 478
    const-string v4, "android.intent.extra.STREAM"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v85

    check-cast v85, Landroid/net/Uri;

    .line 479
    .restart local v85       #uri:Landroid/net/Uri;
    const-string v4, "vcard"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 481
    .local v32, extrastring:Ljava/lang/String;
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/mms/util/HandleComposerAttachment$11;

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v85

    invoke-direct {v5, v0, v1, v2}, Lcom/android/mms/util/HandleComposerAttachment$11;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Ljava/lang/String;Landroid/net/Uri;)V

    const-string v10, "addAttachment"

    invoke-direct {v4, v5, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    .line 508
    .end local v32           #extrastring:Ljava/lang/String;
    .end local v85           #uri:Landroid/net/Uri;
    :cond_17
    const-string v4, "android.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 509
    const-string v4, "android.intent.extra.STREAM"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v88

    .line 510
    .local v88, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    invoke-virtual/range {v88 .. v88}, Ljava/util/ArrayList;->size()I

    move-result v86

    .line 511
    .local v86, uriCount:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move/from16 v0, v86

    invoke-virtual {v4, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getRawAttachableCountWithToast(I)I

    move-result v38

    .line 512
    .local v38, importCount:I
    const/16 v36, 0x0

    .end local v13           #appendMedia:Z
    .local v36, i:I
    :goto_4
    move/from16 v0, v36

    move/from16 v1, v38

    if-ge v0, v1, :cond_18

    .line 513
    move-object/from16 v0, v88

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v85

    check-cast v85, Landroid/os/Parcelable;

    .local v85, uri:Landroid/os/Parcelable;
    move-object/from16 v11, v85

    .line 514
    check-cast v11, Landroid/net/Uri;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/16 v15, 0x14

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v15}, Lcom/android/mms/util/HandleComposerAttachment;->addRawMedia(Landroid/net/Uri;ZZZI)I

    .line 512
    add-int/lit8 v36, v36, 0x1

    goto :goto_4

    .line 516
    .end local v85           #uri:Landroid/os/Parcelable;
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 518
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 519
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    move-result-object v57

    .line 520
    .local v57, messageUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v4, :cond_19

    .line 521
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v0, v57

    invoke-virtual {v4, v0}, Lcom/android/mms/ui/MessageListAdapter;->setWorkingMessageUri(Landroid/net/Uri;)V

    .line 526
    .end local v57           #messageUri:Landroid/net/Uri;
    :cond_19
    :goto_5
    sget-boolean v4, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v4, :cond_6

    .line 527
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    goto/16 :goto_2

    .line 524
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    goto :goto_5

    .line 537
    .end local v22           #action:Ljava/lang/String;
    .end local v31           #extras:Landroid/os/Bundle;
    .end local v36           #i:I
    .end local v38           #importCount:I
    .end local v86           #uriCount:I
    .end local v88           #uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    .restart local v13       #appendMedia:Z
    :pswitch_b
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/mms/util/HandleComposerAttachment$12;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p1

    invoke-direct {v5, v0, v1, v2}, Lcom/android/mms/util/HandleComposerAttachment$12;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/content/Intent;I)V

    const-string v10, "addAttachment_rawItem"

    invoke-direct {v4, v5, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    .line 556
    :pswitch_c
    const-string v4, "Mms/HandleComposerAttachment"

    const-string v5, "REQUEST REQUEST_CODE_PICK_CONTACT"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    if-nez p3, :cond_1b

    .line 558
    const-string v4, "Mms/HandleComposerAttachment"

    const-string v5, "onActivityResult : data is null REQUEST_CODE_PICK_CONTACT"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 562
    :cond_1b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsMaxRecipient()I

    move-result v4

    const/16 v5, 0x64

    if-ge v4, v5, :cond_1c

    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v4

    const/16 v5, 0x64

    if-lt v4, v5, :cond_1d

    .line 563
    :cond_1c
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "result"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v75

    .line 565
    .local v75, selectedNumbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v75, :cond_6

    .line 566
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v5, ""

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v11, 0x7f0c0180

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v4, v5, v10, v11}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;

    .line 567
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/mms/ui/ComposeMessageFragment;->restrictContactListener:Z

    .line 568
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/mms/util/HandleComposerAttachment$13;

    move-object/from16 v0, p0

    move-object/from16 v1, v75

    invoke-direct {v5, v0, v1}, Lcom/android/mms/util/HandleComposerAttachment$13;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Ljava/util/ArrayList;)V

    const-string v10, "addContact"

    invoke-direct {v4, v5, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    .line 591
    .end local v75           #selectedNumbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1d
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "result"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v75

    .line 592
    .restart local v75       #selectedNumbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x1

    move-object/from16 v0, v75

    invoke-static {v0, v4}, Lcom/android/mms/data/Contact;->get(Ljava/util/ArrayList;Z)Lcom/android/mms/data/ContactList;

    move-result-object v28

    .line 594
    .local v28, contacts:Lcom/android/mms/data/ContactList;
    invoke-virtual/range {v28 .. v28}, Lcom/android/mms/data/ContactList;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 595
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->checkEmailBeforeMakeToButton(Lcom/android/mms/data/ContactList;)V

    .line 596
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v4

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipientErrorFalg()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 598
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/ComposeMessageFragment;->setErrorFlagInRecipientEditor(Z)V

    goto/16 :goto_2

    .line 605
    .end local v28           #contacts:Lcom/android/mms/data/ContactList;
    .end local v75           #selectedNumbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_d
    if-nez p3, :cond_1e

    .line 606
    const-string v4, "Mms/HandleComposerAttachment"

    const-string v5, "onActivityResult : data is null REQUEST_CODE_ADDTEXT_NAMECARD"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 609
    :cond_1e
    const-string v4, "namecard_result"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v71

    .line 610
    .local v71, rtString:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->addText(Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 613
    .end local v71           #rtString:Ljava/lang/String;
    :pswitch_e
    if-nez p3, :cond_1f

    .line 614
    const-string v4, "Mms/HandleComposerAttachment"

    const-string v5, "onActivityResult : data is null REQUEST_CODE_ADDTEXT_CALENDAR"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 617
    :cond_1f
    const-string v4, "result"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 618
    .local v30, eventString:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->addText(Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 622
    .end local v30           #eventString:Ljava/lang/String;
    :pswitch_f
    if-nez p3, :cond_20

    .line 623
    const-string v4, "Mms/HandleComposerAttachment"

    const-string v5, "onActivityResult : data is null REQUEST_CODE_ADDTEXT_MEMO"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 626
    :cond_20
    const-string v4, "memotext"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    .line 627
    .local v56, memoString:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->addText(Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 631
    .end local v56           #memoString:Ljava/lang/String;
    :pswitch_10
    if-nez p3, :cond_21

    .line 632
    const-string v4, "Mms/HandleComposerAttachment"

    const-string v5, "onActivityResult : data is null REQUEST_CODE_ADDTEXT_TASK"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 635
    :cond_21
    const-string v4, "taskstext"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v83

    .line 636
    .local v83, taskString:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->addText(Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 645
    .end local v83           #taskString:Ljava/lang/String;
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mAddContactIntent:Landroid/content/Intent;

    if-eqz v4, :cond_6

    .line 646
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mAddContactIntent:Landroid/content/Intent;

    const-string v5, "email"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 647
    .local v23, address:Ljava/lang/String;
    if-nez v23, :cond_22

    .line 648
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mAddContactIntent:Landroid/content/Intent;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 650
    :cond_22
    if-eqz v23, :cond_6

    .line 651
    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-static {v0, v4}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v27

    .line 652
    .local v27, contact:Lcom/android/mms/data/Contact;
    if-eqz v27, :cond_6

    .line 653
    invoke-virtual/range {v27 .. v27}, Lcom/android/mms/data/Contact;->reload()V

    goto/16 :goto_2

    .line 660
    .end local v23           #address:Ljava/lang/String;
    .end local v27           #contact:Lcom/android/mms/data/Contact;
    :pswitch_12
    if-nez p3, :cond_23

    .line 661
    const-string v4, "Mms/HandleComposerAttachment"

    const-string v5, "onActivityResult : data is null REQUEST_CODE_ADDTEXT_LOCATION"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 664
    :cond_23
    const-string v4, "location"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 666
    .local v45, location:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->addText(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 667
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v10, 0x7f0c0173

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    invoke-static {v4, v5, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 675
    .end local v45           #location:Ljava/lang/String;
    :pswitch_13
    if-nez p3, :cond_24

    .line 676
    const-string v4, "Mms/HandleComposerAttachment"

    const-string v5, "onActivityResult : data is null REQUEST_CODE_PICK_LOCATION"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 679
    :cond_24
    invoke-static {}, Lcom/android/mms/MmsConfig;->getImageResizeQualityFactorWhenAttach()I

    move-result v67

    .line 680
    .local v67, quality:I
    const/16 v53, 0x0

    .line 681
    .local v53, mapImage:Landroid/graphics/Bitmap;
    const/16 v54, 0x0

    .line 683
    .local v54, mapPath:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "android.intent.extra.STREAM"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v49

    check-cast v49, Landroid/net/Uri;

    .line 684
    .local v49, mMediaUri:Landroid/net/Uri;
    if-eqz v49, :cond_25

    .line 685
    invoke-virtual/range {v49 .. v49}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v54

    .line 687
    :cond_25
    const/4 v4, 0x1

    move-object/from16 v0, v54

    invoke-static {v0, v4}, Lcom/android/mms/ui/MessageUtils;->getBitmapFromFile(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v53

    .line 689
    if-nez v53, :cond_26

    .line 690
    const-string v4, "Mms/HandleComposerAttachment"

    const-string v5, "onActivityResult REQUEST_CODE_PICK_LOCATION mapImage is null"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 693
    :cond_26
    const/16 v59, 0x0

    .line 694
    .local v59, os:Ljava/io/ByteArrayOutputStream;
    new-instance v59, Ljava/io/ByteArrayOutputStream;

    .end local v59           #os:Ljava/io/ByteArrayOutputStream;
    invoke-direct/range {v59 .. v59}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 695
    .restart local v59       #os:Ljava/io/ByteArrayOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v0, v53

    move/from16 v1, v67

    move-object/from16 v2, v59

    invoke-virtual {v0, v4, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 697
    new-instance v61, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct/range {v61 .. v61}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 698
    .local v61, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual/range {v59 .. v59}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v62

    .line 699
    .local v62, partData:[B
    invoke-virtual/range {v61 .. v62}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 700
    const-string v4, "image/jpg"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    move-object/from16 v0, v61

    invoke-virtual {v0, v4}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 702
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v89

    .line 703
    .local v89, wasMms:Z
    const/4 v12, 0x0

    .line 704
    .local v12, dataUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    move-result-object v57

    .line 705
    .restart local v57       #messageUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v63

    .line 707
    .local v63, persister:Lcom/google/android/mms/pdu/PduPersister;
    if-nez v57, :cond_28

    .line 708
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v10, 0x7f0c014d

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x1

    invoke-static {v4, v5, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 714
    :catch_0
    move-exception v29

    .line 715
    .local v29, e:Lcom/google/android/mms/MmsException;
    invoke-virtual/range {v29 .. v29}, Lcom/google/android/mms/MmsException;->printStackTrace()V

    .line 718
    .end local v29           #e:Lcom/google/android/mms/MmsException;
    :goto_6
    const-string v4, "location"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 720
    .local v46, locationStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v4}, Landroid/sec/clipboard/ClipboardExManager;->setThawPaste()V

    .line 722
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->addText(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 723
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v10, 0x7f0c0173

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    invoke-static {v4, v5, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 727
    :cond_27
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v39

    .line 728
    .local v39, isMms:Z
    if-nez v89, :cond_29

    if-eqz v39, :cond_29

    .line 729
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->vibrateChangingMms()V

    goto/16 :goto_2

    .line 712
    .end local v39           #isMms:Z
    .end local v46           #locationStr:Ljava/lang/String;
    :cond_28
    :try_start_1
    invoke-static/range {v57 .. v57}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    const/4 v10, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, v61

    invoke-virtual {v0, v1, v4, v5, v10}, Lcom/google/android/mms/pdu/PduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;JLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v12

    .line 713
    const/4 v11, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v15}, Lcom/android/mms/util/HandleComposerAttachment;->addMedia(ILandroid/net/Uri;ZZZ)I
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    .line 731
    .restart local v39       #isMms:Z
    .restart local v46       #locationStr:Ljava/lang/String;
    :cond_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mSlideIndex:Ljava/lang/Integer;

    iget-object v5, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mSlideIndex:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mSlideIndex:Ljava/lang/Integer;

    goto/16 :goto_2

    .line 740
    .end local v12           #dataUri:Landroid/net/Uri;
    .end local v39           #isMms:Z
    .end local v46           #locationStr:Ljava/lang/String;
    .end local v49           #mMediaUri:Landroid/net/Uri;
    .end local v53           #mapImage:Landroid/graphics/Bitmap;
    .end local v54           #mapPath:Ljava/lang/String;
    .end local v57           #messageUri:Landroid/net/Uri;
    .end local v59           #os:Ljava/io/ByteArrayOutputStream;
    .end local v61           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v62           #partData:[B
    .end local v63           #persister:Lcom/google/android/mms/pdu/PduPersister;
    .end local v67           #quality:I
    .end local v89           #wasMms:Z
    :pswitch_14
    if-nez p3, :cond_2a

    .line 741
    const-string v4, "Mms/HandleComposerAttachment"

    const-string v5, "onActivityResult : data is null REQUEST_CODE_REPLACE_LOCATION"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 745
    :cond_2a
    const-string v4, "extra_selected_place"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v64

    .line 746
    .local v64, placeBytes:[B
    const-string v4, "extra_map_url"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v55

    .line 747
    .local v55, mapUrl:Ljava/lang/String;
    const-string v4, "extra_image_path"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v84

    .line 748
    .local v84, tmpImagePath:Ljava/lang/String;
    if-eqz v84, :cond_2b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v84

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v37

    .line 750
    .local v37, imageUri:Landroid/net/Uri;
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    if-nez v4, :cond_2c

    .line 751
    const-string v4, "Mms/HandleComposerAttachment"

    const-string v5, "onActivityResult mComposer.getWorkingMessage() is null"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 748
    .end local v37           #imageUri:Landroid/net/Uri;
    :cond_2b
    const/16 v37, 0x0

    goto :goto_7

    .line 754
    .restart local v37       #imageUri:Landroid/net/Uri;
    :cond_2c
    if-nez v37, :cond_2d

    .line 755
    const-string v4, "Mms/HandleComposerAttachment"

    const-string v5, "onActivityResult REQUEST_CODE_ATTACH_LOCATION imageUri is null"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 759
    :cond_2d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v89

    .line 761
    .restart local v89       #wasMms:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getMmsRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v16

    .line 762
    .local v16, position:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getMmsRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v77

    .line 763
    .local v77, selectionStart:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getMmsRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v76

    .line 764
    .local v76, selectionEnd:I
    if-eqz v13, :cond_2e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 765
    :cond_2e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v14 .. v21}, Lcom/android/mms/data/WorkingMessage;->setAttachment(Landroid/content/ContentResolver;IILandroid/net/Uri;ZZZ)I

    .line 767
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v4

    if-eqz v4, :cond_2f

    .line 768
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->removeAllRawAttachment()Z

    .line 770
    :cond_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v4

    if-eqz v4, :cond_30

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v4

    if-nez v4, :cond_30

    .line 772
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    .line 776
    :cond_30
    if-nez v64, :cond_31

    if-eqz v55, :cond_6

    .line 777
    :cond_31
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    move-object/from16 v2, v55

    move-object/from16 v3, v37

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/util/HandleComposerAttachment;->addLocation([BLjava/lang/String;Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v47

    .line 779
    .local v47, locationUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getMmsRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v16

    .line 780
    const-string v4, "NGM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "**The Map image location is***:"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const/16 v17, 0x1

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v18, v37

    invoke-virtual/range {v14 .. v21}, Lcom/android/mms/data/WorkingMessage;->setAttachment(Landroid/content/ContentResolver;IILandroid/net/Uri;ZZZ)I

    .line 783
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getMmsRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v16

    .line 784
    const-string v4, "NGM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "**The Map location  vcard location is***:"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const/16 v17, 0xa

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v18, v47

    invoke-virtual/range {v14 .. v21}, Lcom/android/mms/data/WorkingMessage;->setAttachment(Landroid/content/ContentResolver;IILandroid/net/Uri;ZZZ)I

    .line 787
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/android/mms/data/WorkingMessage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/mms/util/HandleComposerAttachment;->addText(Ljava/lang/String;)Z

    .line 788
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getMmsRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v4

    move/from16 v0, v77

    move/from16 v1, v76

    invoke-virtual {v4, v0, v1}, Landroid/widget/EditText;->setSelection(II)V

    .line 790
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v4

    if-eqz v4, :cond_32

    .line 791
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 792
    sget-boolean v4, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v4, :cond_32

    .line 793
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    .line 796
    :cond_32
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v39

    .line 797
    .restart local v39       #isMms:Z
    if-nez v89, :cond_6

    if-eqz v39, :cond_6

    .line 798
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->vibrateChangingMms()V

    goto/16 :goto_2

    .line 804
    .end local v16           #position:I
    .end local v37           #imageUri:Landroid/net/Uri;
    .end local v39           #isMms:Z
    .end local v47           #locationUri:Landroid/net/Uri;
    .end local v55           #mapUrl:Ljava/lang/String;
    .end local v64           #placeBytes:[B
    .end local v76           #selectionEnd:I
    .end local v77           #selectionStart:I
    .end local v84           #tmpImagePath:Ljava/lang/String;
    .end local v89           #wasMms:Z
    :pswitch_15
    if-nez p3, :cond_33

    .line 805
    const-string v4, "Mms/HandleComposerAttachment"

    const-string v5, "onActivityResult : data is null REQUEST_CODE_ADDTEXT_SMEMO"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 808
    :cond_33
    const-string v4, "textbody"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v72

    .line 809
    .local v72, sMemoString:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->addText(Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 813
    .end local v72           #sMemoString:Ljava/lang/String;
    :pswitch_16
    if-nez p3, :cond_34

    .line 814
    const-string v4, "Mms/HandleComposerAttachment"

    const-string v5, "onActivityResult : data is null REQUEST_CODE_ADDTEXT_SNOTE"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 817
    :cond_34
    const-string v4, "android.intent.extra.TEXT"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Ljava/lang/String;

    .line 818
    .restart local v73       #sSnoteString:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->addText(Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 822
    .end local v73           #sSnoteString:Ljava/lang/String;
    :pswitch_17
    if-nez p3, :cond_35

    .line 823
    const-string v4, "Mms/HandleComposerAttachment"

    const-string v5, "onActivityResult : data is null REQUEST_CODE_TRANS"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 826
    :cond_35
    const-string v4, "isSubject"

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v42

    .line 827
    .local v42, isSubject:Z
    const-string v4, "transString"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v58

    .line 828
    .local v58, newString:Ljava/lang/String;
    const-string v4, "isSend"

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v41

    .line 829
    .local v41, isSend:Z
    if-eqz v42, :cond_36

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v4, :cond_36

    .line 830
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-static {v4}, Lcom/android/mms/util/UIUtils;->clearText(Landroid/widget/TextView;)V

    .line 831
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    move-object/from16 v0, v58

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 837
    :goto_8
    if-eqz v41, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->isFocusable()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 838
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->isPreparedForSending()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 839
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->confirmSendMessageIfNeeded()V

    goto/16 :goto_2

    .line 833
    :cond_36
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getMmsRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/util/UIUtils;->clearText(Landroid/widget/TextView;)V

    .line 834
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getMmsRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v4

    move-object/from16 v0, v58

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 844
    .end local v41           #isSend:Z
    .end local v42           #isSubject:Z
    .end local v58           #newString:Ljava/lang/String;
    :pswitch_18
    if-eqz p3, :cond_2

    .line 847
    const-string v4, "RESERVATION_TIME"

    const-wide/16 v10, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v68

    .line 850
    .local v68, reservationTime:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mMessageReservedSettings:Lcom/android/mms/ui/ComposeMessageFragment$MessageReservedSettings;

    move-wide/from16 v0, v68

    invoke-virtual {v4, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment$MessageReservedSettings;->setReservationTime(J)V

    .line 852
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageFragment;->mMessageReservedSettings:Lcom/android/mms/ui/ComposeMessageFragment$MessageReservedSettings;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment$MessageReservedSettings;->getReservationTime()J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Lcom/android/mms/data/WorkingMessage;->setReserveDeliveryTime(J)V

    .line 855
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mMessageReservedSettings:Lcom/android/mms/ui/ComposeMessageFragment$MessageReservedSettings;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment$MessageReservedSettings;->getDeliveryTime()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v4, v4, v10

    if-lez v4, :cond_37

    .line 857
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V

    .line 858
    :cond_37
    const-wide/16 v4, 0x0

    cmp-long v4, v68, v4

    if-nez v4, :cond_6

    .line 859
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V

    goto/16 :goto_2

    .line 863
    .end local v68           #reservationTime:J
    :pswitch_19
    if-nez p3, :cond_38

    .line 864
    const-string v4, "Mms/HandleComposerAttachment"

    const-string v5, "onActivityResult : data is null REQUEST_CODE_TRANSLATE"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 867
    :cond_38
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v65

    .line 868
    .local v65, prefs:Landroid/content/SharedPreferences;
    const-string v4, "pref_key_signature_text"

    const-string v5, ""

    move-object/from16 v0, v65

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v78

    .line 869
    .local v78, signature:Ljava/lang/String;
    const-string v4, "pref_key_enable_signature"

    const/4 v5, 0x0

    move-object/from16 v0, v65

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-static/range {v78 .. v78}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_39

    invoke-virtual/range {v78 .. v78}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_39

    const/16 v40, 0x1

    .line 872
    .local v40, isNeededSignatureAdd:Z
    :goto_9
    const/4 v4, -0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_45

    .line 873
    const-string v4, "source_language"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v79

    .line 874
    .local v79, source_language:Ljava/lang/String;
    const-string v4, "source_text"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v80

    .line 875
    .local v80, source_text:Ljava/lang/String;
    const-string v4, "target_language"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v81

    .line 876
    .local v81, target_language:Ljava/lang/String;
    const-string v4, "target_text"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v82

    .line 877
    .local v82, target_text:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v79

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v80 .. v80}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v81

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v82 .. v82}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    .line 879
    .local v48, logs:Ljava/lang/String;
    const-string v4, "Mms/HandleComposerAttachment"

    move-object/from16 v0, v48

    invoke-static {v4, v0}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    if-eqz v40, :cond_3a

    invoke-virtual/range {v82 .. v82}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual/range {v78 .. v78}, Ljava/lang/String;->length()I

    move-result v5

    add-int v70, v4, v5

    .line 882
    .local v70, result:I
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    if-eqz v4, :cond_43

    .line 883
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 884
    const/16 v36, 0x0

    .restart local v36       #i:I
    :goto_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v4

    move/from16 v0, v36

    if-ge v0, v4, :cond_3b

    .line 885
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    const-string v5, ""

    move/from16 v0, v36

    invoke-virtual {v4, v0, v5}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    .line 884
    add-int/lit8 v36, v36, 0x1

    goto :goto_b

    .line 869
    .end local v36           #i:I
    .end local v40           #isNeededSignatureAdd:Z
    .end local v48           #logs:Ljava/lang/String;
    .end local v70           #result:I
    .end local v79           #source_language:Ljava/lang/String;
    .end local v80           #source_text:Ljava/lang/String;
    .end local v81           #target_language:Ljava/lang/String;
    .end local v82           #target_text:Ljava/lang/String;
    :cond_39
    const/16 v40, 0x0

    goto/16 :goto_9

    .line 880
    .restart local v40       #isNeededSignatureAdd:Z
    .restart local v48       #logs:Ljava/lang/String;
    .restart local v79       #source_language:Ljava/lang/String;
    .restart local v80       #source_text:Ljava/lang/String;
    .restart local v81       #target_language:Ljava/lang/String;
    .restart local v82       #target_text:Ljava/lang/String;
    :cond_3a
    invoke-virtual/range {v82 .. v82}, Ljava/lang/String;->length()I

    move-result v70

    goto :goto_a

    .line 888
    .restart local v70       #result:I
    :cond_3b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextLimit()I

    move-result v4

    move/from16 v0, v70

    if-le v0, v4, :cond_41

    .line 889
    const/16 v36, 0x0

    .restart local v36       #i:I
    :goto_c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextLimit()I

    move-result v4

    div-int v4, v70, v4

    move/from16 v0, v36

    if-gt v0, v4, :cond_42

    .line 890
    if-eqz v40, :cond_3d

    if-nez v36, :cond_3d

    .line 891
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextLimit()I

    move-result v11

    invoke-virtual/range {v78 .. v78}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v11, v14

    add-int/lit8 v11, v11, -0x1

    move-object/from16 v0, v82

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "\n"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v78

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move/from16 v0, v36

    invoke-virtual {v4, v0, v5}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    .line 893
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextLimit()I

    move-result v4

    invoke-virtual/range {v78 .. v78}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v82

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v82

    .line 889
    :cond_3c
    :goto_d
    add-int/lit8 v36, v36, 0x1

    goto :goto_c

    .line 895
    :cond_3d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v4

    if-eqz v4, :cond_3e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v4

    move/from16 v0, v36

    if-lt v0, v4, :cond_3f

    :cond_3e
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSlideCount()I

    move-result v4

    move/from16 v0, v36

    if-ge v0, v4, :cond_3c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    move/from16 v0, v36

    invoke-virtual {v4, v0}, Lcom/android/mms/data/WorkingMessage;->addSlide(I)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 898
    :cond_3f
    invoke-virtual/range {v82 .. v82}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextLimit()I

    move-result v5

    if-ge v4, v5, :cond_40

    .line 899
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    move/from16 v0, v36

    move-object/from16 v1, v82

    invoke-virtual {v4, v0, v1}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    goto :goto_d

    .line 901
    :cond_40
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextLimit()I

    move-result v10

    move-object/from16 v0, v82

    invoke-virtual {v0, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move/from16 v0, v36

    invoke-virtual {v4, v0, v5}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    .line 902
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextLimit()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v82

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v82

    goto :goto_d

    .line 908
    .end local v36           #i:I
    :cond_41
    if-eqz v40, :cond_44

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->isSignaturePresent:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_44

    .line 909
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v82

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v78

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v5, v10}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    .line 914
    :cond_42
    :goto_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getMmsRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v5

    const/16 v10, 0x1e

    invoke-virtual {v4, v5, v10}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    .line 916
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getMmsRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v10, 0x1

    invoke-virtual {v4, v5, v10}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    .line 918
    :cond_43
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/ComposeMessageFragment;->setTranslateBtnMode(Z)V

    .line 919
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V

    goto/16 :goto_2

    .line 911
    :cond_44
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v82

    invoke-virtual {v4, v5, v0}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    goto :goto_e

    .line 921
    .end local v48           #logs:Ljava/lang/String;
    .end local v70           #result:I
    .end local v79           #source_language:Ljava/lang/String;
    .end local v80           #source_text:Ljava/lang/String;
    .end local v81           #target_language:Ljava/lang/String;
    .end local v82           #target_text:Ljava/lang/String;
    :cond_45
    const-string v4, "Mms/HandleComposerAttachment"

    const-string v5, "Translation is failed."

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 926
    .end local v40           #isNeededSignatureAdd:Z
    .end local v65           #prefs:Landroid/content/SharedPreferences;
    .end local v78           #signature:Ljava/lang/String;
    :pswitch_1a
    if-eqz p3, :cond_2

    .line 929
    const-string v4, "RESERVATION_TIME"

    const-wide/16 v10, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v50

    .line 931
    .local v50, mReservationTime:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mMessageReservedSettings:Lcom/android/mms/ui/ComposeMessageFragment$MessageReservedSettings;

    move-wide/from16 v0, v50

    invoke-virtual {v4, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment$MessageReservedSettings;->setReservationTime(J)V

    .line 932
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageFragment;->mMessageReservedSettings:Lcom/android/mms/ui/ComposeMessageFragment$MessageReservedSettings;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment$MessageReservedSettings;->getReservationTime()J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Lcom/android/mms/data/WorkingMessage;->setReserveDeliveryTime(J)V

    .line 934
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mMessageReservedSettings:Lcom/android/mms/ui/ComposeMessageFragment$MessageReservedSettings;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment$MessageReservedSettings;->getDeliveryTime()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v4, v4, v10

    if-lez v4, :cond_46

    .line 936
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V

    .line 938
    :cond_46
    const-wide/16 v4, 0x0

    cmp-long v4, v50, v4

    if-nez v4, :cond_47

    .line 939
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V

    .line 941
    :cond_47
    const-string v4, "DELIVERY_REPORT"

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v24

    .line 943
    .local v24, bDeliveryReport:Z
    const-string v4, "READ_REPORT"

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v25

    .line 945
    .local v25, bReadReport:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/android/mms/data/WorkingMessage;->setMessageDeliveryReport(Z)V

    .line 946
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/android/mms/data/WorkingMessage;->setMessageReadReport(Z)V

    .line 947
    if-eqz v24, :cond_48

    .line 948
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v5, 0x1

    const/4 v10, 0x0

    invoke-virtual {v4, v5, v10}, Lcom/android/mms/ui/ComposeMessageFragment;->SetDeliveryReadReportView(II)V

    .line 952
    :goto_f
    if-eqz v25, :cond_49

    .line 953
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v5, 0x2

    const/4 v10, 0x0

    invoke-virtual {v4, v5, v10}, Lcom/android/mms/ui/ComposeMessageFragment;->SetDeliveryReadReportView(II)V

    goto/16 :goto_2

    .line 950
    :cond_48
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v5, 0x1

    const/16 v10, 0x8

    invoke-virtual {v4, v5, v10}, Lcom/android/mms/ui/ComposeMessageFragment;->SetDeliveryReadReportView(II)V

    goto :goto_f

    .line 955
    :cond_49
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v5, 0x2

    const/16 v10, 0x8

    invoke-virtual {v4, v5, v10}, Lcom/android/mms/ui/ComposeMessageFragment;->SetDeliveryReadReportView(II)V

    goto/16 :goto_2

    .line 200
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_19
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_c
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_b
        :pswitch_0
        :pswitch_11
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_b
        :pswitch_10
        :pswitch_12
        :pswitch_13
        :pswitch_15
        :pswitch_16
        :pswitch_14
        :pswitch_14
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_17
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_18
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1a
    .end packed-switch
.end method

.method public setIntentForVideo(Landroid/content/Intent;Z)V
    .locals 9
    .parameter "intent"
    .parameter "toReplaceMedia"

    .prologue
    const/4 v8, 0x0

    .line 1879
    iget-object v5, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v4

    .line 1880
    .local v4, slideshow:Lcom/android/mms/model/SlideshowModel;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v5

    int-to-long v0, v5

    .line 1882
    .local v0, sizeLimit:J
    if-eqz v4, :cond_1

    .line 1883
    const-wide/16 v2, 0x0

    .line 1884
    .local v2, slideSize:J
    iget-object v5, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getMmsRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1885
    iget-object v5, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getMmsRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v5

    int-to-long v2, v5

    .line 1886
    :cond_0
    if-eqz p2, :cond_2

    .line 1887
    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->getRemainContentsSize()I

    move-result v5

    int-to-long v5, v5

    add-long v0, v5, v2

    .line 1893
    .end local v2           #slideSize:J
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsModeCaptureVideoMaxSize()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 1895
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-lez v5, :cond_3

    .line 1896
    const-string v5, "android.intent.extra.videoQuality"

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1897
    const-string v5, "android.intent.extra.sizeLimit"

    invoke-virtual {p1, v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1898
    const-string v5, "mms"

    const/4 v6, 0x1

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1903
    :goto_1
    return-void

    .line 1889
    .restart local v2       #slideSize:J
    :cond_2
    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->getRemainContentsSize()I

    move-result v5

    int-to-long v0, v5

    goto :goto_0

    .line 1900
    .end local v2           #slideSize:J
    :cond_3
    iget-object v5, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const v7, 0x7f0c0033

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public startActivityForAddMedia(IZ)V
    .locals 37
    .parameter "type"
    .parameter "toReplaceMedia"

    .prologue
    .line 1542
    const-string v3, "Mms/HandleComposerAttachment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startActivityForAddMedia,type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",replace:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1544
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1545
    const-string v3, "Mms/HandleComposerAttachment"

    const-string v4, "startActivityforAddMedia fragment detached, just return"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1876
    :goto_0
    return-void

    .line 1549
    :cond_0
    const/4 v15, 0x0

    .line 1550
    .local v15, contentType:Ljava/lang/String;
    const/16 v30, 0x0

    .line 1551
    .local v30, requestCode:I
    const/16 v19, 0x0

    .line 1558
    .local v19, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {}, Lcom/android/mms/ui/SipHandler;->isSipVisible()Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mForceShowSip:Z

    .line 1559
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    invoke-virtual {v3}, Lcom/android/mms/ui/SipHandler;->hideSip()V

    .line 1561
    packed-switch p1, :pswitch_data_0

    .line 1861
    const/16 v19, 0x0

    .line 1865
    :cond_1
    :goto_1
    if-nez v19, :cond_1f

    .line 1866
    const-string v3, "Mms/HandleComposerAttachment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startActivityForAddMedia, cannot start. reqCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1564
    :pswitch_0
    if-eqz p2, :cond_2

    .line 1565
    const/16 v30, 0x37

    .line 1570
    :goto_2
    new-instance v19, Landroid/content/Intent;

    .end local v19           #intent:Landroid/content/Intent;
    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    .line 1571
    .restart local v19       #intent:Landroid/content/Intent;
    const-string v3, "output"

    new-instance v4, Ljava/io/File;

    const-string v5, "/mnt/sdcard/message_avatar_temp.jpg"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1572
    const-string v3, "crop"

    const-string v4, "true"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1573
    const-string v3, "scale"

    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1574
    const-string v3, "scaleUpIfNeeded"

    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1575
    const-string v3, "aspectX"

    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1576
    const-string v3, "aspectY"

    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1577
    const-string v3, "outputX"

    const/16 v4, 0x280

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1578
    const-string v3, "outputY"

    const/16 v4, 0x1e0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1579
    const-string v3, "com.acrodea.samsung_avatar_maker"

    const-string v4, "com.acrodea.samsung_avatar_maker.AvatarMaker_Select"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1567
    :cond_2
    const/16 v30, 0x36

    goto :goto_2

    .line 1583
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v4, "com.sec.android.gallery3d"

    invoke-static {v3, v4}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1584
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v4, "com.cooliris.media"

    invoke-static {v3, v4}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1585
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v4, "com.android.gallery3d"

    invoke-static {v3, v4}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1588
    :cond_3
    const-string v15, "image/*"

    .line 1589
    if-eqz p2, :cond_5

    .line 1590
    const/16 v30, 0x29

    .line 1591
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1592
    new-instance v19, Landroid/content/Intent;

    .end local v19           #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.PICK"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1593
    .restart local v19       #intent:Landroid/content/Intent;
    const-string v3, "android.intent.category.DEFAULT"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1641
    :goto_3
    if-eqz v19, :cond_1

    .line 1642
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 1595
    :cond_4
    new-instance v19, Landroid/content/Intent;

    .end local v19           #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.GET_CONTENT"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v19       #intent:Landroid/content/Intent;
    goto :goto_3

    .line 1599
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMessageSupportMultiImageAttach()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1600
    const/4 v10, 0x1

    .line 1602
    .local v10, availableSlideCount:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1603
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v33

    .line 1604
    .local v33, slideshow:Lcom/android/mms/model/SlideshowModel;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSlideCount()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getMmsRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/MmsRichContainer;->getTotalPageCount()I

    move-result v4

    sub-int v10, v3, v4

    .line 1605
    if-eqz v33, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getMmsRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v3

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getMmsRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v3

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v3

    if-nez v3, :cond_7

    .line 1607
    add-int/lit8 v10, v10, 0x1

    .line 1614
    .end local v33           #slideshow:Lcom/android/mms/model/SlideshowModel;
    :cond_6
    :goto_4
    if-nez v10, :cond_9

    .line 1615
    const/4 v4, -0x6

    const v5, 0x7f0c00bf

    const/4 v6, 0x0

    const/16 v7, 0xa

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/mms/util/HandleComposerAttachment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    goto/16 :goto_0

    .line 1608
    .restart local v33       #slideshow:Lcom/android/mms/model/SlideshowModel;
    :cond_7
    if-nez v33, :cond_6

    .line 1609
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 1612
    .end local v33           #slideshow:Lcom/android/mms/model/SlideshowModel;
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSlideCount()I

    move-result v10

    goto :goto_4

    .line 1619
    :cond_9
    const/16 v30, 0x38

    .line 1621
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1622
    new-instance v19, Landroid/content/Intent;

    .end local v19           #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.PICK"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1623
    .restart local v19       #intent:Landroid/content/Intent;
    const-string v3, "android.intent.category.DEFAULT"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1627
    :goto_5
    const-string v3, "multi-pick"

    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1628
    const-string v3, "pick-max-item"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_3

    .line 1625
    :cond_a
    new-instance v19, Landroid/content/Intent;

    .end local v19           #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.GET_CONTENT"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v19       #intent:Landroid/content/Intent;
    goto :goto_5

    .line 1630
    .end local v10           #availableSlideCount:I
    :cond_b
    const/16 v30, 0xa

    .line 1631
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1632
    new-instance v19, Landroid/content/Intent;

    .end local v19           #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.PICK"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1633
    .restart local v19       #intent:Landroid/content/Intent;
    const-string v3, "android.intent.category.DEFAULT"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3

    .line 1635
    :cond_c
    new-instance v19, Landroid/content/Intent;

    .end local v19           #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.GET_CONTENT"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v19       #intent:Landroid/content/Intent;
    goto/16 :goto_3

    .line 1647
    :pswitch_2
    if-eqz p2, :cond_d

    .line 1648
    const/16 v30, 0x2a

    .line 1653
    :goto_6
    new-instance v19, Landroid/content/Intent;

    .end local v19           #intent:Landroid/content/Intent;
    const-string v3, "android.media.action.IMAGE_CAPTURE"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1654
    .restart local v19       #intent:Landroid/content/Intent;
    const-string v3, "com.sec.android.app.camera"

    const-string v4, "com.sec.android.app.camera.Camera"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1655
    const-string v3, "return-uri"

    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_1

    .line 1650
    :cond_d
    const/16 v30, 0xb

    goto :goto_6

    .line 1660
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v4, "com.sec.android.gallery3d"

    invoke-static {v3, v4}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 1661
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v4, "com.cooliris.media"

    invoke-static {v3, v4}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 1662
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v4, "com.android.gallery3d"

    invoke-static {v3, v4}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1665
    :cond_e
    const-string v15, "video/*"

    .line 1666
    if-eqz p2, :cond_10

    .line 1667
    const/16 v30, 0x2b

    .line 1672
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1673
    new-instance v19, Landroid/content/Intent;

    .end local v19           #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.PICK"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1674
    .restart local v19       #intent:Landroid/content/Intent;
    const-string v3, "android.intent.category.DEFAULT"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1680
    :goto_8
    if-eqz v19, :cond_f

    .line 1681
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1684
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/util/HandleComposerAttachment;->setIntentForVideo(Landroid/content/Intent;Z)V

    goto/16 :goto_1

    .line 1669
    :cond_10
    const/16 v30, 0xc

    goto :goto_7

    .line 1676
    :cond_11
    new-instance v19, Landroid/content/Intent;

    .end local v19           #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.GET_CONTENT"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1677
    .restart local v19       #intent:Landroid/content/Intent;
    const-string v3, "android.intent.category.OPENABLE"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_8

    .line 1688
    :pswitch_4
    if-eqz p2, :cond_12

    .line 1689
    const/16 v30, 0x2c

    .line 1694
    :goto_9
    new-instance v19, Landroid/content/Intent;

    .end local v19           #intent:Landroid/content/Intent;
    const-string v3, "android.media.action.VIDEO_CAPTURE"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1695
    .restart local v19       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/util/HandleComposerAttachment;->setIntentForVideo(Landroid/content/Intent;Z)V

    goto/16 :goto_1

    .line 1691
    :cond_12
    const/16 v30, 0xd

    goto :goto_9

    .line 1700
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v4, "com.sec.android.app.myfiles"

    invoke-static {v3, v4}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1703
    if-eqz p2, :cond_13

    .line 1704
    const/16 v30, 0x2d

    .line 1709
    :goto_a
    new-instance v19, Landroid/content/Intent;

    .end local v19           #intent:Landroid/content/Intent;
    const-string v3, "com.sec.android.app.myfiles.PICK_DATA"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1710
    .restart local v19       #intent:Landroid/content/Intent;
    const-string v3, "FOLDERPATH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Sounds"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1711
    const-string v3, "CONTENT_TYPE"

    const-string v4, "audio/*"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 1706
    :cond_13
    const/16 v30, 0xe

    goto :goto_a

    .line 1715
    :pswitch_6
    if-eqz p2, :cond_17

    .line 1716
    const/16 v30, 0x2e

    .line 1722
    :goto_b
    new-instance v19, Landroid/content/Intent;

    .end local v19           #intent:Landroid/content/Intent;
    const-string v3, "android.provider.MediaStore.RECORD_SOUND"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1723
    .restart local v19       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v33

    .line 1724
    .restart local v33       #slideshow:Lcom/android/mms/model/SlideshowModel;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v23, v0

    .line 1725
    .local v23, maxContentSize:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/data/WorkingMessage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    .line 1726
    .local v35, textBody:Ljava/lang/String;
    const/16 v36, 0x0

    .line 1728
    .local v36, textBodySize:I
    if-eqz v35, :cond_14

    .line 1729
    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v36

    .line 1732
    :cond_14
    invoke-static/range {v35 .. v35}, Lcom/android/mms/util/TelephonyUtils;->getStringByteSize(Ljava/lang/String;)[I

    move-result-object v25

    .line 1733
    .local v25, params:[I
    const/4 v3, 0x3

    aget v3, v25, v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_15

    .line 1734
    mul-int/lit8 v36, v36, 0x3

    .line 1736
    :cond_15
    const-string v3, "Mms/HandleComposerAttachment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "maxContentSize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v23

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", textBodySize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1739
    if-eqz v33, :cond_1a

    .line 1740
    invoke-virtual/range {v33 .. v33}, Lcom/android/mms/model/SlideshowModel;->getRemainContentsSize()I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v27, v0

    .line 1741
    .local v27, remainSize:J
    const-wide/16 v31, 0x0

    .line 1742
    .local v31, slideSize:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getMmsRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v3

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v3

    if-eqz v3, :cond_16

    .line 1743
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getMmsRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v3

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v31, v0

    .line 1744
    :cond_16
    if-eqz p2, :cond_19

    const-wide/16 v3, 0x0

    cmp-long v3, v31, v3

    if-lez v3, :cond_19

    .line 1745
    add-long v3, v27, v31

    cmp-long v3, v3, v23

    if-gez v3, :cond_18

    .line 1746
    add-long v21, v27, v31

    .line 1757
    .end local v27           #remainSize:J
    .end local v31           #slideSize:J
    .local v21, maxBytes:J
    :goto_c
    const-string v3, "android.provider.MediaStore.extra.MAX_BYTES"

    move-object/from16 v0, v19

    move-wide/from16 v1, v21

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1758
    const-string v3, "mime_type"

    const-string v4, "audio/amr"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 1718
    .end local v21           #maxBytes:J
    .end local v23           #maxContentSize:J
    .end local v25           #params:[I
    .end local v33           #slideshow:Lcom/android/mms/model/SlideshowModel;
    .end local v35           #textBody:Ljava/lang/String;
    .end local v36           #textBodySize:I
    :cond_17
    const/16 v30, 0xf

    goto/16 :goto_b

    .line 1748
    .restart local v23       #maxContentSize:J
    .restart local v25       #params:[I
    .restart local v27       #remainSize:J
    .restart local v31       #slideSize:J
    .restart local v33       #slideshow:Lcom/android/mms/model/SlideshowModel;
    .restart local v35       #textBody:Ljava/lang/String;
    .restart local v36       #textBodySize:I
    :cond_18
    move/from16 v0, v36

    int-to-long v3, v0

    sub-long v21, v23, v3

    .restart local v21       #maxBytes:J
    goto :goto_c

    .line 1751
    .end local v21           #maxBytes:J
    :cond_19
    move-wide/from16 v21, v27

    .restart local v21       #maxBytes:J
    goto :goto_c

    .line 1754
    .end local v21           #maxBytes:J
    .end local v27           #remainSize:J
    .end local v31           #slideSize:J
    :cond_1a
    move/from16 v0, v36

    int-to-long v3, v0

    sub-long v21, v23, v3

    .restart local v21       #maxBytes:J
    goto :goto_c

    .line 1762
    .end local v21           #maxBytes:J
    .end local v23           #maxContentSize:J
    .end local v25           #params:[I
    .end local v33           #slideshow:Lcom/android/mms/model/SlideshowModel;
    .end local v35           #textBody:Ljava/lang/String;
    .end local v36           #textBodySize:I
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v4, "com.android.contacts"

    invoke-static {v3, v4}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v4, "com.android.jcontacts"

    invoke-static {v3, v4}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1766
    :cond_1b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxRawAttachmentCount()I

    move-result v18

    .line 1767
    .local v18, importCount:I
    new-instance v19, Landroid/content/Intent;

    .end local v19           #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.PICK"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1768
    .restart local v19       #intent:Landroid/content/Intent;
    const-string v3, "text/x-vcard"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1769
    const-string v3, "maxRecipientCount"

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1770
    const/16 v30, 0x14

    .line 1771
    goto/16 :goto_1

    .line 1775
    .end local v18           #importCount:I
    :pswitch_8
    new-instance v14, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    sget-object v4, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v14, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1776
    .local v14, calendarIntent:Landroid/content/Intent;
    const-string v3, "vnd.android.cursor.item/vnd.samsung.calendar.*"

    invoke-virtual {v14, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1777
    const-string v3, "multiple_choice"

    const/4 v4, 0x1

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1779
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move/from16 v0, p1

    invoke-static {v3, v0}, Lcom/android/mms/ui/IconWeightListAdapter;->updateWeight(Landroid/content/Context;I)V

    .line 1780
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/16 v4, 0x1a

    invoke-virtual {v3, v14, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1781
    :catch_0
    move-exception v17

    .line 1782
    .local v17, ex:Landroid/content/ActivityNotFoundException;
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-direct {v11, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1783
    .local v11, b:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0c0123

    invoke-virtual {v11, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1784
    const v3, 0x7f0c0124

    invoke-virtual {v11, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1785
    const v3, 0x7f0c004f

    const/4 v4, 0x0

    invoke-virtual {v11, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1786
    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1791
    .end local v11           #b:Landroid/app/AlertDialog$Builder;
    .end local v14           #calendarIntent:Landroid/content/Intent;
    .end local v17           #ex:Landroid/content/ActivityNotFoundException;
    :pswitch_9
    new-instance v19, Landroid/content/Intent;

    .end local v19           #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.PICK"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1792
    .restart local v19       #intent:Landroid/content/Intent;
    const-string v3, "text/x-vnote"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1793
    const/16 v30, 0x1b

    .line 1794
    goto/16 :goto_1

    .line 1797
    :pswitch_a
    new-instance v19, Landroid/content/Intent;

    .end local v19           #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.PICK"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1798
    .restart local v19       #intent:Landroid/content/Intent;
    const-string v3, "text/x-vtodo"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1799
    const/16 v30, 0x33

    .line 1800
    goto/16 :goto_1

    .line 1803
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/mms/util/NetworkConnectionUtils;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 1804
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->showNetworkErrorDialog()V

    goto/16 :goto_1

    .line 1808
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move/from16 v0, p1

    invoke-static {v3, v0}, Lcom/android/mms/ui/IconWeightListAdapter;->updateWeight(Landroid/content/Context;I)V

    .line 1810
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/telephony/TelephonyManager;

    .line 1811
    .local v34, telephony:Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v34 .. v34}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v12

    .line 1812
    .local v12, brandName:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v3

    if-eqz v3, :cond_1e

    const-string v3, "Verizon"

    invoke-virtual {v12, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 1813
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v26

    .line 1814
    .local v26, prefs:Landroid/content/SharedPreferences;
    const-string v3, "location_msg_info"

    const/4 v4, 0x1

    move-object/from16 v0, v26

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1815
    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    .line 1816
    .local v16, editor:Landroid/content/SharedPreferences$Editor;
    move/from16 v29, p2

    .line 1817
    .local v29, replace:Z
    new-instance v13, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-direct {v13, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1818
    .local v13, builder:Landroid/app/AlertDialog$Builder;
    sget-object v3, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v13, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1819
    const v3, 0x7f0c031f

    invoke-virtual {v13, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1820
    const v3, 0x7f0c031e

    invoke-virtual {v13, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1821
    const v3, 0x7f0c004f

    new-instance v4, Lcom/android/mms/util/HandleComposerAttachment$24;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v29

    invoke-direct {v4, v0, v1, v2}, Lcom/android/mms/util/HandleComposerAttachment$24;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/content/SharedPreferences$Editor;Z)V

    invoke-virtual {v13, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1829
    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1831
    .end local v13           #builder:Landroid/app/AlertDialog$Builder;
    .end local v16           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v29           #replace:Z
    :cond_1d
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->startLocationMapActivity(Z)V

    goto/16 :goto_0

    .line 1834
    .end local v26           #prefs:Landroid/content/SharedPreferences;
    :cond_1e
    new-instance v20, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1835
    .local v20, locationIntent:Landroid/content/Intent;
    const-string v3, "image_location"

    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1836
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-class v4, Lcom/android/mms/ui/SelectMapActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1837
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/16 v4, 0x24

    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1842
    .end local v12           #brandName:Ljava/lang/String;
    .end local v20           #locationIntent:Landroid/content/Intent;
    .end local v34           #telephony:Landroid/telephony/TelephonyManager;
    :pswitch_c
    new-instance v19, Landroid/content/Intent;

    .end local v19           #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.PENMEMO_ATTACH"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1843
    .restart local v19       #intent:Landroid/content/Intent;
    const-string v3, "app_name"

    const-string v4, "com.android.mms"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1844
    const/16 v30, 0x33

    .line 1845
    goto/16 :goto_1

    .line 1848
    :pswitch_d
    new-instance v19, Landroid/content/Intent;

    .end local v19           #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.SNOTE_PICK"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1849
    .restart local v19       #intent:Landroid/content/Intent;
    const-string v3, "SelectMode"

    const-string v4, "single"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1850
    const-string v3, "ReturnType"

    const-string v4, "Imageonly"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1851
    const/16 v30, 0x35

    .line 1852
    goto/16 :goto_1

    .line 1855
    :pswitch_e
    new-instance v19, Landroid/content/Intent;

    .end local v19           #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.EDIT"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1856
    .restart local v19       #intent:Landroid/content/Intent;
    const-string v3, "application/vnd.penmemo.drawingpad"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1857
    const/16 v30, 0x33

    .line 1858
    goto/16 :goto_1

    .line 1869
    :cond_1f
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportContextAwareness()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 1870
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move/from16 v0, p1

    invoke-static {v3, v0}, Lcom/android/mms/ui/IconWeightListAdapter;->updateWeight(Landroid/content/Context;I)V

    .line 1873
    :cond_20
    const-string v3, "Mms/HandleComposerAttachment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startActivityForAddMedia. reqCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1874
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v0, v19

    move/from16 v1, v30

    invoke-virtual {v3, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1561
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_e
        :pswitch_d
        :pswitch_0
    .end packed-switch
.end method

.method public startActivityForAddText(I)V
    .locals 8
    .parameter "type"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1443
    const-string v3, "Mms/HandleComposerAttachment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startActivityForAddText, type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1444
    iget-object v3, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1445
    const-string v3, "Mms/HandleComposerAttachment"

    const-string v4, "addtext, Fragment already detached. just Finish"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1539
    :goto_0
    return-void

    .line 1449
    :cond_0
    const/4 v1, 0x0

    .line 1450
    .local v1, intent:Landroid/content/Intent;
    const/4 v2, 0x0

    .line 1452
    .local v2, requestCode:I
    packed-switch p1, :pswitch_data_0

    .line 1519
    :pswitch_0
    const/4 v1, 0x0

    .line 1520
    const/4 v2, 0x0

    .line 1524
    :goto_1
    if-nez v1, :cond_2

    .line 1525
    const-string v3, "Mms/HandleComposerAttachment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startActivityForAddText, cannot start. reqCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1454
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v3, "intent.action.INTERACTION_LIST"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1455
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "additional"

    const-string v4, "namecard"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1456
    const/16 v2, 0x1e

    .line 1457
    goto :goto_1

    .line 1460
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v3, "intent.action.INTERACTION_LIST"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1461
    .restart local v1       #intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.PICK"

    sget-object v4, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1462
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "text/plain"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1463
    const-string v3, "multiple_choice"

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1465
    const/16 v2, 0x1f

    .line 1474
    goto :goto_1

    .line 1477
    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.PICK"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1478
    .restart local v1       #intent:Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.app.memo"

    const-string v4, "com.sec.android.app.memo.MemoAddTextActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1480
    .local v0, cn:Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1481
    const-string v3, "text/memo_string"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1482
    const/16 v2, 0x20

    .line 1483
    goto :goto_1

    .line 1486
    .end local v0           #cn:Landroid/content/ComponentName;
    :pswitch_4
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.PICK"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1487
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "text/tasks_string"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1488
    const/16 v2, 0x22

    .line 1489
    goto :goto_1

    .line 1492
    :pswitch_5
    iget-object v3, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->showQuickTextDialog()V

    goto :goto_0

    .line 1496
    :pswitch_6
    iget-object v3, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/mms/util/NetworkConnectionUtils;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1497
    iget-object v3, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->showNetworkErrorDialog()V

    goto/16 :goto_1

    .line 1500
    :cond_1
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.PICK"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1501
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "image_location"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1502
    iget-object v3, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-class v4, Lcom/android/mms/ui/SelectMapActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1503
    const/16 v2, 0x23

    .line 1504
    goto/16 :goto_1

    .line 1507
    :pswitch_7
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v3, "intent.smemo.pick"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1508
    .restart local v1       #intent:Landroid/content/Intent;
    const/16 v2, 0x25

    .line 1509
    goto/16 :goto_1

    .line 1512
    :pswitch_8
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.SNOTE_GET_CONTENTS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1513
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "SelectMode"

    const-string v4, "single"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1514
    const-string v3, "ReturnType"

    const-string v4, "Textonly"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1515
    const/16 v2, 0x26

    .line 1516
    goto/16 :goto_1

    .line 1527
    :cond_2
    iget-object v3, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-boolean v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mIsKeyboardOpen:Z

    if-eqz v3, :cond_3

    .line 1528
    iget-object v3, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    invoke-virtual {v3, v6}, Lcom/android/mms/ui/SipHandler;->setOnScreen(Z)V

    .line 1531
    :cond_3
    iget-object v3, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    invoke-static {}, Lcom/android/mms/ui/SipHandler;->isSipVisible()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1532
    iget-object v3, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iput-boolean v7, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mForceShowSip:Z

    .line 1533
    iget-object v3, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    invoke-virtual {v3}, Lcom/android/mms/ui/SipHandler;->hideSip()V

    .line 1536
    :cond_4
    const-string v3, "Mms/HandleComposerAttachment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startActivityForAddText. reqCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1537
    iget-object v3, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3, v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1452
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public startLocationMapActivity(Z)V
    .locals 6
    .parameter "toReplace"

    .prologue
    const/4 v5, 0x1

    .line 1906
    move v2, p1

    .line 1907
    .local v2, toReplaceMedia:Z
    iget-object v3, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v3

    if-ne v3, v5, :cond_0

    if-nez p1, :cond_0

    .line 1908
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1909
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0c030f

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1910
    const v3, 0x7f0c031c

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1911
    const v3, 0x7f0c00ea

    new-instance v4, Lcom/android/mms/util/HandleComposerAttachment$25;

    invoke-direct {v4, p0, v2}, Lcom/android/mms/util/HandleComposerAttachment$25;-><init>(Lcom/android/mms/util/HandleComposerAttachment;Z)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1931
    const v3, 0x7f0c00eb

    new-instance v4, Lcom/android/mms/util/HandleComposerAttachment$26;

    invoke-direct {v4, p0}, Lcom/android/mms/util/HandleComposerAttachment$26;-><init>(Lcom/android/mms/util/HandleComposerAttachment;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1936
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1946
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 1938
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;

    const-class v4, Lcom/samsung/mms/location/LocationMapActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1939
    .local v1, mapIntent:Landroid/content/Intent;
    const-string v3, "extra_startup_flag"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1940
    if-eqz v2, :cond_1

    .line 1941
    iget-object v3, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/16 v4, 0x28

    invoke-virtual {v3, v1, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1943
    :cond_1
    iget-object v3, p0, Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/16 v4, 0x27

    invoke-virtual {v3, v1, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
