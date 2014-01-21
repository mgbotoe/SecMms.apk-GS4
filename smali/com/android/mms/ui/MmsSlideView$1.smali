.class Lcom/android/mms/ui/MmsSlideView$1;
.super Ljava/lang/Object;
.source "MmsSlideView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MmsSlideView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsSlideView;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsSlideView;)V
    .locals 0
    .parameter

    .prologue
    .line 502
    iput-object p1, p0, Lcom/android/mms/ui/MmsSlideView$1;->this$0:Lcom/android/mms/ui/MmsSlideView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/mms/ui/MmsSlideView$1;->this$0:Lcom/android/mms/ui/MmsSlideView;

    #getter for: Lcom/android/mms/ui/MmsSlideView;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;
    invoke-static {v0}, Lcom/android/mms/ui/MmsSlideView;->access$000(Lcom/android/mms/ui/MmsSlideView;)Lcom/android/mms/ui/MessageListItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListItem;->onMessageListItemClick()V

    .line 505
    return-void
.end method
