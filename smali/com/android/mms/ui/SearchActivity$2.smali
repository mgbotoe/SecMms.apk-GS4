.class Lcom/android/mms/ui/SearchActivity$2;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SearchActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 272
    .local p1, l:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    instance-of v1, p2, Lcom/android/mms/ui/SearchListItem;

    if-nez v1, :cond_1

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    if-ltz p3, :cond_0

    move-object v0, p2

    .line 277
    check-cast v0, Lcom/android/mms/ui/SearchListItem;

    .line 279
    .local v0, view:Lcom/android/mms/ui/SearchListItem;
    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {v0}, Lcom/android/mms/ui/SearchListItem;->onMessageListItemClick()V

    goto :goto_0
.end method
