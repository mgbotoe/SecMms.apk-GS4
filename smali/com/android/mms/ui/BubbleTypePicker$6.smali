.class Lcom/android/mms/ui/BubbleTypePicker$6;
.super Ljava/lang/Object;
.source "BubbleTypePicker.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 240
    iput-object p1, p0, Lcom/android/mms/ui/BubbleTypePicker$6;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iput p2, p0, Lcom/android/mms/ui/BubbleTypePicker$6;->val$type:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 243
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget v0, p0, Lcom/android/mms/ui/BubbleTypePicker$6;->val$type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/mms/ui/BubbleTypePicker$6;->val$type:I

    if-nez v0, :cond_1

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/BubbleTypePicker$6;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iput p3, v0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleSentIndex:I

    .line 249
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/BubbleTypePicker$6;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    #getter for: Lcom/android/mms/ui/BubbleTypePicker;->mImageAdapter:[Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/BubbleTypePicker;->access$200(Lcom/android/mms/ui/BubbleTypePicker;)[Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/ui/BubbleTypePicker$6;->val$type:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/mms/ui/BubbleTypePicker$ImageAdapter;->notifyDataSetChanged()V

    .line 251
    iget-object v0, p0, Lcom/android/mms/ui/BubbleTypePicker$6;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget-object v1, p0, Lcom/android/mms/ui/BubbleTypePicker$6;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget v1, v1, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleSentIndex:I

    iget-object v2, p0, Lcom/android/mms/ui/BubbleTypePicker$6;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iget v2, v2, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleReceiveIndex:I

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/BubbleTypePicker;->setBubbleImage(II)V

    .line 252
    return-void

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/BubbleTypePicker$6;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    iput p3, v0, Lcom/android/mms/ui/MessageBubbleActivity;->mSelectedBubbleReceiveIndex:I

    goto :goto_0
.end method
