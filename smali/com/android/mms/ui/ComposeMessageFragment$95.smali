.class Lcom/android/mms/ui/ComposeMessageFragment$95;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/widget/HoverPopupWindow$HoverPopupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->setAttachmentList(Lcom/android/mms/model/SlideshowModel;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;

.field final synthetic val$max_width:I

.field final synthetic val$min_width:I

.field final synthetic val$rawAttachments:Ljava/util/ArrayList;

.field final synthetic val$rawAttachments_size:I

.field final synthetic val$restrictedrawAttachments:Ljava/util/ArrayList;

.field final synthetic val$vAttachHoverInfo:Landroid/view/View;

.field final synthetic val$vAttachmentHoverfooter:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/util/ArrayList;Landroid/view/View;ILandroid/view/View;Ljava/util/ArrayList;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8159
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$95;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$95;->val$restrictedrawAttachments:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/mms/ui/ComposeMessageFragment$95;->val$vAttachHoverInfo:Landroid/view/View;

    iput p4, p0, Lcom/android/mms/ui/ComposeMessageFragment$95;->val$rawAttachments_size:I

    iput-object p5, p0, Lcom/android/mms/ui/ComposeMessageFragment$95;->val$vAttachmentHoverfooter:Landroid/view/View;

    iput-object p6, p0, Lcom/android/mms/ui/ComposeMessageFragment$95;->val$rawAttachments:Ljava/util/ArrayList;

    iput p7, p0, Lcom/android/mms/ui/ComposeMessageFragment$95;->val$min_width:I

    iput p8, p0, Lcom/android/mms/ui/ComposeMessageFragment$95;->val$max_width:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetContentView(Landroid/view/View;Landroid/widget/HoverPopupWindow;)Z
    .locals 18
    .parameter "parentView"
    .parameter "hpw"

    .prologue
    .line 8162
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ComposeMessageFragment$95;->val$restrictedrawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x5

    if-le v12, v13, :cond_0

    .line 8163
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ComposeMessageFragment$95;->val$restrictedrawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v4, v12, -0x1

    .local v4, i:I
    :goto_0
    const/4 v12, 0x5

    if-lt v4, v12, :cond_0

    .line 8164
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ComposeMessageFragment$95;->val$restrictedrawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 8163
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 8167
    .end local v4           #i:I
    :cond_0
    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentHoverListAdapter;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ComposeMessageFragment$95;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$95;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v13, v13, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v14, 0x7f040024

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/ComposeMessageFragment$95;->val$restrictedrawAttachments:Ljava/util/ArrayList;

    invoke-direct {v1, v12, v13, v14, v15}, Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentHoverListAdapter;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 8169
    .local v1, arrayAdapter:Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentHoverListAdapter;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ComposeMessageFragment$95;->val$vAttachHoverInfo:Landroid/view/View;

    const v13, 0x7f0b0032

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ListView;

    invoke-virtual {v12, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 8171
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/mms/ui/ComposeMessageFragment$95;->val$rawAttachments_size:I

    const/4 v13, 0x1

    if-le v12, v13, :cond_3

    .line 8172
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ComposeMessageFragment$95;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListText:Landroid/widget/TextView;
    invoke-static {v12}, Lcom/android/mms/ui/ComposeMessageFragment;->access$6400(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    .line 8177
    :goto_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/mms/ui/ComposeMessageFragment$95;->val$rawAttachments_size:I

    const/4 v13, 0x5

    if-le v12, v13, :cond_1

    .line 8178
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ComposeMessageFragment$95;->val$vAttachHoverInfo:Landroid/view/View;

    const v13, 0x7f0b0032

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ListView;

    invoke-virtual {v12}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v12

    if-nez v12, :cond_1

    .line 8179
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ComposeMessageFragment$95;->val$vAttachHoverInfo:Landroid/view/View;

    const v13, 0x7f0b0032

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$95;->val$vAttachmentHoverfooter:Landroid/view/View;

    invoke-virtual {v12, v13}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 8180
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ComposeMessageFragment$95;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v12}, Lcom/android/mms/ui/ComposeMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d0003

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/mms/ui/ComposeMessageFragment$95;->val$rawAttachments_size:I

    add-int/lit8 v14, v14, -0x3

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, ""

    aput-object v17, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$95;->val$rawAttachments_size:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x3

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 8181
    .local v2, attachmentstr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ComposeMessageFragment$95;->val$vAttachHoverInfo:Landroid/view/View;

    const v13, 0x7f0b00e0

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8185
    .end local v2           #attachmentstr:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    .restart local v4       #i:I
    const/4 v6, 0x0

    .local v6, maxlength:I
    const/4 v5, 0x0

    .line 8186
    .local v5, maxitem:I
    const/4 v9, 0x0

    .line 8188
    .local v9, restricted_size:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ComposeMessageFragment$95;->val$restrictedrawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x5

    if-le v12, v13, :cond_4

    const/4 v9, 0x5

    .line 8191
    :goto_2
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v9, :cond_5

    .line 8192
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ComposeMessageFragment$95;->val$rawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {v12}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v3

    .line 8193
    .local v3, fileName:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    if-le v12, v6, :cond_2

    .line 8194
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    .line 8195
    move v5, v4

    .line 8191
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 8174
    .end local v3           #fileName:Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #maxitem:I
    .end local v6           #maxlength:I
    .end local v9           #restricted_size:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ComposeMessageFragment$95;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListText:Landroid/widget/TextView;
    invoke-static {v12}, Lcom/android/mms/ui/ComposeMessageFragment;->access$6400(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    goto/16 :goto_1

    .line 8189
    .restart local v4       #i:I
    .restart local v5       #maxitem:I
    .restart local v6       #maxlength:I
    .restart local v9       #restricted_size:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ComposeMessageFragment$95;->val$restrictedrawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v9

    goto :goto_2

    .line 8199
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ComposeMessageFragment$95;->val$rawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {v12}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v7

    .line 8200
    .local v7, maxstring:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 8201
    .local v10, tempName:Ljava/lang/StringBuffer;
    const-string v12, ".CDW "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8202
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 8204
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ComposeMessageFragment$95;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListText:Landroid/widget/TextView;
    invoke-static {v12}, Lcom/android/mms/ui/ComposeMessageFragment;->access$6400(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$95;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListText:Landroid/widget/TextView;
    invoke-static {v13}, Lcom/android/mms/ui/ComposeMessageFragment;->access$6400(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$95;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListText:Landroid/widget/TextView;
    invoke-static {v13}, Lcom/android/mms/ui/ComposeMessageFragment;->access$6400(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment$95;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListText:Landroid/widget/TextView;
    invoke-static {v13}, Lcom/android/mms/ui/ComposeMessageFragment;->access$6400(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->getPaddingStart()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v12, v13

    float-to-int v11, v12

    .line 8206
    .local v11, width:I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/mms/ui/ComposeMessageFragment$95;->val$rawAttachments_size:I

    const/4 v13, 0x1

    if-le v12, v13, :cond_8

    .line 8207
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/mms/ui/ComposeMessageFragment$95;->val$min_width:I

    if-ge v11, v12, :cond_6

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/mms/ui/ComposeMessageFragment$95;->val$min_width:I

    .line 8208
    :cond_6
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/mms/ui/ComposeMessageFragment$95;->val$max_width:I

    if-le v11, v12, :cond_7

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/mms/ui/ComposeMessageFragment$95;->val$max_width:I

    .line 8209
    :cond_7
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v12, -0x2

    invoke-direct {v8, v11, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 8210
    .local v8, p:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ComposeMessageFragment$95;->val$vAttachHoverInfo:Landroid/view/View;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v8}, Landroid/widget/HoverPopupWindow;->setContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8214
    .end local v8           #p:Landroid/view/ViewGroup$LayoutParams;
    :goto_4
    const/4 v12, 0x1

    return v12

    .line 8212
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ComposeMessageFragment$95;->val$vAttachHoverInfo:Landroid/view/View;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/widget/HoverPopupWindow;->setContent(Landroid/view/View;)V

    goto :goto_4
.end method
