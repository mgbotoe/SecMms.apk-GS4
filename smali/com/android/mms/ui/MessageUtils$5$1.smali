.class Lcom/android/mms/ui/MessageUtils$5$1;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageUtils$5;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageUtils$5;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageUtils$5;)V
    .locals 0
    .parameter

    .prologue
    .line 2140
    iput-object p1, p0, Lcom/android/mms/ui/MessageUtils$5$1;->this$0:Lcom/android/mms/ui/MessageUtils$5;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2143
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$5$1;->this$0:Lcom/android/mms/ui/MessageUtils$5;

    iget-object v0, v0, Lcom/android/mms/ui/MessageUtils$5;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2144
    return-void
.end method
