.class Lcom/android/mms/ui/SlideView$6;
.super Ljava/lang/Object;
.source "SlideView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideView;->addAttachmentTitleView()V
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
    .line 1437
    iput-object p1, p0, Lcom/android/mms/ui/SlideView$6;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 1439
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 1440
    sparse-switch p2, :sswitch_data_0

    .line 1451
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 1443
    :sswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$6;->this$0:Lcom/android/mms/ui/SlideView;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView$6;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->mAttachmentList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/ui/SlideView;->access$3000(Lcom/android/mms/ui/SlideView;)Ljava/util/ArrayList;

    move-result-object v1

    #calls: Lcom/android/mms/ui/SlideView;->saveAttachFiles(Ljava/util/ArrayList;)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/SlideView;->access$3100(Lcom/android/mms/ui/SlideView;Ljava/util/ArrayList;)V

    .line 1444
    const/4 v0, 0x1

    goto :goto_0

    .line 1440
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x17 -> :sswitch_1
        0x42 -> :sswitch_1
    .end sparse-switch
.end method
