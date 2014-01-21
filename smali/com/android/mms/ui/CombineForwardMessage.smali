.class public Lcom/android/mms/ui/CombineForwardMessage;
.super Ljava/lang/Object;
.source "CombineForwardMessage.java"


# static fields
.field public static final COMBINE_AND_FORWARD_LEVEL:I = 0x1

.field public static final COMBINE_AND_FORWARD_MESSAGE_PHASE1:I = 0x1

.field public static final COMBINE_AND_FORWARD_MESSAGE_PHASE2:I = 0x2

.field private static final FWD_EXCEEDSIZE_ERR:I = 0x1

.field private static final FWD_EXCEEDSLIDENUM_ERR:I = 0x2

.field private static final FWD_NOERR:I = 0x0

.field private static final OFF_TEXT_MMS_MSG:I = 0x258

.field private static final OFF_TEXT_MMS_SLIDE:I = 0xa

.field private static final OFF_TEXT_MMS_SUBJECT:I = 0x384

.field private static final OFF_TEXT_SMS_MSG:I = 0x64

.field public static final SELECTION_MODE_FOR_COMBINE_AND_FORWARD:I = 0x1

.field public static final SORT_ORDER_DATE_ASC:Ljava/lang/String; = "date ASC"

.field public static final SORT_ORDER_DATE_DESC:Ljava/lang/String; = "date DESC"

.field private static final TAG:Ljava/lang/String; = "Mms/CombineMessage"


# instance fields
.field private fwdErrCause:I

.field private fwdIdentifier:Lcom/android/mms/ui/FwdMsgIdentifier;

.field private mActivity:Landroid/app/Activity;

.field private mComposer:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 1
    .parameter "activity"
    .parameter "comp"

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/CombineForwardMessage;->fwdErrCause:I

    .line 53
    iput-object p2, p0, Lcom/android/mms/ui/CombineForwardMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    .line 54
    iput-object p1, p0, Lcom/android/mms/ui/CombineForwardMessage;->mActivity:Landroid/app/Activity;

    .line 55
    return-void
.end method

