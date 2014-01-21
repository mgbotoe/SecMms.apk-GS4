.class Lcom/android/mms/ui/ComposeMenu$CmasForwardListener;
.super Ljava/lang/Object;
.source "ComposeMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CmasForwardListener"
.end annotation


# instance fields
.field mMessageOpt:Lcom/android/mms/ui/MessageOptions;

.field mMsgItem:Lcom/android/mms/ui/MessageItem;

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMenu;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMenu;Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageItem;)V
    .locals 1
    .parameter
    .parameter "messageOptions"
    .parameter "msgItem"

    .prologue
    const/4 v0, 0x0

    .line 2298
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMenu$CmasForwardListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2295
    iput-object v0, p0, Lcom/android/mms/ui/ComposeMenu$CmasForwardListener;->mMessageOpt:Lcom/android/mms/ui/MessageOptions;

    .line 2296
    iput-object v0, p0, Lcom/android/mms/ui/ComposeMenu$CmasForwardListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 2299
    iput-object p2, p0, Lcom/android/mms/ui/ComposeMenu$CmasForwardListener;->mMessageOpt:Lcom/android/mms/ui/MessageOptions;

    .line 2300
    iput-object p3, p0, Lcom/android/mms/ui/ComposeMenu$CmasForwardListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 2301
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 2304
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu$CmasForwardListener;->mMessageOpt:Lcom/android/mms/ui/MessageOptions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu$CmasForwardListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v0, :cond_0

    .line 2305
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu$CmasForwardListener;->mMessageOpt:Lcom/android/mms/ui/MessageOptions;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMenu$CmasForwardListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MessageOptions;->forwardMessage(ZLcom/android/mms/ui/MessageItem;)V

    .line 2307
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2308
    return-void
.end method
