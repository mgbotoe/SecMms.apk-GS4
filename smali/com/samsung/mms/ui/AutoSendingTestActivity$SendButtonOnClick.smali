.class Lcom/samsung/mms/ui/AutoSendingTestActivity$SendButtonOnClick;
.super Ljava/lang/Object;
.source "AutoSendingTestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/mms/ui/AutoSendingTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendButtonOnClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/ui/AutoSendingTestActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/mms/ui/AutoSendingTestActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 354
    iput-object p1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity$SendButtonOnClick;->this$0:Lcom/samsung/mms/ui/AutoSendingTestActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/mms/ui/AutoSendingTestActivity;Lcom/samsung/mms/ui/AutoSendingTestActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 354
    invoke-direct {p0, p1}, Lcom/samsung/mms/ui/AutoSendingTestActivity$SendButtonOnClick;-><init>(Lcom/samsung/mms/ui/AutoSendingTestActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 357
    iget-object v1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity$SendButtonOnClick;->this$0:Lcom/samsung/mms/ui/AutoSendingTestActivity;

    #getter for: Lcom/samsung/mms/ui/AutoSendingTestActivity;->bSendingFlag:Z
    invoke-static {v1}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->access$700(Lcom/samsung/mms/ui/AutoSendingTestActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity$SendButtonOnClick;->this$0:Lcom/samsung/mms/ui/AutoSendingTestActivity;

    #getter for: Lcom/samsung/mms/ui/AutoSendingTestActivity;->mEditRecipient:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->access$600(Lcom/samsung/mms/ui/AutoSendingTestActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 359
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/samsung/mms/ui/AutoSendingTestActivity$SendButtonOnClick$1;

    invoke-direct {v2, p0}, Lcom/samsung/mms/ui/AutoSendingTestActivity$SendButtonOnClick$1;-><init>(Lcom/samsung/mms/ui/AutoSendingTestActivity$SendButtonOnClick;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 365
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity$SendButtonOnClick;->this$0:Lcom/samsung/mms/ui/AutoSendingTestActivity;

    #getter for: Lcom/samsung/mms/ui/AutoSendingTestActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->access$300(Lcom/samsung/mms/ui/AutoSendingTestActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 366
    .local v0, alert:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f020044

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 367
    const-string v1, "Guava Talk"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 368
    const-string v1, "Sending Message...."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 369
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->access$902(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 370
    invoke-static {}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->access$900()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 372
    iget-object v1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity$SendButtonOnClick;->this$0:Lcom/samsung/mms/ui/AutoSendingTestActivity;

    #getter for: Lcom/samsung/mms/ui/AutoSendingTestActivity;->mEditRecipient:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->access$600(Lcom/samsung/mms/ui/AutoSendingTestActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 374
    .end local v0           #alert:Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method
