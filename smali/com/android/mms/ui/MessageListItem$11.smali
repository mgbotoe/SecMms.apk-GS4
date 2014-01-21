.class Lcom/android/mms/ui/MessageListItem$11;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem;)V
    .locals 0
    .parameter

    .prologue
    .line 2411
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$11;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 35
    .parameter "v"
    .parameter "event"

    .prologue
    .line 2415
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .local v6, action:I
    move-object/from16 v25, p1

    .line 2416
    check-cast v25, Landroid/widget/TextView;

    .line 2417
    .local v25, tv:Landroid/widget/TextView;
    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    .line 2419
    .local v7, csText:Ljava/lang/CharSequence;
    instance-of v0, v7, Landroid/text/Spannable;

    move/from16 v29, v0

    if-nez v29, :cond_0

    .line 2420
    const/16 v29, 0x0

    .line 2545
    :goto_0
    return v29

    :cond_0
    move-object/from16 v20, v7

    .line 2423
    check-cast v20, Landroid/text/Spannable;

    .line 2425
    .local v20, text:Landroid/text/Spannable;
    if-eqz v6, :cond_1

    const/16 v29, 0x2

    move/from16 v0, v29

    if-ne v6, v0, :cond_d

    .line 2426
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v29

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v27, v0

    .line 2427
    .local v27, x:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v29

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v28, v0

    .line 2429
    .local v28, y:I
    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getScrollX()I

    move-result v29

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v30

    sub-int v29, v29, v30

    add-int v27, v27, v29

    .line 2430
    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getScrollY()I

    move-result v29

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v30

    sub-int v29, v29, v30

    add-int v28, v28, v29

    .line 2432
    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v9

    .line 2434
    .local v9, layout:Landroid/text/Layout;
    if-nez v9, :cond_2

    .line 2435
    const/16 v29, 0x0

    goto :goto_0

    .line 2438
    :cond_2
    move/from16 v0, v28

    invoke-virtual {v9, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v10

    .line 2439
    .local v10, line:I
    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    invoke-virtual {v9, v10, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v14

    .line 2441
    .local v14, offset:I
    const-class v29, Landroid/text/style/ClickableSpan;

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-interface {v0, v14, v14, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/text/style/ClickableSpan;

    .line 2443
    .local v13, links:[Landroid/text/style/ClickableSpan;
    if-eqz v13, :cond_e

    array-length v0, v13

    move/from16 v29, v0

    if-lez v29, :cond_e

    .line 2444
    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v24

    .line 2445
    .local v24, tp:Landroid/text/TextPaint;
    invoke-virtual {v9, v10}, Landroid/text/Layout;->getLineStart(I)I

    move-result v12

    .line 2446
    .local v12, lineStart:I
    invoke-virtual {v9, v10}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v11

    .line 2447
    .local v11, lineEnd:I
    const/16 v29, 0x0

    aget-object v29, v13, v29

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v19

    .line 2448
    .local v19, spanStart:I
    const/16 v29, 0x0

    aget-object v29, v13, v29

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v18

    .line 2450
    .local v18, spanEnd:I
    const/16 v22, 0x0

    .line 2451
    .local v22, totalLength:I
    const/16 v23, 0x0

    .line 2452
    .local v23, totalTextLength:I
    const/4 v5, 0x0

    .line 2453
    .local v5, EmptySpace:I
    const/16 v21, 0x0

    .line 2456
    .local v21, textAfterLinkLength:I
    if-gez v12, :cond_3

    const/4 v12, 0x0

    .line 2457
    :cond_3
    if-gez v11, :cond_4

    const/4 v11, 0x0

    .line 2459
    :cond_4
    :try_start_0
    move-object/from16 v0, v20

    invoke-interface {v0, v12, v11}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 2465
    .local v16, selectedLine:Ljava/lang/CharSequence;
    :goto_1
    move-object/from16 v0, v20

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v17

    .line 2467
    .local v17, selectedText:Ljava/lang/CharSequence;
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 2468
    .local v15, r:Landroid/graphics/Rect;
    invoke-virtual {v9, v10, v15}, Landroid/text/Layout;->getLineBounds(ILandroid/graphics/Rect;)I

    .line 2470
    invoke-static {v7}, Lcom/android/mms/ui/MessageUtils;->isTextRTL(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_b

    .line 2472
    :try_start_1
    iget v0, v15, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    .line 2473
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v29

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v23, v0

    .line 2474
    sub-int v5, v22, v23

    .line 2475
    const/16 v21, 0x0

    .line 2477
    move/from16 v0, v19

    if-lt v0, v12, :cond_a

    .line 2478
    if-lez v10, :cond_8

    .line 2479
    move/from16 v0, v18

    if-le v0, v11, :cond_6

    .line 2480
    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-interface {v0, v12, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v29

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v21, v0

    .line 2496
    :goto_2
    add-int v29, v5, v21

    move/from16 v0, v29

    iput v0, v15, Landroid/graphics/Rect;->left:I

    .line 2497
    iget v0, v15, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v30

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    add-int v29, v29, v30

    move/from16 v0, v29

    iput v0, v15, Landroid/graphics/Rect;->right:I
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2517
    :goto_3
    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v15, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v29

    if-eqz v29, :cond_e

    move-object/from16 v29, v17

    .line 2518
    check-cast v29, Landroid/text/Spanned;

    const/16 v30, 0x0

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->length()I

    move-result v31

    const-class v32, Landroid/text/style/URLSpan;

    invoke-interface/range {v29 .. v32}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [Landroid/text/style/URLSpan;

    .line 2519
    .local v26, urls:[Landroid/text/style/URLSpan;
    if-eqz v26, :cond_e

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v29, v0

    if-lez v29, :cond_e

    .line 2520
    if-nez v6, :cond_5

    .line 2521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem$11;->this$0:Lcom/android/mms/ui/MessageListItem;

    move-object/from16 v29, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v30

    #setter for: Lcom/android/mms/ui/MessageListItem;->mSelectedText:Ljava/lang/String;
    invoke-static/range {v29 .. v30}, Lcom/android/mms/ui/MessageListItem;->access$2802(Lcom/android/mms/ui/MessageListItem;Ljava/lang/String;)Ljava/lang/String;

    .line 2522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem$11;->this$0:Lcom/android/mms/ui/MessageListItem;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aget-object v30, v26, v30

    invoke-virtual/range {v30 .. v30}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v30

    #setter for: Lcom/android/mms/ui/MessageListItem;->mSelectedUrl:Ljava/lang/String;
    invoke-static/range {v29 .. v30}, Lcom/android/mms/ui/MessageListItem;->access$2602(Lcom/android/mms/ui/MessageListItem;Ljava/lang/String;)Ljava/lang/String;

    .line 2523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem$11;->this$0:Lcom/android/mms/ui/MessageListItem;

    move-object/from16 v29, v0

    #getter for: Lcom/android/mms/ui/MessageListItem;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;
    invoke-static/range {v29 .. v29}, Lcom/android/mms/ui/MessageListItem;->access$2900(Lcom/android/mms/ui/MessageListItem;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v29

    const/16 v30, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move/from16 v2, v19

    move/from16 v3, v18

    move/from16 v4, v30

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem$11;->this$0:Lcom/android/mms/ui/MessageListItem;

    move-object/from16 v29, v0

    #getter for: Lcom/android/mms/ui/MessageListItem;->mLongClickHandler:Landroid/os/Handler;
    invoke-static/range {v29 .. v29}, Lcom/android/mms/ui/MessageListItem;->access$3000(Lcom/android/mms/ui/MessageListItem;)Landroid/os/Handler;

    move-result-object v29

    const/16 v30, 0x3e8

    invoke-virtual/range {v29 .. v30}, Landroid/os/Handler;->removeMessages(I)V

    .line 2526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem$11;->this$0:Lcom/android/mms/ui/MessageListItem;

    move-object/from16 v29, v0

    #getter for: Lcom/android/mms/ui/MessageListItem;->mLongClickHandler:Landroid/os/Handler;
    invoke-static/range {v29 .. v29}, Lcom/android/mms/ui/MessageListItem;->access$3000(Lcom/android/mms/ui/MessageListItem;)Landroid/os/Handler;

    move-result-object v29

    const/16 v30, 0x3e8

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v31

    invoke-static {}, Lcom/android/mms/ui/MessageListItem;->access$3100()I

    move-result v33

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v33, v0

    add-long v31, v31, v33

    invoke-static {}, Lcom/android/mms/ui/MessageListItem;->access$3200()I

    move-result v33

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v33, v0

    add-long v31, v31, v33

    invoke-virtual/range {v29 .. v32}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 2529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem$11;->this$0:Lcom/android/mms/ui/MessageListItem;

    move-object/from16 v29, v0

    #getter for: Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;
    invoke-static/range {v29 .. v29}, Lcom/android/mms/ui/MessageListItem;->access$2700(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/LinearLayout;

    move-result-object v29

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Landroid/widget/LinearLayout;->playSoundEffect(I)V

    .line 2532
    :cond_5
    const/16 v29, 0x1

    goto/16 :goto_0

    .line 2460
    .end local v15           #r:Landroid/graphics/Rect;
    .end local v16           #selectedLine:Ljava/lang/CharSequence;
    .end local v17           #selectedText:Ljava/lang/CharSequence;
    .end local v26           #urls:[Landroid/text/style/URLSpan;
    :catch_0
    move-exception v8

    .line 2461
    .local v8, e:Ljava/lang/StringIndexOutOfBoundsException;
    const-string v29, "Mms/MessageListItem"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "StringIndexOutOfBoundsException!! lineStart= "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", lineEnd= "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", spanStart= "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", spanEnd= "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2462
    invoke-virtual {v9}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v16

    .restart local v16       #selectedLine:Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 2482
    .end local v8           #e:Ljava/lang/StringIndexOutOfBoundsException;
    .restart local v15       #r:Landroid/graphics/Rect;
    .restart local v17       #selectedText:Ljava/lang/CharSequence;
    :cond_6
    :try_start_2
    invoke-virtual {v9, v10}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v29

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_7

    .line 2483
    sub-int v29, v18, v12

    sub-int v30, v11, v12

    move-object/from16 v0, v16

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v29

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v21, v0

    goto/16 :goto_2

    .line 2485
    :cond_7
    const/4 v5, 0x0

    .line 2486
    const/16 v29, 0x0

    sub-int v30, v19, v12

    move-object/from16 v0, v16

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v29

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v21, v0

    goto/16 :goto_2

    .line 2490
    :cond_8
    move/from16 v0, v18

    if-le v0, v11, :cond_9

    .line 2491
    const/16 v29, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-interface {v0, v1, v11}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v29

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    sub-int v21, v22, v29

    goto/16 :goto_2

    .line 2493
    :cond_9
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-interface {v0, v1, v11}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v29

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v21, v0

    goto/16 :goto_2

    .line 2501
    :cond_a
    sub-int v29, v18, v12

    sub-int v30, v11, v12

    move-object/from16 v0, v16

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v29

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v21, v0

    .line 2502
    add-int v29, v5, v21

    move/from16 v0, v29

    iput v0, v15, Landroid/graphics/Rect;->left:I

    .line 2503
    iget v0, v15, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v30

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    add-int v29, v29, v30

    move/from16 v0, v29

    iput v0, v15, Landroid/graphics/Rect;->right:I
    :try_end_2
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    .line 2505
    :catch_1
    move-exception v29

    goto/16 :goto_3

    .line 2509
    :cond_b
    move/from16 v0, v19

    if-lt v0, v12, :cond_c

    .line 2510
    iget v0, v15, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    const/16 v30, 0x0

    sub-int v31, v19, v12

    move-object/from16 v0, v16

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v30

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    add-int v29, v29, v30

    move/from16 v0, v29

    iput v0, v15, Landroid/graphics/Rect;->left:I

    .line 2511
    iget v0, v15, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v30

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    add-int v29, v29, v30

    move/from16 v0, v29

    iput v0, v15, Landroid/graphics/Rect;->right:I

    goto/16 :goto_3

    .line 2514
    :cond_c
    iget v0, v15, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    sub-int v30, v12, v19

    sub-int v31, v18, v19

    move-object/from16 v0, v17

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v30

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    add-int v29, v29, v30

    move/from16 v0, v29

    iput v0, v15, Landroid/graphics/Rect;->right:I

    goto/16 :goto_3

    .line 2536
    .end local v5           #EmptySpace:I
    .end local v9           #layout:Landroid/text/Layout;
    .end local v10           #line:I
    .end local v11           #lineEnd:I
    .end local v12           #lineStart:I
    .end local v13           #links:[Landroid/text/style/ClickableSpan;
    .end local v14           #offset:I
    .end local v15           #r:Landroid/graphics/Rect;
    .end local v16           #selectedLine:Ljava/lang/CharSequence;
    .end local v17           #selectedText:Ljava/lang/CharSequence;
    .end local v18           #spanEnd:I
    .end local v19           #spanStart:I
    .end local v21           #textAfterLinkLength:I
    .end local v22           #totalLength:I
    .end local v23           #totalTextLength:I
    .end local v24           #tp:Landroid/text/TextPaint;
    .end local v27           #x:I
    .end local v28           #y:I
    :cond_d
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v6, v0, :cond_e

    .line 2537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem$11;->this$0:Lcom/android/mms/ui/MessageListItem;

    move-object/from16 v29, v0

    #getter for: Lcom/android/mms/ui/MessageListItem;->mSelectedUrl:Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Lcom/android/mms/ui/MessageListItem;->access$2600(Lcom/android/mms/ui/MessageListItem;)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_e

    .line 2538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem$11;->this$0:Lcom/android/mms/ui/MessageListItem;

    move-object/from16 v29, v0

    #getter for: Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;
    invoke-static/range {v29 .. v29}, Lcom/android/mms/ui/MessageListItem;->access$3300(Lcom/android/mms/ui/MessageListItem;)Landroid/os/Handler;

    move-result-object v29

    const/16 v30, 0x3

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem$11;->this$0:Lcom/android/mms/ui/MessageListItem;

    move-object/from16 v33, v0

    #getter for: Lcom/android/mms/ui/MessageListItem;->mSelectedUrl:Ljava/lang/String;
    invoke-static/range {v33 .. v33}, Lcom/android/mms/ui/MessageListItem;->access$2600(Lcom/android/mms/ui/MessageListItem;)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem$11;->this$0:Lcom/android/mms/ui/MessageListItem;

    move-object/from16 v33, v0

    #getter for: Lcom/android/mms/ui/MessageListItem;->mSelectedText:Ljava/lang/String;
    invoke-static/range {v33 .. v33}, Lcom/android/mms/ui/MessageListItem;->access$2800(Lcom/android/mms/ui/MessageListItem;)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v29 .. v31}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/os/Message;->sendToTarget()V

    .line 2542
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem$11;->this$0:Lcom/android/mms/ui/MessageListItem;

    move-object/from16 v29, v0

    #getter for: Lcom/android/mms/ui/MessageListItem;->mLongClickHandler:Landroid/os/Handler;
    invoke-static/range {v29 .. v29}, Lcom/android/mms/ui/MessageListItem;->access$3000(Lcom/android/mms/ui/MessageListItem;)Landroid/os/Handler;

    move-result-object v29

    const/16 v30, 0x3e8

    invoke-virtual/range {v29 .. v30}, Landroid/os/Handler;->removeMessages(I)V

    .line 2543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem$11;->this$0:Lcom/android/mms/ui/MessageListItem;

    move-object/from16 v29, v0

    const-string v30, ""

    #setter for: Lcom/android/mms/ui/MessageListItem;->mSelectedUrl:Ljava/lang/String;
    invoke-static/range {v29 .. v30}, Lcom/android/mms/ui/MessageListItem;->access$2602(Lcom/android/mms/ui/MessageListItem;Ljava/lang/String;)Ljava/lang/String;

    .line 2544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem$11;->this$0:Lcom/android/mms/ui/MessageListItem;

    move-object/from16 v29, v0

    #getter for: Lcom/android/mms/ui/MessageListItem;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;
    invoke-static/range {v29 .. v29}, Lcom/android/mms/ui/MessageListItem;->access$2900(Lcom/android/mms/ui/MessageListItem;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v29

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2545
    const/16 v29, 0x0

    goto/16 :goto_0
.end method
