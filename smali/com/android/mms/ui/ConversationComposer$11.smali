.class Lcom/android/mms/ui/ConversationComposer$11;
.super Ljava/lang/Object;
.source "ConversationComposer.java"

# interfaces
.implements Lcom/android/mms/ui/OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationComposer;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationComposer;)V
    .locals 0
    .parameter

    .prologue
    .line 2090
    iput-object p1, p0, Lcom/android/mms/ui/ConversationComposer$11;->this$0:Lcom/android/mms/ui/ConversationComposer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent()V
    .locals 2

    .prologue
    .line 2092
    const-string v0, "Mms/ConversationComposer"

    const-string v1, "onComposerClose"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2094
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer$11;->this$0:Lcom/android/mms/ui/ConversationComposer;

    new-instance v1, Lcom/android/mms/ui/ConversationComposer$11$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationComposer$11$1;-><init>(Lcom/android/mms/ui/ConversationComposer$11;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationComposer;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2116
    return-void
.end method
