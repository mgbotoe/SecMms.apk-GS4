.class Lcom/samsung/mms/ui/ConversationListRestore$2;
.super Ljava/lang/Object;
.source "ConversationListRestore.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/mms/ui/ConversationListRestore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/ui/ConversationListRestore;


# direct methods
.method constructor <init>(Lcom/samsung/mms/ui/ConversationListRestore;)V
    .locals 0
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/samsung/mms/ui/ConversationListRestore$2;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "arg0"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 241
    iget-object v3, p0, Lcom/samsung/mms/ui/ConversationListRestore$2;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #getter for: Lcom/samsung/mms/ui/ConversationListRestore;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v3}, Lcom/samsung/mms/ui/ConversationListRestore;->access$200(Lcom/samsung/mms/ui/ConversationListRestore;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 242
    .local v0, checked:Z
    :goto_0
    if-eqz v0, :cond_2

    .line 243
    iget-object v3, p0, Lcom/samsung/mms/ui/ConversationListRestore$2;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #calls: Lcom/samsung/mms/ui/ConversationListRestore;->setAllChecked(Z)V
    invoke-static {v3, v1}, Lcom/samsung/mms/ui/ConversationListRestore;->access$300(Lcom/samsung/mms/ui/ConversationListRestore;Z)V

    .line 247
    :goto_1
    iget-object v3, p0, Lcom/samsung/mms/ui/ConversationListRestore$2;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #getter for: Lcom/samsung/mms/ui/ConversationListRestore;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v3}, Lcom/samsung/mms/ui/ConversationListRestore;->access$200(Lcom/samsung/mms/ui/ConversationListRestore;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 248
    iget-object v3, p0, Lcom/samsung/mms/ui/ConversationListRestore$2;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #getter for: Lcom/samsung/mms/ui/ConversationListRestore;->mMenuDone:Landroid/view/MenuItem;
    invoke-static {v3}, Lcom/samsung/mms/ui/ConversationListRestore;->access$400(Lcom/samsung/mms/ui/ConversationListRestore;)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 250
    if-eqz v0, :cond_3

    .line 251
    iget-object v2, p0, Lcom/samsung/mms/ui/ConversationListRestore$2;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #getter for: Lcom/samsung/mms/ui/ConversationListRestore;->mMenuDone:Landroid/view/MenuItem;
    invoke-static {v2}, Lcom/samsung/mms/ui/ConversationListRestore;->access$400(Lcom/samsung/mms/ui/ConversationListRestore;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 257
    :cond_0
    :goto_2
    return-void

    .end local v0           #checked:Z
    :cond_1
    move v0, v2

    .line 241
    goto :goto_0

    .line 245
    .restart local v0       #checked:Z
    :cond_2
    iget-object v3, p0, Lcom/samsung/mms/ui/ConversationListRestore$2;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #calls: Lcom/samsung/mms/ui/ConversationListRestore;->setAllChecked(Z)V
    invoke-static {v3, v2}, Lcom/samsung/mms/ui/ConversationListRestore;->access$300(Lcom/samsung/mms/ui/ConversationListRestore;Z)V

    goto :goto_1

    .line 253
    :cond_3
    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore$2;->this$0:Lcom/samsung/mms/ui/ConversationListRestore;

    #getter for: Lcom/samsung/mms/ui/ConversationListRestore;->mMenuDone:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/samsung/mms/ui/ConversationListRestore;->access$400(Lcom/samsung/mms/ui/ConversationListRestore;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2
.end method
