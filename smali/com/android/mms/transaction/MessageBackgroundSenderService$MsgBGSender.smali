.class public Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;
.super Ljava/lang/Object;
.source "MessageBackgroundSenderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/MessageBackgroundSenderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MsgBGSender"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/MsgBGSendReceiver"


# instance fields
.field private mAction:Ljava/lang/String;

.field private mContentType:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mExtras:Landroid/os/Bundle;

.field private mForceMms:Z

.field private mMediaUri:Landroid/net/Uri;

.field private mMessage:Ljava/lang/String;

.field private mMessageUri:Landroid/net/Uri;

.field private mMsgID:I

.field private mPersister:Lcom/google/android/mms/pdu/PduPersister;

.field private mRecipients:[Ljava/lang/String;

.field private mRequestApp:I

.field private mResizable:Z

.field private mResizedata:[B

.field private mSendReq:Lcom/google/android/mms/pdu/SendReq;

.field private mSlideshow:Lcom/android/mms/model/SlideshowModel;

.field private mSubject:Ljava/lang/String;

.field private mUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/mms/transaction/MessageBackgroundSenderService;


# direct methods
.method public constructor <init>(Lcom/android/mms/transaction/MessageBackgroundSenderService;Landroid/content/Context;IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter "context"
    .parameter "appID"
    .parameter "msgID"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 367
    iput-object p1, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->this$0:Lcom/android/mms/transaction/MessageBackgroundSenderService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 348
    iput-boolean v2, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mResizable:Z

    .line 353
    iput-object v0, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mUris:Ljava/util/ArrayList;

    .line 354
    iput-object v0, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mExtras:Landroid/os/Bundle;

    .line 355
    iput-object v0, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mAction:Ljava/lang/String;

    .line 356
    iput-object v0, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mSubject:Ljava/lang/String;

    .line 357
    iput-boolean v2, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mForceMms:Z

    .line 368
    const-string v0, "recipients"

    invoke-virtual {p5, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->ContactRemoveInvalidChar([Ljava/lang/String;)V

    .line 369
    const-string v0, "message"

    invoke-virtual {p5, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mMessage:Ljava/lang/String;

    .line 370
    iput p3, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mRequestApp:I

    .line 371
    iput p4, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mMsgID:I

    .line 372
    invoke-virtual {p5}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mContentType:Ljava/lang/String;

    .line 373
    invoke-virtual {p5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mMediaUri:Landroid/net/Uri;

    .line 374
    iput-object p2, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mContext:Landroid/content/Context;

    .line 375
    invoke-virtual {p5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mExtras:Landroid/os/Bundle;

    .line 376
    invoke-virtual {p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mAction:Ljava/lang/String;

    .line 377
    iget-object v0, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mExtras:Landroid/os/Bundle;

    const-string v1, "send_multi_slide"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mUris:Ljava/util/ArrayList;

    .line 378
    const-string v0, "subject"

    invoke-virtual {p5, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mSubject:Ljava/lang/String;

    .line 379
    const-string v0, "forcemms"

    invoke-virtual {p5, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mForceMms:Z

    .line 380
    return-void
.end method

.method private ContactRemoveInvalidChar([Ljava/lang/String;)V
    .locals 10
    .parameter "temp_recipient"

    .prologue
    .line 383
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 384
    .local v6, mTemp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 386
    .local v2, arrCount:I
    move-object v1, p1

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v1, v4

    .line 387
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->replaceInvalidPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 388
    .local v7, number:Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    add-int/lit8 v2, v2, 0x1

    .line 386
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 392
    .end local v0           #address:Ljava/lang/String;
    .end local v7           #number:Ljava/lang/String;
    :cond_0
    new-array v8, v2, [Ljava/lang/String;

    iput-object v8, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mRecipients:[Ljava/lang/String;

    .line 393
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 394
    iget-object v9, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mRecipients:[Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v9, v3

    .line 393
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 396
    :cond_1
    return-void
.end method

.method static synthetic access$1100(Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    invoke-direct {p0}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->sendSmsMessage()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;)Lcom/google/android/mms/pdu/PduPersister;
    .locals 1
    .parameter "x0"

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mPersister:Lcom/google/android/mms/pdu/PduPersister;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;Lcom/google/android/mms/pdu/PduPersister;)Lcom/google/android/mms/pdu/PduPersister;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 338
    iput-object p1, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mPersister:Lcom/google/android/mms/pdu/PduPersister;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 338
    invoke-direct {p0}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->initMmsComponents()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    invoke-direct {p0}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->sendMessage()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 338
    iget v0, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mRequestApp:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 338
    iget v0, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mMsgID:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mRecipients:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;Landroid/content/Context;[Ljava/lang/String;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 338
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->getOrCreateThreadId(Landroid/content/Context;[Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2100(Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;Ljava/lang/String;[Ljava/lang/String;JII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 338
    invoke-direct/range {p0 .. p6}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->sendSmsWorker(Ljava/lang/String;[Ljava/lang/String;JII)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 338
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->sendMmsWorker(Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 338
    invoke-direct {p0}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->sendBGMessage()V

    return-void
.end method

.method private createNewMultiSlideshow()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 542
    const/4 v11, 0x0

    .line 543
    .local v11, text:Lcom/android/mms/model/TextModel;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 544
    .local v5, importCount:I
    move v8, v5

    .line 545
    .local v8, numberToImport:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/mms/model/SlideshowModel;->createNew(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 547
    new-instance v13, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v13}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mSendReq:Lcom/google/android/mms/pdu/SendReq;

    .line 549
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mSubject:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 550
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mSendReq:Lcom/google/android/mms/pdu/SendReq;

    new-instance v14, Lcom/google/android/mms/pdu/EncodedStringValue;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mSubject:Ljava/lang/String;

    invoke-direct {v14, v15}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Lcom/google/android/mms/pdu/SendReq;->setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 552
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mSendReq:Lcom/google/android/mms/pdu/SendReq;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->fillMessageHeaders(Lcom/google/android/mms/pdu/SendReq;)V

    .line 553
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mPersister:Lcom/google/android/mms/pdu/PduPersister;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mSendReq:Lcom/google/android/mms/pdu/SendReq;

    sget-object v15, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mRequestApp:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mMsgID:I

    move/from16 v17, v0

    invoke-virtual/range {v13 .. v17}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;II)Landroid/net/Uri;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mMessageUri:Landroid/net/Uri;

    .line 555
    new-instance v10, Lcom/android/mms/model/SlideModel;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v10, v13}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    .line 556
    .local v10, slide:Lcom/android/mms/model/SlideModel;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v10}, Lcom/android/mms/model/SlideshowModel;->add(ILcom/android/mms/model/SlideModel;)V

    .line 558
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mMessage:Ljava/lang/String;

    if-eqz v13, :cond_1

    .line 559
    new-instance v11, Lcom/android/mms/model/TextModel;

    .end local v11           #text:Lcom/android/mms/model/TextModel;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mContext:Landroid/content/Context;

    const-string v14, "text/plain"

    const-string v15, "cid:text_1.txt"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v11, v13, v14, v15, v0}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    .line 560
    .restart local v11       #text:Lcom/android/mms/model/TextModel;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mMessage:Ljava/lang/String;

    const/4 v14, 0x1

    invoke-virtual {v11, v13, v14}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;Z)V

    .line 562
    :cond_1
    if-eqz v11, :cond_2

    .line 563
    invoke-virtual {v10, v11}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 566
    :cond_2
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    add-int/lit8 v13, v8, 0x1

    if-ge v2, v13, :cond_6

    .line 567
    const/4 v7, 0x0

    .line 568
    .local v7, mimeType:Ljava/lang/String;
    const/4 v6, 0x0

    .line 569
    .local v6, media:Lcom/android/mms/model/MediaModel;
    const/4 v1, 0x0

    .line 571
    .local v1, dataUri:Landroid/net/Uri;
    new-instance v4, Lcom/android/mms/model/SlideModel;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v4, v13}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    .line 572
    .local v4, imageSlide:Lcom/android/mms/model/SlideModel;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v13, v2, v4}, Lcom/android/mms/model/SlideshowModel;->add(ILcom/android/mms/model/SlideModel;)V

    .line 574
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mUris:Ljava/util/ArrayList;

    add-int/lit8 v14, v2, -0x1

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Parcelable;

    .line 575
    .local v12, uri:Landroid/os/Parcelable;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->this$0:Lcom/android/mms/transaction/MessageBackgroundSenderService;

    move-object v13, v12

    check-cast v13, Landroid/net/Uri;

    #calls: Lcom/android/mms/transaction/MessageBackgroundSenderService;->getMimeTypeFromUri(Landroid/net/Uri;)Ljava/lang/String;
    invoke-static {v14, v13}, Lcom/android/mms/transaction/MessageBackgroundSenderService;->access$400(Lcom/android/mms/transaction/MessageBackgroundSenderService;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    .line 577
    if-eqz v7, :cond_5

    const-string v13, "image/"

    invoke-virtual {v7, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 578
    new-instance v3, Lcom/android/mms/ui/UriImage;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mContext:Landroid/content/Context;

    check-cast v12, Landroid/net/Uri;

    .end local v12           #uri:Landroid/os/Parcelable;
    invoke-direct {v3, v13, v12}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 579
    .local v3, image:Lcom/android/mms/ui/UriImage;
    if-nez v3, :cond_3

    .line 580
    new-instance v13, Lcom/android/mms/ExceedMessageSizeException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "No room to resize picture: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mMediaUri:Landroid/net/Uri;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/android/mms/ExceedMessageSizeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 582
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageWidth()I

    move-result v13

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageHeight()I

    move-result v14

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v15

    div-int/lit8 v15, v15, 0x3

    invoke-virtual {v3, v13, v14, v15}, Lcom/android/mms/ui/UriImage;->getResizedImageAsPart(III)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v9

    .line 586
    .local v9, part:Lcom/google/android/mms/pdu/PduPart;
    if-nez v9, :cond_4

    .line 587
    new-instance v13, Lcom/google/android/mms/MmsException;

    const-string v14, "part is null during resize media."

    invoke-direct {v13, v14}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 607
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mPersister:Lcom/google/android/mms/pdu/PduPersister;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mMessageUri:Landroid/net/Uri;

    invoke-static {v14}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v14

    invoke-static {}, Lcom/android/mms/transaction/MessageBackgroundSenderService;->access$2300()Ljava/util/HashMap;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v9, v14, v15, v0}, Lcom/google/android/mms/pdu/PduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;JLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v1

    .line 609
    new-instance v6, Lcom/android/mms/model/ImageModel;

    .end local v6           #media:Lcom/android/mms/model/MediaModel;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v14}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v14

    invoke-direct {v6, v13, v1, v14}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 610
    .restart local v6       #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v4, v6}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 566
    .end local v3           #image:Lcom/android/mms/ui/UriImage;
    .end local v9           #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 656
    .end local v1           #dataUri:Landroid/net/Uri;
    .end local v4           #imageSlide:Lcom/android/mms/model/SlideModel;
    .end local v6           #media:Lcom/android/mms/model/MediaModel;
    .end local v7           #mimeType:Ljava/lang/String;
    :cond_6
    return-void
.end method

.method private createNewSlideshow()Lcom/android/mms/model/SlideshowModel;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 659
    const/4 v2, 0x0

    .line 660
    .local v2, media:Lcom/android/mms/model/MediaModel;
    const/4 v5, 0x0

    .line 661
    .local v5, text:Lcom/android/mms/model/TextModel;
    iget-object v7, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/mms/model/SlideshowModel;->createNew(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v4

    .line 662
    .local v4, slideshow:Lcom/android/mms/model/SlideshowModel;
    new-instance v3, Lcom/android/mms/model/SlideModel;

    invoke-direct {v3, v4}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    .line 663
    .local v3, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v4, v3}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    .line 664
    iget-object v6, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mMediaUri:Landroid/net/Uri;

    .line 668
    .local v6, uri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mMediaUri:Landroid/net/Uri;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mContentType:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 669
    iget-object v7, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mContentType:Ljava/lang/String;

    const-string v8, "image/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 670
    new-instance v2, Lcom/android/mms/model/ImageModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    iget-object v7, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mMediaUri:Landroid/net/Uri;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v9

    invoke-direct {v2, v7, v8, v9}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 679
    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mMessage:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 680
    new-instance v5, Lcom/android/mms/model/TextModel;

    .end local v5           #text:Lcom/android/mms/model/TextModel;
    iget-object v7, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mContext:Landroid/content/Context;

    const-string v8, "text/plain"

    const-string v9, "cid:text_1.txt"

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v10

    invoke-direct {v5, v7, v8, v9, v10}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    .line 682
    .restart local v5       #text:Lcom/android/mms/model/TextModel;
    iget-object v7, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mMessage:Ljava/lang/String;

    invoke-virtual {v5, v7, v11}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;Z)V

    .line 694
    :cond_1
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v3

    .line 696
    if-eqz v5, :cond_2

    .line 697
    :try_start_0
    invoke-virtual {v3, v5}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 699
    :cond_2
    if-eqz v2, :cond_4

    .line 700
    iget-object v7, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mContentType:Ljava/lang/String;

    const-string v8, "image/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 701
    move-object v0, v2

    check-cast v0, Lcom/android/mms/model/ImageModel;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/mms/model/ImageModel;->checkCreationMode()V

    .line 702
    move-object v0, v2

    check-cast v0, Lcom/android/mms/model/ImageModel;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/mms/model/ImageModel;->checkResolution()V

    .line 704
    :cond_3
    invoke-virtual {v3, v2}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z
    :try_end_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/mms/RotationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/mms/ResolutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_4

    .line 731
    .end local v4           #slideshow:Lcom/android/mms/model/SlideshowModel;
    :cond_4
    :goto_1
    return-object v4

    .line 671
    .restart local v4       #slideshow:Lcom/android/mms/model/SlideshowModel;
    :cond_5
    iget-object v7, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mContentType:Ljava/lang/String;

    const-string v8, "video/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 672
    new-instance v2, Lcom/android/mms/model/VideoModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    iget-object v7, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mMediaUri:Landroid/net/Uri;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v9

    invoke-direct {v2, v7, v8, v9}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    goto :goto_0

    .line 673
    :cond_6
    iget-object v7, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mContentType:Ljava/lang/String;

    const-string v8, "audio/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 674
    new-instance v2, Lcom/android/mms/model/AudioModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    iget-object v7, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mMediaUri:Landroid/net/Uri;

    invoke-direct {v2, v7, v8}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    goto :goto_0

    .line 706
    :catch_0
    move-exception v1

    .line 707
    .local v1, e:Lcom/android/mms/ExceedMessageSizeException;
    iget-object v7, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mContentType:Ljava/lang/String;

    const-string v8, "image/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    move-object v7, v2

    .line 708
    check-cast v7, Lcom/android/mms/model/ImageModel;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v8

    invoke-direct {p0, v7, v8, v6}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->resizeMedia(Lcom/android/mms/model/ImageModel;ILandroid/net/Uri;)V

    .line 709
    invoke-virtual {v3, v2}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 710
    iput-boolean v11, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mResizable:Z

    goto :goto_1

    .line 712
    :cond_7
    const/4 v4, 0x0

    goto :goto_1

    .line 714
    .end local v1           #e:Lcom/android/mms/ExceedMessageSizeException;
    :catch_1
    move-exception v1

    .line 715
    .local v1, e:Lcom/android/mms/RotationException;
    iget-object v7, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mContentType:Ljava/lang/String;

    const-string v8, "image/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v7, v2

    .line 716
    check-cast v7, Lcom/android/mms/model/ImageModel;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v8

    invoke-direct {p0, v7, v8, v6}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->resizeMedia(Lcom/android/mms/model/ImageModel;ILandroid/net/Uri;)V

    .line 717
    invoke-virtual {v3, v2}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 718
    iput-boolean v11, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mResizable:Z

    goto :goto_1

    .line 720
    .end local v1           #e:Lcom/android/mms/RotationException;
    :catch_2
    move-exception v1

    .line 721
    .local v1, e:Lcom/android/mms/UnsupportContentTypeException;
    invoke-virtual {v1}, Lcom/android/mms/UnsupportContentTypeException;->printStackTrace()V

    goto :goto_1

    .line 722
    .end local v1           #e:Lcom/android/mms/UnsupportContentTypeException;
    :catch_3
    move-exception v1

    .line 723
    .local v1, e:Lcom/android/mms/ResolutionException;
    iget-object v7, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mContentType:Ljava/lang/String;

    const-string v8, "image/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v7, v2

    .line 724
    check-cast v7, Lcom/android/mms/model/ImageModel;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v8

    invoke-direct {p0, v7, v8, v6}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->resizeMedia(Lcom/android/mms/model/ImageModel;ILandroid/net/Uri;)V

    .line 725
    invoke-virtual {v3, v2}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 726
    iput-boolean v11, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mResizable:Z

    goto/16 :goto_1

    .line 728
    .end local v1           #e:Lcom/android/mms/ResolutionException;
    :catch_4
    move-exception v1

    .line 729
    .local v1, e:Lcom/android/mms/ContentRestrictionException;
    invoke-virtual {v1}, Lcom/android/mms/ContentRestrictionException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method private encodeStrings([Ljava/lang/String;)[Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 5
    .parameter "array"

    .prologue
    .line 773
    array-length v0, p1

    .line 774
    .local v0, count:I
    if-lez v0, :cond_0

    .line 775
    new-array v1, v0, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 776
    .local v1, encodedArray:[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 777
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    aget-object v4, p1, v2

    invoke-direct {v3, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 776
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 781
    .end local v1           #encodedArray:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v2           #i:I
    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

.method private fillMessageHeaders(Lcom/google/android/mms/pdu/SendReq;)V
    .locals 2
    .parameter "sendReq"

    .prologue
    .line 764
    iget-object v0, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mRecipients:[Ljava/lang/String;

    .line 766
    .local v0, dests:[Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->encodeStrings([Ljava/lang/String;)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    .line 767
    .local v1, encodedNumbers:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v1, :cond_0

    .line 768
    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/SendReq;->setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 770
    :cond_0
    return-void
.end method

.method private getOrCreateThreadId(Landroid/content/Context;[Ljava/lang/String;)J
    .locals 7
    .parameter "context"
    .parameter "dests"

    .prologue
    .line 785
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 786
    .local v3, recipients:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 787
    .local v4, s:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 788
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 786
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 790
    .end local v4           #s:Ljava/lang/String;
    :cond_1
    invoke-static {p1, v3}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v5

    return-wide v5
.end method

.method private initMmsComponents()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 518
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mMediaUri:Landroid/net/Uri;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mMessage:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 519
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->createNewSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 520
    iget-object v3, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-nez v3, :cond_2

    .line 538
    :cond_1
    :goto_0
    return v2

    .line 523
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->makeSendReq()Lcom/google/android/mms/pdu/SendReq;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mSendReq:Lcom/google/android/mms/pdu/SendReq;

    .line 538
    :cond_3
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 524
    :cond_4
    iget-object v3, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mUris:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    .line 525
    invoke-direct {p0}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->createNewMultiSlideshow()V

    .line 526
    iget-object v3, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v3, :cond_1

    .line 529
    iget-object v3, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v1

    .line 530
    .local v1, pb:Lcom/google/android/mms/pdu/PduBody;
    iget-object v3, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mSendReq:Lcom/google/android/mms/pdu/SendReq;

    invoke-virtual {v3, v1}, Lcom/google/android/mms/pdu/SendReq;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    .line 531
    iget-object v3, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mPersister:Lcom/google/android/mms/pdu/PduPersister;

    iget-object v4, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mMessageUri:Landroid/net/Uri;

    invoke-static {}, Lcom/android/mms/transaction/MessageBackgroundSenderService;->access$2300()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v3, v4, v1, v5}, Lcom/google/android/mms/pdu/PduPersister;->updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;Ljava/util/HashMap;)V

    .line 532
    iget-object v3, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3, v1}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 534
    .end local v1           #pb:Lcom/google/android/mms/pdu/PduBody;
    :catch_0
    move-exception v0

    .line 535
    .local v0, e:Lcom/google/android/mms/MmsException;
    invoke-virtual {v0}, Lcom/google/android/mms/MmsException;->printStackTrace()V

    goto :goto_0
.end method

.method private isRequreMMS(Ljava/util/ArrayList;Landroid/net/Uri;)Z
    .locals 6
    .parameter
    .parameter "uri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Parcelable;",
            ">;",
            "Landroid/net/Uri;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 399
    const/4 v0, -0x1

    .line 400
    .local v0, mEncodingType:I
    const/4 v1, 0x0

    .line 402
    .local v1, params:[I
    if-ne v0, v3, :cond_1

    .line 403
    iget-object v4, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mMessage:Ljava/lang/String;

    invoke-static {v4, v2, v0}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v1

    .line 413
    :goto_0
    iget-boolean v4, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mForceMms:Z

    if-nez v4, :cond_0

    if-nez p2, :cond_0

    if-nez p1, :cond_0

    aget v4, v1, v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsToMmsTextThreshold()I

    move-result v5

    if-lt v4, v5, :cond_4

    .line 414
    :cond_0
    const-string v2, "Mms/MsgBGSendReceiver"

    const-string v4, "try to send mms"

    invoke-static {v2, v4}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 418
    :goto_1
    return v2

    .line 404
    :cond_1
    if-nez v0, :cond_2

    .line 405
    iget-object v4, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mMessage:Ljava/lang/String;

    invoke-static {v4, v2, v0}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v1

    goto :goto_0

    .line 407
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableComposeTypeUI()Z

    move-result v4

    if-nez v4, :cond_3

    .line 408
    iget-object v4, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mMessage:Ljava/lang/String;

    invoke-static {v4, v2}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v1

    goto :goto_0

    .line 410
    :cond_3
    iget-object v4, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mMessage:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/util/TelephonyUtils;->getStringByteSize(Ljava/lang/String;)[I

    move-result-object v1

    goto :goto_0

    .line 417
    :cond_4
    const-string v3, "Mms/MsgBGSendReceiver"

    const-string v4, "try to send sms"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private makeSendReq()Lcom/google/android/mms/pdu/SendReq;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 738
    new-instance v5, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v5}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    .line 739
    .local v5, sendReq:Lcom/google/android/mms/pdu/SendReq;
    invoke-direct {p0, v5}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->fillMessageHeaders(Lcom/google/android/mms/pdu/SendReq;)V

    .line 740
    iget-object v6, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v4

    .line 741
    .local v4, pb:Lcom/google/android/mms/pdu/PduBody;
    iget-boolean v6, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mResizable:Z

    if-eqz v6, :cond_1

    .line 742
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v3

    .line 743
    .local v3, partCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 744
    invoke-virtual {v4, v1}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v2

    .line 745
    .local v2, p:Lcom/google/android/mms/pdu/PduPart;
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([B)V

    .line 746
    .local v0, contentType:Ljava/lang/String;
    const-string v6, "image/"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 747
    iget-object v6, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mResizedata:[B

    invoke-virtual {v2, v6}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 743
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 753
    .end local v0           #contentType:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #p:Lcom/google/android/mms/pdu/PduPart;
    .end local v3           #partCount:I
    :cond_1
    invoke-virtual {v5, v4}, Lcom/google/android/mms/pdu/SendReq;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    .line 757
    iget-object v6, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mPersister:Lcom/google/android/mms/pdu/PduPersister;

    sget-object v7, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    iget v8, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mRequestApp:I

    iget v9, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mMsgID:I

    invoke-virtual {v6, v5, v7, v8, v9}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;II)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mMessageUri:Landroid/net/Uri;

    .line 758
    iget-object v6, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6, v4}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V

    .line 759
    return-object v5
.end method

.method private resizeMedia(Lcom/android/mms/model/ImageModel;ILandroid/net/Uri;)V
    .locals 5
    .parameter "media"
    .parameter "byteLimit"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 795
    new-instance v0, Lcom/android/mms/ui/UriImage;

    iget-object v2, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p3}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 796
    .local v0, image:Lcom/android/mms/ui/UriImage;
    if-nez v0, :cond_0

    .line 797
    new-instance v2, Lcom/android/mms/ExceedMessageSizeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No room to resize picture: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mMediaUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/mms/ExceedMessageSizeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 799
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageWidth()I

    move-result v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageHeight()I

    move-result v3

    invoke-virtual {v0, v2, v3, p2}, Lcom/android/mms/ui/UriImage;->getResizedImageAsPart(III)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 803
    .local v1, part:Lcom/google/android/mms/pdu/PduPart;
    if-nez v1, :cond_1

    .line 804
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string v3, "part is null during resize media."

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 805
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mResizedata:[B

    .line 806
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {p1, v2}, Lcom/android/mms/model/ImageModel;->setResizeImageSize(I)V

    .line 807
    return-void
.end method

.method private sendBGMessage()V
    .locals 2

    .prologue
    .line 427
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->this$0:Lcom/android/mms/transaction/MessageBackgroundSenderService;

    #calls: Lcom/android/mms/transaction/MessageBackgroundSenderService;->isSignatureEnabled()Z
    invoke-static {v0}, Lcom/android/mms/transaction/MessageBackgroundSenderService;->access$900(Lcom/android/mms/transaction/MessageBackgroundSenderService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->this$0:Lcom/android/mms/transaction/MessageBackgroundSenderService;

    #calls: Lcom/android/mms/transaction/MessageBackgroundSenderService;->getSignatureText()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/transaction/MessageBackgroundSenderService;->access$1000(Lcom/android/mms/transaction/MessageBackgroundSenderService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mMessage:Ljava/lang/String;

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mUris:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mMediaUri:Landroid/net/Uri;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->isRequreMMS(Ljava/util/ArrayList;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 435
    new-instance v0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender$1;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender$1;-><init>(Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;)V

    invoke-virtual {v0}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender$1;->start()V

    .line 465
    :goto_0
    return-void

    .line 445
    :cond_1
    new-instance v0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender$2;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender$2;-><init>(Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;)V

    invoke-virtual {v0}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender$2;->start()V

    goto :goto_0
.end method

.method private sendMessage()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mMessageUri:Landroid/net/Uri;

    .line 491
    .local v0, mmsUri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 493
    .local v1, slideshow:Lcom/android/mms/model/SlideshowModel;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender$4;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender$4;-><init>(Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 498
    return-void
.end method

.method private sendMmsWorker(Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;)V
    .locals 5
    .parameter "mmsUri"
    .parameter "slideshow"

    .prologue
    .line 502
    if-nez p1, :cond_0

    .line 514
    :goto_0
    return-void

    .line 506
    :cond_0
    new-instance v1, Lcom/android/mms/transaction/MmsMessageSender;

    iget-object v2, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/android/mms/transaction/MmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 510
    .local v1, sender:Lcom/android/mms/transaction/MessageSender;
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mRecipients:[Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->getOrCreateThreadId(Landroid/content/Context;[Ljava/lang/String;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 511
    :catch_0
    move-exception v0

    .line 512
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v2, "Mms/MsgBGSendReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendSmsMessage()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 468
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender$3;

    invoke-direct {v1, p0}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender$3;-><init>(Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 473
    return-void
.end method

.method private sendSmsWorker(Ljava/lang/String;[Ljava/lang/String;JII)V
    .locals 9
    .parameter "msgText"
    .parameter "semiSepRecipients"
    .parameter "threadId"
    .parameter "appID"
    .parameter "msgID"

    .prologue
    .line 476
    new-instance v0, Lcom/android/mms/transaction/SmsMessageSender;

    iget-object v1, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mContext:Landroid/content/Context;

    move-object v2, p2

    move-object v3, p1

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JII)V

    .line 478
    .local v0, sender:Lcom/android/mms/transaction/MessageSender;
    :try_start_0
    invoke-interface {v0, p3, p4}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    .line 481
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p3, p4}, Lcom/android/mms/util/Recycler$SmsRecycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    :goto_0
    return-void

    .line 482
    :catch_0
    move-exception v8

    .line 483
    .local v8, e:Ljava/lang/Exception;
    const-string v1, "Mms/MsgBGSendReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send SMS message, threadId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
