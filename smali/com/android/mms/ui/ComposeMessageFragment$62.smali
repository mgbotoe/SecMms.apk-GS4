.class Lcom/android/mms/ui/ComposeMessageFragment$62;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->onMaxPendingMessagesReached()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 6333
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$62;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 6335
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$62;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6336
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$62;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 6337
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x7f0c00e2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6338
    .local v0, message:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$62;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 6341
    .end local v0           #message:Ljava/lang/String;
    .end local v1           #res:Landroid/content/res/Resources;
    :cond_0
    return-void
.end method
