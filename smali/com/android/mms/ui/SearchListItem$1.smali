.class Lcom/android/mms/ui/SearchListItem$1;
.super Ljava/lang/Object;
.source "SearchListItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SearchListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SearchListItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SearchListItem;)V
    .locals 0
    .parameter

    .prologue
    .line 361
    iput-object p1, p0, Lcom/android/mms/ui/SearchListItem$1;->this$0:Lcom/android/mms/ui/SearchListItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/mms/ui/SearchListItem$1;->this$0:Lcom/android/mms/ui/SearchListItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/SearchListItem;->onMessageListItemClick()V

    .line 364
    return-void
.end method
