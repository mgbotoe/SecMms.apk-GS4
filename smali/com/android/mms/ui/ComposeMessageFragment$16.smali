.class Lcom/android/mms/ui/ComposeMessageFragment$16;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->alertExceedMmsRecipientsPopup(Landroid/content/Context;)V
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
    .line 1983
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$16;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1985
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$16;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->AdjustMmsRecipient()V
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2500(Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 1987
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$16;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->isPreparedForSending()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1990
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$16;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->confirmSendMessageIfNeeded()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 2004
    :cond_0
    :goto_0
    return-void

    .line 1991
    :catch_0
    move-exception v0

    .line 1992
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v1, "Mms/ComposeMessageFragment"

    const-string v2, "Catch a SQLiteException: "

    invoke-static {v1, v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1995
    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v0

    .line 1996
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "Mms/ComposeMessageFragment"

    const-string v2, "Catch a IllegalArgumentException: "

    invoke-static {v1, v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1999
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 2000
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Mms/ComposeMessageFragment"

    const-string v2, "Catch a Exception: "

    invoke-static {v1, v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
