.class public Lcom/android/mms/model/SlideshowModel;
.super Lcom/android/mms/model/Model;
.source "SlideshowModel.java"

# interfaces
.implements Ljava/util/List;
.implements Lcom/android/mms/model/IModelChangedObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/mms/model/Model;",
        "Ljava/util/List",
        "<",
        "Lcom/android/mms/model/SlideModel;",
        ">;",
        "Lcom/android/mms/model/IModelChangedObserver;"
    }
.end annotation


# static fields
.field private static final CID_COLON:Ljava/lang/String; = "cid:"

.field private static final DESCRIPTION_UNSUPPORTED_OPERATION:Ljava/lang/String; = "Operation not supported."

.field private static final EXT_VCF:Ljava/lang/String; = ".vcf"

.field private static final EXT_VCS:Ljava/lang/String; = ".vcs"

.field private static final EXT_VNT:Ljava/lang/String; = ".vnt"

.field private static final EXT_VTS:Ljava/lang/String; = ".vts"

.field public static final META_TAG_CONTENT_SKTSAFEMMS:Ljava/lang/String; = "safe_mms"

.field public static final META_TAG_NAME_SKTSAFEMMS:Ljava/lang/String; = "auth"

.field public static final SLIDESHOW_SLOP:I = 0x400

.field private static final TAG:Ljava/lang/String; = "Mms/slideshow"

.field private static sCheckMessageSize:Z

.field private static sIsDrmContentsPresent:Z

.field private static sIsRawAttachmentsPresent:Z

.field private static sRawAttachmentAddSlideforCompose:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentMessageSize:I

.field private mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

.field private final mLayout:Lcom/android/mms/model/LayoutModel;

.field private mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

.field public final mRawAttachments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;"
        }
    .end annotation
.end field

.field private mSafeMMS:Z

.field public final mSlides:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalMessageSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 96
    sput-boolean v0, Lcom/android/mms/model/SlideshowModel;->sIsRawAttachmentsPresent:Z

    .line 98
    sput-boolean v0, Lcom/android/mms/model/SlideshowModel;->sRawAttachmentAddSlideforCompose:Z

    .line 100
    sput-boolean v0, Lcom/android/mms/model/SlideshowModel;->sIsDrmContentsPresent:Z

    .line 102
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/model/SlideshowModel;->sCheckMessageSize:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/model/SlideshowModel;->mSafeMMS:Z

    .line 130
    new-instance v0, Lcom/android/mms/model/LayoutModel;

    invoke-direct {v0}, Lcom/android/mms/model/LayoutModel;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    .line 132
    iput-object p1, p0, Lcom/android/mms/model/SlideshowModel;->mContext:Landroid/content/Context;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    .line 134
    return-void
.end method

.method private constructor <init>(Lcom/android/mms/model/LayoutModel;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILDocument;Lcom/google/android/mms/pdu/PduBody;Landroid/content/Context;)V
    .locals 4
    .parameter "layouts"
    .parameter
    .parameter
    .parameter "documentCache"
    .parameter "pbCache"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mms/model/LayoutModel;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;",
            "Lorg/w3c/dom/smil/SMILDocument;",
            "Lcom/google/android/mms/pdu/PduBody;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 138
    .local p2, slides:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    .local p3, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 119
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/mms/model/SlideshowModel;->mSafeMMS:Z

    .line 139
    iput-object p1, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    .line 140
    iput-object p2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    .line 141
    iput-object p6, p0, Lcom/android/mms/model/SlideshowModel;->mContext:Landroid/content/Context;

    .line 142
    iput-object p3, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    .line 144
    iput-object p4, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    .line 145
    iput-object p5, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    .line 146
    iget-object v3, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/SlideModel;

    .line 147
    .local v2, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    .line 148
    invoke-virtual {v2, p0}, Lcom/android/mms/model/SlideModel;->setParent(Lcom/android/mms/model/SlideshowModel;)V

    goto :goto_0

    .line 151
    .end local v2           #slide:Lcom/android/mms/model/SlideModel;
    :cond_0
    iget-object v3, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/AttachmentModel;

    .line 152
    .local v0, attachment:Lcom/android/mms/model/AttachmentModel;
    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getMediaSize()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    goto :goto_1

    .line 154
    .end local v0           #attachment:Lcom/android/mms/model/AttachmentModel;
    :cond_1
    return-void
.end method

.method private static adjusDuration(Lorg/w3c/dom/smil/SMILParElement;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/android/mms/model/MediaModel;)V
    .locals 5
    .parameter "par"
    .parameter "sme"
    .parameter "media"

    .prologue
    const/high16 v4, 0x447a

    .line 579
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getDuration()I

    move-result v1

    .line 580
    .local v1, mediadur:I
    invoke-interface {p0}, Lorg/w3c/dom/smil/SMILParElement;->getDur()F

    move-result v0

    .line 582
    .local v0, dur:F
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-nez v3, :cond_2

    .line 583
    invoke-virtual {p2, v1}, Lcom/android/mms/model/MediaModel;->setDuration(I)V

    .line 592
    int-to-float v3, v1

    div-float/2addr v3, v4

    cmpl-float v3, v3, v0

    if-lez v3, :cond_1

    .line 593
    invoke-interface {p1}, Lorg/w3c/dom/smil/SMILMediaElement;->getTagName()Ljava/lang/String;

    move-result-object v2

    .line 595
    .local v2, tag:Ljava/lang/String;
    iget-object v3, p2, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p2, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 604
    :cond_0
    int-to-float v3, v1

    div-float/2addr v3, v4

    invoke-interface {p0, v3}, Lorg/w3c/dom/smil/SMILParElement;->setDur(F)V

    .line 623
    .end local v2           #tag:Ljava/lang/String;
    :cond_1
    :goto_0
    const/4 v3, 0x1

    invoke-virtual {p2, v3}, Lcom/android/mms/model/MediaModel;->setFill(S)V

    .line 624
    :cond_2
    return-void

    .line 612
    .restart local v2       #tag:Ljava/lang/String;
    :cond_3
    int-to-float v3, v1

    div-float/2addr v3, v4

    cmpg-float v3, v3, v0

    if-gez v3, :cond_4

    .line 613
    float-to-int v3, v0

    mul-int/lit16 v3, v3, 0x3e8

    invoke-virtual {p2, v3}, Lcom/android/mms/model/MediaModel;->setDuration(I)V

    goto :goto_0

    .line 615
    :cond_4
    float-to-int v3, v0

    if-eqz v3, :cond_5

    .line 616
    float-to-int v3, v0

    mul-int/lit16 v3, v3, 0x3e8

    invoke-virtual {p2, v3}, Lcom/android/mms/model/MediaModel;->setDuration(I)V

    goto :goto_0

    .line 618
    :cond_5
    int-to-float v3, v1

    div-float/2addr v3, v4

    invoke-interface {p0, v3}, Lorg/w3c/dom/smil/SMILParElement;->setDur(F)V

    goto :goto_0
.end method

.method private static asSMILPartElement(Lorg/w3c/dom/smil/SMILDocument;Lorg/w3c/dom/Node;)Lorg/w3c/dom/smil/SMILParElement;
    .locals 4
    .parameter "document"
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 558
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 559
    .local v1, node:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    const-string v3, "par"

    invoke-interface {p0, v3}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/smil/SMILParElement;

    .line 561
    .local v2, par:Lorg/w3c/dom/smil/SMILParElement;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMediaDuration()Z

    move-result v3

    if-nez v3, :cond_0

    .line 562
    const/high16 v3, 0x4100

    invoke-interface {v2, v3}, Lorg/w3c/dom/smil/SMILParElement;->setDur(F)V

    .line 565
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    .line 567
    :goto_0
    if-eqz p1, :cond_1

    .line 568
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_0

    .line 572
    :cond_1
    const/4 v0, 0x0

    .local v0, j:I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 573
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Node;

    invoke-interface {v2, v3}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 572
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 575
    :cond_2
    return-object v2
.end method

.method private static checkCRMode(ZZLcom/android/mms/model/MediaModel;)Z
    .locals 3
    .parameter "checkCRMode"
    .parameter "doNotAddMedia"
    .parameter "media"

    .prologue
    .line 331
    if-eqz p0, :cond_0

    .line 333
    :try_start_0
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 334
    move-object v0, p2

    check-cast v0, Lcom/android/mms/model/ImageModel;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/mms/model/ImageModel;->checkCreationMode()V

    .line 335
    check-cast p2, Lcom/android/mms/model/ImageModel;

    .end local p2
    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->checkContentRestriction()V

    .line 353
    :cond_0
    :goto_0
    return p1

    .line 336
    .restart local p2
    :cond_1
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 337
    move-object v0, p2

    check-cast v0, Lcom/android/mms/model/AudioModel;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/mms/model/AudioModel;->checkCreationMode()V

    .line 338
    check-cast p2, Lcom/android/mms/model/AudioModel;

    .end local p2
    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->checkContentRestriction()V

    goto :goto_0

    .line 343
    :catch_0
    move-exception v2

    goto :goto_0

    .line 339
    .restart local p2
    :cond_2
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 340
    move-object v0, p2

    check-cast v0, Lcom/android/mms/model/VideoModel;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/mms/model/VideoModel;->checkCreationMode()V

    .line 341
    check-cast p2, Lcom/android/mms/model/VideoModel;

    .end local p2
    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->checkContentRestriction()V
    :try_end_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/mms/ResolutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 345
    :catch_1
    move-exception v2

    goto :goto_0

    .line 347
    :catch_2
    move-exception v1

    .line 348
    .local v1, e:Lcom/android/mms/ResolutionException;
    const/4 p1, 0x1

    .line 351
    goto :goto_0

    .line 349
    .end local v1           #e:Lcom/android/mms/ResolutionException;
    :catch_3
    move-exception v1

    .line 350
    .local v1, e:Lcom/android/mms/ContentRestrictionException;
    const/4 p1, 0x1

    goto :goto_0
.end method

