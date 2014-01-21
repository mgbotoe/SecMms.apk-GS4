.class public Lcom/samsung/mms/ui/AutoSendingTestActivity;
.super Landroid/app/Activity;
.source "AutoSendingTestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/mms/ui/AutoSendingTestActivity$FindButtonOnClick;,
        Lcom/samsung/mms/ui/AutoSendingTestActivity$AttachButtonOnClick;,
        Lcom/samsung/mms/ui/AutoSendingTestActivity$SendButtonOnClick;
    }
.end annotation


# static fields
.field private static final AUDIO_TYPE:Ljava/lang/String; = "audio/"

.field private static final IMAGE_TYPE:Ljava/lang/String; = "image/"

.field private static final MENU_PICK_AUDIO:I = 0x5

.field private static final MENU_PICK_PICTURE:I = 0x1

.field private static final MENU_PICK_VIDEO:I = 0x3

.field private static final MENU_RECORD_AUDIO:I = 0x6

.field private static final MENU_RECORD_VIDEO:I = 0x4

.field private static final MENU_TAKE_PICTURE:I = 0x2

.field private static final REQUEST_CODE_PICK_AUDIO:I = 0x5

.field private static final REQUEST_CODE_PICK_PICTURE:I = 0x1

.field private static final REQUEST_CODE_PICK_VIDEO:I = 0x3

.field private static final REQUEST_CODE_RECORD_AUDIO:I = 0x6

.field private static final REQUEST_CODE_RECORD_VIDEO:I = 0x4

.field private static final REQUEST_CODE_TAKE_PICTURE:I = 0x2

.field private static final VIDEO_TYPE:Ljava/lang/String; = "video/"

.field private static alertDialog:Landroid/app/AlertDialog;

.field private static mDialogPassword:Landroid/app/Dialog;


# instance fields
.field private DEFAULT_COUNT:I

.field private DEFAULT_DELAY_MMS:I

.field private DEFAULT_DELAY_SMS:I

.field private TAG:Ljava/lang/String;

.field private bSendingFlag:Z

.field private mBtAttach:Landroid/widget/Button;

.field private mButtonFind:Landroid/widget/Button;

.field private mCbAutoNum:Landroid/widget/CheckBox;

.field private mCbAutoTag:Landroid/widget/CheckBox;

.field private mCbMMS:Landroid/widget/CheckBox;

.field private mContentType:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEditContent:Landroid/widget/EditText;

.field private mEditCount:Landroid/widget/EditText;

.field private mEditDelay:Landroid/widget/EditText;

.field private mEditRecipient:Landroid/widget/EditText;

.field private mEditSender:Landroid/widget/EditText;

.field private mMediaUri:Landroid/net/Uri;

.field private mMessage:Ljava/lang/String;

.field private mSlideshow:Lcom/android/mms/model/SlideshowModel;

.field private mbtnSend:Landroid/widget/Button;

.field private mtextViewCount:Landroid/widget/TextView;

.field private mtextViewDelay:Landroid/widget/TextView;

