.class public final Lcom/samsung/mms/ui/SaveThreadActivity$ThreadListQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "SaveThreadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/mms/ui/SaveThreadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "ThreadListQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/ui/SaveThreadActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/mms/ui/SaveThreadActivity;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "contentResolver"

    .prologue
    .line 256
    iput-object p1, p0, Lcom/samsung/mms/ui/SaveThreadActivity$ThreadListQueryHandler;->this$0:Lcom/samsung/mms/ui/SaveThreadActivity;

    .line 257
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 258
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v4, 0x0

    .line 262
    if-nez p3, :cond_0

    .line 282
    :goto_0
    return-void

    .line 264
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 279
    const-string v1, "Mms/SaveThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onQueryComplete called with unknown token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :cond_1
    iget-object v1, p0, Lcom/samsung/mms/ui/SaveThreadActivity$ThreadListQueryHandler;->this$0:Lcom/samsung/mms/ui/SaveThreadActivity;

    iget-object v1, v1, Lcom/samsung/mms/ui/SaveThreadActivity;->mListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v1, v4}, Lcom/android/mms/ui/MessageListView;->setSelection(I)V

    goto :goto_0

    .line 266
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/mms/ui/SaveThreadActivity$ThreadListQueryHandler;->this$0:Lcom/samsung/mms/ui/SaveThreadActivity;

    iget-object v1, v1, Lcom/samsung/mms/ui/SaveThreadActivity;->mListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v1, p3}, Lcom/android/mms/ui/MessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 267
    iget-object v1, p0, Lcom/samsung/mms/ui/SaveThreadActivity$ThreadListQueryHandler;->this$0:Lcom/samsung/mms/ui/SaveThreadActivity;

    invoke-virtual {v1, v4}, Lcom/samsung/mms/ui/SaveThreadActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 269
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 270
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 271
    .local v0, data:Landroid/content/Intent;
    const-string v1, "empty_thread"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 272
    iget-object v1, p0, Lcom/samsung/mms/ui/SaveThreadActivity$ThreadListQueryHandler;->this$0:Lcom/samsung/mms/ui/SaveThreadActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/samsung/mms/ui/SaveThreadActivity;->setResult(ILandroid/content/Intent;)V

    .line 273
    iget-object v1, p0, Lcom/samsung/mms/ui/SaveThreadActivity$ThreadListQueryHandler;->this$0:Lcom/samsung/mms/ui/SaveThreadActivity;

    invoke-virtual {v1}, Lcom/samsung/mms/ui/SaveThreadActivity;->finish()V

    goto :goto_0

    .line 264
    :pswitch_data_0
    .packed-switch 0x2537
        :pswitch_0
    .end packed-switch
.end method
