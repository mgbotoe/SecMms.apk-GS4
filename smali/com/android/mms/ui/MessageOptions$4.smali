.class Lcom/android/mms/ui/MessageOptions$4;
.super Ljava/lang/Object;
.source "MessageOptions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageOptions;->createAttachmentDialog(ZJLjava/util/ArrayList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageOptions;

.field final synthetic val$attachAdapter:Lcom/android/mms/ui/AttachmentListAdapter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/AttachmentListAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2584
    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions$4;->this$0:Lcom/android/mms/ui/MessageOptions;

    iput-object p2, p0, Lcom/android/mms/ui/MessageOptions$4;->val$attachAdapter:Lcom/android/mms/ui/AttachmentListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 2587
    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions$4;->this$0:Lcom/android/mms/ui/MessageOptions;

    #getter for: Lcom/android/mms/ui/MessageOptions;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v3}, Lcom/android/mms/ui/MessageOptions;->access$400(Lcom/android/mms/ui/MessageOptions;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x1

    .line 2588
    .local v0, checked:Z
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions$4;->val$attachAdapter:Lcom/android/mms/ui/AttachmentListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/AttachmentListAdapter;->getCount()I

    move-result v2

    .line 2590
    .local v2, itemCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 2591
    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions$4;->val$attachAdapter:Lcom/android/mms/ui/AttachmentListAdapter;

    invoke-virtual {v3, v1, v0}, Lcom/android/mms/ui/AttachmentListAdapter;->setChecked(IZ)V

    .line 2590
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2587
    .end local v0           #checked:Z
    .end local v1           #i:I
    .end local v2           #itemCount:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2594
    .restart local v0       #checked:Z
    .restart local v1       #i:I
    .restart local v2       #itemCount:I
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions$4;->this$0:Lcom/android/mms/ui/MessageOptions;

    #getter for: Lcom/android/mms/ui/MessageOptions;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v3}, Lcom/android/mms/ui/MessageOptions;->access$400(Lcom/android/mms/ui/MessageOptions;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 2595
    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions$4;->val$attachAdapter:Lcom/android/mms/ui/AttachmentListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/AttachmentListAdapter;->notifyDataSetInvalidated()V

    .line 2596
    return-void
.end method
