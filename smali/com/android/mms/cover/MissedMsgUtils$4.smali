.class final Lcom/android/mms/cover/MissedMsgUtils$4;
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

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$readReportDataMap:Ljava/util/Map;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/Map;ILjava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/mms/cover/MissedMsgUtils$4;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/mms/cover/MissedMsgUtils$4;->val$readReportDataMap:Ljava/util/Map;

    iput p3, p0, Lcom/android/mms/cover/MissedMsgUtils$4;->val$status:I

    iput-object p4, p0, Lcom/android/mms/cover/MissedMsgUtils$4;->val$callback:Ljava/lang/Runnable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgUtils$4;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgUtils$4;->val$readReportDataMap:Ljava/util/Map;

    iget v2, p0, Lcom/android/mms/cover/MissedMsgUtils$4;->val$status:I

    invoke-static {v0, v1, v2}, Lcom/android/mms/transaction/MmsMessageSender;->sendReadRec(Landroid/content/Context;Ljava/util/Map;I)V

    .line 158
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgUtils$4;->val$callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgUtils$4;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 161
    :cond_0
    return-void
.end method
