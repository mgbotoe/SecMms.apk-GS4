.class public Lcom/android/mms/model/SmilHelper;
.super Ljava/lang/Object;
.source "SmilHelper.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final ELEMENT_TAG_AUDIO:Ljava/lang/String; = "audio"

.field public static final ELEMENT_TAG_IMAGE:Ljava/lang/String; = "img"

.field public static final ELEMENT_TAG_REF:Ljava/lang/String; = "ref"

.field public static final ELEMENT_TAG_TEXT:Ljava/lang/String; = "text"

.field public static final ELEMENT_TAG_VIDEO:Ljava/lang/String; = "video"

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "Mms/smil"

.field private static final TAGS:[Ljava/lang/String;

.field private static isMixedSmil:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 159
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "<text src=\""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "<img src=\""

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "<audio src=\""

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "<video src=\""

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "<video region=\"image\" src=\""

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/model/SmilHelper;->TAGS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method static addMediaElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/MediaModel;)V
    .locals 2
    .parameter "target"
    .parameter "media"

    .prologue
    const/4 v1, 0x0

    .line 497
    const-string v0, "SmilMediaStart"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 498
    const-string v0, "SmilMediaEnd"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 499
    const-string v0, "SmilMediaPause"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 500
    const-string v0, "SmilMediaSeek"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 501
    return-void
.end method

.method public static addPar(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILParElement;
    .locals 2
    .parameter "document"

    .prologue
    .line 191
    const-string v1, "par"

    invoke-interface {p0, v1}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/SMILParElement;

    .line 193
    .local v0, par:Lorg/w3c/dom/smil/SMILParElement;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMediaDuration()Z

    move-result v1

    if-nez v1, :cond_0

    .line 194
    const/high16 v1, 0x4100

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILParElement;->setDur(F)V

    .line 196
    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/smil/SMILDocument;->getBody()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 197
    return-object v0
.end method

.method static addParElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/SlideModel;)V
    .locals 2
    .parameter "target"
    .parameter "slide"

    .prologue
    const/4 v1, 0x0

    .line 506
    const-string v0, "SmilSlideStart"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 507
    const-string v0, "SmilSlideEnd"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 508
    return-void
.end method

