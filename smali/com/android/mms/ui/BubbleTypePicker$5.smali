.class Lcom/android/mms/ui/BubbleTypePicker$5;
.super Ljava/lang/Object;
.source "BubbleTypePicker.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BubbleTypePicker;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/mms/ui/BubbleTypePicker$5;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iput p2, p0, Lcom/android/mms/ui/BubbleTypePicker$5;->val$type:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 179
    if-eqz p2, :cond_3

    .line 180
    iget v2, p0, Lcom/android/mms/ui/BubbleTypePicker$5;->val$type:I

    if-eq v2, v5, :cond_0

    iget v2, p0, Lcom/android/mms/ui/BubbleTypePicker$5;->val$type:I

    if-nez v2, :cond_4

    .line 181
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/BubbleTypePicker$5;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iput p3, v2, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleSentIndex:I

    .line 186
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/BubbleTypePicker$5;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    #getter for: Lcom/android/mms/ui/BubbleTypePicker;->mImageAdapter:[Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/BubbleTypePicker;->access$200(Lcom/android/mms/ui/BubbleTypePicker;)[Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/ui/BubbleTypePicker$5;->val$type:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->notifyDataSetChanged()V

    .line 189
    const/4 v0, 0x0

    .line 191
    .local v0, temp:Landroid/widget/HorizontalScrollView;
    const/4 v1, 0x0

    .line 192
    .local v1, temp1:Landroid/widget/ScrollView;
    iget-object v2, p0, Lcom/android/mms/ui/BubbleTypePicker$5;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget-boolean v2, v2, Lcom/android/mms/ui/MessageBubbleActivity;->mIsLandscape:Z

    if-eqz v2, :cond_7

    .line 194
    iget v2, p0, Lcom/android/mms/ui/BubbleTypePicker$5;->val$type:I

    if-ne v2, v5, :cond_5

    .line 195
    iget-object v2, p0, Lcom/android/mms/ui/BubbleTypePicker$5;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget-object v1, v2, Lcom/android/mms/ui/MessageBubbleActivity;->mSentScrollVertical:Landroid/widget/ScrollView;

    .line 199
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 200
    if-gt p3, v4, :cond_6

    .line 201
    invoke-virtual {v1, v6, v6}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 229
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/android/mms/ui/BubbleTypePicker$5;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget-object v3, p0, Lcom/android/mms/ui/BubbleTypePicker$5;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget v3, v3, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleSentIndex:I

    iget-object v4, p0, Lcom/android/mms/ui/BubbleTypePicker$5;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget v4, v4, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleReceiveIndex:I

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/ui/BubbleTypePicker;->setBubbleImage(II)V

    .line 231
    .end local v0           #temp:Landroid/widget/HorizontalScrollView;
    .end local v1           #temp1:Landroid/widget/ScrollView;
    :cond_3
    return-void

    .line 183
    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/BubbleTypePicker$5;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iput p3, v2, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleReceiveIndex:I

    goto :goto_0

    .line 196
    .restart local v0       #temp:Landroid/widget/HorizontalScrollView;
    .restart local v1       #temp1:Landroid/widget/ScrollView;
    :cond_5
    iget v2, p0, Lcom/android/mms/ui/BubbleTypePicker$5;->val$type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 197
    iget-object v2, p0, Lcom/android/mms/ui/BubbleTypePicker$5;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget-object v1, v2, Lcom/android/mms/ui/MessageBubbleActivity;->mReceiveScrollVertical:Landroid/widget/ScrollView;

    goto :goto_1

    .line 203
    :cond_6
    iget-object v2, p0, Lcom/android/mms/ui/BubbleTypePicker$5;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget-object v3, p0, Lcom/android/mms/ui/BubbleTypePicker$5;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget-object v3, v3, Lcom/android/mms/ui/MessageBubbleActivity;->mBackgroundVertical:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    sget-object v4, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_SEND_STYLE_ID:[I

    array-length v4, v4

    iget-object v5, p0, Lcom/android/mms/ui/BubbleTypePicker$5;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget v5, v5, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_GRID_HEIGHT:I

    invoke-virtual {v2, v3, v4, p3, v5}, Lcom/android/mms/ui/BubbleTypePicker;->calculateScrollPosition(IIII)I

    move-result v2

    invoke-virtual {v1, v6, v2}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto :goto_2

    .line 211
    :cond_7
    iget v2, p0, Lcom/android/mms/ui/BubbleTypePicker$5;->val$type:I

    if-nez v2, :cond_9

    .line 212
    iget-object v2, p0, Lcom/android/mms/ui/BubbleTypePicker$5;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget-object v0, v2, Lcom/android/mms/ui/MessageBubbleActivity;->mSentScroll:Landroid/widget/HorizontalScrollView;

    .line 216
    :cond_8
    :goto_3
    if-eqz v0, :cond_2

    .line 217
    if-gt p3, v4, :cond_a

    .line 218
    invoke-virtual {v0, v6, v6}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_2

    .line 213
    :cond_9
    iget v2, p0, Lcom/android/mms/ui/BubbleTypePicker$5;->val$type:I

    if-ne v2, v4, :cond_8

    .line 214
    iget-object v2, p0, Lcom/android/mms/ui/BubbleTypePicker$5;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget-object v0, v2, Lcom/android/mms/ui/MessageBubbleActivity;->mReceiveScroll:Landroid/widget/HorizontalScrollView;

    goto :goto_3

    .line 220
    :cond_a
    iget-object v2, p0, Lcom/android/mms/ui/BubbleTypePicker$5;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v3

    sget-object v4, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_SEND_STYLE_ID:[I

    array-length v4, v4

    iget-object v5, p0, Lcom/android/mms/ui/BubbleTypePicker$5;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget v5, v5, Lcom/android/mms/ui/MessageBubbleActivity;->BUBBLE_GRID_WIDTH:I

    invoke-virtual {v2, v3, v4, p3, v5}, Lcom/android/mms/ui/BubbleTypePicker;->calculateScrollPosition(IIII)I

    move-result v2

    invoke-virtual {v0, v2, v6}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_2
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 234
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget v0, p0, Lcom/android/mms/ui/BubbleTypePicker$5;->val$type:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/mms/ui/BubbleTypePicker$5;->val$type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/BubbleTypePicker$5;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    #calls: Lcom/android/mms/ui/BubbleTypePicker;->setScrollPosition()V
    invoke-static {v0}, Lcom/android/mms/ui/BubbleTypePicker;->access$300(Lcom/android/mms/ui/BubbleTypePicker;)V

    .line 238
    :cond_1
    :goto_0
    return-void

    .line 236
    :cond_2
    iget v0, p0, Lcom/android/mms/ui/BubbleTypePicker$5;->val$type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/android/mms/ui/BubbleTypePicker$5;->val$type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 237
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/BubbleTypePicker$5;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    #calls: Lcom/android/mms/ui/BubbleTypePicker;->setScrollPositionVertical()V
    invoke-static {v0}, Lcom/android/mms/ui/BubbleTypePicker;->access$400(Lcom/android/mms/ui/BubbleTypePicker;)V

    goto :goto_0
.end method