.method private static checkContentId(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;
    .locals 3
    .parameter "p"

    .prologue
    .line 877
    const/4 v0, 0x0

    .line 878
    .local v0, contentId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 879
    new-instance v0, Ljava/lang/String;

    .end local v0           #contentId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 881
    .restart local v0       #contentId:Ljava/lang/String;
    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 882
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 884
    :cond_1
    return-object v0
.end method

.method private static checkContentLocation(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;
    .locals 2
    .parameter "p"

    .prologue
    .line 889
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 890
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 894
    .local v0, contentLoc:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 892
    .end local v0           #contentLoc:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #contentLoc:Ljava/lang/String;
    goto :goto_0
.end method

.method private static checkContentType(Lcom/google/android/mms/pdu/PduPart;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "p"
    .parameter "contentType"
    .parameter "mediaName"

    .prologue
    .line 898
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 900
    .local v0, tempName:Ljava/lang/String;
    const-string v1, ".vcf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 901
    const-string v1, "text/x-vCard"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 902
    new-instance p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([B)V

    .line 913
    .restart local p1
    :cond_0
    :goto_0
    return-object p1

    .line 903
    :cond_1
    const-string v1, ".vcs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 904
    const-string v1, "text/x-vCalendar"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 905
    new-instance p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([B)V

    .restart local p1
    goto :goto_0

    .line 906
    :cond_2
    const-string v1, ".vnt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 907
    const-string v1, "text/x-vNote"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 908
    new-instance p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([B)V

    .restart local p1
    goto :goto_0

    .line 909
    :cond_3
    const-string v1, ".vts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 910
    const-string v1, "text/x-vtodo"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 911
    new-instance p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([B)V

    .restart local p1
    goto :goto_0
.end method

.method private checkDRMExtension(Lcom/google/android/mms/pdu/PduPart;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "part"
    .parameter "src"
    .parameter "contentType"

    .prologue
    .line 1177
    const/16 v4, 0x2e

    invoke-virtual {p2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 1178
    .local v1, dotPos:I
    const/4 v2, 0x0

    .line 1179
    .local v2, extension:Ljava/lang/String;
    if-ltz v1, :cond_0

    .line 1180
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1183
    :cond_0
    const-string v4, "dcf"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1184
    invoke-static {}, Lcom/android/mms/util/MessageMimeTypeMap;->getSingleton()Lcom/android/mms/util/MessageMimeTypeMap;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/android/mms/util/MessageMimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1186
    .local v0, changeExtension:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1187
    const-string v0, "dcf"

    .line 1188
    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    invoke-virtual {p2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1189
    .local v3, fileName:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    .line 1190
    const-string p3, "application/vnd.oma.drm.content"

    .line 1192
    .end local v0           #changeExtension:Ljava/lang/String;
    .end local v3           #fileName:Ljava/lang/String;
    :cond_2
    return-object p3
.end method

.method private checkMediaFileName(IILcom/android/mms/model/MediaModel;Lcom/google/android/mms/pdu/PduPart;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "i"
    .parameter "j"
    .parameter "media"
    .parameter "part"
    .parameter "src"

    .prologue
    .line 1196
    add-int/lit8 v1, p1, 0x1

    .local v1, m:I
    :goto_0
    iget-object v4, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 1197
    iget-object v4, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/SlideModel;

    .line 1198
    .local v3, slide2:Lcom/android/mms/model/SlideModel;
    if-eqz v3, :cond_2

    .line 1199
    const/4 v2, 0x0

    .local v2, n:I
    :goto_1
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 1200
    if-eq p1, v1, :cond_0

    invoke-virtual {v3, v2}, Lcom/android/mms/model/SlideModel;->get(I)Lcom/android/mms/model/MediaModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1201
    const/16 v4, 0x2e

    invoke-virtual {p5, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1202
    .local v0, index:I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    .line 1203
    new-instance v4, Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    invoke-virtual {p5, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p5

    .line 1206
    :goto_2
    const-string v4, "Mms/slideshow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changed file name changed, len = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    .end local v0           #index:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1205
    .restart local v0       #index:I
    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, p5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p5

    goto :goto_2

    .line 1196
    .end local v0           #index:I
    .end local v2           #n:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1211
    .end local v3           #slide2:Lcom/android/mms/model/SlideModel;
    :cond_3
    return-object p5
.end method

.method private static checkSlideMedia(Ljava/lang/String;)Z
    .locals 3
    .parameter "slideMediaName"

    .prologue
    .line 918
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 919
    .local v1, tempName:Ljava/lang/String;
    const-string v2, ".vcf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ".vcs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ".vnt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ".vts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 923
    :cond_0
    const/4 v0, 0x0

    .line 927
    .local v0, isSlideMedia:Z
    :goto_0
    return v0

    .line 925
    .end local v0           #isSlideMedia:Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0       #isSlideMedia:Z
    goto :goto_0
.end method

.method public static createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/mms/model/SlideshowModel;
    .locals 1
    .parameter "context"
    .parameter "uri"
    .parameter "addAttachmentSlide"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-static {p0, p1}, Lcom/android/mms/model/SlideshowModel;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/android/mms/model/SlideshowModel;->createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Z)Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    return-object v0
.end method

.method public static createFromPduBody(Landroid/content/Context;Landroid/net/Uri;ZZ)Lcom/android/mms/model/SlideshowModel;
    .locals 37
    .parameter "context"
    .parameter "uri"
    .parameter "IsSlideshow"
    .parameter "checkCRMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 167
    const-string v3, "Mms/slideshow"

    const-string v10, "createFromPduBody(Uri)"

    invoke-static {v3, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-static/range {p0 .. p1}, Lcom/android/mms/model/SlideshowModel;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v4

    .line 169
    .local v4, pb:Lcom/google/android/mms/pdu/PduBody;
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/mms/model/SlideshowModel;->sIsRawAttachmentsPresent:Z

    .line 170
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/mms/model/SlideshowModel;->sIsDrmContentsPresent:Z

    .line 171
    move-object/from16 v0, p0

    invoke-static {v4, v0}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/google/android/mms/pdu/PduBody;Landroid/content/Context;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v5

    .line 174
    .local v5, document:Lorg/w3c/dom/smil/SMILDocument;
    invoke-interface {v5}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v29

    .line 175
    .local v29, sle:Lorg/w3c/dom/smil/SMILLayoutElement;
    invoke-interface/range {v29 .. v29}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;

    move-result-object v34

    .line 176
    .local v34, srle:Lorg/w3c/dom/smil/SMILRootLayoutElement;
    invoke-static/range {v34 .. v34}, Lcom/android/mms/model/SlideshowModel;->createRegionModel(Lorg/w3c/dom/smil/SMILRootLayoutElement;)Lcom/android/mms/model/RegionModel;

    move-result-object v27

    .line 179
    .local v27, rootLayout:Lcom/android/mms/model/RegionModel;
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v26, regions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/RegionModel;>;"
    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/mms/model/SlideshowModel;->makeRegionModelList(Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/util/ArrayList;)I

    move-result v35

    .line 182
    .local v35, sumOfRegionHeight:I
    invoke-virtual/range {v27 .. v27}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v3

    if-lez v3, :cond_0

    if-lez v35, :cond_0

    invoke-virtual/range {v27 .. v27}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v3

    move/from16 v0, v35

    if-le v0, v3, :cond_0

    .line 183
    move-object/from16 v0, v27

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/mms/model/RegionModel;->setHeight(I)V

    .line 189
    :cond_0
    new-instance v6, Lcom/android/mms/model/LayoutModel;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-direct {v6, v0, v1, v5}, Lcom/android/mms/model/LayoutModel;-><init>(Lcom/android/mms/model/RegionModel;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILDocument;)V

    .line 192
    .local v6, layouts:Lcom/android/mms/model/LayoutModel;
    invoke-interface {v5}, Lorg/w3c/dom/smil/SMILDocument;->getBody()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v14

    .line 193
    .local v14, docBody:Lorg/w3c/dom/smil/SMILElement;
    invoke-interface {v14}, Lorg/w3c/dom/smil/SMILElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v31

    .line 194
    .local v31, slideNodes:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v32

    .line 195
    .local v32, slidesNum:I
    new-instance v7, Ljava/util/ArrayList;

    move/from16 v0, v32

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 197
    .local v7, slides:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    const/4 v8, 0x0

    .line 199
    .local v8, mediaCount:I
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v4, v1}, Lcom/android/mms/model/SlideshowModel;->getAttachmentList(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Lorg/w3c/dom/NodeList;)Ljava/util/ArrayList;

    move-result-object v9

    .line 201
    .local v9, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v32

    if-ge v0, v1, :cond_14

    .line 204
    const/4 v13, 0x0

    .line 205
    .local v13, doNotAddSlide:Z
    const/16 v24, 0x0

    .line 206
    .local v24, par:Lorg/w3c/dom/smil/SMILParElement;
    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    instance-of v3, v3, Lorg/w3c/dom/smil/SMILParElement;

    if-eqz v3, :cond_3

    .line 207
    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v24

    .end local v24           #par:Lorg/w3c/dom/smil/SMILParElement;
    check-cast v24, Lorg/w3c/dom/smil/SMILParElement;

    .line 214
    .restart local v24       #par:Lorg/w3c/dom/smil/SMILParElement;
    :cond_1
    :goto_1
    if-nez v24, :cond_4

    .line 201
    .end local v24           #par:Lorg/w3c/dom/smil/SMILParElement;
    :cond_2
    :goto_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 209
    .restart local v24       #par:Lorg/w3c/dom/smil/SMILParElement;
    :cond_3
    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v23

    .line 211
    .local v23, nodeName:Ljava/lang/String;
    const-string v3, "seq"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 212
    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/mms/model/SlideshowModel;->asSMILPartElement(Lorg/w3c/dom/smil/SMILDocument;Lorg/w3c/dom/Node;)Lorg/w3c/dom/smil/SMILParElement;

    move-result-object v24

    goto :goto_1

    .line 217
    .end local v23           #nodeName:Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result v3

    mul-int/lit16 v0, v3, 0x3e8

    move/from16 v25, v0

    .line 218
    .local v25, parDuration:I
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/smil/SMILParElement;->getDur()F

    move-result v3

    const/high16 v10, 0x447a

    mul-float/2addr v3, v10

    float-to-int v3, v3

    move/from16 v0, v25

    if-le v3, v0, :cond_5

    .line 219
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/smil/SMILParElement;->getDur()F

    move-result v3

    const/high16 v10, 0x447a

    mul-float/2addr v3, v10

    float-to-int v0, v3

    move/from16 v25, v0

    .line 221
    :cond_5
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/smil/SMILParElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v20

    .line 222
    .local v20, mediaNodes:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v21

    .line 223
    .local v21, mediaNum:I
    new-instance v22, Ljava/util/ArrayList;

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 224
    .local v22, mediaSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    move/from16 v8, v21

    .line 225
    const/16 v18, 0x0

    .local v18, j:I
    :goto_3
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_13

    .line 226
    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v33

    check-cast v33, Lorg/w3c/dom/smil/SMILMediaElement;

    .line 227
    .local v33, sme:Lorg/w3c/dom/smil/SMILMediaElement;
    const/4 v12, 0x0

    .line 229
    .local v12, doNotAddMedia:Z
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, v25

    invoke-static {v0, v1, v6, v4, v2}, Lcom/android/mms/model/MediaModelFactory;->getMediaModel(Landroid/content/Context;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/android/mms/model/LayoutModel;Lcom/google/android/mms/pdu/PduBody;I)Lcom/android/mms/model/MediaModel;

    move-result-object v19

    .line 236
    .local v19, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 237
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/mms/model/SlideshowModel;->sIsDrmContentsPresent:Z

    .line 239
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 240
    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/MediaModel;->isLocation()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/model/MediaModel;->isVItem(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 241
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/mms/model/SlideshowModel;->sIsRawAttachmentsPresent:Z

    .line 225
    .end local v19           #media:Lcom/android/mms/model/MediaModel;
    .end local v33           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_7
    :goto_4
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 244
    .restart local v19       #media:Lcom/android/mms/model/MediaModel;
    .restart local v33       #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_8
    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/MediaModel;->isLocation()Z

    move-result v3

    const/4 v10, 0x1

    if-ne v3, v10, :cond_c

    .line 248
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v28

    .line 249
    .local v28, size:I
    const-string v3, "NGM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Raw Attachment Size"

    move-object/from16 v0, v36

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v36, " "

    move-object/from16 v0, v36

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :cond_9
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/mms/model/AttachmentModel;

    .line 253
    .local v11, a:Lcom/android/mms/model/AttachmentModel;
    const-string v3, "NGM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Raw Attachment URI"

    move-object/from16 v0, v36

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v11}, Lcom/android/mms/model/AttachmentModel;->getUri()Landroid/net/Uri;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-virtual {v11}, Lcom/android/mms/model/AttachmentModel;->getUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v11}, Lcom/android/mms/model/AttachmentModel;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v3

    if-nez v3, :cond_9

    .line 256
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 260
    .end local v11           #a:Lcom/android/mms/model/AttachmentModel;
    :cond_a
    const-string v3, "NGM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Raw Attachment Size"

    move-object/from16 v0, v36

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v36

    move/from16 v0, v36

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_b

    .line 262
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/mms/model/SlideshowModel;->sIsRawAttachmentsPresent:Z

    .line 304
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v28           #size:I
    :cond_b
    :goto_5
    move/from16 v0, p3

    move-object/from16 v1, v19

    invoke-static {v0, v12, v1}, Lcom/android/mms/model/SlideshowModel;->checkCRMode(ZZLcom/android/mms/model/MediaModel;)Z

    move-result v12

    .line 305
    if-nez v12, :cond_7

    .line 306
    check-cast v33, Lorg/w3c/dom/events/EventTarget;

    .end local v33           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    move-object/from16 v0, v33

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/mms/model/SmilHelper;->addMediaElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/MediaModel;)V

    .line 307
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_4

    .line 309
    .end local v19           #media:Lcom/android/mms/model/MediaModel;
    :catch_0
    move-exception v15

    .line 310
    .local v15, e:Ljava/io/IOException;
    const-string v3, "Mms/slideshow"

    invoke-virtual {v15}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10, v15}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 266
    .end local v15           #e:Ljava/io/IOException;
    .restart local v19       #media:Lcom/android/mms/model/MediaModel;
    .restart local v33       #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_c
    const/4 v3, 0x1

    if-ne v8, v3, :cond_d

    :try_start_1
    sget-boolean v3, Lcom/android/mms/model/SlideshowModel;->sIsRawAttachmentsPresent:Z

    if-eqz v3, :cond_d

    .line 267
    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v3

    if-eqz v3, :cond_d

    add-int/lit8 v3, v32, -0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_d

    invoke-static/range {p2 .. p2}, Lcom/android/mms/model/SlideshowModel;->getAddAttachmentSlideForCompose(Z)Z

    move-result v3

    if-nez v3, :cond_d

    .line 269
    const/4 v12, 0x1

    .line 270
    const/4 v3, 0x1

    move/from16 v0, v32

    if-ne v0, v3, :cond_e

    .line 271
    const/4 v13, 0x0

    .line 278
    :cond_d
    :goto_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMediaDuration()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 279
    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/mms/model/SlideshowModel;->adjusDuration(Lorg/w3c/dom/smil/SMILParElement;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/android/mms/model/MediaModel;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 311
    .end local v19           #media:Lcom/android/mms/model/MediaModel;
    .end local v33           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :catch_1
    move-exception v15

    .line 312
    .local v15, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "Mms/slideshow"

    invoke-virtual {v15}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10, v15}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 274
    .end local v15           #e:Ljava/lang/IllegalArgumentException;
    .restart local v19       #media:Lcom/android/mms/model/MediaModel;
    .restart local v33       #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_e
    const/4 v13, 0x1

    goto :goto_6

    .line 283
    :cond_f
    :try_start_2
    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/model/MediaModel;->isVItem(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 284
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/mms/model/SlideshowModel;->sIsRawAttachmentsPresent:Z

    goto/16 :goto_4

    .line 288
    :cond_10
    const/4 v3, 0x1

    if-ne v8, v3, :cond_11

    sget-boolean v3, Lcom/android/mms/model/SlideshowModel;->sIsRawAttachmentsPresent:Z

    if-eqz v3, :cond_11

    .line 289
    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v3

    if-eqz v3, :cond_11

    add-int/lit8 v3, v32, -0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_11

    invoke-static/range {p2 .. p2}, Lcom/android/mms/model/SlideshowModel;->getAddAttachmentSlideForCompose(Z)Z

    move-result v3

    if-nez v3, :cond_11

    .line 291
    const/4 v12, 0x1

    .line 292
    const/4 v3, 0x1

    move/from16 v0, v32

    if-ne v0, v3, :cond_12

    .line 293
    const/4 v13, 0x0

    .line 300
    :cond_11
    :goto_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMediaDuration()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 301
    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/mms/model/SlideshowModel;->adjusDuration(Lorg/w3c/dom/smil/SMILParElement;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/android/mms/model/MediaModel;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_5

    .line 296
    :cond_12
    const/4 v13, 0x1

    goto :goto_7

    .line 316
    .end local v12           #doNotAddMedia:Z
    .end local v19           #media:Lcom/android/mms/model/MediaModel;
    .end local v33           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_13
    new-instance v30, Lcom/android/mms/model/SlideModel;

    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/smil/SMILParElement;->getDur()F

    move-result v3

    const/high16 v10, 0x447a

    mul-float/2addr v3, v10

    float-to-int v3, v3

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-direct {v0, v3, v1}, Lcom/android/mms/model/SlideModel;-><init>(ILjava/util/ArrayList;)V

    .line 317
    .local v30, slide:Lcom/android/mms/model/SlideModel;
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/smil/SMILParElement;->getFill()S

    move-result v3

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/android/mms/model/SlideModel;->setFill(S)V

    .line 318
    check-cast v24, Lorg/w3c/dom/events/EventTarget;

    .end local v24           #par:Lorg/w3c/dom/smil/SMILParElement;
    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/android/mms/model/SmilHelper;->addParElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/SlideModel;)V

    .line 319
    if-nez v13, :cond_2

    .line 320
    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 324
    .end local v13           #doNotAddSlide:Z
    .end local v18           #j:I
    .end local v20           #mediaNodes:Lorg/w3c/dom/NodeList;
    .end local v21           #mediaNum:I
    .end local v22           #mediaSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    .end local v25           #parDuration:I
    .end local v30           #slide:Lcom/android/mms/model/SlideModel;
    :cond_14
    invoke-virtual {v9}, Ljava/util/ArrayList;->trimToSize()V

    .line 325
    const/4 v10, 0x0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v10}, Lcom/android/mms/model/SlideshowModel;->createSlideshowModel(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Lorg/w3c/dom/smil/SMILDocument;Lcom/android/mms/model/LayoutModel;Ljava/util/ArrayList;ILjava/util/ArrayList;Z)Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    return-object v3
.end method

.method public static createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Z)Lcom/android/mms/model/SlideshowModel;
    .locals 40
    .parameter "context"
    .parameter "pb"
    .parameter "addAttachmentSlide"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 379
    const-string v4, "Mms/slideshow"

    const-string v5, "createFromPduBody(PduBody)"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/mms/model/SlideshowModel;->sIsRawAttachmentsPresent:Z

    .line 381
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/mms/model/SlideshowModel;->sIsDrmContentsPresent:Z

    .line 382
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/google/android/mms/pdu/PduBody;Landroid/content/Context;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v6

    .line 385
    .local v6, document:Lorg/w3c/dom/smil/SMILDocument;
    invoke-interface {v6}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v32

    .line 386
    .local v32, sle:Lorg/w3c/dom/smil/SMILLayoutElement;
    invoke-interface/range {v32 .. v32}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;

    move-result-object v38

    .line 387
    .local v38, srle:Lorg/w3c/dom/smil/SMILRootLayoutElement;
    invoke-static/range {v38 .. v38}, Lcom/android/mms/model/SlideshowModel;->createRegionModel(Lorg/w3c/dom/smil/SMILRootLayoutElement;)Lcom/android/mms/model/RegionModel;

    move-result-object v30

    .line 390
    .local v30, rootLayout:Lcom/android/mms/model/RegionModel;
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 391
    .local v29, regions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/RegionModel;>;"
    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/mms/model/SlideshowModel;->makeRegionModelList(Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/util/ArrayList;)I

    .line 392
    new-instance v7, Lcom/android/mms/model/LayoutModel;

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-direct {v7, v0, v1, v6}, Lcom/android/mms/model/LayoutModel;-><init>(Lcom/android/mms/model/RegionModel;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILDocument;)V

    .line 395
    .local v7, layouts:Lcom/android/mms/model/LayoutModel;
    invoke-interface {v6}, Lorg/w3c/dom/smil/SMILDocument;->getBody()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v15

    .line 396
    .local v15, docBody:Lorg/w3c/dom/smil/SMILElement;
    invoke-interface {v15}, Lorg/w3c/dom/smil/SMILElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v34

    .line 397
    .local v34, slideNodes:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v34 .. v34}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v35

    .line 398
    .local v35, slidesNum:I
    new-instance v8, Ljava/util/ArrayList;

    move/from16 v0, v35

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 399
    .local v8, slides:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    const/16 v39, 0x0

    .line 401
    .local v39, totalMessageSize:I
    const/4 v9, 0x0

    .line 403
    .local v9, mediaCount:I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v34

    invoke-static {v0, v1, v2}, Lcom/android/mms/model/SlideshowModel;->getAttachmentList(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Lorg/w3c/dom/NodeList;)Ljava/util/ArrayList;

    move-result-object v10

    .line 405
    .local v10, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    const/16 v17, 0x0

    .local v17, i:I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v35

    if-ge v0, v1, :cond_10

    .line 408
    const/16 v27, 0x0

    .line 409
    .local v27, par:Lorg/w3c/dom/smil/SMILParElement;
    move-object/from16 v0, v34

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    instance-of v4, v4, Lorg/w3c/dom/smil/SMILParElement;

    if-eqz v4, :cond_1

    .line 410
    move-object/from16 v0, v34

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v27

    .end local v27           #par:Lorg/w3c/dom/smil/SMILParElement;
    check-cast v27, Lorg/w3c/dom/smil/SMILParElement;

    .line 417
    .restart local v27       #par:Lorg/w3c/dom/smil/SMILParElement;
    :cond_0
    :goto_1
    if-nez v27, :cond_2

    .line 405
    .end local v27           #par:Lorg/w3c/dom/smil/SMILParElement;
    :goto_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 412
    .restart local v27       #par:Lorg/w3c/dom/smil/SMILParElement;
    :cond_1
    move-object/from16 v0, v34

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v26

    .line 414
    .local v26, nodeName:Ljava/lang/String;
    const-string v4, "seq"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 415
    move-object/from16 v0, v34

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/android/mms/model/SlideshowModel;->asSMILPartElement(Lorg/w3c/dom/smil/SMILDocument;Lorg/w3c/dom/Node;)Lorg/w3c/dom/smil/SMILParElement;

    move-result-object v27

    goto :goto_1

    .line 420
    .end local v26           #nodeName:Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result v4

    mul-int/lit16 v0, v4, 0x3e8

    move/from16 v28, v0

    .line 421
    .local v28, parDuration:I
    invoke-interface/range {v27 .. v27}, Lorg/w3c/dom/smil/SMILParElement;->getDur()F

    move-result v4

    const/high16 v5, 0x447a

    mul-float/2addr v4, v5

    float-to-int v4, v4

    move/from16 v0, v28

    if-le v4, v0, :cond_3

    .line 422
    invoke-interface/range {v27 .. v27}, Lorg/w3c/dom/smil/SMILParElement;->getDur()F

    move-result v4

    const/high16 v5, 0x447a

    mul-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 v28, v0

    .line 425
    :cond_3
    invoke-interface/range {v27 .. v27}, Lorg/w3c/dom/smil/SMILParElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v21

    .line 426
    .local v21, mediaNodes:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    .line 427
    .local v22, mediaNum:I
    new-instance v23, Ljava/util/ArrayList;

    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 428
    .local v23, mediaSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    move/from16 v9, v22

    .line 430
    const/16 v19, 0x0

    .local v19, j:I
    :goto_3
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_f

    .line 431
    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/model/SlideshowModel;->getSmilMediaElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v37

    .line 433
    .local v37, sme:Lorg/w3c/dom/smil/SMILMediaElement;
    if-nez v37, :cond_4

    .line 430
    .end local v37           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :goto_4
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 436
    .restart local v37       #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_4
    const/16 v20, 0x0

    .line 438
    .local v20, media:Lcom/android/mms/model/MediaModel;
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, p1

    move/from16 v3, v28

    invoke-static {v0, v1, v7, v2, v3}, Lcom/android/mms/model/MediaModelFactory;->getMediaModel(Landroid/content/Context;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/android/mms/model/LayoutModel;Lcom/google/android/mms/pdu/PduBody;I)Lcom/android/mms/model/MediaModel;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v20

    .line 451
    :goto_5
    if-eqz v20, :cond_5

    if-eqz v20, :cond_6

    :try_start_1
    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v4

    if-nez v4, :cond_6

    .line 454
    :cond_5
    const-string v4, "Mms/slideshow"

    const-string v5, "abnormal media data, skip to add medisSet"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_4

    .line 507
    .end local v37           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :catch_0
    move-exception v16

    .line 508
    .local v16, e:Ljava/io/IOException;
    const-string v4, "Mms/slideshow"

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-static {v4, v5, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 448
    .end local v16           #e:Ljava/io/IOException;
    .restart local v37       #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :catch_1
    move-exception v16

    .line 449
    .local v16, e:Ljava/lang/NullPointerException;
    :try_start_2
    const-string v4, "Mms/slideshow"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-static {v4, v5, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_5

    .line 509
    .end local v16           #e:Ljava/lang/NullPointerException;
    .end local v37           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :catch_2
    move-exception v16

    .line 510
    .local v16, e:Ljava/lang/IllegalArgumentException;
    const-string v4, "Mms/slideshow"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-static {v4, v5, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 463
    .end local v16           #e:Ljava/lang/IllegalArgumentException;
    .restart local v37       #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_6
    :try_start_3
    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 464
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/mms/model/SlideshowModel;->sIsDrmContentsPresent:Z

    .line 467
    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 468
    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/model/MediaModel;->isLocation()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/model/MediaModel;->isVItem(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 469
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/mms/model/SlideshowModel;->sIsRawAttachmentsPresent:Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    .line 511
    .end local v37           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :catch_3
    move-exception v16

    .line 512
    .local v16, e:Lcom/android/mms/UnsupportContentTypeException;
    const-string v4, "Mms/slideshow"

    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/UnsupportContentTypeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-static {v4, v5, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 471
    .end local v16           #e:Lcom/android/mms/UnsupportContentTypeException;
    .restart local v37       #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_8
    :try_start_4
    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/model/MediaModel;->isLocation()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_b

    .line 474
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v31

    .line 475
    .local v31, size:I
    const-string v4, "NGM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Raw Attachment Size"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :cond_9
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/mms/model/AttachmentModel;

    .line 478
    .local v12, a:Lcom/android/mms/model/AttachmentModel;
    const-string v4, "NGM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Raw Attachment URI"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v12}, Lcom/android/mms/model/AttachmentModel;->getUri()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    invoke-virtual {v12}, Lcom/android/mms/model/AttachmentModel;->getUri()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v12}, Lcom/android/mms/model/AttachmentModel;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v4

    if-nez v4, :cond_9

    .line 480
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 485
    .end local v12           #a:Lcom/android/mms/model/AttachmentModel;
    :cond_a
    const-string v4, "NGM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Raw Attachment Size"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_b

    .line 487
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/mms/model/SlideshowModel;->sIsRawAttachmentsPresent:Z

    .line 491
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v31           #size:I
    :cond_b
    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/model/MediaModel;->isLocation()Z

    move-result v4

    if-nez v4, :cond_c

    .line 492
    move-object/from16 v0, v27

    move-object/from16 v1, v37

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/mms/model/SlideshowModel;->adjusDuration(Lorg/w3c/dom/smil/SMILParElement;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/android/mms/model/MediaModel;)V

    .line 504
    :cond_c
    :goto_6
    check-cast v37, Lorg/w3c/dom/events/EventTarget;

    .end local v37           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    move-object/from16 v0, v37

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/mms/model/SmilHelper;->addMediaElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/MediaModel;)V

    .line 505
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v4

    add-int v39, v39, v4

    goto/16 :goto_4

    .line 495
    .restart local v37       #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_d
    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/model/MediaModel;->isVItem(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 496
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/mms/model/SlideshowModel;->sIsRawAttachmentsPresent:Z

    goto/16 :goto_4

    .line 500
    :cond_e
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMediaDuration()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 501
    move-object/from16 v0, v27

    move-object/from16 v1, v37

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/mms/model/SlideshowModel;->adjusDuration(Lorg/w3c/dom/smil/SMILParElement;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/android/mms/model/MediaModel;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    .line 516
    .end local v20           #media:Lcom/android/mms/model/MediaModel;
    .end local v37           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_f
    new-instance v33, Lcom/android/mms/model/SlideModel;

    invoke-interface/range {v27 .. v27}, Lorg/w3c/dom/smil/SMILParElement;->getDur()F

    move-result v4

    const/high16 v5, 0x447a

    mul-float/2addr v4, v5

    float-to-int v4, v4

    move-object/from16 v0, v33

    move-object/from16 v1, v23

    invoke-direct {v0, v4, v1}, Lcom/android/mms/model/SlideModel;-><init>(ILjava/util/ArrayList;)V

    .line 517
    .local v33, slide:Lcom/android/mms/model/SlideModel;
    invoke-interface/range {v27 .. v27}, Lorg/w3c/dom/smil/SMILParElement;->getFill()S

    move-result v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Lcom/android/mms/model/SlideModel;->setFill(S)V

    .line 518
    check-cast v27, Lorg/w3c/dom/events/EventTarget;

    .end local v27           #par:Lorg/w3c/dom/smil/SMILParElement;
    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Lcom/android/mms/model/SmilHelper;->addParElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/SlideModel;)V

    .line 519
    move-object/from16 v0, v33

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 522
    .end local v19           #j:I
    .end local v21           #mediaNodes:Lorg/w3c/dom/NodeList;
    .end local v22           #mediaNum:I
    .end local v23           #mediaSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    .end local v28           #parDuration:I
    .end local v33           #slide:Lcom/android/mms/model/SlideModel;
    :cond_10
    invoke-virtual {v10}, Ljava/util/ArrayList;->trimToSize()V

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v11, p2

    .line 525
    invoke-static/range {v4 .. v11}, Lcom/android/mms/model/SlideshowModel;->createSlideshowModel(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Lorg/w3c/dom/smil/SMILDocument;Lcom/android/mms/model/LayoutModel;Ljava/util/ArrayList;ILjava/util/ArrayList;Z)Lcom/android/mms/model/SlideshowModel;

    move-result-object v36

    .line 526
    .local v36, slideshow:Lcom/android/mms/model/SlideshowModel;
    move/from16 v0, v39

    move-object/from16 v1, v36

    iput v0, v1, Lcom/android/mms/model/SlideshowModel;->mTotalMessageSize:I

    .line 529
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 532
    :try_start_5
    invoke-interface {v6}, Lorg/w3c/dom/smil/SMILDocument;->getHead()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v4

    const-string v5, "meta"

    invoke-interface {v4, v5}, Lorg/w3c/dom/smil/SMILElement;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v24

    .line 533
    .local v24, metaList:Lorg/w3c/dom/NodeList;
    const-string v4, "Mms/slideshow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "meta  list count : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    const/16 v17, 0x0

    :goto_7
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    move/from16 v0, v17

    if-ge v0, v4, :cond_11

    .line 536
    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v25

    .line 538
    .local v25, node:Lorg/w3c/dom/Node;
    move-object/from16 v0, v25

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v4, v0

    const-string v5, "name"

    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 539
    .local v14, attName:Ljava/lang/String;
    check-cast v25, Lorg/w3c/dom/Element;

    .end local v25           #node:Lorg/w3c/dom/Node;
    const-string v4, "content"

    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 541
    .local v13, attContent:Ljava/lang/String;
    const-string v4, "auth"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    const-string v4, "safe_mms"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 542
    const/4 v4, 0x1

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lcom/android/mms/model/SlideshowModel;->setSafeMMS(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 551
    .end local v13           #attContent:Ljava/lang/String;
    .end local v14           #attName:Ljava/lang/String;
    .end local v24           #metaList:Lorg/w3c/dom/NodeList;
    :cond_11
    :goto_8
    return-object v36

    .line 535
    .restart local v13       #attContent:Ljava/lang/String;
    .restart local v14       #attName:Ljava/lang/String;
    .restart local v24       #metaList:Lorg/w3c/dom/NodeList;
    :cond_12
    add-int/lit8 v17, v17, 0x1

    goto :goto_7

    .line 546
    .end local v13           #attContent:Ljava/lang/String;
    .end local v14           #attName:Ljava/lang/String;
    .end local v24           #metaList:Lorg/w3c/dom/NodeList;
    :catch_4
    move-exception v16

    .line 547
    .local v16, e:Ljava/lang/Exception;
    const-string v4, "Mms/slideshow"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-static {v4, v5, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8
.end method

.method public static createName(JI)Ljava/lang/String;
    .locals 2
    .parameter "dateTaken"
    .parameter "sequenceNumber"

    .prologue
    .line 1173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "yyyyMMdd_kkmmss"

    invoke-static {v1, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createNew(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;
    .locals 1
    .parameter "context"

    .prologue
    .line 157
    new-instance v0, Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v0, p0}, Lcom/android/mms/model/SlideshowModel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static createRegionModel(Lorg/w3c/dom/smil/SMILRootLayoutElement;)Lcom/android/mms/model/RegionModel;
    .locals 6
    .parameter "srle"

    .prologue
    const/4 v2, 0x0

    .line 682
    invoke-interface {p0}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getWidth()I

    move-result v4

    .line 683
    .local v4, w:I
    invoke-interface {p0}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getHeight()I

    move-result v5

    .line 684
    .local v5, h:I
    if-eqz v4, :cond_0

    if-nez v5, :cond_1

    .line 685
    :cond_0
    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/layout/LayoutManager;->getLayoutParameters()Lcom/android/mms/layout/LayoutParameters;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/mms/layout/LayoutParameters;->getWidth()I

    move-result v4

    .line 686
    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/layout/LayoutManager;->getLayoutParameters()Lcom/android/mms/layout/LayoutParameters;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/mms/layout/LayoutParameters;->getHeight()I

    move-result v5

    .line 687
    invoke-interface {p0, v4}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setWidth(I)V

    .line 688
    invoke-interface {p0, v5}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setHeight(I)V

    .line 690
    :cond_1
    new-instance v0, Lcom/android/mms/model/RegionModel;

    const/4 v1, 0x0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;IIII)V

    .line 691
    .local v0, rootLayout:Lcom/android/mms/model/RegionModel;
    return-object v0
.end method

.method private static createSlideshowModel(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Lorg/w3c/dom/smil/SMILDocument;Lcom/android/mms/model/LayoutModel;Ljava/util/ArrayList;ILjava/util/ArrayList;Z)Lcom/android/mms/model/SlideshowModel;
    .locals 16
    .parameter "context"
    .parameter "pb"
    .parameter "document"
    .parameter "layouts"
    .parameter
    .parameter "mediaCount"
    .parameter
    .parameter "addAttachmentSlide"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/mms/pdu/PduBody;",
            "Lorg/w3c/dom/smil/SMILDocument;",
            "Lcom/android/mms/model/LayoutModel;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;Z)",
            "Lcom/android/mms/model/SlideshowModel;"
        }
    .end annotation

    .prologue
    .line 629
    .local p4, slides:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    .local p6, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    new-instance v1, Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    move-object/from16 v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/mms/model/SlideshowModel;-><init>(Lcom/android/mms/model/LayoutModel;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILDocument;Lcom/google/android/mms/pdu/PduBody;Landroid/content/Context;)V

    .line 631
    .local v1, slideshow:Lcom/android/mms/model/SlideshowModel;
    move/from16 v8, p7

    .line 632
    .local v8, addAttachSlide:Z
    const-string v2, "Mms/slideshow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRaw:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/mms/model/SlideshowModel;->sIsRawAttachmentsPresent:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",addAttach:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/mms/model/SlideshowModel;->sIsRawAttachmentsPresent:Z

    if-eqz v2, :cond_0

    if-nez v8, :cond_0

    .line 635
    new-instance v14, Lcom/android/mms/model/SlideModel;

    invoke-direct {v14, v1}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    .line 636
    .local v14, slide:Lcom/android/mms/model/SlideModel;
    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    .end local v14           #slide:Lcom/android/mms/model/SlideModel;
    :cond_0
    sget-boolean v2, Lcom/android/mms/model/SlideshowModel;->sIsRawAttachmentsPresent:Z

    if-eqz v2, :cond_1

    if-eqz v8, :cond_1

    .line 639
    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v13

    .line 642
    .local v13, size:I
    new-instance v14, Lcom/android/mms/model/SlideModel;

    invoke-direct {v14, v1}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    .line 644
    .restart local v14       #slide:Lcom/android/mms/model/SlideModel;
    new-instance v15, Lcom/android/mms/model/TextModel;

    const-string v2, "text/plain"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cid:text_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v2, v3, v4}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    .line 646
    .local v15, text:Lcom/android/mms/model/TextModel;
    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v10

    .line 648
    .local v10, fileCount:I
    const/4 v2, 0x1

    if-ne v10, v2, :cond_3

    .line 649
    const v2, 0x7f0c0132

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 653
    .local v9, detail:Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->getAttachmentList()Ljava/lang/String;

    move-result-object v11

    .line 654
    .local v11, name:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    .line 655
    .local v12, shown:Ljava/lang/String;
    invoke-virtual {v15, v12}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    .line 656
    invoke-virtual {v14, v15}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 658
    const/4 v2, 0x1

    if-ne v13, v2, :cond_4

    if-nez p5, :cond_4

    .line 659
    add-int/lit8 v2, v13, -0x1

    invoke-virtual {v1, v2, v14}, Lcom/android/mms/model/SlideshowModel;->add(ILcom/android/mms/model/SlideModel;)V

    .line 660
    invoke-virtual {v1, v13}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    .line 665
    :goto_1
    invoke-static {}, Lcom/android/mms/model/SlideshowModel;->getCheckMessageSizeforSlide()Z

    move-result v2

    if-nez v2, :cond_1

    .line 666
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/mms/model/SlideshowModel;->setCheckMessageSizeforSlide(Z)V

    .line 672
    .end local v9           #detail:Ljava/lang/String;
    .end local v10           #fileCount:I
    .end local v11           #name:Ljava/lang/String;
    .end local v12           #shown:Ljava/lang/String;
    .end local v13           #size:I
    .end local v14           #slide:Lcom/android/mms/model/SlideModel;
    .end local v15           #text:Lcom/android/mms/model/TextModel;
    :cond_1
    invoke-static {}, Lcom/android/mms/model/SlideshowModel;->getCheckMessageSizeforSlide()Z

    move-result v2

    if-nez v2, :cond_2

    .line 673
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/mms/model/SlideshowModel;->setCheckMessageSizeforSlide(Z)V

    .line 677
    :cond_2
    invoke-virtual {v1, v1}, Lcom/android/mms/model/SlideshowModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 678
    return-object v1

    .line 651
    .restart local v10       #fileCount:I
    .restart local v13       #size:I
    .restart local v14       #slide:Lcom/android/mms/model/SlideModel;
    .restart local v15       #text:Lcom/android/mms/model/TextModel;
    :cond_3
    const v2, 0x7f0c0133

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .restart local v9       #detail:Ljava/lang/String;
    goto :goto_0

    .line 662
    .restart local v11       #name:Ljava/lang/String;
    .restart local v12       #shown:Ljava/lang/String;
    :cond_4
    invoke-virtual {v1, v13, v14}, Lcom/android/mms/model/SlideshowModel;->add(ILcom/android/mms/model/SlideModel;)V

    goto :goto_1
.end method

.method private static extractCID(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "slideMediaName"

    .prologue
    .line 870
    const-string v0, "cid:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 871
    const-string v0, "cid:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 873
    :cond_0
    return-object p0
.end method

.method private static extractLocation(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "compareContentLoc"

    .prologue
    .line 862
    const-string v1, "\""

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\""

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 863
    const/16 v1, 0x22

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 864
    .local v0, endIndex:I
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 866
    .end local v0           #endIndex:I
    :cond_0
    return-object p0
.end method

.method public static getAddAttachmentSlideForCompose(Z)Z
    .locals 3
    .parameter "IsSlideshow"

    .prologue
    const/4 v1, 0x0

    .line 944
    const/4 v0, 0x0

    .line 945
    .local v0, resultValue:Z
    sget-boolean v2, Lcom/android/mms/model/SlideshowModel;->sRawAttachmentAddSlideforCompose:Z

    if-eqz v2, :cond_0

    .line 946
    if-eqz p0, :cond_2

    .line 947
    sget-boolean v2, Lcom/android/mms/model/SlideshowModel;->sRawAttachmentAddSlideforCompose:Z

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 952
    :cond_0
    :goto_0
    sput-boolean v1, Lcom/android/mms/model/SlideshowModel;->sRawAttachmentAddSlideforCompose:Z

    .line 953
    return v0

    :cond_1
    move v0, v1

    .line 947
    goto :goto_0

    .line 949
    :cond_2
    sget-boolean v0, Lcom/android/mms/model/SlideshowModel;->sRawAttachmentAddSlideforCompose:Z

    goto :goto_0
.end method

.method private static getAttachmentList(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Lorg/w3c/dom/NodeList;)Ljava/util/ArrayList;
    .locals 10
    .parameter "context"
    .parameter "pb"
    .parameter "slideNodes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/mms/pdu/PduBody;",
            "Lorg/w3c/dom/NodeList;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 717
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v7

    .line 718
    .local v7, partNum:I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 720
    .local v0, attachmentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v7, :cond_2

    .line 721
    invoke-virtual {p1, v3}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v6

    .line 722
    .local v6, part:Lcom/google/android/mms/pdu/PduPart;
    new-instance v8, Ljava/lang/String;

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    .line 725
    .local v8, type:Ljava/lang/String;
    const-string v9, "text/x-vCard"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "text/x-vcard"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "text/x-vCalendar"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "text/x-vNote"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "text/x-vtodo"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 732
    :cond_0
    invoke-static {v6}, Lcom/android/mms/model/SlideshowModel;->checkContentLocation(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;

    move-result-object v1

    .line 733
    .local v1, contentLoc:Ljava/lang/String;
    const/4 v4, 0x0

    .line 736
    .local v4, object:Lcom/android/mms/model/AttachmentModel;
    :try_start_0
    new-instance v5, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v5, p0, v8, v1, v9}, Lcom/android/mms/model/AttachmentModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4           #object:Lcom/android/mms/model/AttachmentModel;
    .local v5, object:Lcom/android/mms/model/AttachmentModel;
    move-object v4, v5

    .line 741
    .end local v5           #object:Lcom/android/mms/model/AttachmentModel;
    .restart local v4       #object:Lcom/android/mms/model/AttachmentModel;
    :goto_1
    if-eqz v4, :cond_1

    const-string v9, "text/plain"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-static {v8}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 743
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v0, v9, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 744
    const/4 v9, 0x1

    sput-boolean v9, Lcom/android/mms/model/SlideshowModel;->sIsRawAttachmentsPresent:Z

    .line 720
    .end local v1           #contentLoc:Ljava/lang/String;
    .end local v4           #object:Lcom/android/mms/model/AttachmentModel;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 737
    .restart local v1       #contentLoc:Ljava/lang/String;
    .restart local v4       #object:Lcom/android/mms/model/AttachmentModel;
    :catch_0
    move-exception v2

    .line 739
    .local v2, e:Lcom/google/android/mms/MmsException;
    invoke-virtual {v2}, Lcom/google/android/mms/MmsException;->printStackTrace()V

    goto :goto_1

    .line 748
    .end local v1           #contentLoc:Ljava/lang/String;
    .end local v2           #e:Lcom/google/android/mms/MmsException;
    .end local v4           #object:Lcom/android/mms/model/AttachmentModel;
    .end local v6           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v8           #type:Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method public static getCheckMessageSizeforSlide()Z
    .locals 1

    .prologue
    .line 936
    sget-boolean v0, Lcom/android/mms/model/SlideshowModel;->sCheckMessageSize:Z

    .line 937
    .local v0, resultValue:Z
    return v0
.end method

.method public static getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;
    .locals 4
    .parameter "context"
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1356
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    .line 1357
    .local v1, p:Lcom/google/android/mms/pdu/PduPersister;
    invoke-virtual {v1, p1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v2

    .line 1359
    .local v2, pdu:Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v0

    .line 1360
    .local v0, msgType:I
    const/16 v3, 0x80

    if-eq v0, v3, :cond_0

    const/16 v3, 0x84

    if-ne v0, v3, :cond_1

    .line 1362
    :cond_0
    check-cast v2, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .end local v2           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v3

    return-object v3

    .line 1364
    .restart local v2       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :cond_1
    new-instance v3, Lcom/google/android/mms/MmsException;

    invoke-direct {v3}, Lcom/google/android/mms/MmsException;-><init>()V

    throw v3
.end method

.method public static getSmilMediaElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/smil/SMILMediaElement;
    .locals 6
    .parameter "node"

    .prologue
    .line 697
    move-object v2, p0

    .line 701
    .local v2, mNode:Lorg/w3c/dom/Node;
    const/4 v4, 0x0

    .line 703
    .local v4, mSME:Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 704
    .local v3, mNodeList:Lorg/w3c/dom/NodeList;
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    .line 706
    .local v1, mChildCount:I
    instance-of v5, v2, Lorg/w3c/dom/smil/SMILMediaElement;

    if-eqz v5, :cond_1

    move-object v4, v2

    .line 707
    check-cast v4, Lorg/w3c/dom/smil/SMILMediaElement;

    .line 713
    :cond_0
    return-object v4

    .line 709
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 710
    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/model/SlideshowModel;->getSmilMediaElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v4

    .line 709
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getSubject(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1371
    const/4 v1, 0x0

    .line 1373
    .local v1, subStr:Ljava/lang/String;
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .line 1375
    .local v0, pdu:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    if-eqz v0, :cond_0

    .line 1376
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    .line 1377
    .local v2, subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v2, :cond_0

    .line 1378
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .line 1384
    .end local v2           #subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_0
    return-object v3
.end method

.method private makePduBody(Landroid/content/Context;Lorg/w3c/dom/smil/SMILDocument;Z)Lcom/google/android/mms/pdu/PduBody;
    .locals 35
    .parameter "context"
    .parameter "document"
    .parameter "isMakingCopy"

    .prologue
    .line 974
    new-instance v22, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct/range {v22 .. v22}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .line 975
    .local v22, pb:Lcom/google/android/mms/pdu/PduBody;
    const/16 v18, 0x1

    .line 976
    .local v18, nSeqNumber:I
    const/4 v14, 0x0

    .line 977
    .local v14, hasForwardLock:Z
    const/4 v15, 0x0

    .line 978
    .local v15, hasNOTsupportedContentType:Z
    new-instance v23, Ljava/lang/StringBuffer;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuffer;-><init>()V

    .line 980
    .local v23, s:Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v4, v3, :cond_1b

    .line 981
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/mms/model/SlideModel;

    .line 982
    .local v24, slide:Lcom/android/mms/model/SlideModel;
    if-eqz v24, :cond_1a

    .line 983
    const/4 v5, 0x0

    .local v5, j:I
    :goto_1
    invoke-virtual/range {v24 .. v24}, Lcom/android/mms/model/SlideModel;->size()I

    move-result v3

    if-ge v5, v3, :cond_1a

    .line 984
    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Lcom/android/mms/model/SlideModel;->get(I)Lcom/android/mms/model/MediaModel;

    move-result-object v6

    .line 986
    .local v6, media:Lcom/android/mms/model/MediaModel;
    if-eqz p3, :cond_2

    .line 988
    if-eqz v6, :cond_1

    :try_start_0
    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->isAllowedToForward()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_1

    .line 989
    const/4 v14, 0x1

    .line 983
    .end local v6           #media:Lcom/android/mms/model/MediaModel;
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 992
    .restart local v6       #media:Lcom/android/mms/model/MediaModel;
    :catch_0
    move-exception v11

    .line 994
    .local v11, e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    .line 998
    .end local v11           #e:Ljava/io/IOException;
    :cond_1
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/model/CarrierContentRestriction;->checkCarrierNOTSupportedType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 999
    const/4 v15, 0x1

    .line 1000
    goto :goto_2

    .line 1004
    :cond_2
    new-instance v7, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v7}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 1005
    .local v7, part:Lcom/google/android/mms/pdu/PduPart;
    const-string v8, ""

    .line 1006
    .local v8, src:Ljava/lang/String;
    const-string v21, ""

    .line 1007
    .local v21, oldsrc:Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 1008
    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v8

    .line 1009
    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v21

    .line 1011
    :cond_3
    if-eqz v6, :cond_9

    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v29, v6

    .line 1012
    check-cast v29, Lcom/android/mms/model/TextModel;

    .line 1015
    .local v29, text:Lcom/android/mms/model/TextModel;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1016
    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->isLocation()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual/range {v29 .. v29}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/model/MediaModel;->isVItem(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1027
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableKoreanSpecialCharacter()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1028
    invoke-virtual/range {v29 .. v29}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/util/TelephonyUtils;->convertCharaterforKOR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    .line 1032
    :cond_5
    invoke-virtual/range {v29 .. v29}, Lcom/android/mms/model/TextModel;->getCharset()I

    move-result v3

    invoke-virtual {v7, v3}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    .line 1073
    .end local v29           #text:Lcom/android/mms/model/TextModel;
    :cond_6
    :goto_3
    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v10

    .line 1075
    .local v10, contentType:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v10}, Lcom/android/mms/model/SlideshowModel;->checkDRMExtension(Lcom/google/android/mms/pdu/PduPart;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1078
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 1081
    const-string v3, "cid:"

    invoke-virtual {v8, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    .line 1082
    .local v25, startWithContentId:Z
    if-eqz v25, :cond_e

    .line 1083
    const-string v3, "cid:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v8, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    .line 1088
    .local v17, location:Ljava/lang/String;
    :goto_4
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 1091
    if-eqz v25, :cond_f

    .line 1093
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 1100
    :goto_5
    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1101
    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->getDrmObject()Lcom/android/mms/drm/DrmWrapper;

    move-result-object v31

    .line 1102
    .local v31, wrapper:Lcom/android/mms/drm/DrmWrapper;
    invoke-virtual/range {v31 .. v31}, Lcom/android/mms/drm/DrmWrapper;->getOriginalUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    .line 1103
    invoke-virtual/range {v31 .. v31}, Lcom/android/mms/drm/DrmWrapper;->getOriginalData()[B

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 1151
    .end local v6           #media:Lcom/android/mms/model/MediaModel;
    .end local v31           #wrapper:Lcom/android/mms/drm/DrmWrapper;
    :cond_7
    :goto_6
    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    goto/16 :goto_2

    .line 1022
    .end local v10           #contentType:Ljava/lang/String;
    .end local v17           #location:Ljava/lang/String;
    .end local v25           #startWithContentId:Z
    .restart local v6       #media:Lcom/android/mms/model/MediaModel;
    .restart local v29       #text:Lcom/android/mms/model/TextModel;
    :cond_8
    invoke-virtual/range {v29 .. v29}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/model/MediaModel;->isVItem(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto/16 :goto_2

    .line 1033
    .end local v29           #text:Lcom/android/mms/model/TextModel;
    :cond_9
    if-eqz v6, :cond_6

    move-object/from16 v3, p0

    .line 1035
    invoke-direct/range {v3 .. v8}, Lcom/android/mms/model/SlideshowModel;->checkMediaFileName(IILcom/android/mms/model/MediaModel;Lcom/google/android/mms/pdu/PduPart;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1036
    invoke-virtual {v6, v8}, Lcom/android/mms/model/MediaModel;->setSrc(Ljava/lang/String;)V

    .line 1053
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsSendingForChn()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1054
    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1055
    const/16 v28, 0x0

    .line 1056
    .local v28, tag:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1057
    const-string v28, "<text src=\""

    .line 1065
    :cond_a
    :goto_7
    if-eqz v28, :cond_6

    .line 1066
    move-object/from16 v0, p2

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2, v8}, Lcom/android/mms/model/SmilHelper;->replaceSrcInTagWithFirstMatch(Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object p2

    goto/16 :goto_3

    .line 1058
    :cond_b
    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1059
    const-string v28, "<img src=\""

    goto :goto_7

    .line 1060
    :cond_c
    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1061
    const-string v28, "<audio src=\""

    goto :goto_7

    .line 1062
    :cond_d
    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1063
    const-string v28, "<video src=\""

    goto :goto_7

    .line 1085
    .end local v28           #tag:Ljava/lang/String;
    .restart local v10       #contentType:Ljava/lang/String;
    .restart local v25       #startWithContentId:Z
    :cond_e
    move-object/from16 v17, v8

    .restart local v17       #location:Ljava/lang/String;
    goto/16 :goto_4

    .line 1095
    :cond_f
    const/16 v3, 0x2e

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v16

    .line 1096
    .local v16, index:I
    const/4 v3, -0x1

    move/from16 v0, v16

    if-eq v0, v3, :cond_10

    if-nez v16, :cond_11

    :cond_10
    move-object/from16 v9, v17

    .line 1097
    .local v9, contentId:Ljava/lang/String;
    :goto_8
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    goto/16 :goto_5

    .line 1096
    .end local v9           #contentId:Ljava/lang/String;
    :cond_11
    const/4 v3, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    goto :goto_8

    .line 1104
    .end local v16           #index:I
    :cond_12
    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1105
    check-cast v6, Lcom/android/mms/model/TextModel;

    .end local v6           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v6}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    goto/16 :goto_6

    .line 1106
    .restart local v6       #media:Lcom/android/mms/model/MediaModel;
    :cond_13
    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v3

    if-nez v3, :cond_14

    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v3

    if-nez v3, :cond_14

    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v3

    if-nez v3, :cond_14

    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->isLocation()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1107
    :cond_14
    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    .line 1108
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAttachmentFilenameEncoding()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1109
    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    .line 1111
    .local v20, new_name:Ljava/lang/StringBuffer;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v32

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    if-ne v3, v0, :cond_15

    .line 1112
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_6

    .line 1114
    :cond_15
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAttachmentFilenameEncodingType()Ljava/lang/String;

    move-result-object v30

    .line 1115
    .local v30, typeEncoding:Ljava/lang/String;
    const-string v3, "ASCII"

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1116
    const/16 v3, 0x2e

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v16

    .line 1117
    .restart local v16       #index:I
    const-string v13, ""

    .line 1119
    .local v13, extension:Ljava/lang/String;
    if-lez v16, :cond_16

    .line 1120
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 1123
    :cond_16
    const-string v27, "FILE"

    .line 1124
    .local v27, szPrefix:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v32, "yyyyMMdd_kkmmss"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v33

    invoke-static/range {v32 .. v34}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v32, "_"

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v19, v18, 0x1

    .end local v18           #nSeqNumber:I
    .local v19, nSeqNumber:I
    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 1128
    .local v26, szFileName:Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V

    move/from16 v18, v19

    .line 1129
    .end local v19           #nSeqNumber:I
    .restart local v18       #nSeqNumber:I
    goto/16 :goto_6

    .end local v13           #extension:Ljava/lang/String;
    .end local v16           #index:I
    .end local v26           #szFileName:Ljava/lang/String;
    .end local v27           #szPrefix:Ljava/lang/String;
    :cond_17
    const-string v3, "BASE64"

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1132
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v32

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    if-ne v3, v0, :cond_18

    .line 1133
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1139
    :goto_9
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_6

    .line 1140
    :catch_1
    move-exception v12

    .line 1141
    .local v12, ex:Ljava/lang/Exception;
    const-string v3, "Mms/slideshow"

    const-string v32, "part.setName() set is failed"

    move-object/from16 v0, v32

    invoke-static {v3, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1135
    .end local v12           #ex:Ljava/lang/Exception;
    :cond_18
    :try_start_2
    const-string v3, "=?UTF-8?B?"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1136
    new-instance v3, Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v32

    move-object/from16 v0, v32

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1137
    const-string v3, "?="

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_9

    .line 1147
    .end local v20           #new_name:Ljava/lang/StringBuffer;
    .end local v30           #typeEncoding:Ljava/lang/String;
    :cond_19
    const-string v3, "Mms/slideshow"

    const-string v32, "Unsupport media: "

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-static {v3, v0}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_6

    .line 980
    .end local v5           #j:I
    .end local v6           #media:Lcom/android/mms/model/MediaModel;
    .end local v7           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v8           #src:Ljava/lang/String;
    .end local v10           #contentType:Ljava/lang/String;
    .end local v17           #location:Ljava/lang/String;
    .end local v21           #oldsrc:Ljava/lang/String;
    .end local v25           #startWithContentId:Z
    :cond_1a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1156
    .end local v24           #slide:Lcom/android/mms/model/SlideModel;
    :cond_1b
    if-eqz v14, :cond_1c

    if-eqz p3, :cond_1c

    if-eqz p1, :cond_1c

    .line 1157
    const v3, 0x7f0c003e

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v32, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1158
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/google/android/mms/pdu/PduBody;Landroid/content/Context;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object p2

    .line 1162
    :cond_1c
    if-eqz v15, :cond_1d

    if-eqz p3, :cond_1d

    if-eqz p1, :cond_1d

    .line 1163
    const v3, 0x7f0c0416

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v32, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1166
    :cond_1d
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/mms/model/SlideshowModel;->makeVItemPart(Lcom/google/android/mms/pdu/PduBody;)V

    .line 1167
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/mms/model/SlideshowModel;->makeSmilPart(Lorg/w3c/dom/smil/SMILDocument;Lcom/google/android/mms/pdu/PduBody;)V

    .line 1169
    return-object v22
.end method

.method private makePduBody(Lorg/w3c/dom/smil/SMILDocument;)Lcom/google/android/mms/pdu/PduBody;
    .locals 2
    .parameter "document"

    .prologue
    .line 970
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/mms/model/SlideshowModel;->makePduBody(Landroid/content/Context;Lorg/w3c/dom/smil/SMILDocument;Z)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    return-object v0
.end method

.method private static makeRegionModelList(Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/util/ArrayList;)I
    .locals 13
    .parameter "sle"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/smil/SMILLayoutElement;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/RegionModel;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 357
    .local p1, regions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/RegionModel;>;"
    invoke-interface {p0}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRegions()Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 358
    .local v9, nlRegions:Lorg/w3c/dom/NodeList;
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    .line 360
    .local v10, regionsNum:I
    const/4 v12, 0x0

    .line 363
    .local v12, sumOfRegionHeight:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v10, :cond_0

    .line 364
    invoke-interface {v9, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/smil/SMILRegionElement;

    .line 365
    .local v11, sre:Lorg/w3c/dom/smil/SMILRegionElement;
    new-instance v0, Lcom/android/mms/model/RegionModel;

    invoke-interface {v11}, Lorg/w3c/dom/smil/SMILRegionElement;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11}, Lorg/w3c/dom/smil/SMILRegionElement;->getFit()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11}, Lorg/w3c/dom/smil/SMILRegionElement;->getLeft()I

    move-result v3

    invoke-interface {v11}, Lorg/w3c/dom/smil/SMILRegionElement;->getTop()I

    move-result v4

    invoke-interface {v11}, Lorg/w3c/dom/smil/SMILRegionElement;->getWidth()I

    move-result v5

    invoke-interface {v11}, Lorg/w3c/dom/smil/SMILRegionElement;->getHeight()I

    move-result v6

    invoke-interface {v11}, Lorg/w3c/dom/smil/SMILRegionElement;->getBackgroundColor()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V

    .line 368
    .local v0, r:Lcom/android/mms/model/RegionModel;
    invoke-interface {v11}, Lorg/w3c/dom/smil/SMILRegionElement;->getHeight()I

    move-result v1

    add-int/2addr v12, v1

    .line 372
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 374
    .end local v0           #r:Lcom/android/mms/model/RegionModel;
    .end local v11           #sre:Lorg/w3c/dom/smil/SMILRegionElement;
    :cond_0
    return v12
.end method

.method private makeSmilPart(Lorg/w3c/dom/smil/SMILDocument;Lcom/google/android/mms/pdu/PduBody;)V
    .locals 7
    .parameter "document"
    .parameter "pb"

    .prologue
    .line 1294
    const/4 v1, 0x0

    .line 1296
    .local v1, out:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1297
    .end local v1           #out:Ljava/io/ByteArrayOutputStream;
    .local v2, out:Ljava/io/ByteArrayOutputStream;
    :try_start_1
    invoke-static {p1, v2}, Lcom/android/mms/dom/smil/parser/SmilXmlSerializer;->serialize(Lorg/w3c/dom/smil/SMILDocument;Ljava/io/OutputStream;)V

    .line 1298
    new-instance v3, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v3}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 1299
    .local v3, smilPart:Lcom/google/android/mms/pdu/PduPart;
    const-string v4, "smil"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 1300
    const-string v4, "smil.xml"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 1301
    const-string v4, "application/smil"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 1302
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 1305
    invoke-virtual {p2, v3}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1307
    if-eqz v2, :cond_0

    .line 1309
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1315
    :cond_0
    :goto_0
    return-void

    .line 1310
    :catch_0
    move-exception v0

    .line 1311
    .local v0, e:Ljava/io/IOException;
    const-string v4, "Mms/slideshow"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1307
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #out:Ljava/io/ByteArrayOutputStream;
    .end local v3           #smilPart:Lcom/google/android/mms/pdu/PduPart;
    .restart local v1       #out:Ljava/io/ByteArrayOutputStream;
    :catchall_0
    move-exception v4

    :goto_1
    if-eqz v1, :cond_1

    .line 1309
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1312
    :cond_1
    :goto_2
    throw v4

    .line 1310
    :catch_1
    move-exception v0

    .line 1311
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "Mms/slideshow"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1307
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #out:Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #out:Ljava/io/ByteArrayOutputStream;
    goto :goto_1
.end method

.method private declared-synchronized makeVItemPart(Lcom/google/android/mms/pdu/PduBody;)V
    .locals 21
    .parameter "pb"

    .prologue
    .line 1215
    monitor-enter p0

    const/4 v9, 0x1

    .line 1218
    .local v9, nSeqNumber:I
    const/4 v7, 0x0

    .local v7, j:I
    move v10, v9

    .end local v9           #nSeqNumber:I
    .local v10, nSeqNumber:I
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v7, v0, :cond_b

    .line 1219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/AttachmentModel;

    .line 1220
    .local v3, attachment:Lcom/android/mms/model/AttachmentModel;
    new-instance v2, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v2}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 1221
    .local v2, attachPart:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {v3}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v12

    .line 1222
    .local v12, src:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v5, v0, :cond_2

    .line 1223
    if-eq v5, v7, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 1224
    const/16 v17, 0x2e

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 1225
    .local v6, index:I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v6, v0, :cond_1

    .line 1226
    new-instance v17, Ljava/lang/StringBuffer;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v18, "_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual {v12, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1222
    .end local v6           #index:I
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1228
    .restart local v6       #index:I
    :cond_1
    new-instance v17, Ljava/lang/StringBuffer;

    move-object/from16 v0, v17

    invoke-direct {v0, v12}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v18, "_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    .line 1231
    .end local v6           #index:I
    :cond_2
    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 1232
    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 1233
    iget-object v0, v3, Lcom/android/mms/model/AttachmentModel;->mContentType:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 1234
    invoke-virtual {v3}, Lcom/android/mms/model/AttachmentModel;->getData()[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 1235
    invoke-virtual {v3}, Lcom/android/mms/model/AttachmentModel;->getUri()Landroid/net/Uri;

    move-result-object v17

    if-eqz v17, :cond_3

    .line 1236
    invoke-virtual {v3}, Lcom/android/mms/model/AttachmentModel;->getUri()Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    .line 1239
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAttachmentFilenameEncoding()Z

    move-result v17

    if-eqz v17, :cond_a

    .line 1241
    invoke-virtual {v3}, Lcom/android/mms/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v17

    const-string v18, "text/x-vCalendar"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_4

    invoke-virtual {v3}, Lcom/android/mms/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v17

    const-string v18, "text/x-vCard"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_4

    invoke-virtual {v3}, Lcom/android/mms/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v17

    const-string v18, "text/x-vNote"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_4

    invoke-virtual {v3}, Lcom/android/mms/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v17

    const-string v18, "text/x-vtodo"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 1245
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableKsc5601()Z

    move-result v17

    if-nez v17, :cond_5

    .line 1246
    const/16 v17, 0x6a

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    .line 1252
    :cond_5
    const-string v17, "cid:"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    .line 1253
    .local v13, startWithContentId:Z
    if-eqz v13, :cond_6

    .line 1254
    const-string v17, "cid:"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 1258
    .local v8, location:Ljava/lang/String;
    :goto_3
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 1259
    .local v11, new_name:Ljava/lang/StringBuffer;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v17

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 1260
    invoke-virtual {v11, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v9, v10

    .line 1287
    .end local v8           #location:Ljava/lang/String;
    .end local v10           #nSeqNumber:I
    .end local v11           #new_name:Ljava/lang/StringBuffer;
    .end local v13           #startWithContentId:Z
    .restart local v9       #nSeqNumber:I
    :goto_4
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1218
    add-int/lit8 v7, v7, 0x1

    move v10, v9

    .end local v9           #nSeqNumber:I
    .restart local v10       #nSeqNumber:I
    goto/16 :goto_0

    .line 1256
    .restart local v13       #startWithContentId:Z
    :cond_6
    move-object v8, v12

    .restart local v8       #location:Ljava/lang/String;
    goto :goto_3

    .line 1262
    .restart local v11       #new_name:Ljava/lang/StringBuffer;
    :cond_7
    :try_start_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAttachmentFilenameEncodingType()Ljava/lang/String;

    move-result-object v16

    .line 1263
    .local v16, typeEncoding:Ljava/lang/String;
    const-string v17, "ASCII"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 1264
    const-string v15, "FILE"

    .line 1265
    .local v15, szPrefix:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "yyyyMMdd_kkmmss"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    invoke-static/range {v18 .. v20}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v17

    add-int/lit8 v9, v10, 0x1

    .end local v10           #nSeqNumber:I
    .restart local v9       #nSeqNumber:I
    :try_start_3
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1268
    .local v14, szFileName:Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 1215
    .end local v8           #location:Ljava/lang/String;
    .end local v11           #new_name:Ljava/lang/StringBuffer;
    .end local v13           #startWithContentId:Z
    .end local v14           #szFileName:Ljava/lang/String;
    .end local v15           #szPrefix:Ljava/lang/String;
    .end local v16           #typeEncoding:Ljava/lang/String;
    :catchall_0
    move-exception v17

    .end local v2           #attachPart:Lcom/google/android/mms/pdu/PduPart;
    .end local v3           #attachment:Lcom/android/mms/model/AttachmentModel;
    .end local v5           #i:I
    .end local v12           #src:Ljava/lang/String;
    :goto_5
    monitor-exit p0

    throw v17

    .line 1269
    .end local v9           #nSeqNumber:I
    .restart local v2       #attachPart:Lcom/google/android/mms/pdu/PduPart;
    .restart local v3       #attachment:Lcom/android/mms/model/AttachmentModel;
    .restart local v5       #i:I
    .restart local v8       #location:Ljava/lang/String;
    .restart local v10       #nSeqNumber:I
    .restart local v11       #new_name:Ljava/lang/StringBuffer;
    .restart local v12       #src:Ljava/lang/String;
    .restart local v13       #startWithContentId:Z
    .restart local v16       #typeEncoding:Ljava/lang/String;
    :cond_8
    :try_start_4
    const-string v17, "BASE64"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v17

    if-eqz v17, :cond_a

    .line 1272
    :try_start_5
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v17

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 1273
    invoke-virtual {v11, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1279
    :goto_6
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V

    move v9, v10

    .line 1282
    .end local v10           #nSeqNumber:I
    .restart local v9       #nSeqNumber:I
    goto/16 :goto_4

    .line 1275
    .end local v9           #nSeqNumber:I
    .restart local v10       #nSeqNumber:I
    :cond_9
    const-string v17, "=?UTF-8?B?"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1276
    new-instance v17, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1277
    const-string v17, "?="

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_6

    .line 1280
    :catch_0
    move-exception v4

    .line 1281
    .local v4, ex:Ljava/lang/Exception;
    :try_start_6
    const-string v17, "Mms/slideshow"

    const-string v18, "part.setName() set is failed"

    invoke-static/range {v17 .. v18}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .end local v4           #ex:Ljava/lang/Exception;
    .end local v8           #location:Ljava/lang/String;
    .end local v11           #new_name:Ljava/lang/StringBuffer;
    .end local v13           #startWithContentId:Z
    .end local v16           #typeEncoding:Ljava/lang/String;
    :cond_a
    move v9, v10

    .end local v10           #nSeqNumber:I
    .restart local v9       #nSeqNumber:I
    goto/16 :goto_4

    .line 1289
    .end local v2           #attachPart:Lcom/google/android/mms/pdu/PduPart;
    .end local v3           #attachment:Lcom/android/mms/model/AttachmentModel;
    .end local v5           #i:I
    .end local v9           #nSeqNumber:I
    .end local v12           #src:Ljava/lang/String;
    .restart local v10       #nSeqNumber:I
    :cond_b
    monitor-exit p0

    return-void

    .line 1215
    :catchall_1
    move-exception v17

    move v9, v10

    .end local v10           #nSeqNumber:I
    .restart local v9       #nSeqNumber:I
    goto :goto_5
.end method

.method private registerObserver(Lcom/android/mms/model/Model;)V
    .locals 3
    .parameter "object"

    .prologue
    .line 1781
    invoke-virtual {p1, p0}, Lcom/android/mms/model/Model;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 1782
    iget-object v2, p0, Lcom/android/mms/model/Model;->mModelChangedObservers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/IModelChangedObserver;

    .line 1783
    .local v1, observer:Lcom/android/mms/model/IModelChangedObserver;
    invoke-virtual {p1, v1}, Lcom/android/mms/model/Model;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 1785
    .end local v1           #observer:Lcom/android/mms/model/IModelChangedObserver;
    :cond_0
    return-void
.end method

.method public static setAddAttachmentSlideForCompose(Z)V
    .locals 0
    .parameter "addSlide"

    .prologue
    .line 957
    sput-boolean p0, Lcom/android/mms/model/SlideshowModel;->sRawAttachmentAddSlideforCompose:Z

    .line 958
    return-void
.end method

.method public static setCheckMessageSizeforSlide(Z)V
    .locals 0
    .parameter "checkSize"

    .prologue
    .line 932
    sput-boolean p0, Lcom/android/mms/model/SlideshowModel;->sCheckMessageSize:Z

    .line 933
    return-void
.end method


# virtual methods
.method public MmsResizeForRetry(Landroid/net/Uri;)V
    .locals 17
    .parameter "messageUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;,
            Lcom/android/mms/ExceedMessageSizeException;
        }
    .end annotation

    .prologue
    .line 1965
    const-string v14, "Mms/slideshow"

    const-string v15, "MmsResizeForRetry() started"

    invoke-static {v14, v15}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1967
    const/4 v11, 0x0

    .line 1968
    .local v11, resizableCnt:I
    const/4 v3, 0x0

    .line 1970
    .local v3, fixedSizeTotal:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/mms/model/SlideModel;

    .line 1971
    .local v12, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v12}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/model/MediaModel;

    .line 1973
    .local v6, media:Lcom/android/mms/model/MediaModel;
    const-string v14, "Mms/slideshow"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "media.getMediaSize() : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1976
    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->getMediaResizableForRetry()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1977
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1979
    :cond_1
    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v14

    add-int/2addr v3, v14

    goto :goto_0

    .line 1985
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #media:Lcom/android/mms/model/MediaModel;
    .end local v12           #slide:Lcom/android/mms/model/SlideModel;
    :cond_2
    const-string v14, "Mms/slideshow"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "fixedSizeTotal : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1986
    const-string v14, "Mms/slideshow"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "resizableCnt : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1987
    const-string v14, "Mms/slideshow"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mSlides : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1989
    if-lez v11, :cond_a

    .line 1990
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSizeForResizing()I

    move-result v14

    sub-int/2addr v14, v3

    add-int/lit16 v10, v14, -0x400

    .line 1993
    .local v10, remainingSize:I
    const-string v14, "Mms/slideshow"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "remainingSize : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1996
    if-gtz v10, :cond_3

    .line 1997
    new-instance v14, Lcom/android/mms/ExceedMessageSizeException;

    const-string v15, "No need to resize"

    invoke-direct {v14, v15}, Lcom/android/mms/ExceedMessageSizeException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1999
    :cond_3
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    .line 2000
    .local v7, messageId:J
    div-int v2, v10, v11

    .line 2003
    .local v2, bytesPerMediaItem:I
    const-string v14, "Mms/slideshow"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "messageId : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2004
    const-string v14, "Mms/slideshow"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "bytesPerMediaItem : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2007
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/mms/model/SlideModel;

    .line 2008
    .restart local v12       #slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v12}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/model/MediaModel;

    .line 2009
    .restart local v6       #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->getMediaResizableForRetry()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 2010
    invoke-virtual {v6, v2, v7, v8}, Lcom/android/mms/model/MediaModel;->resizeMedia(IJ)V

    goto :goto_1

    .line 2015
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #media:Lcom/android/mms/model/MediaModel;
    .end local v12           #slide:Lcom/android/mms/model/SlideModel;
    :cond_6
    const/4 v13, 0x0

    .line 2016
    .local v13, totalSize:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/mms/model/SlideModel;

    .line 2017
    .restart local v12       #slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v12}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/model/MediaModel;

    .line 2018
    .restart local v6       #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v14

    add-int/2addr v13, v14

    goto :goto_2

    .line 2022
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #media:Lcom/android/mms/model/MediaModel;
    .end local v12           #slide:Lcom/android/mms/model/SlideModel;
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v14

    if-le v13, v14, :cond_9

    .line 2023
    new-instance v14, Lcom/android/mms/ExceedMessageSizeException;

    const-string v15, "After compressing pictures, message too big"

    invoke-direct {v14, v15}, Lcom/android/mms/ExceedMessageSizeException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 2027
    :cond_9
    const-string v14, "Mms/slideshow"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "totalSize : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2029
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/mms/model/SlideshowModel;->setCurrentMessageSize(I)V

    .line 2031
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v14}, Lcom/android/mms/model/SlideshowModel;->onModelChanged(Lcom/android/mms/model/Model;Z)V

    .line 2032
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v9

    .line 2036
    .local v9, pb:Lcom/google/android/mms/pdu/PduBody;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/model/SlideshowModel;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v9, v15}, Lcom/google/android/mms/pdu/PduPersister;->updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;Ljava/util/HashMap;)V

    .line 2038
    .end local v2           #bytesPerMediaItem:I
    .end local v7           #messageId:J
    .end local v9           #pb:Lcom/google/android/mms/pdu/PduBody;
    .end local v10           #remainingSize:I
    .end local v13           #totalSize:I
    :cond_a
    return-void
.end method

.method public declared-synchronized add(ILcom/android/mms/model/SlideModel;)V
    .locals 4
    .parameter "location"
    .parameter "object"

    .prologue
    .line 1522
    monitor-enter p0

    if-eqz p2, :cond_1

    .line 1523
    :try_start_0
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v0

    .line 1524
    .local v0, increaseSize:I
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 1525
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le p1, v1, :cond_2

    .line 1526
    :cond_0
    const-string v1, "Mms/slideshow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "location size OutOfBoundsException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1534
    .end local v0           #increaseSize:I
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 1529
    .restart local v0       #increaseSize:I
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1530
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    .line 1531
    invoke-direct {p0, p2}, Lcom/android/mms/model/SlideshowModel;->registerObserver(Lcom/android/mms/model/Model;)V

    .line 1532
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1522
    .end local v0           #increaseSize:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    check-cast p2, Lcom/android/mms/model/SlideModel;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/model/SlideshowModel;->add(ILcom/android/mms/model/SlideModel;)V

    return-void
.end method

.method public declared-synchronized add(Lcom/android/mms/model/SlideModel;)Z
    .locals 3
    .parameter "object"

    .prologue
    const/4 v1, 0x1

    .line 1439
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1440
    :try_start_0
    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v0

    .line 1441
    .local v0, increaseSize:I
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 1443
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1444
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    .line 1445
    invoke-direct {p0, p1}, Lcom/android/mms/model/SlideshowModel;->registerObserver(Lcom/android/mms/model/Model;)V

    .line 1446
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1450
    .end local v0           #increaseSize:I
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1439
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    check-cast p1, Lcom/android/mms/model/SlideModel;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2
    .parameter "location"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+",
            "Lcom/android/mms/model/SlideModel;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1537
    .local p2, collection:Ljava/util/Collection;,"Ljava/util/Collection<+Lcom/android/mms/model/SlideModel;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/android/mms/model/SlideModel;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1454
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<+Lcom/android/mms/model/SlideModel;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized addAttachment(ILcom/android/mms/model/AttachmentModel;)V
    .locals 2
    .parameter "location"
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 1769
    monitor-enter p0

    if-eqz p2, :cond_0

    .line 1770
    :try_start_0
    invoke-virtual {p2}, Lcom/android/mms/model/AttachmentModel;->getMediaSize()I

    move-result v0

    .line 1772
    .local v0, increaseSize:I
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 1773
    iget-object v1, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1774
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    .line 1775
    invoke-direct {p0, p2}, Lcom/android/mms/model/SlideshowModel;->registerObserver(Lcom/android/mms/model/Model;)V

    .line 1776
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1778
    .end local v0           #increaseSize:I
    :cond_0
    monitor-exit p0

    return-void

    .line 1769
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public addAttachment(Lcom/android/mms/model/AttachmentModel;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 1764
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/model/SlideshowModel;->addAttachment(ILcom/android/mms/model/AttachmentModel;)V

    .line 1765
    return-void
.end method

.method public checkMessageSize(I)V
    .locals 9
    .parameter "increaseSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 1679
    invoke-static {}, Lcom/android/mms/model/SlideshowModel;->getCheckMessageSizeforSlide()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1697
    :goto_0
    return-void

    .line 1684
    :cond_0
    iget v6, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    if-gez v6, :cond_3

    .line 1685
    const-string v6, "Mms/slideshow"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mCurrentMessageSize ERROR : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1687
    const/4 v5, 0x0

    .line 1688
    .local v5, totalSize:I
    iget-object v6, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/model/SlideModel;

    .line 1689
    .local v4, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/MediaModel;

    .line 1690
    .local v3, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_1

    .line 1693
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #media:Lcom/android/mms/model/MediaModel;
    .end local v4           #slide:Lcom/android/mms/model/SlideModel;
    :cond_2
    iput v5, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    .line 1695
    .end local v5           #totalSize:I
    :cond_3
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    .line 1696
    .local v0, cr:Lcom/android/mms/model/ContentRestriction;
    iget v6, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    iget-object v7, p0, Lcom/android/mms/model/SlideshowModel;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-interface {v0, v6, p1, v7}, Lcom/android/mms/model/ContentRestriction;->checkMessageSize(IILandroid/content/ContentResolver;)V

    goto :goto_0
.end method

.method public declared-synchronized clear()V
    .locals 5

    .prologue
    .line 1459
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1460
    iget-object v4, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/SlideModel;

    .line 1461
    .local v3, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v3, p0}, Lcom/android/mms/model/SlideModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 1462
    iget-object v4, p0, Lcom/android/mms/model/Model;->mModelChangedObservers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/IModelChangedObserver;

    .line 1463
    .local v2, observer:Lcom/android/mms/model/IModelChangedObserver;
    invoke-virtual {v3, v2}, Lcom/android/mms/model/SlideModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1459
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #observer:Lcom/android/mms/model/IModelChangedObserver;
    .end local v3           #slide:Lcom/android/mms/model/SlideModel;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1466
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    iput v4, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    .line 1467
    iget-object v4, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1468
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1470
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 1473
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1477
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public decreaseMessageSize(I)V
    .locals 1
    .parameter "decreaseSize"

    .prologue
    .line 1419
    if-lez p1, :cond_0

    .line 1420
    iget v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    .line 1422
    :cond_0
    return-void
.end method

.method public finalResize(Landroid/net/Uri;)V
    .locals 14
    .parameter "messageUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;,
            Lcom/android/mms/ExceedMessageSizeException;
        }
    .end annotation

    .prologue
    .line 1876
    const/4 v9, 0x0

    .line 1877
    .local v9, resizableCnt:I
    const/4 v1, 0x0

    .line 1878
    .local v1, fixedSizeTotal:I
    iget-object v12, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/mms/model/SlideModel;

    .line 1879
    .local v10, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v10}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/model/MediaModel;

    .line 1880
    .local v4, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->getMediaResizable()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1881
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1883
    :cond_1
    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v12

    add-int/2addr v1, v12

    goto :goto_0

    .line 1887
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #media:Lcom/android/mms/model/MediaModel;
    .end local v10           #slide:Lcom/android/mms/model/SlideModel;
    :cond_2
    if-lez v9, :cond_a

    .line 1888
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v12

    sub-int/2addr v12, v1

    add-int/lit16 v8, v12, -0x400

    .line 1889
    .local v8, remainingSize:I
    if-gtz v8, :cond_3

    .line 1890
    new-instance v12, Lcom/android/mms/ExceedMessageSizeException;

    const-string v13, "No room for pictures"

    invoke-direct {v12, v13}, Lcom/android/mms/ExceedMessageSizeException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1892
    :cond_3
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    .line 1893
    .local v5, messageId:J
    div-int v0, v8, v9

    .line 1895
    .local v0, bytesPerMediaItem:I
    iget-object v12, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/mms/model/SlideModel;

    .line 1896
    .restart local v10       #slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v10}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/model/MediaModel;

    .line 1897
    .restart local v4       #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->getMediaResizable()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1898
    invoke-virtual {v4, v0, v5, v6}, Lcom/android/mms/model/MediaModel;->resizeMedia(IJ)V

    goto :goto_1

    .line 1903
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #media:Lcom/android/mms/model/MediaModel;
    .end local v10           #slide:Lcom/android/mms/model/SlideModel;
    :cond_6
    const/4 v11, 0x0

    .line 1904
    .local v11, totalSize:I
    iget-object v12, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/mms/model/SlideModel;

    .line 1905
    .restart local v10       #slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v10}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/model/MediaModel;

    .line 1906
    .restart local v4       #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v12

    add-int/2addr v11, v12

    goto :goto_2

    .line 1912
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #media:Lcom/android/mms/model/MediaModel;
    .end local v10           #slide:Lcom/android/mms/model/SlideModel;
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v12

    if-le v11, v12, :cond_9

    .line 1913
    new-instance v12, Lcom/android/mms/ExceedMessageSizeException;

    const-string v13, "After compressing pictures, message too big"

    invoke-direct {v12, v13}, Lcom/android/mms/ExceedMessageSizeException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1915
    :cond_9
    invoke-virtual {p0, v11}, Lcom/android/mms/model/SlideshowModel;->setCurrentMessageSize(I)V

    .line 1917
    const/4 v12, 0x1

    invoke-virtual {p0, p0, v12}, Lcom/android/mms/model/SlideshowModel;->onModelChanged(Lcom/android/mms/model/Model;Z)V

    .line 1918
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v7

    .line 1922
    .local v7, pb:Lcom/google/android/mms/pdu/PduBody;
    iget-object v12, p0, Lcom/android/mms/model/SlideshowModel;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, p1, v7, v13}, Lcom/google/android/mms/pdu/PduPersister;->updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;Ljava/util/HashMap;)V

    .line 1924
    .end local v0           #bytesPerMediaItem:I
    .end local v5           #messageId:J
    .end local v7           #pb:Lcom/google/android/mms/pdu/PduBody;
    .end local v8           #remainingSize:I
    .end local v11           #totalSize:I
    :cond_a
    return-void
.end method

.method public get(I)Lcom/android/mms/model/SlideModel;
    .locals 2
    .parameter "location"

    .prologue
    .line 1541
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1543
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 1544
    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    .line 1549
    :goto_0
    return-object v0

    .line 1546
    :cond_1
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    goto :goto_0

    .line 1549
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getAttachmentList()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1823
    monitor-enter p0

    :try_start_0
    const-string v4, ""

    .line 1824
    .local v4, str:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1825
    iget-object v5, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/AttachmentModel;

    .line 1826
    .local v0, attach:Lcom/android/mms/model/AttachmentModel;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1827
    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1829
    :cond_0
    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v2

    .line 1830
    .local v2, fileName:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 1831
    .local v1, contentType:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1832
    const-string v5, "text/x-vCard"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, ".vcf"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1833
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".vcf"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1836
    :cond_1
    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 1837
    goto :goto_0

    .line 1839
    .end local v0           #attach:Lcom/android/mms/model/AttachmentModel;
    .end local v1           #contentType:Ljava/lang/String;
    .end local v2           #fileName:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_2
    monitor-exit p0

    return-object v4

    .line 1823
    .end local v4           #str:Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public getCurrentMessageSize()I
    .locals 1

    .prologue
    .line 1401
    iget v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    return v0
.end method

.method public getFirstAttachmentType()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2041
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 2044
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getAttachmentType()I

    move-result v0

    goto :goto_0
.end method

.method public getLayout()Lcom/android/mms/model/LayoutModel;
    .locals 1

    .prologue
    .line 1433
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    return-object v0
.end method

.method public getLocationModel()Lcom/samsung/mms/model/LocationVcardModel;
    .locals 6

    .prologue
    .line 1928
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1930
    iget-object v4, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/SlideModel;

    .line 1931
    .local v3, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/MediaModel;

    .line 1932
    .local v2, media:Lcom/android/mms/model/MediaModel;
    instance-of v4, v2, Lcom/samsung/mms/model/LocationVcardModel;

    if-eqz v4, :cond_1

    .line 1934
    const-string v4, "NGM"

    const-string v5, "Location Model Found. SlideShow has location"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1935
    check-cast v2, Lcom/samsung/mms/model/LocationVcardModel;

    .line 1941
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    .end local v3           #slide:Lcom/android/mms/model/SlideModel;
    :goto_0
    return-object v2

    .line 1939
    :cond_2
    const-string v4, "NGM"

    const-string v5, "Location Model not Found. SlideShow does not have location"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1941
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getRawAttachmentsList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1856
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRawAttachmentsSize()I
    .locals 1

    .prologue
    .line 1852
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getRemainContentsSize()I
    .locals 2

    .prologue
    .line 1429
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v0

    iget v1, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getRemainMessageSize()I
    .locals 2

    .prologue
    .line 1425
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v0

    iget v1, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getSlides()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1862
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTotalMessageSize()I
    .locals 1

    .prologue
    .line 1408
    iget v0, p0, Lcom/android/mms/model/SlideshowModel;->mTotalMessageSize:I

    return v0
.end method

.method public hasAudioInSlideshow()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2048
    iget-object v3, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 2058
    :cond_0
    :goto_0
    return v2

    .line 2051
    :cond_1
    iget-object v3, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    .line 2052
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2053
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public hasGifImage()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1738
    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 1739
    .local v0, slide:Lcom/android/mms/model/SlideModel;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1740
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/ImageModel;->getContentType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "image/gif"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1741
    const/4 v1, 0x1

    .line 1745
    :cond_0
    return v1
.end method

.method public hasLocation()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 1946
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1948
    iget-object v5, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/SlideModel;

    .line 1949
    .local v3, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/MediaModel;

    .line 1950
    .local v2, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->isLocation()Z

    move-result v5

    if-ne v5, v4, :cond_1

    .line 1955
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    .end local v3           #slide:Lcom/android/mms/model/SlideModel;
    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public increaseMessageSize(I)V
    .locals 1
    .parameter "increaseSize"

    .prologue
    .line 1413
    if-lez p1, :cond_0

    .line 1414
    iget v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    .line 1416
    :cond_0
    return-void
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter "object"

    .prologue
    .line 1554
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isDrmContentsPresent()Z
    .locals 1

    .prologue
    .line 1848
    sget-boolean v0, Lcom/android/mms/model/SlideshowModel;->sIsDrmContentsPresent:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1481
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isRawAttachmentPresent()Z
    .locals 1

    .prologue
    .line 1843
    sget-boolean v0, Lcom/android/mms/model/SlideshowModel;->sIsRawAttachmentsPresent:Z

    return v0
.end method

.method public isSafeMMS()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/mms/model/SlideshowModel;->mSafeMMS:Z

    return v0
.end method

.method public isSimple()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1706
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 1733
    :cond_0
    :goto_0
    return v1

    .line 1709
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 1711
    .local v0, slide:Lcom/android/mms/model/SlideModel;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v3

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v4

    xor-int/2addr v3, v4

    if-nez v3, :cond_2

    .line 1712
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->isCanAddVideo()Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 1715
    goto :goto_0

    .line 1718
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1720
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->isCanAddVideo()Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 1723
    goto :goto_0

    .line 1726
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1728
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasLocation()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    .line 1733
    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1485
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter "object"

    .prologue
    .line 1558
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1562
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .parameter "location"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1566
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public makeCopy(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduBody;
    .locals 2
    .parameter "context"

    .prologue
    .line 1345
    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/mms/model/SlideshowModel;->makePduBody(Landroid/content/Context;Lorg/w3c/dom/smil/SMILDocument;Z)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    return-object v0
.end method

.method public onModelChanged(Lcom/android/mms/model/Model;Z)V
    .locals 1
    .parameter "model"
    .parameter "dataChanged"

    .prologue
    const/4 v0, 0x0

    .line 1644
    if-eqz p2, :cond_0

    .line 1645
    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    .line 1646
    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    .line 1648
    :cond_0
    return-void
.end method

.method public openPartFiles(Landroid/content/ContentResolver;)Ljava/util/HashMap;
    .locals 12
    .parameter "cr"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1319
    const/4 v5, 0x0

    .line 1321
    .local v5, openedFiles:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    iget-object v9, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/model/SlideModel;

    .line 1322
    .local v7, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v7}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/model/MediaModel;

    .line 1323
    .local v4, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1326
    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v8

    .line 1329
    .local v8, uri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p1, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 1330
    .local v3, is:Ljava/io/InputStream;
    if-eqz v3, :cond_1

    .line 1331
    if-nez v5, :cond_2

    .line 1332
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .end local v5           #openedFiles:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    .local v6, openedFiles:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    move-object v5, v6

    .line 1334
    .end local v6           #openedFiles:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    .restart local v5       #openedFiles:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    :cond_2
    invoke-virtual {v5, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1336
    .end local v3           #is:Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 1337
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v9, "Mms/slideshow"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "openPartFiles couldn\'t open: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1341
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #media:Lcom/android/mms/model/MediaModel;
    .end local v7           #slide:Lcom/android/mms/model/SlideModel;
    .end local v8           #uri:Landroid/net/Uri;
    :cond_3
    return-object v5
.end method

.method public prepareForSend()V
    .locals 3

    .prologue
    .line 1754
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1755
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v0

    .line 1756
    .local v0, text:Lcom/android/mms/model/TextModel;
    if-eqz v0, :cond_0

    .line 1757
    invoke-virtual {v0}, Lcom/android/mms/model/TextModel;->cloneText()V

    .line 1760
    .end local v0           #text:Lcom/android/mms/model/TextModel;
    :cond_0
    return-void
.end method

.method protected registerModelChangedObserverInDescendants(Lcom/android/mms/model/IModelChangedObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 1618
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    invoke-virtual {v2, p1}, Lcom/android/mms/model/LayoutModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 1620
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    .line 1621
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1, p1}, Lcom/android/mms/model/SlideModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 1623
    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    :cond_0
    return-void
.end method

.method public declared-synchronized remove(I)Lcom/android/mms/model/SlideModel;
    .locals 2
    .parameter "location"

    .prologue
    .line 1571
    monitor-enter p0

    const/4 v1, -0x1

    if-ge v1, p1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 1572
    iget-object v1, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    .line 1573
    .local v0, slide:Lcom/android/mms/model/SlideModel;
    if-eqz v0, :cond_0

    .line 1574
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->decreaseMessageSize(I)V

    .line 1575
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->unregisterAllModelChangedObservers()V

    .line 1576
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1580
    .end local v0           #slide:Lcom/android/mms/model/SlideModel;
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1571
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Z
    .locals 4
    .parameter "object"

    .prologue
    const/4 v2, 0x1

    .line 1490
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1491
    move-object v0, p1

    check-cast v0, Lcom/android/mms/model/SlideModel;

    move-object v1, v0

    .line 1492
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->decreaseMessageSize(I)V

    .line 1493
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->unregisterAllModelChangedObservers()V

    .line 1494
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1497
    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    :goto_0
    monitor-exit p0

    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1490
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1501
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeAllRawAttachment()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1812
    :goto_0
    iget-object v1, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1814
    iget-object v1, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/AttachmentModel;

    .line 1815
    .local v0, attach:Lcom/android/mms/model/AttachmentModel;
    iget v1, v0, Lcom/android/mms/model/AttachmentModel;->mSize:I

    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->decreaseMessageSize(I)V

    .line 1816
    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->unregisterAllModelChangedObservers()V

    goto :goto_0

    .line 1818
    .end local v0           #attach:Lcom/android/mms/model/AttachmentModel;
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    .line 1819
    return v3
.end method

.method public declared-synchronized removeAttachment(Ljava/lang/Object;)Z
    .locals 4
    .parameter "object"

    .prologue
    const/4 v2, 0x1

    .line 1788
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1789
    move-object v0, p1

    check-cast v0, Lcom/android/mms/model/AttachmentModel;

    move-object v1, v0

    .line 1790
    .local v1, attach:Lcom/android/mms/model/AttachmentModel;
    iget v3, v1, Lcom/android/mms/model/AttachmentModel;->mSize:I

    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->decreaseMessageSize(I)V

    .line 1791
    invoke-virtual {v1}, Lcom/android/mms/model/AttachmentModel;->unregisterAllModelChangedObservers()V

    .line 1792
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1795
    .end local v1           #attach:Lcom/android/mms/model/AttachmentModel;
    :goto_0
    monitor-exit p0

    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1788
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized removeAttachment(Ljava/lang/Object;I)Z
    .locals 4
    .parameter "object"
    .parameter "position"

    .prologue
    const/4 v2, 0x1

    .line 1800
    monitor-enter p0

    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p2, v3, :cond_0

    .line 1801
    iget-object v3, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1802
    move-object v0, p1

    check-cast v0, Lcom/android/mms/model/AttachmentModel;

    move-object v1, v0

    .line 1803
    .local v1, attach:Lcom/android/mms/model/AttachmentModel;
    iget v3, v1, Lcom/android/mms/model/AttachmentModel;->mSize:I

    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->decreaseMessageSize(I)V

    .line 1804
    invoke-virtual {v1}, Lcom/android/mms/model/AttachmentModel;->unregisterAllModelChangedObservers()V

    .line 1805
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1808
    .end local v1           #attach:Lcom/android/mms/model/AttachmentModel;
    :goto_0
    monitor-exit p0

    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1800
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1505
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(ILcom/android/mms/model/SlideModel;)Lcom/android/mms/model/SlideModel;
    .locals 4
    .parameter "location"
    .parameter "object"

    .prologue
    .line 1584
    iget-object v3, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/SlideModel;

    .line 1585
    .local v2, slide:Lcom/android/mms/model/SlideModel;
    if-eqz p2, :cond_1

    .line 1586
    const/4 v1, 0x0

    .line 1587
    .local v1, removeSize:I
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v0

    .line 1588
    .local v0, addSize:I
    if-eqz v2, :cond_0

    .line 1589
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v1

    .line 1591
    :cond_0
    if-le v0, v1, :cond_4

    .line 1592
    sub-int v3, v0, v1

    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 1593
    sub-int v3, v0, v1

    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    .line 1599
    .end local v0           #addSize:I
    .end local v1           #removeSize:I
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v3, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #slide:Lcom/android/mms/model/SlideModel;
    check-cast v2, Lcom/android/mms/model/SlideModel;

    .line 1600
    .restart local v2       #slide:Lcom/android/mms/model/SlideModel;
    if-eqz v2, :cond_2

    .line 1601
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->unregisterAllModelChangedObservers()V

    .line 1604
    :cond_2
    if-eqz p2, :cond_3

    .line 1605
    invoke-direct {p0, p2}, Lcom/android/mms/model/SlideshowModel;->registerObserver(Lcom/android/mms/model/Model;)V

    .line 1608
    :cond_3
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    .line 1609
    return-object v2

    .line 1595
    .restart local v0       #addSize:I
    .restart local v1       #removeSize:I
    :cond_4
    sub-int v3, v1, v0

    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->decreaseMessageSize(I)V

    goto :goto_0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    check-cast p2, Lcom/android/mms/model/SlideModel;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/model/SlideshowModel;->set(ILcom/android/mms/model/SlideModel;)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    return-object v0
.end method

.method public setCurrentMessageSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 1389
    iput p1, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    .line 1390
    return-void
.end method

.method public setSafeMMS(Z)V
    .locals 0
    .parameter "isSafeMMS"

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/android/mms/model/SlideshowModel;->mSafeMMS:Z

    .line 127
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1509
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1613
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized sync(Lcom/google/android/mms/pdu/PduBody;)V
    .locals 11
    .parameter "pb"

    .prologue
    .line 1651
    monitor-enter p0

    :try_start_0
    iget-object v9, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/mms/model/SlideModel;

    .line 1652
    .local v8, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v8}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/model/MediaModel;

    .line 1653
    .local v6, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentLocation(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v7

    .line 1654
    .local v7, part:Lcom/google/android/mms/pdu/PduPart;
    if-eqz v7, :cond_3

    .line 1655
    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v1

    .line 1656
    .local v1, bytes:[B
    if-nez v1, :cond_2

    .line 1657
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Content-Type of the part may not be null."

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1651
    .end local v1           #bytes:[B
    .end local v6           #media:Lcom/android/mms/model/MediaModel;
    .end local v7           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v8           #slide:Lcom/android/mms/model/SlideModel;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 1659
    .restart local v1       #bytes:[B
    .restart local v6       #media:Lcom/android/mms/model/MediaModel;
    .restart local v7       #part:Lcom/google/android/mms/pdu/PduPart;
    .restart local v8       #slide:Lcom/android/mms/model/SlideModel;
    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 1660
    .local v2, contentType:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1661
    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/android/mms/model/MediaModel;->setUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 1664
    .end local v1           #bytes:[B
    .end local v2           #contentType:Ljava/lang/String;
    :cond_3
    iget-object v9, v8, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    iget-object v9, v9, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_1

    .line 1665
    iget-object v9, v8, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    iget-object v9, v9, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/AttachmentModel;

    .line 1666
    .local v0, attachment:Lcom/android/mms/model/AttachmentModel;
    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentLocation(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v7

    .line 1667
    if-eqz v7, :cond_4

    .line 1668
    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/android/mms/model/AttachmentModel;->setUri(Landroid/net/Uri;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1675
    .end local v0           #attachment:Lcom/android/mms/model/AttachmentModel;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #media:Lcom/android/mms/model/MediaModel;
    .end local v7           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v8           #slide:Lcom/android/mms/model/SlideModel;
    :cond_5
    monitor-exit p0

    return-void
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1513
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 1517
    .local p1, array:[Ljava/lang/Object;,"[TT;"
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toPduBody()Lcom/google/android/mms/pdu/PduBody;
    .locals 1

    .prologue
    .line 962
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 963
    :cond_0
    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    .line 964
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    invoke-direct {p0, v0}, Lcom/android/mms/model/SlideshowModel;->makePduBody(Lorg/w3c/dom/smil/SMILDocument;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    .line 966
    :cond_1
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    return-object v0
.end method

.method public toSmilDocument()Lorg/w3c/dom/smil/SMILDocument;
    .locals 1

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    if-nez v0, :cond_0

    .line 1350
    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    .line 1352
    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    return-object v0
.end method

.method protected unregisterAllModelChangedObserversInDescendants()V
    .locals 3

    .prologue
    .line 1636
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    invoke-virtual {v2}, Lcom/android/mms/model/LayoutModel;->unregisterAllModelChangedObservers()V

    .line 1638
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    .line 1639
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->unregisterAllModelChangedObservers()V

    goto :goto_0

    .line 1641
    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    :cond_0
    return-void
.end method

.method protected unregisterModelChangedObserverInDescendants(Lcom/android/mms/model/IModelChangedObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 1627
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    invoke-virtual {v2, p1}, Lcom/android/mms/model/LayoutModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 1629
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    .line 1630
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1, p1}, Lcom/android/mms/model/SlideModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 1632
    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    :cond_0
    return-void
.end method
