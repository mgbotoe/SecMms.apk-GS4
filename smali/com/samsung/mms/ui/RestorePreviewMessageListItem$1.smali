.class Lcom/samsung/mms/ui/RestorePreviewMessageListItem$1;
.super Ljava/lang/Object;
.source "RestorePreviewMessageListItem.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->showLinksContextMenu(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/ui/RestorePreviewMessageListItem;

.field final synthetic val$text:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/mms/ui/RestorePreviewMessageListItem;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem$1;->this$0:Lcom/samsung/mms/ui/RestorePreviewMessageListItem;

    iput-object p2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem$1;->val$text:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v6, 0x1

    .line 325
    iget-object v2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem$1;->val$url:Ljava/lang/String;

    const-string v3, "mailto:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 326
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 327
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 390
    :goto_0
    return-void

    .line 328
    :pswitch_0
    const/4 v1, 0x4

    .line 389
    .local v1, what:I
    :goto_1
    iget-object v2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem$1;->this$0:Lcom/samsung/mms/ui/RestorePreviewMessageListItem;

    #getter for: Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/mms/ui/RestorePreviewMessageListItem;->access$000(Lcom/samsung/mms/ui/RestorePreviewMessageListItem;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem$1;->val$url:Ljava/lang/String;

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem$1;->val$text:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v2, v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 329
    .end local v1           #what:I
    :pswitch_1
    const/4 v1, 0x7

    .restart local v1       #what:I
    goto :goto_1

    .line 331
    .end local v1           #what:I
    :pswitch_2
    iget-object v2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem$1;->val$text:Ljava/lang/String;

    invoke-static {v2, v6}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 332
    .local v0, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 333
    const/16 v1, 0xa

    .line 334
    .restart local v1       #what:I
    goto :goto_1

    .line 336
    .end local v1           #what:I
    :cond_1
    const/16 v1, 0x9

    .line 337
    .restart local v1       #what:I
    goto :goto_1

    .line 339
    .end local v0           #contact:Lcom/android/mms/data/Contact;
    .end local v1           #what:I
    :pswitch_3
    const/16 v1, 0x8

    .restart local v1       #what:I
    goto :goto_1

    .line 343
    .end local v1           #what:I
    :cond_2
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 344
    :pswitch_4
    const/4 v1, 0x4

    .restart local v1       #what:I
    goto :goto_1

    .line 346
    .end local v1           #what:I
    :pswitch_5
    iget-object v2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem$1;->val$text:Ljava/lang/String;

    invoke-static {v2, v6}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 347
    .restart local v0       #contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 348
    const/16 v1, 0xa

    .line 349
    .restart local v1       #what:I
    goto :goto_1

    .line 351
    .end local v1           #what:I
    :cond_3
    const/16 v1, 0x9

    .line 352
    .restart local v1       #what:I
    goto :goto_1

    .line 354
    .end local v0           #contact:Lcom/android/mms/data/Contact;
    .end local v1           #what:I
    :pswitch_6
    const/16 v1, 0x8

    .restart local v1       #what:I
    goto :goto_1

    .line 358
    .end local v1           #what:I
    :cond_4
    iget-object v2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem$1;->val$url:Ljava/lang/String;

    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 359
    packed-switch p2, :pswitch_data_2

    goto :goto_0

    .line 360
    :pswitch_7
    const/16 v1, 0xb

    .restart local v1       #what:I
    goto :goto_1

    .line 362
    .end local v1           #what:I
    :pswitch_8
    iget-object v2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem$1;->val$text:Ljava/lang/String;

    invoke-static {v2, v6}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 363
    .restart local v0       #contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 364
    const/16 v1, 0xa

    .line 365
    .restart local v1       #what:I
    goto :goto_1

    .line 367
    .end local v1           #what:I
    :cond_5
    const/16 v1, 0x9

    .line 368
    .restart local v1       #what:I
    goto :goto_1

    .line 370
    .end local v0           #contact:Lcom/android/mms/data/Contact;
    .end local v1           #what:I
    :pswitch_9
    const/4 v1, 0x7

    .restart local v1       #what:I
    goto :goto_1

    .line 371
    .end local v1           #what:I
    :pswitch_a
    const/16 v1, 0x8

    .restart local v1       #what:I
    goto :goto_1

    .line 374
    .end local v1           #what:I
    :cond_6
    iget-object v2, p0, Lcom/samsung/mms/ui/RestorePreviewMessageListItem$1;->val$url:Ljava/lang/String;

    const-string v3, "rtsp://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 375
    packed-switch p2, :pswitch_data_3

    goto/16 :goto_0

    .line 376
    :pswitch_b
    const/4 v1, 0x4

    .restart local v1       #what:I
    goto/16 :goto_1

    .line 377
    .end local v1           #what:I
    :pswitch_c
    const/16 v1, 0x8

    .restart local v1       #what:I
    goto/16 :goto_1

    .line 381
    .end local v1           #what:I
    :cond_7
    packed-switch p2, :pswitch_data_4

    goto/16 :goto_0

    .line 382
    :pswitch_d
    const/4 v1, 0x4

    .restart local v1       #what:I
    goto/16 :goto_1

    .line 383
    .end local v1           #what:I
    :pswitch_e
    const/4 v1, 0x5

    .restart local v1       #what:I
    goto/16 :goto_1

    .line 384
    .end local v1           #what:I
    :pswitch_f
    const/16 v1, 0x8

    .restart local v1       #what:I
    goto/16 :goto_1

    .line 327
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 343
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 359
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 375
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 381
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
