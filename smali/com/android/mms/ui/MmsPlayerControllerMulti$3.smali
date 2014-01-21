.class Lcom/android/mms/ui/MmsPlayerControllerMulti$3;
.super Ljava/lang/Object;
.source "MmsPlayerControllerMulti.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MmsPlayerControllerMulti;->initControllerView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsPlayerControllerMulti;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsPlayerControllerMulti;)V
    .locals 0
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti$3;->this$0:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 220
    if-eqz p2, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerControllerMulti$3;->this$0:Lcom/android/mms/ui/MmsPlayerControllerMulti;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->show(I)V

    .line 222
    :cond_0
    return-void
.end method