.method public static createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;
    .locals 2
    .parameter "tag"
    .parameter "document"
    .parameter "src"

    .prologue
    .line 201
    invoke-interface {p1, p0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/SMILMediaElement;

    .line 202
    .local v0, mediaElement:Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-static {p2}, Lcom/android/mms/model/SmilHelper;->escapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILMediaElement;->setSrc(Ljava/lang/String;)V

    .line 203
    return-object v0
.end method

.method private static createSmilDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 31
    .parameter "slideshow"

    .prologue
    .line 307
    new-instance v7, Lcom/android/mms/dom/smil/SmilDocumentImpl;

    invoke-direct {v7}, Lcom/android/mms/dom/smil/SmilDocumentImpl;-><init>()V

    .line 310
    .local v7, document:Lorg/w3c/dom/smil/SMILDocument;
    const-string v29, "smil"

    move-object/from16 v0, v29

    invoke-interface {v7, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v23

    check-cast v23, Lorg/w3c/dom/smil/SMILElement;

    .line 311
    .local v23, smilElement:Lorg/w3c/dom/smil/SMILElement;
    move-object/from16 v0, v23

    invoke-interface {v7, v0}, Lorg/w3c/dom/smil/SMILDocument;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 314
    const-string v29, "head"

    move-object/from16 v0, v29

    invoke-interface {v7, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/smil/SMILElement;

    .line 315
    .local v9, headElement:Lorg/w3c/dom/smil/SMILElement;
    move-object/from16 v0, v23

    invoke-interface {v0, v9}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 318
    const-string v29, "layout"

    move-object/from16 v0, v29

    invoke-interface {v7, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v13

    check-cast v13, Lorg/w3c/dom/smil/SMILLayoutElement;

    .line 319
    .local v13, layoutElement:Lorg/w3c/dom/smil/SMILLayoutElement;
    invoke-interface {v9, v13}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 322
    const-string v29, "root-layout"

    move-object/from16 v0, v29

    invoke-interface {v7, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v19

    check-cast v19, Lorg/w3c/dom/smil/SMILRootLayoutElement;

    .line 324
    .local v19, rootLayoutElement:Lorg/w3c/dom/smil/SMILRootLayoutElement;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v14

    .line 325
    .local v14, layouts:Lcom/android/mms/model/LayoutModel;
    invoke-virtual {v14}, Lcom/android/mms/model/LayoutModel;->getLayoutWidth()I

    move-result v29

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setWidth(I)V

    .line 326
    invoke-virtual {v14}, Lcom/android/mms/model/LayoutModel;->getLayoutHeight()I

    move-result v29

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setHeight(I)V

    .line 327
    invoke-virtual {v14}, Lcom/android/mms/model/LayoutModel;->getBackgroundColor()Ljava/lang/String;

    move-result-object v5

    .line 328
    .local v5, bgColor:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_0

    .line 329
    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setBackgroundColor(Ljava/lang/String;)V

    .line 331
    :cond_0
    move-object/from16 v0, v19

    invoke-interface {v13, v0}, Lorg/w3c/dom/smil/SMILLayoutElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 334
    invoke-virtual {v14}, Lcom/android/mms/model/LayoutModel;->getRegions()Ljava/util/ArrayList;

    move-result-object v18

    .line 335
    .local v18, regions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/RegionModel;>;"
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 336
    .local v25, smilRegions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/smil/SMILRegionElement;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/mms/model/RegionModel;

    .line 337
    .local v17, r:Lcom/android/mms/model/RegionModel;
    const-string v29, "region"

    move-object/from16 v0, v29

    invoke-interface {v7, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v24

    check-cast v24, Lorg/w3c/dom/smil/SMILRegionElement;

    .line 338
    .local v24, smilRegion:Lorg/w3c/dom/smil/SMILRegionElement;
    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/model/RegionModel;->getRegionId()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRegionElement;->setId(Ljava/lang/String;)V

    .line 339
    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v29

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRegionElement;->setLeft(I)V

    .line 340
    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v29

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRegionElement;->setTop(I)V

    .line 341
    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v29

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRegionElement;->setWidth(I)V

    .line 342
    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v29

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRegionElement;->setHeight(I)V

    .line 343
    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/model/RegionModel;->getFit()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRegionElement;->setFit(Ljava/lang/String;)V

    .line 344
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 348
    .end local v17           #r:Lcom/android/mms/model/RegionModel;
    .end local v24           #smilRegion:Lorg/w3c/dom/smil/SMILRegionElement;
    :cond_1
    const-string v29, "body"

    move-object/from16 v0, v29

    invoke-interface {v7, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/smil/SMILElement;

    .line 349
    .local v6, bodyElement:Lorg/w3c/dom/smil/SMILElement;
    move-object/from16 v0, v23

    invoke-interface {v0, v6}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 354
    monitor-enter p0

    .line 356
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/model/SlideshowModel;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local v10           #i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/mms/model/SlideModel;

    .line 357
    .local v21, slide:Lcom/android/mms/model/SlideModel;
    const/16 v28, 0x0

    .line 358
    .local v28, txtRegionPresentInLayout:Z
    const/4 v12, 0x0

    .line 361
    .local v12, imgRegionPresentInLayout:Z
    invoke-static {v7}, Lcom/android/mms/model/SmilHelper;->addPar(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILParElement;

    move-result-object v16

    .line 362
    .local v16, par:Lorg/w3c/dom/smil/SMILParElement;
    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/model/SlideModel;->getDuration()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    const/high16 v30, 0x447a

    div-float v29, v29, v30

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILParElement;->setDur(F)V

    .line 364
    move-object/from16 v0, v16

    check-cast v0, Lorg/w3c/dom/events/EventTarget;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/mms/model/SmilHelper;->addParElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/SlideModel;)V

    .line 367
    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/mms/model/MediaModel;

    .line 368
    .local v15, media:Lcom/android/mms/model/MediaModel;
    const/16 v22, 0x0

    .line 369
    .local v22, sme:Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-virtual {v15}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v26

    .line 370
    .local v26, src:Ljava/lang/String;
    instance-of v0, v15, Lcom/android/mms/model/TextModel;

    move/from16 v29, v0

    if-eqz v29, :cond_6

    .line 371
    move-object v0, v15

    check-cast v0, Lcom/android/mms/model/TextModel;

    move-object/from16 v27, v0

    .line 372
    .local v27, text:Lcom/android/mms/model/TextModel;
    invoke-virtual/range {v27 .. v27}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_3

    .line 380
    const-string v29, "text"

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-static {v0, v7, v1}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v22

    .line 381
    move-object/from16 v0, v22

    check-cast v0, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    move-object/from16 v29, v0

    const-string v30, "Text"

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    move-object/from16 v2, v30

    move/from16 v3, v28

    invoke-static {v0, v1, v13, v2, v3}, Lcom/android/mms/model/SmilHelper;->setRegion(Lorg/w3c/dom/smil/SMILRegionMediaElement;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/lang/String;Z)Z

    move-result v28

    .line 407
    .end local v27           #text:Lcom/android/mms/model/TextModel;
    :goto_2
    invoke-virtual {v15}, Lcom/android/mms/model/MediaModel;->getBegin()I

    move-result v4

    .line 408
    .local v4, begin:I
    if-eqz v4, :cond_4

    .line 409
    const-string v29, "begin"

    div-int/lit16 v0, v4, 0x3e8

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/smil/SMILMediaElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    :cond_4
    invoke-virtual {v15}, Lcom/android/mms/model/MediaModel;->getDuration()I

    move-result v8

    .line 412
    .local v8, duration:I
    if-eqz v8, :cond_5

    .line 413
    int-to-float v0, v8

    move/from16 v29, v0

    const/high16 v30, 0x447a

    div-float v29, v29, v30

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILMediaElement;->setDur(F)V

    .line 415
    :cond_5
    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 417
    check-cast v22, Lorg/w3c/dom/events/EventTarget;

    .end local v22           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    move-object/from16 v0, v22

    invoke-static {v0, v15}, Lcom/android/mms/model/SmilHelper;->addMediaElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/MediaModel;)V

    goto :goto_1

    .line 421
    .end local v4           #begin:I
    .end local v8           #duration:I
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #imgRegionPresentInLayout:Z
    .end local v15           #media:Lcom/android/mms/model/MediaModel;
    .end local v16           #par:Lorg/w3c/dom/smil/SMILParElement;
    .end local v21           #slide:Lcom/android/mms/model/SlideModel;
    .end local v26           #src:Ljava/lang/String;
    .end local v28           #txtRegionPresentInLayout:Z
    :catchall_0
    move-exception v29

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v29

    .line 383
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v12       #imgRegionPresentInLayout:Z
    .restart local v15       #media:Lcom/android/mms/model/MediaModel;
    .restart local v16       #par:Lorg/w3c/dom/smil/SMILParElement;
    .restart local v21       #slide:Lcom/android/mms/model/SlideModel;
    .restart local v22       #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    .restart local v26       #src:Ljava/lang/String;
    .restart local v28       #txtRegionPresentInLayout:Z
    :cond_6
    :try_start_1
    instance-of v0, v15, Lcom/android/mms/model/ImageModel;

    move/from16 v29, v0

    if-eqz v29, :cond_7

    .line 384
    const-string v29, "img"

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-static {v0, v7, v1}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v22

    .line 386
    move-object/from16 v0, v22

    check-cast v0, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    move-object/from16 v29, v0

    const-string v30, "Image"

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    move-object/from16 v2, v30

    invoke-static {v0, v1, v13, v2, v12}, Lcom/android/mms/model/SmilHelper;->setRegion(Lorg/w3c/dom/smil/SMILRegionMediaElement;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/lang/String;Z)Z

    move-result v12

    goto :goto_2

    .line 388
    :cond_7
    instance-of v0, v15, Lcom/android/mms/model/VideoModel;

    move/from16 v29, v0

    if-eqz v29, :cond_8

    .line 389
    const-string v29, "video"

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-static {v0, v7, v1}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v22

    .line 391
    move-object/from16 v0, v22

    check-cast v0, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    move-object/from16 v29, v0

    const-string v30, "Image"

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    move-object/from16 v2, v30

    invoke-static {v0, v1, v13, v2, v12}, Lcom/android/mms/model/SmilHelper;->setRegion(Lorg/w3c/dom/smil/SMILRegionMediaElement;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/lang/String;Z)Z

    move-result v12

    goto/16 :goto_2

    .line 393
    :cond_8
    instance-of v0, v15, Lcom/android/mms/model/AudioModel;

    move/from16 v29, v0

    if-eqz v29, :cond_9

    .line 394
    const-string v29, "audio"

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-static {v0, v7, v1}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v22

    goto/16 :goto_2

    .line 396
    :cond_9
    instance-of v0, v15, Lcom/samsung/mms/model/LocationVcardModel;

    move/from16 v29, v0

    if-eqz v29, :cond_a

    .line 397
    const-string v29, "text"

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-static {v0, v7, v1}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v22

    .line 398
    move-object/from16 v0, v22

    check-cast v0, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    move-object/from16 v29, v0

    const-string v30, "Text"

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    move-object/from16 v2, v30

    move/from16 v3, v28

    invoke-static {v0, v1, v13, v2, v3}, Lcom/android/mms/model/SmilHelper;->setRegion(Lorg/w3c/dom/smil/SMILRegionMediaElement;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/lang/String;Z)Z

    move-result v28

    goto/16 :goto_2

    .line 401
    :cond_a
    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    .line 403
    .local v20, s:Ljava/lang/StringBuffer;
    goto/16 :goto_1

    .line 421
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #imgRegionPresentInLayout:Z
    .end local v15           #media:Lcom/android/mms/model/MediaModel;
    .end local v16           #par:Lorg/w3c/dom/smil/SMILParElement;
    .end local v20           #s:Ljava/lang/StringBuffer;
    .end local v21           #slide:Lcom/android/mms/model/SlideModel;
    .end local v22           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    .end local v26           #src:Ljava/lang/String;
    .end local v28           #txtRegionPresentInLayout:Z
    :cond_b
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 442
    return-object v7
.end method

.method private static createSmilDocument(Lcom/google/android/mms/pdu/PduBody;Landroid/content/Context;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 23
    .parameter "pb"
    .parameter "context"

    .prologue
    .line 216
    new-instance v6, Lcom/android/mms/dom/smil/SmilDocumentImpl;

    invoke-direct {v6}, Lcom/android/mms/dom/smil/SmilDocumentImpl;-><init>()V

    .line 220
    .local v6, document:Lorg/w3c/dom/smil/SMILDocument;
    const-string v21, "smil"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v18

    check-cast v18, Lorg/w3c/dom/smil/SMILElement;

    .line 221
    .local v18, smil:Lorg/w3c/dom/smil/SMILElement;
    const-string v21, "xmlns"

    const-string v22, "http://www.w3.org/2001/SMIL20/Language"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/smil/SMILElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Lorg/w3c/dom/smil/SMILDocument;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 225
    const-string v21, "head"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/smil/SMILElement;

    .line 226
    .local v11, head:Lorg/w3c/dom/smil/SMILElement;
    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 228
    const-string v21, "layout"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/smil/SMILLayoutElement;

    .line 229
    .local v14, layout:Lorg/w3c/dom/smil/SMILLayoutElement;
    invoke-interface {v11, v14}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 232
    const-string v21, "body"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/smil/SMILElement;

    .line 233
    .local v4, body:Lorg/w3c/dom/smil/SMILElement;
    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 234
    invoke-static {v6}, Lcom/android/mms/model/SmilHelper;->addPar(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILParElement;

    move-result-object v15

    .line 237
    .local v15, par:Lorg/w3c/dom/smil/SMILParElement;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v17

    .line 238
    .local v17, partsNum:I
    if-nez v17, :cond_1

    .line 297
    :cond_0
    return-object v6

    .line 242
    :cond_1
    const/4 v10, 0x0

    .line 243
    .local v10, hasText:Z
    const/4 v9, 0x0

    .line 244
    .local v9, hasMedia:Z
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    move/from16 v0, v17

    if-ge v12, v0, :cond_0

    .line 246
    sget-boolean v21, Lcom/android/mms/model/SmilHelper;->isMixedSmil:Z

    if-eqz v21, :cond_6

    if-nez v9, :cond_2

    if-eqz v10, :cond_6

    .line 247
    :cond_2
    invoke-static {v6}, Lcom/android/mms/model/SmilHelper;->addPar(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILParElement;

    move-result-object v15

    .line 256
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v16

    .line 257
    .local v16, part:Lcom/google/android/mms/pdu/PduPart;
    new-instance v5, Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    .line 258
    .local v5, contentType:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 263
    :try_start_0
    new-instance v7, Lcom/android/mms/drm/DrmWrapper;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-direct {v7, v5, v0, v1}, Lcom/android/mms/drm/DrmWrapper;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/google/android/mms/pdu/PduPart;)V

    .line 264
    .local v7, dw:Lcom/android/mms/drm/DrmWrapper;
    invoke-virtual {v7}, Lcom/android/mms/drm/DrmWrapper;->getContentType()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 270
    .end local v7           #dw:Lcom/android/mms/drm/DrmWrapper;
    :cond_4
    :goto_2
    const-string v21, "text/plain"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_5

    const-string v21, "application/vnd.wap.xhtml+xml"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_5

    const-string v21, "text/html"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 273
    :cond_5
    const-string v21, "text"

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v6, v1}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v19

    .line 275
    .local v19, textElement:Lorg/w3c/dom/smil/SMILMediaElement;
    move-object/from16 v0, v19

    invoke-interface {v15, v0}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 276
    const/4 v10, 0x1

    .line 244
    .end local v19           #textElement:Lorg/w3c/dom/smil/SMILMediaElement;
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 250
    .end local v5           #contentType:Ljava/lang/String;
    .end local v16           #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_6
    if-eqz v15, :cond_7

    if-eqz v9, :cond_3

    if-eqz v10, :cond_3

    .line 251
    :cond_7
    invoke-static {v6}, Lcom/android/mms/model/SmilHelper;->addPar(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILParElement;

    move-result-object v15

    .line 252
    const/4 v10, 0x0

    .line 253
    const/4 v9, 0x0

    goto :goto_1

    .line 265
    .restart local v5       #contentType:Ljava/lang/String;
    .restart local v16       #part:Lcom/google/android/mms/pdu/PduPart;
    :catch_0
    move-exception v8

    .line 266
    .local v8, e:Ljava/io/IOException;
    const-string v21, "Mms/smil"

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 277
    .end local v8           #e:Ljava/io/IOException;
    :cond_8
    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 278
    const-string v21, "img"

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v6, v1}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v13

    .line 280
    .local v13, imageElement:Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-interface {v15, v13}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 281
    const/4 v9, 0x1

    .line 282
    goto :goto_3

    .end local v13           #imageElement:Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_9
    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 283
    const-string v21, "video"

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v6, v1}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v20

    .line 285
    .local v20, videoElement:Lorg/w3c/dom/smil/SMILMediaElement;
    move-object/from16 v0, v20

    invoke-interface {v15, v0}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 286
    const/4 v9, 0x1

    .line 287
    goto :goto_3

    .end local v20           #videoElement:Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_a
    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 288
    const-string v21, "audio"

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v6, v1}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v3

    .line 290
    .local v3, audioElement:Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-interface {v15, v3}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 291
    const/4 v9, 0x1

    .line 292
    goto :goto_3

    .line 294
    .end local v3           #audioElement:Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_b
    const-string v21, "Mms/smil"

    const-string v22, "unsupport media type"

    invoke-static/range {v21 .. v22}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static escapeXML(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 207
    const-string v0, "&"

    const-string v1, "&amp;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<"

    const-string v2, "&lt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ">"

    const-string v2, "&gt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "&quot;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\'"

    const-string v2, "&apos;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static findRegionElementById(Ljava/util/ArrayList;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILRegionElement;
    .locals 3
    .parameter
    .parameter "rId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/smil/SMILRegionElement;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/w3c/dom/smil/SMILRegionElement;"
        }
    .end annotation

    .prologue
    .line 474
    .local p0, smilRegions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/smil/SMILRegionElement;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/smil/SMILRegionElement;

    .line 475
    .local v1, smilRegion:Lorg/w3c/dom/smil/SMILRegionElement;
    invoke-interface {v1}, Lorg/w3c/dom/smil/SMILRegionElement;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 479
    .end local v1           #smilRegion:Lorg/w3c/dom/smil/SMILRegionElement;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static findSmilPart(Lcom/google/android/mms/pdu/PduBody;)Lcom/google/android/mms/pdu/PduPart;
    .locals 5
    .parameter "body"

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v2

    .line 114
    .local v2, partNum:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 115
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 116
    .local v1, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v3

    const-string v4, "application/smil"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 121
    .end local v1           #part:Lcom/google/android/mms/pdu/PduPart;
    :goto_1
    return-object v1

    .line 114
    .restart local v1       #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    .end local v1           #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 1
    .parameter "model"

    .prologue
    .line 104
    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->createSmilDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    return-object v0
.end method

.method public static getDocument(Lcom/google/android/mms/pdu/PduBody;Landroid/content/Context;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 4
    .parameter "pb"
    .parameter "context"

    .prologue
    .line 83
    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->findSmilPart(Lcom/google/android/mms/pdu/PduBody;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 84
    .local v1, smilPart:Lcom/google/android/mms/pdu/PduPart;
    const/4 v0, 0x0

    .line 87
    .local v0, document:Lorg/w3c/dom/smil/SMILDocument;
    if-nez v1, :cond_0

    .line 88
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/mms/model/SmilHelper;->isMixedSmil:Z

    .line 89
    const-string v2, "Mms/smil"

    const-string v3, "getDocument smilPart is null."

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_0
    if-eqz v1, :cond_1

    .line 92
    invoke-static {v1}, Lcom/android/mms/model/SmilHelper;->getSmilDocument(Lcom/google/android/mms/pdu/PduPart;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    .line 95
    :cond_1
    if-nez v0, :cond_2

    .line 97
    invoke-static {p0, p1}, Lcom/android/mms/model/SmilHelper;->createSmilDocument(Lcom/google/android/mms/pdu/PduBody;Landroid/content/Context;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    .line 100
    :cond_2
    return-object v0
.end method

.method private static getSecured(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "smil"

    .prologue
    .line 162
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    .local v5, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 165
    .local v4, low:Ljava/lang/String;
    sget-object v0, Lcom/android/mms/model/SmilHelper;->TAGS:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v6, v0, v2

    .line 166
    .local v6, tag:Ljava/lang/String;
    const/4 v1, 0x0

    .line 168
    .local v1, fromIndex:I
    :cond_0
    invoke-static {v4, v5, v6, v1}, Lcom/android/mms/model/SmilHelper;->removeSrcInTag(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;I)I

    move-result v1

    .line 169
    const/4 v7, -0x1

    if-ne v1, v7, :cond_0

    .line 165
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 172
    .end local v1           #fromIndex:I
    .end local v6           #tag:Ljava/lang/String;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private static getSmilDocument(Lcom/google/android/mms/pdu/PduPart;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 6
    .parameter "smilPart"

    .prologue
    .line 136
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v1

    .line 137
    .local v1, data:[B
    if-nez v1, :cond_0

    .line 138
    const-string v4, "Mms/smil"

    const-string v5, "getSmilDocument milPart.getData(); is null."

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_0
    if-eqz v1, :cond_1

    .line 141
    const-string v4, "Mms/smil"

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v5}, Lcom/android/mms/model/SmilHelper;->getSecured(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 144
    .local v0, bais:Ljava/io/ByteArrayInputStream;
    new-instance v4, Lcom/android/mms/dom/smil/parser/SmilXmlParser;

    invoke-direct {v4}, Lcom/android/mms/dom/smil/parser/SmilXmlParser;-><init>()V

    invoke-virtual {v4, v0}, Lcom/android/mms/dom/smil/parser/SmilXmlParser;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v2

    .line 145
    .local v2, document:Lorg/w3c/dom/smil/SMILDocument;
    invoke-static {v2}, Lcom/android/mms/model/SmilHelper;->validate(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILDocument;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .line 154
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .end local v1           #data:[B
    .end local v2           #document:Lorg/w3c/dom/smil/SMILDocument;
    :goto_0
    return-object v4

    .line 147
    :catch_0
    move-exception v3

    .line 148
    .local v3, e:Ljava/io/IOException;
    const-string v4, "Mms/smil"

    const-string v5, "Failed to parse SMIL document."

    invoke-static {v4, v5, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    .end local v3           #e:Ljava/io/IOException;
    :cond_1
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 149
    :catch_1
    move-exception v3

    .line 150
    .local v3, e:Lorg/xml/sax/SAXException;
    const-string v4, "Mms/smil"

    const-string v5, "Failed to parse SMIL document."

    invoke-static {v4, v5, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 151
    .end local v3           #e:Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v3

    .line 152
    .local v3, e:Lcom/google/android/mms/MmsException;
    const-string v4, "Mms/smil"

    const-string v5, "Failed to parse SMIL document."

    invoke-static {v4, v5, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static removeSrcInTag(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;I)I
    .locals 6
    .parameter "strTarget"
    .parameter "target"
    .parameter "tag"
    .parameter "fromIndex"

    .prologue
    const/4 v4, -0x1

    .line 176
    invoke-virtual {p0, p2, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 177
    .local v3, tagStart:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int v2, v3, v5

    .line 178
    .local v2, startIndex:I
    const-string v5, "\""

    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 180
    .local v0, endIndex:I
    if-eq v3, v4, :cond_0

    if-ne v0, v4, :cond_2

    :cond_0
    move v0, v4

    .line 186
    .end local v0           #endIndex:I
    :cond_1
    return v0

    .line 183
    .restart local v0       #endIndex:I
    :cond_2
    move v1, v2

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 184
    const/16 v4, 0x78

    invoke-virtual {p1, v1, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 183
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static replaceSrcInTagWithFirstMatch(Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 10
    .parameter "document"
    .parameter "tag"
    .parameter "src"
    .parameter "newsrc"

    .prologue
    .line 447
    const-string v4, "\""

    .line 448
    .local v4, quote:Ljava/lang/String;
    const/4 v2, 0x0

    .line 450
    .local v2, out:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    .end local v2           #out:Ljava/io/ByteArrayOutputStream;
    .local v3, out:Ljava/io/ByteArrayOutputStream;
    :try_start_1
    invoke-static {p0, v3}, Lcom/android/mms/dom/smil/parser/SmilXmlSerializer;->serialize(Lorg/w3c/dom/smil/SMILDocument;Ljava/io/OutputStream;)V

    .line 452
    new-instance v6, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v6}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 453
    .local v6, smilPart:Lcom/google/android/mms/pdu/PduPart;
    const-string v7, "smil"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 454
    const-string v7, "smil.xml"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 455
    const-string v7, "application/smil"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 456
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>([B)V

    .line 457
    .local v5, smil:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 458
    .local v1, newSmil:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 459
    invoke-static {v6}, Lcom/android/mms/model/SmilHelper;->getSmilDocument(Lcom/google/android/mms/pdu/PduPart;)Lorg/w3c/dom/smil/SMILDocument;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object p0

    .line 461
    if-eqz v3, :cond_0

    .line 463
    :try_start_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 469
    :cond_0
    :goto_0
    return-object p0

    .line 464
    :catch_0
    move-exception v0

    .line 465
    .local v0, e:Ljava/io/IOException;
    const-string v7, "Mms/smil"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 461
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #newSmil:Ljava/lang/String;
    .end local v3           #out:Ljava/io/ByteArrayOutputStream;
    .end local v5           #smil:Ljava/lang/String;
    .end local v6           #smilPart:Lcom/google/android/mms/pdu/PduPart;
    .restart local v2       #out:Ljava/io/ByteArrayOutputStream;
    :catchall_0
    move-exception v7

    :goto_1
    if-eqz v2, :cond_1

    .line 463
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 466
    :cond_1
    :goto_2
    throw v7

    .line 464
    :catch_1
    move-exception v0

    .line 465
    .restart local v0       #e:Ljava/io/IOException;
    const-string v8, "Mms/smil"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 461
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #out:Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #out:Ljava/io/ByteArrayOutputStream;
    goto :goto_1
.end method

.method private static setRegion(Lorg/w3c/dom/smil/SMILRegionMediaElement;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/lang/String;Z)Z
    .locals 2
    .parameter "srme"
    .parameter
    .parameter "smilLayout"
    .parameter "regionId"
    .parameter "regionPresentInLayout"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/smil/SMILRegionMediaElement;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/smil/SMILRegionElement;",
            ">;",
            "Lorg/w3c/dom/smil/SMILLayoutElement;",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .line 485
    .local p1, smilRegions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/smil/SMILRegionElement;>;"
    invoke-static {p1, p3}, Lcom/android/mms/model/SmilHelper;->findRegionElementById(Ljava/util/ArrayList;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILRegionElement;

    move-result-object v0

    .line 486
    .local v0, smilRegion:Lorg/w3c/dom/smil/SMILRegionElement;
    if-nez p4, :cond_0

    if-eqz v0, :cond_0

    .line 487
    invoke-interface {p0, v0}, Lorg/w3c/dom/smil/SMILRegionMediaElement;->setRegion(Lorg/w3c/dom/smil/SMILRegionElement;)V

    .line 488
    invoke-interface {p2, v0}, Lorg/w3c/dom/smil/SMILLayoutElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 489
    const/4 v1, 0x1

    .line 491
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static validate(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 0
    .parameter "in"

    .prologue
    .line 126
    return-object p0
.end method
