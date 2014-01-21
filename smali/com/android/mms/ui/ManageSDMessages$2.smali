.class Lcom/android/mms/ui/ManageSDMessages$2;
.super Ljava/lang/Object;
.source "ManageSDMessages.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ManageSDMessages;->initResourceRefs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ManageSDMessages;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ManageSDMessages;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/mms/ui/ManageSDMessages$2;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 191
    iget-object v4, p0, Lcom/android/mms/ui/ManageSDMessages$2;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    #getter for: Lcom/android/mms/ui/ManageSDMessages;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v4}, Lcom/android/mms/ui/ManageSDMessages;->access$100(Lcom/android/mms/ui/ManageSDMessages;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v2

    .line 193
    .local v0, checked:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 194
    iget-object v3, p0, Lcom/android/mms/ui/ManageSDMessages$2;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    #getter for: Lcom/android/mms/ui/ManageSDMessages;->mLeftSoftkey:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/mms/ui/ManageSDMessages;->access$200(Lcom/android/mms/ui/ManageSDMessages;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 195
    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages$2;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    iget-object v3, p0, Lcom/android/mms/ui/ManageSDMessages$2;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    #getter for: Lcom/android/mms/ui/ManageSDMessages;->MsgListAdapter:Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/ManageSDMessages;->access$400(Lcom/android/mms/ui/ManageSDMessages;)Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->getCount()I

    move-result v3

    #setter for: Lcom/android/mms/ui/ManageSDMessages;->countChecked:I
    invoke-static {v2, v3}, Lcom/android/mms/ui/ManageSDMessages;->access$302(Lcom/android/mms/ui/ManageSDMessages;I)I

    .line 201
    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages$2;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    #getter for: Lcom/android/mms/ui/ManageSDMessages;->MsgListAdapter:Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/ManageSDMessages;->access$400(Lcom/android/mms/ui/ManageSDMessages;)Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->getCount()I

    move-result v2

    if-eqz v2, :cond_2

    .line 202
    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages$2;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    #getter for: Lcom/android/mms/ui/ManageSDMessages;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v2}, Lcom/android/mms/ui/ManageSDMessages;->access$100(Lcom/android/mms/ui/ManageSDMessages;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 204
    const/4 v1, 0x0

    .local v1, index:I
    :goto_2
    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages$2;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    #getter for: Lcom/android/mms/ui/ManageSDMessages;->MsgListAdapter:Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/ManageSDMessages;->access$400(Lcom/android/mms/ui/ManageSDMessages;)Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 205
    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages$2;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    #getter for: Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/mms/ui/ManageSDMessages;->access$500(Lcom/android/mms/ui/ManageSDMessages;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 204
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0           #checked:Z
    .end local v1           #index:I
    :cond_0
    move v0, v3

    .line 191
    goto :goto_0

    .line 197
    .restart local v0       #checked:Z
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages$2;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    #getter for: Lcom/android/mms/ui/ManageSDMessages;->mLeftSoftkey:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/mms/ui/ManageSDMessages;->access$200(Lcom/android/mms/ui/ManageSDMessages;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 198
    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages$2;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    #setter for: Lcom/android/mms/ui/ManageSDMessages;->countChecked:I
    invoke-static {v2, v3}, Lcom/android/mms/ui/ManageSDMessages;->access$302(Lcom/android/mms/ui/ManageSDMessages;I)I

    goto :goto_1

    .line 207
    :cond_2
    return-void
.end method
