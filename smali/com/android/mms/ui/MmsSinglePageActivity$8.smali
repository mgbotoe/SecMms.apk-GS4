.class Lcom/android/mms/ui/MmsSinglePageActivity$8;
.super Ljava/lang/Object;
.source "MmsSinglePageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MmsSinglePageActivity;->addMmsInfoLayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

.field final synthetic val$showAttachments:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsSinglePageActivity;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1737
    iput-object p1, p0, Lcom/android/mms/ui/MmsSinglePageActivity$8;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/MmsSinglePageActivity$8;->val$showAttachments:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 1741
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1742
    .local v2, partsUriList:Ljava/util/List;,"Ljava/util/List<Landroid/net/Uri;>;"
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity$8;->val$showAttachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/AttachmentModel;

    .line 1743
    .local v0, attach:Lcom/android/mms/model/AttachmentModel;
    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1746
    .end local v0           #attach:Lcom/android/mms/model/AttachmentModel;
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/MmsSinglePageActivity$8;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    #getter for: Lcom/android/mms/ui/MmsSinglePageActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/MmsSinglePageActivity;->access$000(Lcom/android/mms/ui/MmsSinglePageActivity;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getMessageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/samsung/mms/content/MmsPartExport;->saveParts(Landroid/net/Uri;Ljava/util/List;)V

    .line 1747
    return-void
.end method
