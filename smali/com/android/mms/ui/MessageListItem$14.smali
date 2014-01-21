.class Lcom/android/mms/ui/MessageListItem$14;
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
    .line 2568
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$14;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 17
    .parameter "v"

    .prologue
    .line 2572
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/ui/MessageListItem$14;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v11}, Lcom/android/mms/ui/MessageListItem;->access$2500(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v11

    if-eqz v11, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/ui/MessageListItem$14;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v11}, Lcom/android/mms/ui/MessageListItem;->access$2500(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v11

    iget-object v11, v11, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/MessageListItem$14;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/mms/ui/MessageListItem;->access$3600(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f0c000d

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 2573
    const/4 v7, 0x0

    .line 2576
    .local v7, msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/ui/MessageListItem$14;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/mms/ui/MessageListItem;->access$3700(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/MessageListItem$14;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v12}, Lcom/android/mms/ui/MessageListItem;->access$2500(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v12

    iget-object v12, v12, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v11, v12}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    move-object v7, v0
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2581
    :goto_0
    const/4 v10, 0x0

    .line 2583
    .local v10, to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v7, :cond_0

    .line 2584
    invoke-virtual {v7}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v10

    .line 2587
    :cond_0
    if-eqz v10, :cond_4

    .line 2588
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 2589
    .local v9, sb:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 2591
    .local v3, count:I
    move-object v2, v10

    .local v2, arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    array-length v6, v2

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_2

    aget-object v8, v2, v5

    .line 2592
    .local v8, recipient:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-lez v3, :cond_1

    .line 2593
    const-string v11, ", "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2596
    :cond_1
    invoke-virtual {v8}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/mms/data/Contact;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2597
    add-int/lit8 v3, v3, 0x1

    .line 2591
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2577
    .end local v2           #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v3           #count:I
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v8           #recipient:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v9           #sb:Ljava/lang/StringBuilder;
    .end local v10           #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_0
    move-exception v4

    .line 2578
    .local v4, e:Lcom/google/android/mms/MmsException;
    const-string v11, "Mms/MessageListItem"

    const-string v12, "Failed to load the message: "

    invoke-static {v11, v12, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2600
    .end local v4           #e:Lcom/google/android/mms/MmsException;
    .restart local v2       #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v3       #count:I
    .restart local v5       #i$:I
    .restart local v6       #len$:I
    .restart local v9       #sb:Ljava/lang/StringBuilder;
    .restart local v10       #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_2
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2608
    .end local v2           #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v3           #count:I
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v7           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .end local v9           #sb:Ljava/lang/StringBuilder;
    .end local v10           #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .local v1, address:Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/ui/MessageListItem$14;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mSendNowConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {v11}, Lcom/android/mms/ui/MessageListItem;->access$3900(Lcom/android/mms/ui/MessageListItem;)Landroid/app/AlertDialog;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 2609
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/ui/MessageListItem$14;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mSendNowConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {v11}, Lcom/android/mms/ui/MessageListItem;->access$3900(Lcom/android/mms/ui/MessageListItem;)Landroid/app/AlertDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/AlertDialog;->dismiss()V

    .line 2612
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/ui/MessageListItem$14;->this$0:Lcom/android/mms/ui/MessageListItem;

    new-instance v12, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageListItem$14;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/mms/ui/MessageListItem;->access$4100(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v13, 0x7f0c012c

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageListItem$14;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/mms/ui/MessageListItem;->access$4000(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v13

    const v14, 0x7f0c02d2

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "%s"

    invoke-virtual {v13, v14, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    const v13, 0x7f0c004f

    new-instance v14, Lcom/android/mms/ui/MessageListItem$SendNowListener;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/MessageListItem$14;->this$0:Lcom/android/mms/ui/MessageListItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem$14;->this$0:Lcom/android/mms/ui/MessageListItem;

    move-object/from16 v16, v0

    #getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static/range {v16 .. v16}, Lcom/android/mms/ui/MessageListItem;->access$2500(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Lcom/android/mms/ui/MessageListItem$SendNowListener;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual {v12, v13, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    const v13, 0x7f0c0050

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    sget-object v13, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v12

    #setter for: Lcom/android/mms/ui/MessageListItem;->mSendNowConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {v11, v12}, Lcom/android/mms/ui/MessageListItem;->access$3902(Lcom/android/mms/ui/MessageListItem;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 2621
    return-void

    .line 2602
    .end local v1           #address:Ljava/lang/String;
    .restart local v7       #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .restart local v10       #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/ui/MessageListItem$14;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/mms/ui/MessageListItem;->access$3800(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0c0122

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #address:Ljava/lang/String;
    goto/16 :goto_2

    .line 2605
    .end local v1           #address:Ljava/lang/String;
    .end local v7           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .end local v10           #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/ui/MessageListItem$14;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v11}, Lcom/android/mms/ui/MessageListItem;->access$2500(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v11

    iget-object v11, v11, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v11}, Lcom/android/mms/data/Contact;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #address:Ljava/lang/String;
    goto/16 :goto_2
.end method
