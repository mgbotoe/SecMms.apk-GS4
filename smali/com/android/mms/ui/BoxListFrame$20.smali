.class Lcom/android/mms/ui/BoxListFrame$20;
.super Ljava/lang/Object;
.source "BoxListFrame.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/BoxListFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/BoxListFrame;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BoxListFrame;)V
    .locals 0
    .parameter

    .prologue
    .line 2465
    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame$20;->this$0:Lcom/android/mms/ui/BoxListFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 12
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2467
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v9

    if-nez v9, :cond_0

    .line 2468
    packed-switch p2, :pswitch_data_0

    :cond_0
    move v7, v8

    .line 2509
    :cond_1
    :goto_0
    return v7

    .line 2470
    :pswitch_0
    iget-object v9, p0, Lcom/android/mms/ui/BoxListFrame$20;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v9}, Lcom/android/mms/ui/BoxListFrame;->access$400(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/ui/MsgSweepActionListView;->getSelectedItemPosition()I

    move-result v6

    .line 2472
    .local v6, position:I
    if-ltz v6, :cond_0

    .line 2473
    iget-object v9, p0, Lcom/android/mms/ui/BoxListFrame$20;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v9}, Lcom/android/mms/ui/BoxListFrame;->access$400(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 2474
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_2

    .line 2475
    invoke-static {}, Lcom/android/mms/ui/BoxListFrame;->access$800()Ljava/lang/String;

    move-result-object v8

    const-string v9, "list item is null"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2479
    :cond_2
    const/16 v9, 0xb

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-eqz v9, :cond_3

    move v1, v7

    .line 2480
    .local v1, locked:Z
    :goto_1
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 2481
    .local v2, msgId:J
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2484
    .local v4, msgType:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/mms/ui/BoxListFrame$20;->this$0:Lcom/android/mms/ui/BoxListFrame;

    iget v8, v8, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_4

    .line 2485
    sget-object v8, Lcom/android/mms/ui/MessageUtils;->WAP_PUSH_MESSAGE_BY_ID_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 2492
    .local v5, msgUri:Landroid/net/Uri;
    :goto_2
    iget-object v8, p0, Lcom/android/mms/ui/BoxListFrame$20;->this$0:Lcom/android/mms/ui/BoxListFrame;

    new-instance v9, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;

    iget-object v10, p0, Lcom/android/mms/ui/BoxListFrame$20;->this$0:Lcom/android/mms/ui/BoxListFrame;

    invoke-direct {v9, v10, v5, v1}, Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;-><init>(Lcom/android/mms/ui/BoxListFrame;Landroid/net/Uri;Z)V

    #calls: Lcom/android/mms/ui/BoxListFrame;->confirmDeleteDialog(Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;Z)V
    invoke-static {v8, v9, v1}, Lcom/android/mms/ui/BoxListFrame;->access$3800(Lcom/android/mms/ui/BoxListFrame;Lcom/android/mms/ui/BoxListFrame$DeleteMessageListener;Z)V

    .line 2495
    iget-object v8, p0, Lcom/android/mms/ui/BoxListFrame$20;->this$0:Lcom/android/mms/ui/BoxListFrame;

    iget v8, v8, Lcom/android/mms/ui/BoxListFrame;->mListType:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_7

    .line 2496
    iget-object v8, p0, Lcom/android/mms/ui/BoxListFrame$20;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgToDelete:Lcom/android/mms/ui/BoxListAdapter$MessageData;
    invoke-static {v8}, Lcom/android/mms/ui/BoxListFrame;->access$3700(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter$MessageData;

    move-result-object v8

    if-nez v8, :cond_6

    .line 2497
    iget-object v8, p0, Lcom/android/mms/ui/BoxListFrame$20;->this$0:Lcom/android/mms/ui/BoxListFrame;

    new-instance v9, Lcom/android/mms/ui/BoxListAdapter$MessageData;

    iget-object v10, p0, Lcom/android/mms/ui/BoxListFrame$20;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;
    invoke-static {v10}, Lcom/android/mms/ui/BoxListFrame;->access$200(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v9, v10, v2, v3, v4}, Lcom/android/mms/ui/BoxListAdapter$MessageData;-><init>(Lcom/android/mms/ui/BoxListAdapter;JLjava/lang/String;)V

    #setter for: Lcom/android/mms/ui/BoxListFrame;->mMsgToDelete:Lcom/android/mms/ui/BoxListAdapter$MessageData;
    invoke-static {v8, v9}, Lcom/android/mms/ui/BoxListFrame;->access$3702(Lcom/android/mms/ui/BoxListFrame;Lcom/android/mms/ui/BoxListAdapter$MessageData;)Lcom/android/mms/ui/BoxListAdapter$MessageData;

    goto :goto_0

    .end local v1           #locked:Z
    .end local v2           #msgId:J
    .end local v4           #msgType:Ljava/lang/String;
    .end local v5           #msgUri:Landroid/net/Uri;
    :cond_3
    move v1, v8

    .line 2479
    goto :goto_1

    .line 2486
    .restart local v1       #locked:Z
    .restart local v2       #msgId:J
    .restart local v4       #msgType:Ljava/lang/String;
    :cond_4
    const-string v8, "mms"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2487
    sget-object v8, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .restart local v5       #msgUri:Landroid/net/Uri;
    goto :goto_2

    .line 2489
    .end local v5           #msgUri:Landroid/net/Uri;
    :cond_5
    sget-object v8, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .restart local v5       #msgUri:Landroid/net/Uri;
    goto :goto_2

    .line 2499
    :cond_6
    iget-object v8, p0, Lcom/android/mms/ui/BoxListFrame$20;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgToDelete:Lcom/android/mms/ui/BoxListAdapter$MessageData;
    invoke-static {v8}, Lcom/android/mms/ui/BoxListFrame;->access$3700(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter$MessageData;

    move-result-object v8

    invoke-virtual {v8, v2, v3, v4}, Lcom/android/mms/ui/BoxListAdapter$MessageData;->setData(JLjava/lang/String;)V

    goto/16 :goto_0

    .line 2501
    :cond_7
    iget-object v8, p0, Lcom/android/mms/ui/BoxListFrame$20;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgToDelete:Lcom/android/mms/ui/BoxListAdapter$MessageData;
    invoke-static {v8}, Lcom/android/mms/ui/BoxListFrame;->access$3700(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter$MessageData;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 2502
    iget-object v8, p0, Lcom/android/mms/ui/BoxListFrame$20;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgToDelete:Lcom/android/mms/ui/BoxListAdapter$MessageData;
    invoke-static {v8}, Lcom/android/mms/ui/BoxListFrame;->access$3700(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter$MessageData;

    move-result-object v8

    const-wide/16 v9, 0x0

    const-string v11, ""

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/mms/ui/BoxListAdapter$MessageData;->setData(JLjava/lang/String;)V

    goto/16 :goto_0

    .line 2468
    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_0
    .end packed-switch
.end method
