.class Lcom/android/mms/ui/SearchActivity$6;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SearchActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SearchActivity;

.field final synthetic val$searchUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SearchActivity;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 440
    iput-object p1, p0, Lcom/android/mms/ui/SearchActivity$6;->this$0:Lcom/android/mms/ui/SearchActivity;

    iput-object p2, p0, Lcom/android/mms/ui/SearchActivity$6;->val$searchUri:Landroid/net/Uri;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 443
    iget-object v1, p0, Lcom/android/mms/ui/SearchActivity$6;->this$0:Lcom/android/mms/ui/SearchActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 444
    iget-object v1, p0, Lcom/android/mms/ui/SearchActivity$6;->val$searchUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/SearchActivity$6;->val$searchUri:Landroid/net/Uri;

    const-string v2, "searchMode"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "direct"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 445
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/SearchActivity$6;->this$0:Lcom/android/mms/ui/SearchActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/SearchActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 446
    .local v0, onClickIntent:Landroid/content/Intent;
    const-string v1, "thread_id"

    iget-object v2, p0, Lcom/android/mms/ui/SearchActivity$6;->val$searchUri:Landroid/net/Uri;

    const-string v3, "thread_id"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 447
    const-string v1, "highlight"

    iget-object v2, p0, Lcom/android/mms/ui/SearchActivity$6;->val$searchUri:Landroid/net/Uri;

    const-string v3, "pattern"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    const-string v1, "message_type"

    iget-object v2, p0, Lcom/android/mms/ui/SearchActivity$6;->val$searchUri:Landroid/net/Uri;

    const-string v3, "message_type"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 449
    const-string v1, "select_id"

    iget-object v2, p0, Lcom/android/mms/ui/SearchActivity$6;->val$searchUri:Landroid/net/Uri;

    const-string v3, "select_id"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 450
    const-string v1, "FromSearchActivity"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 451
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 453
    iget-object v1, p0, Lcom/android/mms/ui/SearchActivity$6;->this$0:Lcom/android/mms/ui/SearchActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/SearchActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 454
    iget-object v1, p0, Lcom/android/mms/ui/SearchActivity$6;->this$0:Lcom/android/mms/ui/SearchActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/SearchActivity;->finish()V

    .line 459
    .end local v0           #onClickIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/SearchActivity$6;->this$0:Lcom/android/mms/ui/SearchActivity;

    iget-object v2, p0, Lcom/android/mms/ui/SearchActivity$6;->this$0:Lcom/android/mms/ui/SearchActivity;

    iget-object v2, v2, Lcom/android/mms/ui/SearchActivity;->mSearchString:Ljava/lang/String;

    #calls: Lcom/android/mms/ui/SearchActivity;->startQuery(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/mms/ui/SearchActivity;->access$300(Lcom/android/mms/ui/SearchActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
