.class Lcom/android/mms/widget/NoticeDeleteActivity$3;
.super Ljava/lang/Object;
.source "NoticeDeleteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/widget/NoticeDeleteActivity;->makeScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/widget/NoticeDeleteActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/widget/NoticeDeleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/mms/widget/NoticeDeleteActivity$3;->this$0:Lcom/android/mms/widget/NoticeDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v1, 0x1

    .line 252
    iget-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity$3;->this$0:Lcom/android/mms/widget/NoticeDeleteActivity;

    #getter for: Lcom/android/mms/widget/NoticeDeleteActivity;->mAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v0}, Lcom/android/mms/widget/NoticeDeleteActivity;->access$500(Lcom/android/mms/widget/NoticeDeleteActivity;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v2

    iget-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity$3;->this$0:Lcom/android/mms/widget/NoticeDeleteActivity;

    #getter for: Lcom/android/mms/widget/NoticeDeleteActivity;->mAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v0}, Lcom/android/mms/widget/NoticeDeleteActivity;->access$500(Lcom/android/mms/widget/NoticeDeleteActivity;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 253
    iget-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity$3;->this$0:Lcom/android/mms/widget/NoticeDeleteActivity;

    #getter for: Lcom/android/mms/widget/NoticeDeleteActivity;->mAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v0}, Lcom/android/mms/widget/NoticeDeleteActivity;->access$500(Lcom/android/mms/widget/NoticeDeleteActivity;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    .line 256
    return-void

    .line 252
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
