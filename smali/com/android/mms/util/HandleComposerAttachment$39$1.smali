.class Lcom/android/mms/util/HandleComposerAttachment$39$1;
.super Ljava/lang/Object;
.source "HandleComposerAttachment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/HandleComposerAttachment$39;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/util/HandleComposerAttachment$39;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/util/HandleComposerAttachment$39;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2529
    iput-object p1, p0, Lcom/android/mms/util/HandleComposerAttachment$39$1;->this$1:Lcom/android/mms/util/HandleComposerAttachment$39;

    iput-object p2, p0, Lcom/android/mms/util/HandleComposerAttachment$39$1;->val$message:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2531
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$39$1;->this$1:Lcom/android/mms/util/HandleComposerAttachment$39;

    iget-object v0, v0, Lcom/android/mms/util/HandleComposerAttachment$39;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    #getter for: Lcom/android/mms/util/HandleComposerAttachment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/util/HandleComposerAttachment;->access$400(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment$39$1;->val$message:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2533
    return-void
.end method
