.class Lcom/android/mms/help/AirViewListAdapter$1$1;
.super Ljava/lang/Object;
.source "AirViewListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/help/AirViewListAdapter$1;->doTask(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/help/AirViewListAdapter$1;

.field final synthetic val$parentView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/mms/help/AirViewListAdapter$1;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/mms/help/AirViewListAdapter$1$1;->this$1:Lcom/android/mms/help/AirViewListAdapter$1;

    iput-object p2, p0, Lcom/android/mms/help/AirViewListAdapter$1$1;->val$parentView:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 33
    iget-object v1, p0, Lcom/android/mms/help/AirViewListAdapter$1$1;->this$1:Lcom/android/mms/help/AirViewListAdapter$1;

    iget-object v1, v1, Lcom/android/mms/help/AirViewListAdapter$1;->this$0:Lcom/android/mms/help/AirViewListAdapter;

    #getter for: Lcom/android/mms/help/AirViewListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/help/AirViewListAdapter;->access$000(Lcom/android/mms/help/AirViewListAdapter;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/mms/help/AirViewMainActivity;->hideInfoBubble(Landroid/app/Activity;)V

    .line 34
    iget-object v1, p0, Lcom/android/mms/help/AirViewListAdapter$1$1;->val$parentView:Landroid/view/View;

    const v2, 0x7f0b002b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 35
    .local v0, infoImage:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 36
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 37
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/mms/help/AirViewMainActivity;->mHasHovered:Z

    .line 39
    :cond_0
    return-void
.end method
