.class Lcom/android/mms/ui/ComposeMessageFragment$145;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->messageContentShare(Lcom/android/mms/ui/MessageItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;

.field final synthetic val$msgBody:Ljava/lang/String;

.field final synthetic val$msgSubject:Ljava/lang/String;

.field final synthetic val$msgUri:Landroid/net/Uri;

.field final synthetic val$partsUriList:Ljava/util/List;

.field final synthetic val$shareContentType:Ljava/util/ArrayList;

.field final synthetic val$shareIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/util/List;Landroid/net/Uri;Ljava/util/ArrayList;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 16526
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$145;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$145;->val$partsUriList:Ljava/util/List;

    iput-object p3, p0, Lcom/android/mms/ui/ComposeMessageFragment$145;->val$msgUri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/android/mms/ui/ComposeMessageFragment$145;->val$shareContentType:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/android/mms/ui/ComposeMessageFragment$145;->val$shareIntent:Landroid/content/Intent;

    iput-object p6, p0, Lcom/android/mms/ui/ComposeMessageFragment$145;->val$msgSubject:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/mms/ui/ComposeMessageFragment$145;->val$msgBody:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 16528
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 16529
    .local v5, info:Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 16531
    .local v6, mSubject:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$145;->val$partsUriList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_6

    .line 16532
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$145;->val$partsUriList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 16534
    .local v7, partUri:Landroid/net/Uri;
    :try_start_0
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$145;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v10, v10, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$145;->val$msgUri:Landroid/net/Uri;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->copyContentCache(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)V
    invoke-static {v10, v11, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$12200(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 16535
    :catch_0
    move-exception v1

    .line 16537
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 16540
    .end local v1           #e:Ljava/io/IOException;
    .end local v7           #partUri:Landroid/net/Uri;
    :cond_0
    const/4 v0, 0x0

    .line 16541
    .local v0, checkOtherType:Z
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$145;->val$shareContentType:Ljava/util/ArrayList;

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 16542
    .local v2, firstContentType:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$145;->val$partsUriList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-le v10, v14, :cond_5

    .line 16543
    const/4 v3, 0x1

    .local v3, i:I
    :goto_1
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$145;->val$partsUriList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_2

    .line 16544
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$145;->val$shareContentType:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 16543
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 16547
    :cond_1
    const/4 v0, 0x1

    .line 16552
    :cond_2
    if-eqz v0, :cond_4

    .line 16553
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$145;->val$shareIntent:Landroid/content/Intent;

    const-string v11, "application/*"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 16557
    :goto_2
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$145;->val$shareIntent:Landroid/content/Intent;

    const-string v11, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 16558
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$145;->val$shareIntent:Landroid/content/Intent;

    const-string v11, "android.intent.extra.STREAM"

    sget-object v12, Lcom/android/mms/ui/ComposeMessageFragment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 16569
    .end local v0           #checkOtherType:Z
    .end local v2           #firstContentType:Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #i$:Ljava/util/Iterator;
    :goto_3
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$145;->val$msgSubject:Ljava/lang/String;

    if-eqz v10, :cond_3

    .line 16570
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$145;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0089

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16571
    const/16 v10, 0x20

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16572
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$145;->val$msgSubject:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16573
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 16576
    :cond_3
    const-string v10, "\n"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    aput-object v6, v11, v13

    iget-object v12, p0, Lcom/android/mms/ui/ComposeMessageFragment$145;->val$msgBody:Ljava/lang/String;

    aput-object v12, v11, v14

    invoke-static {v10, v11}, Lcom/android/mms/ui/MessageUtils;->joinContents(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 16577
    .local v9, text:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$145;->val$shareIntent:Landroid/content/Intent;

    const-string v11, "android.intent.extra.TEXT"

    invoke-virtual {v10, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16578
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$145;->val$shareIntent:Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$145;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v12, 0x7f0c0127

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v8

    .line 16579
    .local v8, sendIntent:Landroid/content/Intent;
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$145;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v10, v10, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10, v8}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 16580
    return-void

    .line 16555
    .end local v8           #sendIntent:Landroid/content/Intent;
    .end local v9           #text:Ljava/lang/String;
    .restart local v0       #checkOtherType:Z
    .restart local v2       #firstContentType:Ljava/lang/String;
    .restart local v3       #i:I
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_4
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$145;->val$shareIntent:Landroid/content/Intent;

    invoke-virtual {v10, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 16560
    .end local v3           #i:I
    :cond_5
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$145;->val$shareIntent:Landroid/content/Intent;

    invoke-virtual {v10, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 16561
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$145;->val$shareIntent:Landroid/content/Intent;

    const-string v11, "android.intent.action.SEND"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 16562
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$145;->val$shareIntent:Landroid/content/Intent;

    const-string v12, "android.intent.extra.STREAM"

    sget-object v10, Lcom/android/mms/ui/ComposeMessageFragment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Parcelable;

    invoke-virtual {v11, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_3

    .line 16565
    .end local v0           #checkOtherType:Z
    .end local v2           #firstContentType:Ljava/lang/String;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_6
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$145;->val$shareIntent:Landroid/content/Intent;

    const-string v11, "android.intent.action.SEND"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 16566
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$145;->val$shareIntent:Landroid/content/Intent;

    const-string v11, "text/plain"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3
.end method
