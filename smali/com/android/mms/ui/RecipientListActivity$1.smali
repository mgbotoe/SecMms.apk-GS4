.class Lcom/android/mms/ui/RecipientListActivity$1;
.super Ljava/lang/Object;
.source "RecipientListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/RecipientListActivity;->onUpdate(Lcom/android/mms/data/Contact;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/RecipientListActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/RecipientListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/mms/ui/RecipientListActivity$1;->this$0:Lcom/android/mms/ui/RecipientListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity$1;->this$0:Lcom/android/mms/ui/RecipientListActivity;

    #getter for: Lcom/android/mms/ui/RecipientListActivity;->mListAdapter:Lcom/android/mms/ui/RecipientListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/RecipientListActivity;->access$000(Lcom/android/mms/ui/RecipientListActivity;)Lcom/android/mms/ui/RecipientListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity$1;->this$0:Lcom/android/mms/ui/RecipientListActivity;

    #getter for: Lcom/android/mms/ui/RecipientListActivity;->mListAdapter:Lcom/android/mms/ui/RecipientListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/RecipientListActivity;->access$000(Lcom/android/mms/ui/RecipientListActivity;)Lcom/android/mms/ui/RecipientListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientListAdapter;->notifyDataSetChanged()V

    .line 96
    :cond_0
    return-void
.end method
