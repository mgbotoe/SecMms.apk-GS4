.class Lcom/android/mms/ui/MessageListItem$13;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 2555
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$13;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 2557
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$13;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListItem;->isMultiSelectMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2558
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$13;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$3400(Lcom/android/mms/ui/MessageListItem;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->performClick()Z

    .line 2559
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$13;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$2400(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$13;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->handleCheckbox(Lcom/android/mms/ui/MessageListItem;)V

    .line 2565
    :goto_0
    return-void

    .line 2562
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$13;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$2400(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->getTranslateManager()Lcom/android/mms/ui/TranslateManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$13;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v2}, Lcom/android/mms/ui/MessageListItem;->access$2500(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/TranslateManager;->extractTranslateText(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v0

    .line 2563
    .local v0, srcText:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$13;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$2400(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->getTranslateManager()Lcom/android/mms/ui/TranslateManager;

    move-result-object v2

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$13;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$3500(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const/4 v3, 0x4

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/mms/ui/TranslateManager;->viewTranslate(Ljava/lang/String;Landroid/app/Activity;I)V

    goto :goto_0
.end method
