.class Lcom/android/mms/ui/ConversationComposer$4;
.super Ljava/lang/Object;
.source "ConversationComposer.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationComposer;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationComposer;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationComposer;)V
    .locals 0
    .parameter

    .prologue
    .line 346
    iput-object p1, p0, Lcom/android/mms/ui/ConversationComposer$4;->this$0:Lcom/android/mms/ui/ConversationComposer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 8
    .parameter "v"
    .parameter "event"

    .prologue
    .line 348
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    .line 349
    .local v1, action:I
    const/4 v4, 0x0

    .line 351
    .local v4, result:Z
    packed-switch v1, :pswitch_data_0

    .line 380
    const-string v5, "DragDrop"

    const-string v6, "Unknown action type received by OnDragListener."

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    :cond_0
    :goto_0
    return v4

    .line 356
    :pswitch_0
    const/4 v4, 0x1

    .line 357
    goto :goto_0

    .line 360
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v2

    .line 361
    .local v2, clipData:Landroid/content/ClipData;
    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v3

    .line 362
    .local v3, clipDescription:Landroid/content/ClipDescription;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 363
    invoke-virtual {v3}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    .line 365
    .local v0, ClipLabel:Ljava/lang/CharSequence;
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isSupportedUri(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 366
    iget-object v5, p0, Lcom/android/mms/ui/ConversationComposer$4;->this$0:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v5}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0c014d

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 369
    :cond_1
    const/4 v5, 0x0

    invoke-static {v5, v2, v3}, Lcom/android/mms/ui/MessageUtils;->openComposerWithDropObject(Landroid/net/Uri;Landroid/content/ClipData;Landroid/content/ClipDescription;)V

    .line 370
    const/4 v4, 0x1

    .line 372
    goto :goto_0

    .line 376
    .end local v0           #ClipLabel:Ljava/lang/CharSequence;
    .end local v2           #clipData:Landroid/content/ClipData;
    .end local v3           #clipDescription:Landroid/content/ClipDescription;
    :pswitch_2
    const/4 v4, 0x1

    .line 377
    goto :goto_0

    .line 351
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
