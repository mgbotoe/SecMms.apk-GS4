.class Lcom/android/mms/ui/SearchActivity$8$1;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SearchActivity$8;->onContentChanged(Lcom/android/mms/ui/SearchListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/SearchActivity$8;

.field final synthetic val$adapter:Lcom/android/mms/ui/SearchListAdapter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SearchActivity$8;Lcom/android/mms/ui/SearchListAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 573
    iput-object p1, p0, Lcom/android/mms/ui/SearchActivity$8$1;->this$1:Lcom/android/mms/ui/SearchActivity$8;

    iput-object p2, p0, Lcom/android/mms/ui/SearchActivity$8$1;->val$adapter:Lcom/android/mms/ui/SearchListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity$8$1;->this$1:Lcom/android/mms/ui/SearchActivity$8;

    iget-object v0, v0, Lcom/android/mms/ui/SearchActivity$8;->this$0:Lcom/android/mms/ui/SearchActivity;

    iget-object v1, p0, Lcom/android/mms/ui/SearchActivity$8$1;->val$adapter:Lcom/android/mms/ui/SearchListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/SearchListAdapter;->getSearchString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/mms/ui/SearchActivity;->startQuery(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/SearchActivity;->access$300(Lcom/android/mms/ui/SearchActivity;Ljava/lang/String;)V

    .line 576
    return-void
.end method
