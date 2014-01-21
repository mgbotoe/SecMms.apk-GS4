.class Lcom/android/mms/ui/SlideView$9;
.super Ljava/lang/Object;
.source "SlideView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideView;->addAttachmentOneView(Lcom/android/mms/model/AttachmentModel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideView;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideView;)V
    .locals 0
    .parameter

    .prologue
    .line 1557
    iput-object p1, p0, Lcom/android/mms/ui/SlideView$9;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 1559
    sget-object v0, Lcom/android/mms/ui/SlideView;->staticAttachment:Lcom/android/mms/model/AttachmentModel;

    .line 1560
    .local v0, attachment:Lcom/android/mms/model/AttachmentModel;
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 1561
    sparse-switch p2, :sswitch_data_0

    .line 1572
    :cond_0
    :goto_0
    :sswitch_0
    return v1

    .line 1564
    :sswitch_1
    iget-object v1, p0, Lcom/android/mms/ui/SlideView$9;->this$0:Lcom/android/mms/ui/SlideView;

    #calls: Lcom/android/mms/ui/SlideView;->saveAttachFile(Lcom/android/mms/model/AttachmentModel;)V
    invoke-static {v1, v0}, Lcom/android/mms/ui/SlideView;->access$3500(Lcom/android/mms/ui/SlideView;Lcom/android/mms/model/AttachmentModel;)V

    .line 1565
    const/4 v1, 0x1

    goto :goto_0

    .line 1561
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x17 -> :sswitch_1
        0x42 -> :sswitch_1
    .end sparse-switch
.end method
