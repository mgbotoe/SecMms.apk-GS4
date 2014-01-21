.class Lcom/android/mms/ui/BubbleTypePicker$7;
.super Ljava/lang/Object;
.source "BubbleTypePicker.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/BubbleTypePicker;->makeBubbleVertical(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/BubbleTypePicker;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BubbleTypePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/mms/ui/BubbleTypePicker$7;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "keyCode"
    .parameter "keyEvent"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 257
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_0

    .line 258
    sparse-switch p2, :sswitch_data_0

    .line 296
    :cond_0
    :goto_0
    return v2

    .line 260
    :sswitch_0
    iget-object v4, p0, Lcom/android/mms/ui/BubbleTypePicker$7;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    invoke-virtual {v4}, Lcom/android/mms/ui/BubbleTypePicker;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/MmsConfig;->isFolderModel(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/BubbleTypePicker$7;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    #getter for: Lcom/android/mms/ui/BubbleTypePicker;->mMenuSave:Landroid/view/MenuItem;
    invoke-static {v4}, Lcom/android/mms/ui/BubbleTypePicker;->access$500(Lcom/android/mms/ui/BubbleTypePicker;)Landroid/view/MenuItem;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/BubbleTypePicker$7;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    #getter for: Lcom/android/mms/ui/BubbleTypePicker;->mMenuSave:Landroid/view/MenuItem;
    invoke-static {v4}, Lcom/android/mms/ui/BubbleTypePicker;->access$500(Lcom/android/mms/ui/BubbleTypePicker;)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 261
    iget-object v2, p0, Lcom/android/mms/ui/BubbleTypePicker$7;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    invoke-virtual {v2}, Lcom/android/mms/ui/BubbleTypePicker;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/view/View;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 263
    .local v0, focusables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 264
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-eqz v2, :cond_1

    .line 265
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 263
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 268
    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/mms/ui/BubbleTypePicker$7;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    const v5, 0x7f0c00dd

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/BubbleTypePicker;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 269
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    :cond_3
    move v2, v3

    .line 274
    goto/16 :goto_0

    .line 278
    .end local v0           #focusables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v1           #i:I
    :sswitch_1
    iget-object v4, p0, Lcom/android/mms/ui/BubbleTypePicker$7;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget-object v4, v4, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Sent:Landroid/widget/GridView;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/mms/ui/BubbleTypePicker$7;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget-object v4, v4, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Sent:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/mms/ui/BubbleTypePicker$7;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget v4, v4, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleSentIndex:I

    if-eqz v4, :cond_5

    :cond_4
    iget-object v4, p0, Lcom/android/mms/ui/BubbleTypePicker$7;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget-object v4, v4, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Reveice:Landroid/widget/GridView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/BubbleTypePicker$7;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget-object v4, v4, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Reveice:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/BubbleTypePicker$7;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget v4, v4, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleReceiveIndex:I

    if-nez v4, :cond_0

    :cond_5
    move v2, v3

    .line 280
    goto/16 :goto_0

    .line 283
    :sswitch_2
    iget-object v4, p0, Lcom/android/mms/ui/BubbleTypePicker$7;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget-object v4, v4, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Sent:Landroid/widget/GridView;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/mms/ui/BubbleTypePicker$7;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget-object v4, v4, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Sent:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/mms/ui/BubbleTypePicker$7;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget v4, v4, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleSentIndex:I

    sget-object v5, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_SEND_STYLE_ID:[I

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-eq v4, v5, :cond_7

    :cond_6
    iget-object v4, p0, Lcom/android/mms/ui/BubbleTypePicker$7;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget-object v4, v4, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Reveice:Landroid/widget/GridView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/BubbleTypePicker$7;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget-object v4, v4, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_Reveice:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/BubbleTypePicker$7;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget v4, v4, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleReceiveIndex:I

    sget-object v5, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_RECEIVE_STYLE_ID:[I

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_0

    :cond_7
    move v2, v3

    .line 285
    goto/16 :goto_0

    .line 288
    :sswitch_3
    iget-object v4, p0, Lcom/android/mms/ui/BubbleTypePicker$7;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget-object v4, v4, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Sent:Landroid/widget/GridView;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/mms/ui/BubbleTypePicker$7;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget-object v4, v4, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Sent:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/mms/ui/BubbleTypePicker$7;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget v4, v4, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleSentIndex:I

    sget-object v5, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_SEND_STYLE_ID:[I

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-eq v4, v5, :cond_9

    :cond_8
    iget-object v4, p0, Lcom/android/mms/ui/BubbleTypePicker$7;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget-object v4, v4, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Receice:Landroid/widget/GridView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/BubbleTypePicker$7;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget-object v4, v4, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_Receice:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/BubbleTypePicker$7;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget v4, v4, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleReceiveIndex:I

    sget-object v5, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_RECEIVE_STYLE_ID:[I

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_0

    :cond_9
    move v2, v3

    .line 290
    goto/16 :goto_0

    .line 258
    nop

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_3
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x42 -> :sswitch_0
    .end sparse-switch
.end method
