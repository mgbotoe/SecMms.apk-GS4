.class Lcom/android/mms/ui/ConversationListFragment$30;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationListFragment;->initEasyMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationListFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 3898
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$30;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 3902
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$30;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #calls: Lcom/android/mms/ui/ConversationListFragment;->createNewMessage()V
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$6200(Lcom/android/mms/ui/ConversationListFragment;)V

    .line 3903
    return-void
.end method
