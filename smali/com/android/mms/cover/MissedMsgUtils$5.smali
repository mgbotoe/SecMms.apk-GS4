.class final Lcom/android/mms/cover/MissedMsgUtils$5;
.super Ljava/lang/Object;
.source "MissedMsgUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/cover/MissedMsgUtils;->handleReadReportDataOne(Landroid/content/Context;JILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/mms/cover/MissedMsgUtils$5;->val$callback:Ljava/lang/Runnable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgUtils$5;->val$callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgUtils$5;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 169
    :cond_0
    return-void
.end method
