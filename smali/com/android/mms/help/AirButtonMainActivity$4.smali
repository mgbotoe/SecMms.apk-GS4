.class Lcom/android/mms/help/AirButtonMainActivity$4;
.super Ljava/lang/Object;
.source "AirButtonMainActivity.java"

# interfaces
.implements Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/help/AirButtonMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/help/AirButtonMainActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/help/AirButtonMainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 715
    iput-object p1, p0, Lcom/android/mms/help/AirButtonMainActivity$4;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/view/View;ILjava/lang/Object;)V
    .locals 11
    .parameter "view"
    .parameter "itemIndex"
    .parameter "data"

    .prologue
    const-wide/16 v2, 0x12c

    const v10, 0x7f0c0442

    const/4 v9, -0x2

    const/4 v5, 0x0

    .line 719
    if-gez p2, :cond_0

    .line 817
    :goto_0
    return-void

    .line 722
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v4, 0x7f0b00b2

    if-eq v1, v4, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v4, 0x7f0b00d1

    if-ne v1, v4, :cond_2

    .line 723
    :cond_1
    const/4 v8, 0x0

    .line 724
    .local v8, recipient:Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 740
    :goto_1
    iget-object v1, p0, Lcom/android/mms/help/AirButtonMainActivity$4;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    iget-object v1, v1, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1, v8}, Lcom/android/mms/ui/RecipientsEditor;->setText(Ljava/lang/CharSequence;)V

    .line 741
    iget-object v1, p0, Lcom/android/mms/help/AirButtonMainActivity$4;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    iget-object v1, v1, Lcom/android/mms/help/AirButtonMainActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v4, p0, Lcom/android/mms/help/AirButtonMainActivity$4;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    #getter for: Lcom/android/mms/help/AirButtonMainActivity;->mTextColor:I
    invoke-static {v4}, Lcom/android/mms/help/AirButtonMainActivity;->access$200(Lcom/android/mms/help/AirButtonMainActivity;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/mms/ui/RecipientsEditor;->setTextColor(I)V

    .line 779
    .end local v8           #recipient:Ljava/lang/String;
    :goto_2
    iget-object v1, p0, Lcom/android/mms/help/AirButtonMainActivity$4;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    iget-object v1, v1, Lcom/android/mms/help/AirButtonMainActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    invoke-virtual {v1}, Lcom/android/mms/help/TwHelpAnimatedDialog;->show()V

    .line 780
    iget-object v1, p0, Lcom/android/mms/help/AirButtonMainActivity$4;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    #getter for: Lcom/android/mms/help/AirButtonMainActivity;->helpguide2:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/android/mms/help/AirButtonMainActivity;->access$100(Lcom/android/mms/help/AirButtonMainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 781
    iget-object v1, p0, Lcom/android/mms/help/AirButtonMainActivity$4;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    #getter for: Lcom/android/mms/help/AirButtonMainActivity;->infoCompleteTutorial:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/mms/help/AirButtonMainActivity;->access$600(Lcom/android/mms/help/AirButtonMainActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 782
    sput-boolean v5, Lcom/android/mms/help/AirButtonMainActivity;->helpAttachIntent:Z

    .line 783
    sput-boolean v5, Lcom/android/mms/help/AirButtonMainActivity;->helpContactIntent:Z

    .line 814
    new-instance v0, Lcom/android/mms/help/AirButtonMainActivity$4$1AirbuttonStartTimer;

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/help/AirButtonMainActivity$4$1AirbuttonStartTimer;-><init>(Lcom/android/mms/help/AirButtonMainActivity$4;JJ)V

    .line 815
    .local v0, mAirbuttonStartTimer:Lcom/android/mms/help/AirButtonMainActivity$4$1AirbuttonStartTimer;
    invoke-virtual {v0, p1}, Lcom/android/mms/help/AirButtonMainActivity$4$1AirbuttonStartTimer;->setView(Landroid/view/View;)V

    .line 816
    invoke-virtual {v0}, Lcom/android/mms/help/AirButtonMainActivity$4$1AirbuttonStartTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_0

    .line 726
    .end local v0           #mAirbuttonStartTimer:Lcom/android/mms/help/AirButtonMainActivity$4$1AirbuttonStartTimer;
    .restart local v8       #recipient:Ljava/lang/String;
    :pswitch_0
    iget-object v1, p0, Lcom/android/mms/help/AirButtonMainActivity$4;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    invoke-virtual {v1}, Lcom/android/mms/help/AirButtonMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0c0441

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 727
    goto :goto_1

    .line 729
    :pswitch_1
    iget-object v1, p0, Lcom/android/mms/help/AirButtonMainActivity$4;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    invoke-virtual {v1}, Lcom/android/mms/help/AirButtonMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 730
    goto :goto_1

    .line 732
    :pswitch_2
    iget-object v1, p0, Lcom/android/mms/help/AirButtonMainActivity$4;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    invoke-virtual {v1}, Lcom/android/mms/help/AirButtonMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 733
    goto :goto_1

    .line 735
    :pswitch_3
    iget-object v1, p0, Lcom/android/mms/help/AirButtonMainActivity$4;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    invoke-virtual {v1}, Lcom/android/mms/help/AirButtonMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0c0443

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 736
    goto :goto_1

    .line 743
    .end local v8           #recipient:Ljava/lang/String;
    :cond_2
    const/4 v6, 0x0

    .line 744
    .local v6, bm:Landroid/graphics/Bitmap;
    packed-switch p2, :pswitch_data_1

    .line 772
    :goto_3
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 773
    .local v7, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/mms/help/AirButtonMainActivity$4;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    #getter for: Lcom/android/mms/help/AirButtonMainActivity;->mMediaView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/mms/help/AirButtonMainActivity;->access$300(Lcom/android/mms/help/AirButtonMainActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 774
    iget-object v1, p0, Lcom/android/mms/help/AirButtonMainActivity$4;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    #getter for: Lcom/android/mms/help/AirButtonMainActivity;->mMediaView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/mms/help/AirButtonMainActivity;->access$300(Lcom/android/mms/help/AirButtonMainActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 775
    iget-object v1, p0, Lcom/android/mms/help/AirButtonMainActivity$4;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    #getter for: Lcom/android/mms/help/AirButtonMainActivity;->mediaViewPort:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/android/mms/help/AirButtonMainActivity;->access$400(Lcom/android/mms/help/AirButtonMainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 776
    iget-object v1, p0, Lcom/android/mms/help/AirButtonMainActivity$4;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    iget-object v1, v1, Lcom/android/mms/help/AirButtonMainActivity;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v4, p0, Lcom/android/mms/help/AirButtonMainActivity$4;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    #getter for: Lcom/android/mms/help/AirButtonMainActivity;->mView:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/mms/help/AirButtonMainActivity;->access$500(Lcom/android/mms/help/AirButtonMainActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 746
    .end local v7           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :pswitch_4
    iget-object v1, p0, Lcom/android/mms/help/AirButtonMainActivity$4;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    invoke-virtual {v1}, Lcom/android/mms/help/AirButtonMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0200d9

    invoke-static {v1, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 747
    goto :goto_3

    .line 749
    :pswitch_5
    iget-object v1, p0, Lcom/android/mms/help/AirButtonMainActivity$4;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    invoke-virtual {v1}, Lcom/android/mms/help/AirButtonMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0200da

    invoke-static {v1, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 750
    goto :goto_3

    .line 752
    :pswitch_6
    iget-object v1, p0, Lcom/android/mms/help/AirButtonMainActivity$4;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    invoke-virtual {v1}, Lcom/android/mms/help/AirButtonMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0200db

    invoke-static {v1, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 753
    goto :goto_3

    .line 755
    :pswitch_7
    iget-object v1, p0, Lcom/android/mms/help/AirButtonMainActivity$4;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    invoke-virtual {v1}, Lcom/android/mms/help/AirButtonMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0200dc

    invoke-static {v1, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 756
    goto :goto_3

    .line 758
    :pswitch_8
    iget-object v1, p0, Lcom/android/mms/help/AirButtonMainActivity$4;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    invoke-virtual {v1}, Lcom/android/mms/help/AirButtonMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0200dd

    invoke-static {v1, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 759
    goto :goto_3

    .line 761
    :pswitch_9
    iget-object v1, p0, Lcom/android/mms/help/AirButtonMainActivity$4;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    invoke-virtual {v1}, Lcom/android/mms/help/AirButtonMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0200de

    invoke-static {v1, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 762
    goto/16 :goto_3

    .line 764
    :pswitch_a
    iget-object v1, p0, Lcom/android/mms/help/AirButtonMainActivity$4;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    invoke-virtual {v1}, Lcom/android/mms/help/AirButtonMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0200df

    invoke-static {v1, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 765
    goto/16 :goto_3

    .line 767
    :pswitch_b
    iget-object v1, p0, Lcom/android/mms/help/AirButtonMainActivity$4;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    invoke-virtual {v1}, Lcom/android/mms/help/AirButtonMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0200e0

    invoke-static {v1, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 768
    goto/16 :goto_3

    .line 724
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 744
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
