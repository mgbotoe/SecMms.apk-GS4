.class Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;
.super Ljava/lang/Object;
.source "MmsRichContainer.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MmsRichContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageOnKey"
.end annotation


# instance fields
.field private mSlideIndex:I

.field private mType:I

.field final synthetic this$0:Lcom/android/mms/ui/MmsRichContainer;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MmsRichContainer;II)V
    .locals 0
    .parameter
    .parameter "type"
    .parameter "index"

    .prologue
    .line 604
    iput-object p1, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 605
    iput p2, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    .line 606
    iput p3, p0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    .line 607
    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 20
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 610
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->isNeedToBlockTheKey:Z
    invoke-static {v15}, Lcom/android/mms/ui/MmsRichContainer;->access$200(Lcom/android/mms/ui/MmsRichContainer;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 611
    const/4 v15, 0x1

    .line 953
    :goto_0
    return v15

    .line 613
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v15

    if-nez v15, :cond_8

    .line 614
    const/16 v15, 0x52

    move/from16 v0, p2

    if-ne v0, v15, :cond_1

    .line 615
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v15}, Lcom/android/mms/ui/MmsRichContainer;->access$000(Lcom/android/mms/ui/MmsRichContainer;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/mms/ui/ComposeMessageFragment;->invalidteComposerOptionMenu()V

    .line 616
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v15}, Lcom/android/mms/ui/MmsRichContainer;->access$000(Lcom/android/mms/ui/MmsRichContainer;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/android/mms/ui/ComposeMessageFragment;->finishWB(Landroid/widget/EditText;)V

    .line 619
    :cond_1
    const/16 v15, 0x42

    move/from16 v0, p2

    if-eq v0, v15, :cond_2

    const/16 v15, 0x17

    move/from16 v0, p2

    if-ne v0, v15, :cond_8

    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    if-eqz v15, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/EditText;->hasFocus()Z

    move-result v15

    if-nez v15, :cond_8

    .line 621
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 622
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mContext:Landroid/content/Context;
    invoke-static {v15}, Lcom/android/mms/ui/MmsRichContainer;->access$300(Lcom/android/mms/ui/MmsRichContainer;)Landroid/content/Context;

    move-result-object v15

    const-string v16, "vibrator"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/Vibrator;

    .line 623
    .local v14, vibrator:Landroid/os/Vibrator;
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    packed-switch v15, :pswitch_data_0

    .line 654
    .end local v14           #vibrator:Landroid/os/Vibrator;
    :cond_3
    :pswitch_0
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 625
    .restart local v14       #vibrator:Landroid/os/Vibrator;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    #calls: Lcom/android/mms/ui/MmsRichContainer;->getFocusedAudioView(Landroid/view/View;)Landroid/widget/LinearLayout;
    invoke-static/range {v15 .. v16}, Lcom/android/mms/ui/MmsRichContainer;->access$400(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 626
    .local v1, audioView:Landroid/widget/LinearLayout;
    if-eqz v1, :cond_4

    .line 627
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->showContextMenu()Z

    .line 628
    if-eqz v14, :cond_4

    .line 629
    const-wide/16 v15, 0x32

    invoke-virtual/range {v14 .. v16}, Landroid/os/Vibrator;->vibrate(J)V

    .line 631
    :cond_4
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 634
    .end local v1           #audioView:Landroid/widget/LinearLayout;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    #calls: Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;
    invoke-static/range {v15 .. v16}, Lcom/android/mms/ui/MmsRichContainer;->access$500(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v8

    .line 635
    .local v8, mediaView:Landroid/widget/RelativeLayout;
    if-eqz v8, :cond_6

    .line 636
    const/4 v15, 0x1

    invoke-virtual {v8, v15}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    if-eqz v15, :cond_5

    .line 637
    const/4 v15, 0x1

    invoke-virtual {v8, v15}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->showContextMenu()Z

    .line 638
    :cond_5
    if-eqz v14, :cond_6

    .line 639
    const-wide/16 v15, 0x32

    invoke-virtual/range {v14 .. v16}, Landroid/os/Vibrator;->vibrate(J)V

    .line 641
    :cond_6
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 643
    .end local v8           #mediaView:Landroid/widget/RelativeLayout;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    #calls: Lcom/android/mms/ui/MmsRichContainer;->getFocussedLocationView(Landroid/view/View;)Landroid/widget/RelativeLayout;
    invoke-static/range {v15 .. v16}, Lcom/android/mms/ui/MmsRichContainer;->access$600(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v6

    .line 644
    .local v6, locationView:Landroid/widget/RelativeLayout;
    if-eqz v6, :cond_7

    .line 645
    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->showContextMenu()Z

    .line 646
    if-eqz v14, :cond_7

    .line 647
    const-wide/16 v15, 0x32

    invoke-virtual/range {v14 .. v16}, Landroid/os/Vibrator;->vibrate(J)V

    .line 649
    :cond_7
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 659
    .end local v6           #locationView:Landroid/widget/RelativeLayout;
    .end local v14           #vibrator:Landroid/os/Vibrator;
    :cond_8
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v15

    if-eqz v15, :cond_b

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-eq v15, v0, :cond_b

    .line 660
    const/16 v15, 0x42

    move/from16 v0, p2

    if-eq v0, v15, :cond_9

    const/16 v15, 0x17

    move/from16 v0, p2

    if-ne v0, v15, :cond_a

    .line 661
    :cond_9
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 663
    :cond_a
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 667
    :cond_b
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v15

    if-eqz v15, :cond_c

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_d

    .line 668
    :cond_c
    const/4 v11, 0x0

    .line 669
    .local v11, msg:Landroid/os/Message;
    packed-switch p2, :pswitch_data_1

    .line 835
    .end local v11           #msg:Landroid/os/Message;
    :cond_d
    const/16 v15, 0x43

    move/from16 v0, p2

    if-ne v0, v15, :cond_28

    .line 836
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    packed-switch v15, :pswitch_data_2

    .line 924
    :cond_e
    :goto_1
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 671
    .restart local v11       #msg:Landroid/os/Message;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v15}, Lcom/android/mms/ui/MmsRichContainer;->access$700(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v15

    if-eqz v15, :cond_f

    .line 672
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v15}, Lcom/android/mms/ui/MmsRichContainer;->access$700(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v15

    const/16 v16, 0x32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    move/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v15 .. v19}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 675
    :cond_f
    if-eqz v11, :cond_10

    .line 676
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    packed-switch v15, :pswitch_data_3

    .line 742
    :cond_10
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 679
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v15, v15, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-nez v15, :cond_14

    .line 680
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    if-nez v15, :cond_12

    .line 681
    invoke-virtual {v11}, Landroid/os/Message;->sendToTarget()V

    .line 697
    :cond_11
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 682
    :cond_12
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    if-lez v15, :cond_11

    .line 683
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    invoke-virtual/range {v16 .. v17}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    #calls: Lcom/android/mms/ui/MmsRichContainer;->getFocusedAudioView(Landroid/view/View;)Landroid/widget/LinearLayout;
    invoke-static/range {v15 .. v16}, Lcom/android/mms/ui/MmsRichContainer;->access$400(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 684
    .restart local v1       #audioView:Landroid/widget/LinearLayout;
    if-eqz v1, :cond_13

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v15

    if-nez v15, :cond_13

    .line 685
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(I)V

    .line 686
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v15}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v15

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getId()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/EditText;->setNextFocusUpId(I)V

    .line 687
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 689
    :cond_13
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(I)V

    .line 690
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 694
    .end local v1           #audioView:Landroid/widget/LinearLayout;
    :cond_14
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(I)V

    .line 695
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 699
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v15, v15, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-nez v15, :cond_15

    .line 700
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(I)V

    .line 710
    :goto_2
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 702
    :cond_15
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    #calls: Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;
    invoke-static/range {v15 .. v16}, Lcom/android/mms/ui/MmsRichContainer;->access$500(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v8

    .line 703
    .restart local v8       #mediaView:Landroid/widget/RelativeLayout;
    if-eqz v8, :cond_16

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v15

    if-nez v15, :cond_16

    .line 704
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v15}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v15

    const v16, 0x7f0b01ee

    invoke-virtual/range {v15 .. v16}, Landroid/widget/EditText;->setNextFocusUpId(I)V

    .line 705
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 707
    :cond_16
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(I)V

    goto :goto_2

    .line 712
    .end local v8           #mediaView:Landroid/widget/RelativeLayout;
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v15, v15, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-nez v15, :cond_19

    .line 713
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    #calls: Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;
    invoke-static/range {v15 .. v16}, Lcom/android/mms/ui/MmsRichContainer;->access$500(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v8

    .line 715
    .restart local v8       #mediaView:Landroid/widget/RelativeLayout;
    if-eqz v8, :cond_17

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v15

    if-nez v15, :cond_17

    .line 716
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v15}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v15

    const v16, 0x7f0b01ee

    invoke-virtual/range {v15 .. v16}, Landroid/widget/EditText;->setNextFocusUpId(I)V

    .line 717
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 720
    :cond_17
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    if-lez v15, :cond_1a

    .line 721
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    invoke-virtual/range {v16 .. v17}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    #calls: Lcom/android/mms/ui/MmsRichContainer;->getFocusedAudioView(Landroid/view/View;)Landroid/widget/LinearLayout;
    invoke-static/range {v15 .. v16}, Lcom/android/mms/ui/MmsRichContainer;->access$400(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 722
    .restart local v1       #audioView:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(I)V

    .line 724
    if-eqz v1, :cond_18

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v15

    if-nez v15, :cond_18

    .line 725
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v15}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v15

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getId()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/EditText;->setNextFocusUpId(I)V

    .line 726
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 728
    :cond_18
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 732
    .end local v1           #audioView:Landroid/widget/LinearLayout;
    .end local v8           #mediaView:Landroid/widget/RelativeLayout;
    :cond_19
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    if-lez v15, :cond_1a

    .line 733
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(I)V

    .line 734
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 737
    :cond_1a
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 744
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v15}, Lcom/android/mms/ui/MmsRichContainer;->access$700(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v15

    if-eqz v15, :cond_1c

    .line 745
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v15}, Lcom/android/mms/ui/MmsRichContainer;->access$700(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v15

    const/16 v16, 0x33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    move/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v15 .. v19}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 746
    invoke-virtual {v11}, Landroid/os/Message;->sendToTarget()V

    .line 748
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    #calls: Lcom/android/mms/ui/MmsRichContainer;->getFocusedAudioView(Landroid/view/View;)Landroid/widget/LinearLayout;
    invoke-static/range {v15 .. v16}, Lcom/android/mms/ui/MmsRichContainer;->access$400(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 749
    .restart local v1       #audioView:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    #calls: Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;
    invoke-static/range {v15 .. v16}, Lcom/android/mms/ui/MmsRichContainer;->access$500(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v8

    .line 751
    .restart local v8       #mediaView:Landroid/widget/RelativeLayout;
    if-eqz v11, :cond_1b

    .line 752
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    packed-switch v15, :pswitch_data_4

    .line 777
    :cond_1b
    :pswitch_9
    if-eqz v8, :cond_1d

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v15

    if-nez v15, :cond_1d

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v15, v15, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_1d

    .line 778
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v15}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v15

    const v16, 0x7f0b01ee

    invoke-virtual/range {v15 .. v16}, Landroid/widget/EditText;->setNextFocusDownId(I)V

    .line 785
    .end local v1           #audioView:Landroid/widget/LinearLayout;
    .end local v8           #mediaView:Landroid/widget/RelativeLayout;
    :cond_1c
    :goto_3
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 754
    .restart local v1       #audioView:Landroid/widget/LinearLayout;
    .restart local v8       #mediaView:Landroid/widget/RelativeLayout;
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v15, v15, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-nez v15, :cond_1b

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/ui/MmsRichContainer;->getTotalPageCount()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    if-ge v15, v0, :cond_1b

    .line 755
    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v15

    if-eqz v15, :cond_1b

    .line 756
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    invoke-virtual/range {v16 .. v17}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    #calls: Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;
    invoke-static/range {v15 .. v16}, Lcom/android/mms/ui/MmsRichContainer;->access$500(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v7

    .line 757
    .local v7, mediaNextView:Landroid/widget/RelativeLayout;
    if-eqz v7, :cond_1b

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v15

    if-nez v15, :cond_1b

    .line 758
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(I)V

    .line 759
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v15}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v15

    const v16, 0x7f0b01ee

    invoke-virtual/range {v15 .. v16}, Landroid/widget/EditText;->setNextFocusDownId(I)V

    .line 760
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 767
    .end local v7           #mediaNextView:Landroid/widget/RelativeLayout;
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v15, v15, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-nez v15, :cond_1b

    .line 768
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(I)V

    .line 769
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 779
    :cond_1d
    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v15

    if-nez v15, :cond_1e

    .line 780
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v15}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v15

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getId()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/EditText;->setNextFocusDownId(I)V

    goto/16 :goto_3

    .line 782
    :cond_1e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v15}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/EditText;->setNextFocusDownId(I)V

    goto/16 :goto_3

    .line 787
    .end local v1           #audioView:Landroid/widget/LinearLayout;
    .end local v8           #mediaView:Landroid/widget/RelativeLayout;
    :pswitch_c
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    const/16 v16, 0xd

    move/from16 v0, v16

    if-ne v15, v0, :cond_1f

    .line 788
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v15}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v15

    if-nez v15, :cond_d

    .line 789
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v15}, Lcom/android/mms/ui/MmsRichContainer;->access$700(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v15

    const/16 v16, 0x35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    move/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v15 .. v19}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 790
    invoke-virtual {v11}, Landroid/os/Message;->sendToTarget()V

    .line 791
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 794
    :cond_1f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v15}, Lcom/android/mms/ui/MmsRichContainer;->access$700(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v15

    const/16 v16, 0x35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    move/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v15 .. v19}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 796
    invoke-virtual {v11}, Landroid/os/Message;->sendToTarget()V

    .line 797
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 803
    :pswitch_d
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    const/16 v16, 0xd

    move/from16 v0, v16

    if-ne v15, v0, :cond_20

    .line 804
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v15}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v3

    .line 805
    .local v3, ed:Landroid/widget/EditText;
    invoke-virtual {v3}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v15

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_d

    invoke-virtual {v3}, Landroid/widget/EditText;->hasSelection()Z

    move-result v15

    if-nez v15, :cond_d

    .line 806
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v15}, Lcom/android/mms/ui/MmsRichContainer;->access$700(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v15

    const/16 v16, 0x34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    move/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v15 .. v19}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 808
    invoke-virtual {v11}, Landroid/os/Message;->sendToTarget()V

    .line 809
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 812
    .end local v3           #ed:Landroid/widget/EditText;
    :cond_20
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v15}, Lcom/android/mms/ui/MmsRichContainer;->access$700(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v15

    const/16 v16, 0x34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    move/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v15 .. v19}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 814
    invoke-virtual {v11}, Landroid/os/Message;->sendToTarget()V

    .line 815
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 838
    .end local v11           #msg:Landroid/os/Message;
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v15}, Lcom/android/mms/ui/MmsRichContainer;->access$700(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v15

    const/16 v16, 0x3

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    move/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v15 .. v19}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 840
    .local v10, mesg:Landroid/os/Message;
    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 845
    .end local v10           #mesg:Landroid/os/Message;
    :pswitch_f
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isAnimationEnable()Z

    move-result v15

    if-eqz v15, :cond_21

    .line 846
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    move/from16 v17, v0

    #calls: Lcom/android/mms/ui/MmsRichContainer;->setDeleteAnimation(II)V
    invoke-static/range {v15 .. v17}, Lcom/android/mms/ui/MmsRichContainer;->access$800(Lcom/android/mms/ui/MmsRichContainer;II)V

    goto/16 :goto_1

    .line 848
    :cond_21
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v15}, Lcom/android/mms/ui/MmsRichContainer;->access$700(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v15

    if-eqz v15, :cond_e

    .line 849
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v15}, Lcom/android/mms/ui/MmsRichContainer;->access$700(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v15

    const/16 v16, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    move/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v15 .. v19}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 851
    .restart local v11       #msg:Landroid/os/Message;
    invoke-virtual {v11}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 857
    .end local v11           #msg:Landroid/os/Message;
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v15}, Lcom/android/mms/ui/MmsRichContainer;->access$700(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v15

    if-eqz v15, :cond_e

    .line 858
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v15}, Lcom/android/mms/ui/MmsRichContainer;->access$700(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v15

    const/16 v16, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    move/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v15 .. v19}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 860
    .restart local v11       #msg:Landroid/os/Message;
    invoke-virtual {v11}, Landroid/os/Message;->sendToTarget()V

    .line 862
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    #calls: Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;
    invoke-static/range {v15 .. v16}, Lcom/android/mms/ui/MmsRichContainer;->access$500(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v8

    .line 863
    .restart local v8       #mediaView:Landroid/widget/RelativeLayout;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v15, v15, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_e

    if-eqz v8, :cond_e

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v15

    if-nez v15, :cond_e

    .line 864
    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->requestFocus()Z

    goto/16 :goto_1

    .line 870
    .end local v8           #mediaView:Landroid/widget/RelativeLayout;
    .end local v11           #msg:Landroid/os/Message;
    :pswitch_11
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v15

    if-eqz v15, :cond_23

    .line 871
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v15}, Lcom/android/mms/ui/MmsRichContainer;->access$000(Lcom/android/mms/ui/MmsRichContainer;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/mms/data/WorkingMessage;->hasLocationAttachment()Z

    move-result v15

    if-eqz v15, :cond_23

    .line 872
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v15}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v15

    if-nez v15, :cond_22

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v15}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v15

    if-nez v15, :cond_22

    .line 873
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    invoke-virtual/range {v16 .. v17}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    #calls: Lcom/android/mms/ui/MmsRichContainer;->getFocussedLocationView(Landroid/view/View;)Landroid/widget/RelativeLayout;
    invoke-static/range {v15 .. v16}, Lcom/android/mms/ui/MmsRichContainer;->access$600(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v6

    .line 874
    .restart local v6       #locationView:Landroid/widget/RelativeLayout;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v15, v15, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-nez v15, :cond_e

    if-eqz v6, :cond_e

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v15

    if-nez v15, :cond_e

    .line 875
    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->requestFocus()Z

    goto/16 :goto_1

    .line 880
    .end local v6           #locationView:Landroid/widget/RelativeLayout;
    :cond_22
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 886
    :cond_23
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v15}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v15

    if-nez v15, :cond_27

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v15}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v15

    if-nez v15, :cond_27

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    if-eqz v15, :cond_27

    .line 889
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    invoke-virtual/range {v16 .. v17}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v4

    .line 890
    .local v4, edit:Landroid/widget/EditText;
    const/4 v13, 0x0

    .line 892
    .local v13, textLength:I
    if-eqz v4, :cond_24

    .line 893
    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v13

    .line 896
    :cond_24
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-lt v15, v0, :cond_25

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    invoke-virtual/range {v16 .. v17}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    const/16 v17, 0x1

    #calls: Lcom/android/mms/ui/MmsRichContainer;->pageHasContents(Landroid/view/View;Z)Z
    invoke-static/range {v15 .. v17}, Lcom/android/mms/ui/MmsRichContainer;->access$900(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;Z)Z

    move-result v15

    if-nez v15, :cond_25

    if-gtz v13, :cond_25

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v15}, Lcom/android/mms/ui/MmsRichContainer;->access$700(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v15

    if-eqz v15, :cond_25

    .line 897
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    invoke-virtual/range {v16 .. v17}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/android/mms/ui/MmsRichContainer;->removeView(Landroid/view/View;)V

    .line 898
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v15}, Lcom/android/mms/ui/MmsRichContainer;->access$700(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v15

    const/16 v16, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    move/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v15 .. v19}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 899
    .restart local v11       #msg:Landroid/os/Message;
    invoke-virtual {v11}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 903
    .end local v11           #msg:Landroid/os/Message;
    :cond_25
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    #calls: Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;
    invoke-static/range {v15 .. v16}, Lcom/android/mms/ui/MmsRichContainer;->access$500(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v9

    .line 904
    .local v9, mediaViewPort:Landroid/widget/RelativeLayout;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v15, v15, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-nez v15, :cond_26

    if-eqz v9, :cond_26

    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v15

    if-nez v15, :cond_26

    .line 905
    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->requestFocus()Z

    goto/16 :goto_1

    .line 908
    :cond_26
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    if-lez v15, :cond_e

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v15}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/EditText;->length()I

    move-result v15

    if-nez v15, :cond_e

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    #calls: Lcom/android/mms/ui/MmsRichContainer;->getFocusedAudioView(Landroid/view/View;)Landroid/widget/LinearLayout;
    invoke-static/range {v15 .. v16}, Lcom/android/mms/ui/MmsRichContainer;->access$400(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v15

    if-eqz v15, :cond_e

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    #calls: Lcom/android/mms/ui/MmsRichContainer;->getFocusedAudioView(Landroid/view/View;)Landroid/widget/LinearLayout;
    invoke-static/range {v15 .. v16}, Lcom/android/mms/ui/MmsRichContainer;->access$400(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-ne v15, v0, :cond_e

    .line 910
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v15}, Lcom/android/mms/ui/MmsRichContainer;->access$700(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v15

    if-eqz v15, :cond_e

    .line 911
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    const/16 v16, 0x1

    #setter for: Lcom/android/mms/ui/MmsRichContainer;->isNeedToBlockTheKey:Z
    invoke-static/range {v15 .. v16}, Lcom/android/mms/ui/MmsRichContainer;->access$202(Lcom/android/mms/ui/MmsRichContainer;Z)Z

    .line 912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup;

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/android/mms/ui/MmsRichContainer;->setLastElementFocus(Landroid/view/ViewGroup;)V

    .line 913
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/android/mms/ui/MmsRichContainer;->removeView(Landroid/view/View;)V

    .line 914
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v15}, Lcom/android/mms/ui/MmsRichContainer;->access$700(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v15

    const/16 v16, 0x5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    move/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v15 .. v19}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 915
    .restart local v11       #msg:Landroid/os/Message;
    invoke-virtual {v11}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 920
    .end local v4           #edit:Landroid/widget/EditText;
    .end local v9           #mediaViewPort:Landroid/widget/RelativeLayout;
    .end local v11           #msg:Landroid/os/Message;
    .end local v13           #textLength:I
    :cond_27
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 925
    :cond_28
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mType:I

    const/16 v16, 0xd

    move/from16 v0, v16

    if-eq v15, v0, :cond_2c

    .line 926
    const/4 v15, 0x4

    move/from16 v0, p2

    if-eq v0, v15, :cond_2b

    const/16 v15, 0x52

    move/from16 v0, p2

    if-eq v0, v15, :cond_2b

    const/16 v15, 0xee

    move/from16 v0, p2

    if-eq v0, v15, :cond_2b

    .line 930
    const-class v15, Landroid/view/WindowManagerGlobal;

    const-string v16, "getWindowSession"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-class v19, Landroid/os/Looper;

    aput-object v19, v17, v18

    invoke-static/range {v15 .. v17}, Lcom/android/mms/util/MethodReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 931
    .local v5, getWindowSession:Ljava/lang/reflect/Method;
    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v18, v0

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/MmsRichContainer;->access$1000(Lcom/android/mms/ui/MmsRichContainer;)Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-static {v15, v5, v0}, Lcom/android/mms/util/MethodReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/IWindowSession;

    .line 932
    .local v12, sWindowSession:Landroid/view/IWindowSession;
    if-nez v12, :cond_29

    .line 933
    const-class v15, Landroid/view/WindowManagerGlobal;

    const-string v16, "getWindowSession"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    invoke-static/range {v15 .. v17}, Lcom/android/mms/util/MethodReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 934
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v15, v5, v0}, Lcom/android/mms/util/MethodReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .end local v12           #sWindowSession:Landroid/view/IWindowSession;
    check-cast v12, Landroid/view/IWindowSession;

    .line 939
    .restart local v12       #sWindowSession:Landroid/view/IWindowSession;
    :cond_29
    if-eqz v12, :cond_2a

    .line 940
    const/4 v15, 0x1

    :try_start_0
    invoke-interface {v12, v15}, Landroid/view/IWindowSession;->setInTouchMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 945
    :cond_2a
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->mSlideIndex:I

    move/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    .line 946
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v15}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 950
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 941
    :catch_0
    move-exception v2

    .line 942
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4

    .line 948
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v5           #getWindowSession:Ljava/lang/reflect/Method;
    .end local v12           #sWindowSession:Landroid/view/IWindowSession;
    :cond_2b
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 953
    :cond_2c
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 623
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 669
    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_4
        :pswitch_8
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 836
    :pswitch_data_2
    .packed-switch 0xa
        :pswitch_f
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_e
    .end packed-switch

    .line 676
    :pswitch_data_3
    .packed-switch 0xa
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 752
    :pswitch_data_4
    .packed-switch 0xa
        :pswitch_b
        :pswitch_b
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