.field private strSenderNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 77
    const-string v0, "AutoSending"

    iput-object v0, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->TAG:Ljava/lang/String;

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->bSendingFlag:Z

    .line 112
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->DEFAULT_COUNT:I

    .line 114
    const/16 v0, 0xc8

    iput v0, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->DEFAULT_DELAY_SMS:I

    .line 116
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->DEFAULT_DELAY_MMS:I

    .line 385
    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/mms/ui/AutoSendingTestActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mBtAttach:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/samsung/mms/ui/AutoSendingTestActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mContentType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/samsung/mms/ui/AutoSendingTestActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mMediaUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/samsung/mms/ui/AutoSendingTestActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->createRecipientDialog()V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/mms/ui/AutoSendingTestActivity;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->getAddressPreference()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/mms/ui/AutoSendingTestActivity;)Lcom/android/mms/model/SlideshowModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/mms/ui/AutoSendingTestActivity;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 75
    invoke-direct/range {p0 .. p6}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->sendMmsWorker(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;J)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/mms/ui/AutoSendingTestActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/mms/ui/AutoSendingTestActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mDialogPassword:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$502(Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    sput-object p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mDialogPassword:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$600(Lcom/samsung/mms/ui/AutoSendingTestActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mEditRecipient:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/mms/ui/AutoSendingTestActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->bSendingFlag:Z

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/mms/ui/AutoSendingTestActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->startSendMessage()V

    return-void
.end method

.method static synthetic access$900()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->alertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$902(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    sput-object p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->alertDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method private static createDraftMmsMessage(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;)Landroid/net/Uri;
    .locals 4
    .parameter "persister"
    .parameter "sendReq"
    .parameter "slideshow"

    .prologue
    .line 727
    :try_start_0
    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v1

    .line 728
    .local v1, pb:Lcom/google/android/mms/pdu/PduBody;
    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/SendReq;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    .line 729
    sget-object v3, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v3}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 730
    .local v2, res:Landroid/net/Uri;
    invoke-virtual {p2, v1}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 733
    .end local v1           #pb:Lcom/google/android/mms/pdu/PduBody;
    .end local v2           #res:Landroid/net/Uri;
    :goto_0
    return-object v2

    .line 732
    :catch_0
    move-exception v0

    .line 733
    .local v0, e:Lcom/google/android/mms/MmsException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private createNewSlideshow()Lcom/android/mms/model/SlideshowModel;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 738
    const/4 v2, 0x0

    .line 739
    .local v2, media:Lcom/android/mms/model/MediaModel;
    const/4 v5, 0x0

    .line 740
    .local v5, text:Lcom/android/mms/model/TextModel;
    iget-object v6, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/mms/model/SlideshowModel;->createNew(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v4

    .line 741
    .local v4, slideshow:Lcom/android/mms/model/SlideshowModel;
    new-instance v3, Lcom/android/mms/model/SlideModel;

    invoke-direct {v3, v4}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    .line 742
    .local v3, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v4, v3}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    .line 745
    iget-object v6, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mContentType:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mMediaUri:Landroid/net/Uri;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mMediaUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 746
    iget-object v6, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mContentType:Ljava/lang/String;

    const-string v7, "image/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 747
    new-instance v2, Lcom/android/mms/model/ImageModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    iget-object v6, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mMediaUri:Landroid/net/Uri;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v8

    invoke-direct {v2, v6, v7, v8}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 756
    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mMessage:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 757
    new-instance v5, Lcom/android/mms/model/TextModel;

    .end local v5           #text:Lcom/android/mms/model/TextModel;
    iget-object v6, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mContext:Landroid/content/Context;

    const-string v7, "text/plain"

    const-string v8, "cid:text_1.txt"

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v9

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    .line 758
    .restart local v5       #text:Lcom/android/mms/model/TextModel;
    iget-object v6, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mMessage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    .line 761
    :cond_1
    if-eqz v5, :cond_2

    .line 762
    invoke-virtual {v4, v10}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 766
    :cond_2
    if-eqz v2, :cond_4

    .line 767
    :try_start_0
    iget-object v6, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mContentType:Ljava/lang/String;

    const-string v7, "image/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 768
    move-object v0, v2

    check-cast v0, Lcom/android/mms/model/ImageModel;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/mms/model/ImageModel;->checkCreationMode()V

    .line 769
    move-object v0, v2

    check-cast v0, Lcom/android/mms/model/ImageModel;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/mms/model/ImageModel;->checkResolution()V

    .line 771
    :cond_3
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z
    :try_end_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/mms/RotationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/mms/ResolutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_4

    .line 794
    :cond_4
    :goto_1
    return-object v4

    .line 748
    :cond_5
    iget-object v6, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mContentType:Ljava/lang/String;

    const-string v7, "video/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 749
    new-instance v2, Lcom/android/mms/model/VideoModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    iget-object v6, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mMediaUri:Landroid/net/Uri;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v8

    invoke-direct {v2, v6, v7, v8}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    goto :goto_0

    .line 750
    :cond_6
    iget-object v6, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mContentType:Ljava/lang/String;

    const-string v7, "audio/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 751
    new-instance v2, Lcom/android/mms/model/AudioModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    iget-object v6, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mMediaUri:Landroid/net/Uri;

    invoke-direct {v2, v6, v7}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    goto :goto_0

    .line 773
    :catch_0
    move-exception v1

    .line 774
    .local v1, e:Lcom/android/mms/ExceedMessageSizeException;
    iget-object v6, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mContentType:Ljava/lang/String;

    const-string v7, "image/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v6, v2

    .line 775
    check-cast v6, Lcom/android/mms/model/ImageModel;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->resizeMedia(Lcom/android/mms/model/ImageModel;I)V

    .line 776
    invoke-virtual {v4, v10}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    goto :goto_1

    .line 778
    .end local v1           #e:Lcom/android/mms/ExceedMessageSizeException;
    :catch_1
    move-exception v1

    .line 779
    .local v1, e:Lcom/android/mms/RotationException;
    iget-object v6, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mContentType:Ljava/lang/String;

    const-string v7, "image/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v6, v2

    .line 780
    check-cast v6, Lcom/android/mms/model/ImageModel;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->resizeMedia(Lcom/android/mms/model/ImageModel;I)V

    .line 781
    invoke-virtual {v4, v10}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    goto :goto_1

    .line 783
    .end local v1           #e:Lcom/android/mms/RotationException;
    :catch_2
    move-exception v1

    .line 784
    .local v1, e:Lcom/android/mms/UnsupportContentTypeException;
    invoke-virtual {v1}, Lcom/android/mms/UnsupportContentTypeException;->printStackTrace()V

    goto :goto_1

    .line 785
    .end local v1           #e:Lcom/android/mms/UnsupportContentTypeException;
    :catch_3
    move-exception v1

    .line 786
    .local v1, e:Lcom/android/mms/ResolutionException;
    iget-object v6, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mContentType:Ljava/lang/String;

    const-string v7, "image/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v6, v2

    .line 787
    check-cast v6, Lcom/android/mms/model/ImageModel;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->resizeMedia(Lcom/android/mms/model/ImageModel;I)V

    .line 788
    invoke-virtual {v4, v10}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    goto/16 :goto_1

    .line 790
    .end local v1           #e:Lcom/android/mms/ResolutionException;
    :catch_4
    move-exception v1

    .line 791
    .local v1, e:Lcom/android/mms/ContentRestrictionException;
    invoke-virtual {v1}, Lcom/android/mms/ContentRestrictionException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method private createRecipientDialog()V
    .locals 3

    .prologue
    .line 392
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 394
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const-string v1, "Select Numbers"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 395
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 396
    invoke-direct {p0}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->getAddressPreference()[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/mms/ui/AutoSendingTestActivity$5;

    invoke-direct {v2, p0}, Lcom/samsung/mms/ui/AutoSendingTestActivity$5;-><init>(Lcom/samsung/mms/ui/AutoSendingTestActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 409
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 410
    return-void
.end method

.method private getAddressPreference()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 850
    invoke-direct {p0}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 851
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v3, "Address"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 853
    .local v2, savedAddr:Ljava/lang/String;
    const/4 v1, 0x0

    .line 854
    .local v1, recipient:[Ljava/lang/String;
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 856
    return-object v1
.end method

.method private getSharedPreference()Landroid/content/SharedPreferences;
    .locals 4

    .prologue
    .line 815
    const-string v0, "mms.kor.autosending.history"

    .line 816
    .local v0, PREFERENCE_NAME:Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mContext:Landroid/content/Context;

    const-string v2, "mms.kor.autosending.history"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    return-object v1
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 194
    iget-object v1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 195
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->strSenderNumber:Ljava/lang/String;

    .line 197
    const v1, 0x7f0b0054

    invoke-virtual {p0, v1}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mtextViewDelay:Landroid/widget/TextView;

    .line 198
    iget-object v1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mtextViewDelay:Landroid/widget/TextView;

    const-string v2, "Delay(ms)"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    const v1, 0x7f0b0051

    invoke-virtual {p0, v1}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mtextViewCount:Landroid/widget/TextView;

    .line 200
    iget-object v1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mtextViewCount:Landroid/widget/TextView;

    const-string v2, "Count"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    const v1, 0x7f0b004b

    invoke-virtual {p0, v1}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mEditSender:Landroid/widget/EditText;

    .line 202
    iget-object v1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mEditSender:Landroid/widget/EditText;

    const-string v2, "Sender"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 203
    const v1, 0x7f0b0045

    invoke-virtual {p0, v1}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mEditContent:Landroid/widget/EditText;

    .line 204
    iget-object v1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mEditContent:Landroid/widget/EditText;

    const-string v2, "Auto Testing"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 206
    const v1, 0x7f0b0052

    invoke-virtual {p0, v1}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mEditCount:Landroid/widget/EditText;

    .line 207
    const v1, 0x7f0b0055

    invoke-virtual {p0, v1}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mEditDelay:Landroid/widget/EditText;

    .line 209
    const v1, 0x7f0b0046

    invoke-virtual {p0, v1}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mbtnSend:Landroid/widget/Button;

    .line 210
    iget-object v1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mbtnSend:Landroid/widget/Button;

    const-string v2, "Send"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mbtnSend:Landroid/widget/Button;

    new-instance v2, Lcom/samsung/mms/ui/AutoSendingTestActivity$SendButtonOnClick;

    invoke-direct {v2, p0, v3}, Lcom/samsung/mms/ui/AutoSendingTestActivity$SendButtonOnClick;-><init>(Lcom/samsung/mms/ui/AutoSendingTestActivity;Lcom/samsung/mms/ui/AutoSendingTestActivity$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    const v1, 0x7f0b004c

    invoke-virtual {p0, v1}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mCbAutoNum:Landroid/widget/CheckBox;

    .line 214
    iget-object v1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mCbAutoNum:Landroid/widget/CheckBox;

    const-string v2, "Auto Increasing Numbers"

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 215
    const v1, 0x7f0b004f

    invoke-virtual {p0, v1}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mCbAutoTag:Landroid/widget/CheckBox;

    .line 216
    iget-object v1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mCbAutoTag:Landroid/widget/CheckBox;

    const-string v2, "Auto Tag"

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 218
    const v1, 0x7f0b004e

    invoke-virtual {p0, v1}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mCbMMS:Landroid/widget/CheckBox;

    .line 219
    iget-object v1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mCbMMS:Landroid/widget/CheckBox;

    const-string v2, "MMS"

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mCbMMS:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    const v1, 0x7f0b0049

    invoke-virtual {p0, v1}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mEditRecipient:Landroid/widget/EditText;

    .line 223
    iget-object v1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mEditRecipient:Landroid/widget/EditText;

    const-string v2, "Recipient"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 225
    const v1, 0x7f0b004a

    invoke-virtual {p0, v1}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mButtonFind:Landroid/widget/Button;

    .line 226
    iget-object v1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mButtonFind:Landroid/widget/Button;

    const-string v2, "..."

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mButtonFind:Landroid/widget/Button;

    new-instance v2, Lcom/samsung/mms/ui/AutoSendingTestActivity$FindButtonOnClick;

    invoke-direct {v2, p0, v3}, Lcom/samsung/mms/ui/AutoSendingTestActivity$FindButtonOnClick;-><init>(Lcom/samsung/mms/ui/AutoSendingTestActivity;Lcom/samsung/mms/ui/AutoSendingTestActivity$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mButtonFind:Landroid/widget/Button;

    new-instance v2, Lcom/samsung/mms/ui/AutoSendingTestActivity$1;

    invoke-direct {v2, p0}, Lcom/samsung/mms/ui/AutoSendingTestActivity$1;-><init>(Lcom/samsung/mms/ui/AutoSendingTestActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 240
    const v1, 0x7f0b0057

    invoke-virtual {p0, v1}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mBtAttach:Landroid/widget/Button;

    .line 241
    iget-object v1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mBtAttach:Landroid/widget/Button;

    new-instance v2, Lcom/samsung/mms/ui/AutoSendingTestActivity$AttachButtonOnClick;

    invoke-direct {v2, p0, v3}, Lcom/samsung/mms/ui/AutoSendingTestActivity$AttachButtonOnClick;-><init>(Lcom/samsung/mms/ui/AutoSendingTestActivity;Lcom/samsung/mms/ui/AutoSendingTestActivity$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->bSendingFlag:Z

    .line 244
    return-void
.end method

.method private static makeSendReq([Ljava/lang/String;)Lcom/google/android/mms/pdu/SendReq;
    .locals 6
    .parameter "dests"

    .prologue
    .line 714
    new-instance v1, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v1}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    .line 715
    .local v1, req:Lcom/google/android/mms/pdu/SendReq;
    invoke-static {p0}, Lcom/google/android/mms/pdu/EncodedStringValue;->encodeStrings([Ljava/lang/String;)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    .line 716
    .local v0, encodedNumbers:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v0, :cond_0

    .line 717
    invoke-virtual {v1, v0}, Lcom/google/android/mms/pdu/SendReq;->setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 720
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/mms/pdu/SendReq;->setDate(J)V

    .line 722
    return-object v1
.end method

.method private onClickedIsMMS(Landroid/widget/CheckBox;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 338
    iget-object v2, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mEditDelay:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 339
    .local v0, delayTime:J
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-ne v2, v4, :cond_1

    .line 340
    iget-object v2, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mCbAutoNum:Landroid/widget/CheckBox;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 341
    iget-object v2, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mEditSender:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 342
    iget-object v2, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mCbAutoNum:Landroid/widget/CheckBox;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 343
    iget-object v2, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mEditSender:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->strSenderNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 345
    iget v2, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->DEFAULT_DELAY_MMS:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 346
    iget-object v2, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mEditDelay:Landroid/widget/EditText;

    iget v3, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->DEFAULT_DELAY_MMS:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    iget-object v2, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mEditSender:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 349
    iget-object v2, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mEditDelay:Landroid/widget/EditText;

    iget v3, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->DEFAULT_DELAY_SMS:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 350
    iget-object v2, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mCbAutoNum:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_0
.end method

.method private resizeMedia(Lcom/android/mms/model/ImageModel;I)V
    .locals 5
    .parameter "media"
    .parameter "byteLimit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 802
    :try_start_0
    new-instance v1, Lcom/android/mms/ui/UriImage;

    iget-object v3, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mMediaUri:Landroid/net/Uri;

    invoke-direct {v1, v3, v4}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 803
    .local v1, image:Lcom/android/mms/ui/UriImage;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageWidth()I

    move-result v3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageHeight()I

    move-result v4

    invoke-virtual {v1, v3, v4, p2}, Lcom/android/mms/ui/UriImage;->getResizedImageAsPart(III)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v2

    .line 805
    .local v2, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {p1, v3}, Lcom/android/mms/model/ImageModel;->setResizeImageSize(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 811
    .end local v1           #image:Lcom/android/mms/ui/UriImage;
    .end local v2           #part:Lcom/google/android/mms/pdu/PduPart;
    :goto_0
    return-void

    .line 806
    :catch_0
    move-exception v0

    .line 807
    .local v0, e:Ljava/lang/NullPointerException;
    iget-object v3, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->TAG:Ljava/lang/String;

    const-string v4, "exception : NullPointerException @ resizeMedia"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 808
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 809
    .local v0, e:Ljava/lang/IllegalArgumentException;
    iget-object v3, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->TAG:Ljava/lang/String;

    const-string v4, "exception : IllegalArgumentException @ resizeMedia"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private saveAddressPreference(Ljava/lang/String;)V
    .locals 8
    .parameter "address"

    .prologue
    .line 820
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 847
    :cond_0
    :goto_0
    return-void

    .line 824
    :cond_1
    invoke-direct {p0}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 825
    .local v2, pref:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 826
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v6, "Address"

    const-string v7, ""

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 828
    .local v4, savedAddr:Ljava/lang/String;
    const/4 v3, 0x0

    .line 829
    .local v3, recipient:[Ljava/lang/String;
    const-string v6, ";"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 831
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v6, v3

    if-ge v1, v6, :cond_2

    .line 832
    aget-object v6, v3, v1

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 831
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 837
    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 838
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 839
    .local v5, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    const-string v6, "Address"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 846
    .end local v5           #sb:Ljava/lang/StringBuilder;
    :goto_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 844
    :cond_3
    const-string v6, "Address"

    invoke-interface {v0, v6, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2
.end method

.method private sendMmsWorker(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;J)V
    .locals 5
    .parameter "mmsUri"
    .parameter "persister"
    .parameter "slideshow"
    .parameter "sendReq"
    .parameter "threadId"

    .prologue
    .line 705
    new-instance v1, Lcom/android/mms/transaction/MmsMessageSender;

    iget-object v2, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/android/mms/transaction/MmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 707
    .local v1, sender:Lcom/android/mms/transaction/MessageSender;
    :try_start_0
    invoke-interface {v1, p5, p6}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 711
    :goto_0
    return-void

    .line 708
    :catch_0
    move-exception v0

    .line 709
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", threadId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private showDialogPassword(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    .line 249
    sget-object v7, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mDialogPassword:Landroid/app/Dialog;

    if-nez v7, :cond_0

    .line 256
    new-instance v7, Landroid/app/Dialog;

    invoke-direct {v7, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    sput-object v7, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mDialogPassword:Landroid/app/Dialog;

    .line 258
    const-string v7, "layout_inflater"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 260
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v7, 0x7f04004d

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 262
    .local v1, inflatedBody:Landroid/view/View;
    const v7, 0x7f0b0183

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 263
    .local v6, title:Landroid/widget/TextView;
    const v7, 0x7f0b0185

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 264
    .local v4, notice:Landroid/widget/TextView;
    const v7, 0x7f0b0186

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 266
    .local v0, editField:Landroid/widget/EditText;
    const v7, 0x7f0b0189

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 267
    .local v5, positiveButton:Landroid/widget/Button;
    const v7, 0x7f0b0188

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 269
    .local v3, negativeButton:Landroid/widget/Button;
    const-string v7, "password"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    const-string v7, "only use in debug mode fot test."

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    const v7, 0x7f0c004f

    invoke-virtual {p1, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 273
    const v7, 0x7f0c0050

    invoke-virtual {p1, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 274
    const-string v7, ""

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 276
    sget-object v7, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mDialogPassword:Landroid/app/Dialog;

    new-instance v8, Lcom/samsung/mms/ui/AutoSendingTestActivity$2;

    invoke-direct {v8, p0}, Lcom/samsung/mms/ui/AutoSendingTestActivity$2;-><init>(Lcom/samsung/mms/ui/AutoSendingTestActivity;)V

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 291
    new-instance v7, Lcom/samsung/mms/ui/AutoSendingTestActivity$3;

    invoke-direct {v7, p0, v0}, Lcom/samsung/mms/ui/AutoSendingTestActivity$3;-><init>(Lcom/samsung/mms/ui/AutoSendingTestActivity;Landroid/widget/EditText;)V

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    new-instance v7, Lcom/samsung/mms/ui/AutoSendingTestActivity$4;

    invoke-direct {v7, p0}, Lcom/samsung/mms/ui/AutoSendingTestActivity$4;-><init>(Lcom/samsung/mms/ui/AutoSendingTestActivity;)V

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    sget-object v7, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mDialogPassword:Landroid/app/Dialog;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 317
    sget-object v7, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mDialogPassword:Landroid/app/Dialog;

    invoke-virtual {v7, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 319
    sget-object v7, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mDialogPassword:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    .line 320
    sget-object v7, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mDialogPassword:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x15

    invoke-virtual {v7, v8}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 322
    .end local v0           #editField:Landroid/widget/EditText;
    .end local v1           #inflatedBody:Landroid/view/View;
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    .end local v3           #negativeButton:Landroid/widget/Button;
    .end local v4           #notice:Landroid/widget/TextView;
    .end local v5           #positiveButton:Landroid/widget/Button;
    .end local v6           #title:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private startSendMessage()V
    .locals 25

    .prologue
    .line 563
    const/4 v11, 0x0

    .line 564
    .local v11, dests:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mEditSender:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .line 565
    .local v17, Origsender:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mEditContent:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    .line 566
    .local v19, contentStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->strSenderNumber:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 567
    .local v24, sender:Ljava/lang/String;
    const-string v12, "Auto Testing"

    .line 568
    .local v12, body:Ljava/lang/String;
    const/16 v18, 0x1

    .line 569
    .local v18, cnt:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->DEFAULT_DELAY_SMS:I

    int-to-long v0, v2

    move-wide/from16 v20, v0

    .line 571
    .local v20, delayTime:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mEditRecipient:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 572
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mEditRecipient:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ";"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 577
    const/16 v23, 0x0

    .local v23, i:I
    :goto_0
    array-length v2, v11

    move/from16 v0, v23

    if-ge v0, v2, :cond_0

    .line 578
    aget-object v2, v11, v23

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->saveAddressPreference(Ljava/lang/String;)V

    .line 577
    add-int/lit8 v23, v23, 0x1

    goto :goto_0

    .line 581
    :cond_0
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 582
    const-string v19, "Auto Testing"

    .line 585
    :cond_1
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->strSenderNumber:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 589
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mEditCount:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 590
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mEditCount:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 592
    :cond_3
    const/16 v2, 0x3e8

    move/from16 v0, v18

    if-le v0, v2, :cond_4

    .line 593
    const/16 v18, 0x3e7

    .line 595
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mEditRecipient:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v7

    .line 597
    .local v7, threadID:J
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->bSendingFlag:Z

    .line 599
    const/16 v23, 0x1

    :goto_1
    add-int/lit8 v2, v18, 0x1

    move/from16 v0, v23

    if-ge v0, v2, :cond_c

    .line 600
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mCbAutoNum:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 601
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 606
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mCbAutoTag:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 607
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 612
    :goto_3
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x3e8

    if-le v2, v3, :cond_8

    .line 613
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "contentStr.length() : "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    .end local v7           #threadID:J
    .end local v23           #i:I
    :cond_5
    :goto_4
    return-void

    .line 603
    .restart local v7       #threadID:J
    .restart local v23       #i:I
    :cond_6
    move-object/from16 v24, v17

    goto :goto_2

    .line 609
    :cond_7
    move-object/from16 v12, v19

    goto :goto_3

    .line 617
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mCbMMS:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 618
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mMessage:Ljava/lang/String;

    .line 621
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->createNewSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mSlideshow:Lcom/android/mms/model/SlideshowModel;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v5

    .line 627
    .local v5, persister:Lcom/google/android/mms/pdu/PduPersister;
    invoke-static {v11}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->makeSendReq([Ljava/lang/String;)Lcom/google/android/mms/pdu/SendReq;

    move-result-object v6

    .line 628
    .local v6, sendReq:Lcom/google/android/mms/pdu/SendReq;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v5, v6, v2}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->createDraftMmsMessage(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;)Landroid/net/Uri;

    move-result-object v4

    .line 630
    .local v4, mmsUri:Landroid/net/Uri;
    new-instance v10, Ljava/lang/Thread;

    new-instance v2, Lcom/samsung/mms/ui/AutoSendingTestActivity$6;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/samsung/mms/ui/AutoSendingTestActivity$6;-><init>(Lcom/samsung/mms/ui/AutoSendingTestActivity;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;J)V

    invoke-direct {v10, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    .line 647
    .end local v4           #mmsUri:Landroid/net/Uri;
    .end local v5           #persister:Lcom/google/android/mms/pdu/PduPersister;
    .end local v6           #sendReq:Lcom/google/android/mms/pdu/SendReq;
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mEditDelay:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_9

    .line 648
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mEditDelay:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    .line 651
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->DEFAULT_DELAY_SMS:I

    int-to-long v2, v2

    cmp-long v2, v20, v2

    if-gez v2, :cond_a

    .line 652
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->DEFAULT_DELAY_SMS:I

    int-to-long v0, v2

    move-wide/from16 v20, v0

    .line 654
    :cond_a
    :try_start_1
    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 599
    :goto_7
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_1

    .line 622
    :catch_0
    move-exception v22

    .line 623
    .local v22, e:Lcom/google/android/mms/MmsException;
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/mms/MmsException;->printStackTrace()V

    goto :goto_5

    .line 638
    .end local v22           #e:Lcom/google/android/mms/MmsException;
    :cond_b
    new-instance v9, Lcom/android/mms/transaction/SmsMessageSender;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mContext:Landroid/content/Context;

    const/16 v15, 0x81

    move-wide v13, v7

    invoke-direct/range {v9 .. v15}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JI)V

    .line 641
    .local v9, MsgSender:Lcom/android/mms/transaction/MessageSender;
    :try_start_2
    invoke-interface {v9, v7, v8}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    .line 642
    :catch_1
    move-exception v22

    .line 643
    .local v22, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->TAG:Ljava/lang/String;

    const-string v3, "e : "

    move-object/from16 v0, v22

    invoke-static {v2, v3, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 655
    .end local v9           #MsgSender:Lcom/android/mms/transaction/MessageSender;
    .end local v22           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v16

    .line 656
    .local v16, E:Ljava/lang/Exception;
    const-string v2, "Guava"

    const-string v3, "Exception"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 660
    .end local v16           #E:Ljava/lang/Exception;
    :cond_c
    sget-object v2, Lcom/samsung/mms/ui/AutoSendingTestActivity;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_d

    .line 661
    sget-object v2, Lcom/samsung/mms/ui/AutoSendingTestActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 662
    const/4 v2, 0x0

    sput-object v2, Lcom/samsung/mms/ui/AutoSendingTestActivity;->alertDialog:Landroid/app/AlertDialog;

    .line 665
    :cond_d
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->bSendingFlag:Z

    goto/16 :goto_4
.end method

.method private startSendMessage(Landroid/content/Intent;)V
    .locals 13
    .parameter "data"

    .prologue
    .line 670
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 671
    .local v10, extras:Landroid/os/Bundle;
    const-string v0, "address"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 672
    .local v7, address:Ljava/lang/CharSequence;
    const-string v0, "sms_body"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 674
    .local v11, sms_body:Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mContentType:Ljava/lang/String;

    .line 675
    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mMessage:Ljava/lang/String;

    .line 676
    const-string v0, "zzz"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mMessage : "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v12, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mMessage:Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    const-string v0, "zzz"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mContentType : "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v12, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mContentType:Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    const-string v0, "zzz"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mMediaUri : "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v12, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mMediaUri:Landroid/net/Uri;

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mMediaUri:Landroid/net/Uri;

    .line 681
    iget-object v0, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v5

    .line 684
    .local v5, threadID:J
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->createNewSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mSlideshow:Lcom/android/mms/model/SlideshowModel;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 689
    :goto_0
    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 691
    .local v8, dests:[Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v3

    .line 692
    .local v3, persister:Lcom/google/android/mms/pdu/PduPersister;
    invoke-static {v8}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->makeSendReq([Ljava/lang/String;)Lcom/google/android/mms/pdu/SendReq;

    move-result-object v4

    .line 693
    .local v4, sendReq:Lcom/google/android/mms/pdu/SendReq;
    iget-object v0, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v3, v4, v0}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->createDraftMmsMessage(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;)Landroid/net/Uri;

    move-result-object v2

    .line 695
    .local v2, mmsUri:Landroid/net/Uri;
    new-instance v12, Ljava/lang/Thread;

    new-instance v0, Lcom/samsung/mms/ui/AutoSendingTestActivity$7;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/mms/ui/AutoSendingTestActivity$7;-><init>(Lcom/samsung/mms/ui/AutoSendingTestActivity;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;J)V

    invoke-direct {v12, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v12}, Ljava/lang/Thread;->start()V

    .line 702
    return-void

    .line 685
    .end local v2           #mmsUri:Landroid/net/Uri;
    .end local v3           #persister:Lcom/google/android/mms/pdu/PduPersister;
    .end local v4           #sendReq:Lcom/google/android/mms/pdu/SendReq;
    .end local v8           #dests:[Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 686
    .local v9, e:Lcom/google/android/mms/MmsException;
    invoke-virtual {v9}, Lcom/google/android/mms/MmsException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public AttachButtonChange(I)V
    .locals 2
    .parameter "requestCode"

    .prologue
    .line 414
    iget-object v0, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mBtAttach:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mBtAttach:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 418
    packed-switch p1, :pswitch_data_0

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 421
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mBtAttach:Landroid/widget/Button;

    const-string v1, "PICTURE Attached"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 425
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mBtAttach:Landroid/widget/Button;

    const-string v1, "VIDEO Attached"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 429
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mBtAttach:Landroid/widget/Button;

    const-string v1, "AUDIO Attached"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 418
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 510
    iget-object v1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult: requestCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", resultCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mms/Log;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 512
    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    .line 513
    iget-object v1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult(),fail due to resultCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    :cond_0
    :goto_0
    return-void

    .line 516
    :cond_1
    iget-object v1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mCbMMS:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 517
    iget-object v1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mCbMMS:Landroid/widget/CheckBox;

    invoke-direct {p0, v1}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->onClickedIsMMS(Landroid/widget/CheckBox;)V

    .line 518
    invoke-virtual {p0, p1}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->AttachButtonChange(I)V

    .line 521
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 530
    :pswitch_0
    if-eqz p3, :cond_0

    .line 531
    const-string v1, "image/"

    iput-object v1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mContentType:Ljava/lang/String;

    .line 532
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mMediaUri:Landroid/net/Uri;

    goto :goto_0

    .line 523
    :pswitch_1
    const-string v1, "uri-data"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 524
    .local v0, fileString:Ljava/lang/String;
    const-string v1, "image/"

    iput-object v1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mContentType:Ljava/lang/String;

    .line 525
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mMediaUri:Landroid/net/Uri;

    goto :goto_0

    .line 539
    .end local v0           #fileString:Ljava/lang/String;
    :pswitch_2
    if-eqz p3, :cond_0

    .line 540
    const-string v1, "video/"

    iput-object v1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mContentType:Ljava/lang/String;

    .line 541
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mMediaUri:Landroid/net/Uri;

    goto :goto_0

    .line 546
    :pswitch_3
    if-eqz p3, :cond_0

    .line 547
    const-string v1, "audio/"

    iput-object v1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mContentType:Ljava/lang/String;

    .line 548
    const-string v1, "FILE_URI"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mMediaUri:Landroid/net/Uri;

    goto :goto_0

    .line 552
    :pswitch_4
    if-eqz p3, :cond_0

    .line 553
    const-string v1, "audio/"

    iput-object v1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mContentType:Ljava/lang/String;

    .line 554
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mMediaUri:Landroid/net/Uri;

    goto :goto_0

    .line 521
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 327
    instance-of v1, p1, Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 328
    check-cast v0, Landroid/widget/CheckBox;

    .line 330
    .local v0, checkbox:Landroid/widget/CheckBox;
    iget-object v1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mCbMMS:Landroid/widget/CheckBox;

    if-ne v0, v1, :cond_0

    .line 331
    invoke-direct {p0, v0}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->onClickedIsMMS(Landroid/widget/CheckBox;)V

    .line 334
    .end local v0           #checkbox:Landroid/widget/CheckBox;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 163
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 165
    iget-object v2, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->TAG:Ljava/lang/String;

    const-string v3, " onCreate()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iput-object p0, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mContext:Landroid/content/Context;

    .line 168
    const v2, 0x7f040017

    invoke-virtual {p0, v2}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->setContentView(I)V

    .line 169
    invoke-direct {p0}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->init()V

    .line 171
    iget-object v2, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mEditSender:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->strSenderNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v2, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mEditCount:Landroid/widget/EditText;

    iget v3, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->DEFAULT_COUNT:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v2, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mEditDelay:Landroid/widget/EditText;

    iget v3, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->DEFAULT_DELAY_SMS:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iput-object v4, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mContentType:Ljava/lang/String;

    .line 175
    iput-object v4, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mMediaUri:Landroid/net/Uri;

    .line 177
    invoke-virtual {p0}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 179
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "from"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, debug:Ljava/lang/String;
    sget-boolean v2, Lcom/android/mms/Log;->ENG_VER:Z

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    const-string v2, "debug"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    iget-object v2, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->showDialogPassword(Landroid/content/Context;)V

    .line 189
    :goto_0
    iget-object v2, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->TAG:Ljava/lang/String;

    const-string v3, "onCreate()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return-void

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->finish()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v7, 0x1

    .line 457
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 505
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    return v5

    .line 459
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 460
    .local v0, intent:Landroid/content/Intent;
    const-string v5, "image/*"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 461
    invoke-virtual {p0, v0, v7}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 465
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 466
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v5, "com.sec.android.app.camera"

    const-string v6, "com.sec.android.app.camera.Camera"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 467
    const-string v5, "return-uri"

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 468
    const/4 v5, 0x2

    invoke-virtual {p0, v0, v5}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 472
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 473
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v5, "video/*"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 474
    const/4 v5, 0x3

    invoke-virtual {p0, v0, v5}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 478
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 479
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v5

    int-to-long v3, v5

    .line 480
    .local v3, sizeLimit:J
    const-string v5, "android.intent.extra.videoQuality"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 481
    const-string v5, "android.intent.extra.sizeLimit"

    invoke-virtual {v0, v5, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 482
    const-string v5, "mms"

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 483
    const/4 v5, 0x4

    invoke-virtual {p0, v0, v5}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 487
    .end local v0           #intent:Landroid/content/Intent;
    .end local v3           #sizeLimit:J
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 488
    .restart local v0       #intent:Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v5, "com.sec.android.app.myfiles.PICK_DATA"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 489
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v5, "FOLDERPATH"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Sounds"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    const-string v5, "CONTENT_TYPE"

    const-string v6, "audio/*"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 491
    const/4 v5, 0x5

    invoke-virtual {p0, v0, v5}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 495
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.provider.MediaStore.RECORD_SOUND"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 496
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v5

    int-to-long v1, v5

    .line 497
    .local v1, maxContentSize:J
    const-string v5, "android.provider.MediaStore.extra.MAX_BYTES"

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 498
    const-string v5, "mime_type"

    const-string v6, "audio/amr"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 499
    const/4 v5, 0x6

    invoke-virtual {p0, v0, v5}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 457
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 440
    iget-object v0, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPrepareOptionsMenu()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 444
    const/4 v0, 0x1

    const-string v1, "PICTURE"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 445
    const/4 v0, 0x2

    const-string v1, "TAKE PICTURE"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 446
    const/4 v0, 0x3

    const-string v1, "VIDEO"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 447
    const/4 v0, 0x4

    const-string v1, "RECORD VIDEO"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 448
    const/4 v0, 0x5

    const-string v1, "AUDIO"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 449
    const/4 v0, 0x6

    const-string v1, "RECORD AUDIO"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 451
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