.method private combineAndForwardSMS(Ljava/util/ArrayList;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/FwdMsgIdentifier;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/FwdMsgIdentifier;>;"
    const-string v8, "Mms/CombineMessage"

    const-string v9, "combineAndForwardSMS"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v3, ""

    .line 147
    .local v3, msgBodySum:Ljava/lang/String;
    const-string v2, ""

    .line 148
    .local v2, msgBody:Ljava/lang/String;
    const-string v7, ""

    .line 150
    .local v7, msgSender:Ljava/lang/String;
    const/4 v1, 0x0

    .line 151
    .local v1, index:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 154
    .local v0, arrayLen:I
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 155
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/mms/ui/FwdMsgIdentifier;

    iput-object v8, p0, Lcom/android/mms/ui/CombineForwardMessage;->fwdIdentifier:Lcom/android/mms/ui/FwdMsgIdentifier;

    .line 156
    iget-object v8, p0, Lcom/android/mms/ui/CombineForwardMessage;->fwdIdentifier:Lcom/android/mms/ui/FwdMsgIdentifier;

    invoke-virtual {v8}, Lcom/android/mms/ui/FwdMsgIdentifier;->getMsgId()J

    move-result-wide v4

    .line 158
    .local v4, msgId:J
    iget-object v8, p0, Lcom/android/mms/ui/CombineForwardMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const-string v9, "sms"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v4, v5, v10}, Lcom/android/mms/ui/ComposeMessageFragment;->getMessageItemPublic(Ljava/lang/String;JZ)Lcom/android/mms/ui/MessageItem;

    move-result-object v6

    .line 159
    .local v6, msgItem:Lcom/android/mms/ui/MessageItem;
    if-nez v6, :cond_0

    .line 154
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    :cond_0
    iget-object v2, v6, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    .line 165
    invoke-direct {p0, v6}, Lcom/android/mms/ui/CombineForwardMessage;->getMessageSender(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v7

    .line 167
    const-string v8, "Mms/CombineMessage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "msgBody="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",msgSender="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 170
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 172
    const-string v8, "Mms/CombineMessage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "msgBodySum="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 174
    .end local v4           #msgId:J
    .end local v6           #msgItem:Lcom/android/mms/ui/MessageItem;
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 175
    const-string v8, "Mms/CombineMessage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "invoke forward (1)\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-direct {p0, v3}, Lcom/android/mms/ui/CombineForwardMessage;->forwardMessageSms(Ljava/lang/String;)V

    .line 178
    :cond_2
    return-void
.end method

.method private combineAndForwardSMSMMS(Ljava/util/ArrayList;)V
    .locals 35
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/FwdMsgIdentifier;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 236
    .local p1, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/FwdMsgIdentifier;>;"
    const-string v3, "Mms/CombineMessage"

    const-string v4, "combineAndForwardSMSMMS"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const/4 v13, 0x0

    .line 239
    .local v13, index:I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 241
    .local v9, arrayLen:I
    const-string v19, ""

    .line 242
    .local v19, msgBody:Ljava/lang/String;
    const-string v23, ""

    .line 245
    .local v23, msgSender:Ljava/lang/String;
    const/16 v33, 0x0

    .line 248
    .local v33, text:Lcom/android/mms/model/TextModel;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/CombineForwardMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/mms/model/SlideshowModel;->createNew(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v29

    .line 249
    .local v29, slideShowTotal:Lcom/android/mms/model/SlideshowModel;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/CombineForwardMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/mms/model/SlideshowModel;->createNew(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v27

    .line 252
    .local v27, slideShowDummy:Lcom/android/mms/model/SlideshowModel;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/CombineForwardMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/mms/model/SlideshowModel;->createNew(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v28

    .line 253
    .local v28, slideShowSingleMms:Lcom/android/mms/model/SlideshowModel;
    const/4 v5, 0x0

    .line 255
    .local v5, msgItemTmp:Lcom/android/mms/ui/MessageItem;
    const/4 v13, 0x0

    :goto_0
    if-ge v13, v9, :cond_5

    .line 256
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/FwdMsgIdentifier;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mms/ui/CombineForwardMessage;->fwdIdentifier:Lcom/android/mms/ui/FwdMsgIdentifier;

    .line 257
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/CombineForwardMessage;->fwdIdentifier:Lcom/android/mms/ui/FwdMsgIdentifier;

    invoke-virtual {v3}, Lcom/android/mms/ui/FwdMsgIdentifier;->getMsgId()J

    move-result-wide v20

    .line 258
    .local v20, msgId:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/CombineForwardMessage;->fwdIdentifier:Lcom/android/mms/ui/FwdMsgIdentifier;

    invoke-virtual {v3}, Lcom/android/mms/ui/FwdMsgIdentifier;->getMsgType()I

    move-result v17

    .line 259
    .local v17, mType:I
    const-string v3, "Mms/CombineMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FWD INCLUDE MMS, index="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", mType[SMS-1, MMS-2]="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    packed-switch v17, :pswitch_data_0

    .line 255
    :cond_0
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 264
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/CombineForwardMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const-string v4, "sms"

    const/4 v6, 0x0

    move-wide/from16 v0, v20

    invoke-virtual {v3, v4, v0, v1, v6}, Lcom/android/mms/ui/ComposeMessageFragment;->getMessageItemPublic(Ljava/lang/String;JZ)Lcom/android/mms/ui/MessageItem;

    move-result-object v22

    .line 265
    .local v22, msgItem:Lcom/android/mms/ui/MessageItem;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/mms/ui/CombineForwardMessage;->getMessageSender(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v23

    .line 266
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 267
    if-eqz v19, :cond_0

    .line 269
    new-instance v33, Lcom/android/mms/model/TextModel;

    .end local v33           #text:Lcom/android/mms/model/TextModel;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/CombineForwardMessage;->mActivity:Landroid/app/Activity;

    const-string v4, "text/plain"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cid:text_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v13, 0x64

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".txt"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v29 .. v29}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v7

    move-object/from16 v0, v33

    invoke-direct {v0, v3, v4, v6, v7}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    .line 273
    .restart local v33       #text:Lcom/android/mms/model/TextModel;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 275
    move-object/from16 v0, v33

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    .line 276
    new-instance v24, Lcom/android/mms/model/SlideModel;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    .line 277
    .local v24, slideModelTmp:Lcom/android/mms/model/SlideModel;
    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 278
    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    goto/16 :goto_1

    .line 282
    .end local v22           #msgItem:Lcom/android/mms/ui/MessageItem;
    .end local v24           #slideModelTmp:Lcom/android/mms/model/SlideModel;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/CombineForwardMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const-string v4, "mms"

    const/4 v6, 0x0

    move-wide/from16 v0, v20

    invoke-virtual {v3, v4, v0, v1, v6}, Lcom/android/mms/ui/ComposeMessageFragment;->getMessageItemPublic(Ljava/lang/String;JZ)Lcom/android/mms/ui/MessageItem;

    move-result-object v22

    .line 283
    .restart local v22       #msgItem:Lcom/android/mms/ui/MessageItem;
    if-eqz v22, :cond_0

    .line 288
    if-nez v5, :cond_1

    .line 289
    move-object/from16 v5, v22

    .line 293
    :cond_1
    new-instance v33, Lcom/android/mms/model/TextModel;

    .end local v33           #text:Lcom/android/mms/model/TextModel;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/CombineForwardMessage;->mActivity:Landroid/app/Activity;

    const-string v4, "text/plain"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cid:text_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    mul-int/lit8 v7, v13, 0xa

    add-int/lit16 v7, v7, 0x384

    add-int/lit16 v7, v7, 0x258

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".txt"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v29 .. v29}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v7

    move-object/from16 v0, v33

    invoke-direct {v0, v3, v4, v6, v7}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    .line 296
    .restart local v33       #text:Lcom/android/mms/model/TextModel;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/mms/ui/CombineForwardMessage;->getMessageSender(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v23

    .line 297
    move-object/from16 v0, v33

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    .line 298
    new-instance v25, Lcom/android/mms/model/SlideModel;

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    .line 299
    .local v25, slideModelTmp1:Lcom/android/mms/model/SlideModel;
    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 300
    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    .line 303
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v28, v0

    .line 304
    invoke-virtual/range {v28 .. v28}, Lcom/android/mms/model/SlideshowModel;->getSlides()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v30

    .line 306
    .local v30, slideSize:I
    const/4 v12, 0x0

    .local v12, ii:I
    :goto_2
    move/from16 v0, v30

    if-ge v12, v0, :cond_4

    .line 308
    new-instance v24, Lcom/android/mms/model/SlideModel;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    .line 309
    .restart local v24       #slideModelTmp:Lcom/android/mms/model/SlideModel;
    invoke-virtual/range {v28 .. v28}, Lcom/android/mms/model/SlideshowModel;->getSlides()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/mms/model/SlideModel;

    .line 310
    .local v31, slidemodel:Lcom/android/mms/model/SlideModel;
    invoke-virtual/range {v31 .. v31}, Lcom/android/mms/model/SlideModel;->size()I

    move-result v32

    .line 311
    .local v32, slidemodellen:I
    const/16 v16, 0x0

    .line 312
    .local v16, loopindex:I
    const/16 v16, 0x0

    :goto_3
    move/from16 v0, v16

    move/from16 v1, v32

    if-ge v0, v1, :cond_3

    .line 313
    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideModel;->get(I)Lcom/android/mms/model/MediaModel;

    move-result-object v18

    .line 314
    .local v18, md:Lcom/android/mms/model/MediaModel;
    if-eqz v18, :cond_2

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 315
    new-instance v33, Lcom/android/mms/model/TextModel;

    .end local v33           #text:Lcom/android/mms/model/TextModel;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/CombineForwardMessage;->mActivity:Landroid/app/Activity;

    const-string v4, "text/plain"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cid:text_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    mul-int/lit8 v7, v13, 0xa

    add-int/2addr v7, v12

    add-int/lit16 v7, v7, 0x258

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".txt"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v29 .. v29}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v7

    move-object/from16 v0, v33

    invoke-direct {v0, v3, v4, v6, v7}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    .line 318
    .restart local v33       #text:Lcom/android/mms/model/TextModel;
    check-cast v18, Lcom/android/mms/model/TextModel;

    .end local v18           #md:Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v34

    .line 319
    .local v34, textStr:Ljava/lang/String;
    invoke-virtual/range {v33 .. v34}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    .line 320
    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 312
    .end local v34           #textStr:Ljava/lang/String;
    :goto_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 322
    .restart local v18       #md:Lcom/android/mms/model/MediaModel;
    :cond_2
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    goto :goto_4

    .line 325
    .end local v18           #md:Lcom/android/mms/model/MediaModel;
    :cond_3
    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    .line 306
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 329
    .end local v16           #loopindex:I
    .end local v24           #slideModelTmp:Lcom/android/mms/model/SlideModel;
    .end local v31           #slidemodel:Lcom/android/mms/model/SlideModel;
    .end local v32           #slidemodellen:I
    :cond_4
    invoke-virtual/range {v28 .. v28}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsList()Ljava/util/ArrayList;

    move-result-object v11

    .line 330
    .local v11, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 331
    .local v10, attachlen:I
    const/4 v15, 0x0

    .local v15, jj:I
    :goto_5
    if-ge v15, v10, :cond_0

    .line 332
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/AttachmentModel;

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lcom/android/mms/model/SlideshowModel;->addAttachment(Lcom/android/mms/model/AttachmentModel;)V

    .line 331
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 343
    .end local v10           #attachlen:I
    .end local v11           #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    .end local v12           #ii:I
    .end local v15           #jj:I
    .end local v17           #mType:I
    .end local v20           #msgId:J
    .end local v22           #msgItem:Lcom/android/mms/ui/MessageItem;
    .end local v25           #slideModelTmp1:Lcom/android/mms/model/SlideModel;
    .end local v30           #slideSize:I
    :cond_5
    invoke-virtual/range {v29 .. v29}, Lcom/android/mms/model/SlideshowModel;->getSlides()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v26

    .line 344
    .local v26, slideNumber:I
    const-string v3, "Mms/CombineMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "slideShowTotal size="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSlideCount()I

    move-result v3

    move/from16 v0, v26

    if-le v0, v3, :cond_7

    .line 347
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/mms/ui/CombineForwardMessage;->fwdErrCause:I

    .line 362
    :cond_6
    :goto_6
    return-void

    .line 355
    :cond_7
    if-eqz v5, :cond_6

    .line 356
    move-object/from16 v0, v29

    iput-object v0, v5, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 357
    new-instance v2, Lcom/android/mms/ui/MessageOptions;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/CombineForwardMessage;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/CombineForwardMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v6

    iget-object v8, v5, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-direct/range {v2 .. v8}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    .line 358
    .local v2, messageOptions:Lcom/android/mms/ui/MessageOptions;
    const/4 v3, 0x1

    move/from16 v0, v26

    if-le v0, v3, :cond_8

    const/4 v14, 0x0

    .line 359
    .local v14, isSlide:Z
    :goto_7
    const/4 v3, 0x0

    invoke-virtual {v2, v14, v5, v3}, Lcom/android/mms/ui/MessageOptions;->forwardMessage(ZLcom/android/mms/ui/MessageItem;Z)V

    goto :goto_6

    .line 358
    .end local v14           #isSlide:Z
    :cond_8
    const/4 v14, 0x1

    goto :goto_7

    .line 262
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private findSelectedMsgId(Landroid/database/Cursor;ILcom/android/mms/ui/MessageListAdapter;Ljava/util/ArrayList;)V
    .locals 10
    .parameter "cursor"
    .parameter "count"
    .parameter "adapter"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "I",
            "Lcom/android/mms/ui/MessageListAdapter;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/FwdMsgIdentifier;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/FwdMsgIdentifier;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 195
    if-lez p2, :cond_2

    .line 197
    :cond_0
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 198
    .local v4, type:Ljava/lang/String;
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 199
    .local v1, msgId:J
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 200
    .local v3, msgType:Ljava/lang/String;
    invoke-virtual {p3, v1, v2, v3}, Lcom/android/mms/ui/MessageListAdapter;->isCheckedMessageId(JLjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 201
    invoke-virtual {p3, v4, v1, v2, p1}, Lcom/android/mms/ui/MessageListAdapter;->canCachedMessageItemBeCombineForwarded(Ljava/lang/String;JLandroid/database/Cursor;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 219
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 221
    .end local v1           #msgId:J
    .end local v3           #msgType:Ljava/lang/String;
    .end local v4           #type:Ljava/lang/String;
    :cond_2
    return-void

    .line 204
    .restart local v1       #msgId:J
    .restart local v3       #msgType:Ljava/lang/String;
    .restart local v4       #type:Ljava/lang/String;
    :cond_3
    new-instance v0, Lcom/android/mms/ui/FwdMsgIdentifier;

    invoke-direct {v0}, Lcom/android/mms/ui/FwdMsgIdentifier;-><init>()V

    .line 205
    .local v0, identifier:Lcom/android/mms/ui/FwdMsgIdentifier;
    const-string v5, "sms"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 206
    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/FwdMsgIdentifier;->setMsgId(J)V

    .line 207
    invoke-virtual {v0, v9}, Lcom/android/mms/ui/FwdMsgIdentifier;->setMsgType(I)V

    .line 208
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    const-string v5, "Mms/CombineMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SMS :: mFwdSelectedMsgIds.add::msgId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private forwardMessageSms(Ljava/lang/String;)V
    .locals 4
    .parameter "msgBody"

    .prologue
    const/4 v3, 0x1

    .line 181
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/CombineForwardMessage;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 182
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "exit_on_sent"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 183
    const-string v1, "forwarded_message"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 184
    const-string v1, "sms_body"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 186
    iget-object v1, p0, Lcom/android/mms/ui/CombineForwardMessage;->mActivity:Landroid/app/Activity;

    const-string v2, "com.android.mms.ui.ForwardMessageActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    iget-object v1, p0, Lcom/android/mms/ui/CombineForwardMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivity(Landroid/content/Intent;)V

    .line 188
    return-void
.end method

.method private getCursorMessageItems()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 133
    iget-object v0, p0, Lcom/android/mms/ui/CombineForwardMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 135
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/mms/ui/CombineForwardMessage;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/CombineForwardMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 137
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 141
    .end local v7           #cursor:Landroid/database/Cursor;
    :goto_0
    return-object v7

    :cond_0
    move-object v7, v4

    goto :goto_0
.end method

.method private getMessageSender(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 4
    .parameter "msgItem"

    .prologue
    .line 224
    const-string v0, ""

    .line 225
    .local v0, msgSender:Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/mms/data/Contact;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    :goto_0
    return-object v0

    .line 230
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/mms/ui/CombineForwardMessage;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0c000d

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public forwardCombineMessage(Lcom/android/mms/ui/MessageListAdapter;)V
    .locals 11
    .parameter "adapter"

    .prologue
    .line 58
    const-string v7, "Mms/CombineMessage"

    const-string v8, "combineAndForwardMessage()"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v0

    .line 61
    .local v0, FwdListMsgCount:I
    const/4 v1, 0x0

    .line 62
    .local v1, FwdSelectedMsgIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/FwdMsgIdentifier;>;"
    const-string v7, "Mms/CombineMessage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "combineAndForwardMessage(), mFwdListMsgCount="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    if-nez v1, :cond_0

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #FwdSelectedMsgIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/FwdMsgIdentifier;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .restart local v1       #FwdSelectedMsgIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/FwdMsgIdentifier;>;"
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/CombineForwardMessage;->getCursorMessageItems()Landroid/database/Cursor;

    move-result-object v3

    .line 73
    .local v3, cursor:Landroid/database/Cursor;
    if-nez v3, :cond_1

    .line 129
    :goto_1
    return-void

    .line 67
    .end local v3           #cursor:Landroid/database/Cursor;
    :cond_0
    throw v1

    goto :goto_0

    .line 77
    .restart local v3       #cursor:Landroid/database/Cursor;
    :cond_1
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 78
    invoke-direct {p0, v3, v0, p1, v1}, Lcom/android/mms/ui/CombineForwardMessage;->findSelectedMsgId(Landroid/database/Cursor;ILcom/android/mms/ui/MessageListAdapter;Ljava/util/ArrayList;)V

    .line 80
    :cond_2
    const-string v7, "Mms/CombineMessage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mFwdSelectedMsgIds.size="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 82
    iget-object v7, p0, Lcom/android/mms/ui/CombineForwardMessage;->mActivity:Landroid/app/Activity;

    const v8, 0x7f0c0160

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    :cond_3
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 86
    :cond_4
    const/4 v5, 0x0

    .line 87
    .local v5, includingMms:Z
    const/4 v6, 0x0

    .line 88
    .local v6, index:I
    :try_start_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 89
    .local v2, arrayLen:I
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v2, :cond_6

    .line 90
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/ui/FwdMsgIdentifier;

    iput-object v7, p0, Lcom/android/mms/ui/CombineForwardMessage;->fwdIdentifier:Lcom/android/mms/ui/FwdMsgIdentifier;

    .line 91
    const-string v7, "Mms/CombineMessage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fwdIdentifier:msgId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/ui/CombineForwardMessage;->fwdIdentifier:Lcom/android/mms/ui/FwdMsgIdentifier;

    invoke-virtual {v9}, Lcom/android/mms/ui/FwdMsgIdentifier;->getMsgId()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",fwdIdentifier:msgType="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/ui/CombineForwardMessage;->fwdIdentifier:Lcom/android/mms/ui/FwdMsgIdentifier;

    invoke-virtual {v9}, Lcom/android/mms/ui/FwdMsgIdentifier;->getMsgType()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v7, p0, Lcom/android/mms/ui/CombineForwardMessage;->fwdIdentifier:Lcom/android/mms/ui/FwdMsgIdentifier;

    invoke-virtual {v7}, Lcom/android/mms/ui/FwdMsgIdentifier;->getMsgType()I

    move-result v7

    iget-object v8, p0, Lcom/android/mms/ui/CombineForwardMessage;->fwdIdentifier:Lcom/android/mms/ui/FwdMsgIdentifier;

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    .line 93
    const/4 v5, 0x1

    .line 89
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 96
    :cond_6
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 97
    if-nez v5, :cond_7

    .line 98
    invoke-direct {p0, v1}, Lcom/android/mms/ui/CombineForwardMessage;->combineAndForwardSMS(Ljava/util/ArrayList;)V

    .line 109
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 111
    iget v7, p0, Lcom/android/mms/ui/CombineForwardMessage;->fwdErrCause:I

    packed-switch v7, :pswitch_data_0

    goto :goto_2

    .line 113
    :pswitch_0
    iget-object v7, p0, Lcom/android/mms/ui/CombineForwardMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v8, -0x1

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/android/mms/ui/ComposeMessageFragment;->setSelectionModeLayout(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 127
    .end local v2           #arrayLen:I
    .end local v5           #includingMms:Z
    .end local v6           #index:I
    :catchall_0
    move-exception v7

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v7

    .line 101
    .restart local v2       #arrayLen:I
    .restart local v5       #includingMms:Z
    .restart local v6       #index:I
    :cond_7
    const/4 v7, 0x0

    :try_start_2
    iput v7, p0, Lcom/android/mms/ui/CombineForwardMessage;->fwdErrCause:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    :try_start_3
    invoke-direct {p0, v1}, Lcom/android/mms/ui/CombineForwardMessage;->combineAndForwardSMSMMS(Ljava/util/ArrayList;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    .line 104
    :catch_0
    move-exception v4

    .line 105
    .local v4, e:Lcom/android/mms/ExceedMessageSizeException;
    const/4 v7, 0x1

    :try_start_4
    iput v7, p0, Lcom/android/mms/ui/CombineForwardMessage;->fwdErrCause:I

    goto :goto_4

    .line 117
    .end local v4           #e:Lcom/android/mms/ExceedMessageSizeException;
    :pswitch_1
    iget-object v7, p0, Lcom/android/mms/ui/CombineForwardMessage;->mActivity:Landroid/app/Activity;

    const v8, 0x7f0c018a

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 121
    :pswitch_2
    iget-object v7, p0, Lcom/android/mms/ui/CombineForwardMessage;->mActivity:Landroid/app/Activity;

    const v8, 0x7f0c0174

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
