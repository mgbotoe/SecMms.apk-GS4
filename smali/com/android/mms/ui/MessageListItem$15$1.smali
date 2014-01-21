.class Lcom/android/mms/ui/MessageListItem$15$1;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListItem$15;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/MessageListItem$15;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem$15;)V
    .locals 0
    .parameter

    .prologue
    .line 2736
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$15$1;->this$1:Lcom/android/mms/ui/MessageListItem$15;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2738
    packed-switch p2, :pswitch_data_0

    .line 2748
    :goto_0
    return-void

    .line 2740
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$15$1;->this$1:Lcom/android/mms/ui/MessageListItem$15;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem$15;->this$0:Lcom/android/mms/ui/MessageListItem;

    #calls: Lcom/android/mms/ui/MessageListItem;->deleteDraftMessage()V
    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->access$6100(Lcom/android/mms/ui/MessageListItem;)V

    goto :goto_0

    .line 2743
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$15$1;->this$1:Lcom/android/mms/ui/MessageListItem$15;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem$15;->this$0:Lcom/android/mms/ui/MessageListItem;

    #calls: Lcom/android/mms/ui/MessageListItem;->editDraftMessage()V
    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->access$6200(Lcom/android/mms/ui/MessageListItem;)V

    goto :goto_0

    .line 2738
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
