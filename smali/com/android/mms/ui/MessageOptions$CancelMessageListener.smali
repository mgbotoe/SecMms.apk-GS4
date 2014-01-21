.class Lcom/android/mms/ui/MessageOptions$CancelMessageListener;
.super Lcom/android/mms/ui/MessageOptions$DeleteMessageListener;
.source "MessageOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelMessageListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageOptions;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MessageOptions;Landroid/net/Uri;Z)V
    .locals 0
    .parameter
    .parameter "uri"
    .parameter "deleteLocked"

    .prologue
    .line 3065
    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions$CancelMessageListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    .line 3066
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/MessageOptions$DeleteMessageListener;-><init>(Lcom/android/mms/ui/MessageOptions;Landroid/net/Uri;Z)V

    .line 3068
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v2, 0x0

    .line 3071
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions$CancelMessageListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mBackgroundQueryHandler:Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;

    const/16 v1, 0x25e4

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;

    iget-boolean v4, p0, Lcom/android/mms/ui/MessageOptions$DeleteMessageListener;->mDeleteLocked:Z

    if-eqz v4, :cond_0

    move-object v4, v2

    :goto_0
    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 3073
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3074
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions$CancelMessageListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$CancelMessageListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v1, v1, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0c02d3

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3075
    return-void

    .line 3071
    :cond_0
    const-string v4, "locked=0"

    goto :goto_0
.end method
