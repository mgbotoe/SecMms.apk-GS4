.class final Lcom/android/mms/ui/MessageUtils$5;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageUtils;->handleReadReport(Landroid/content/Context;JILjava/lang/Runnable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Ljava/lang/Runnable;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$map:Ljava/util/Map;

.field final synthetic val$needDelay:Z

.field final synthetic val$readReportDataMap:Ljava/util/Map;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Ljava/util/Map;Landroid/content/Context;ILjava/util/Map;Ljava/lang/Runnable;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2128
    iput-object p1, p0, Lcom/android/mms/ui/MessageUtils$5;->val$map:Ljava/util/Map;

    iput-object p2, p0, Lcom/android/mms/ui/MessageUtils$5;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/android/mms/ui/MessageUtils$5;->val$status:I

    iput-object p4, p0, Lcom/android/mms/ui/MessageUtils$5;->val$readReportDataMap:Ljava/util/Map;

    iput-object p5, p0, Lcom/android/mms/ui/MessageUtils$5;->val$callback:Ljava/lang/Runnable;

    iput-boolean p6, p0, Lcom/android/mms/ui/MessageUtils$5;->val$needDelay:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2130
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsReadReportPdu()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2131
    iget-object v2, p0, Lcom/android/mms/ui/MessageUtils$5;->val$map:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2132
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/mms/ui/MessageUtils$5;->val$context:Landroid/content/Context;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget v5, p0, Lcom/android/mms/ui/MessageUtils$5;->val$status:I

    invoke-static {v4, v2, v3, v5}, Lcom/android/mms/transaction/MmsMessageSender;->sendReadRec(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 2136
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageUtils$5;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/MessageUtils$5;->val$readReportDataMap:Ljava/util/Map;

    iget v4, p0, Lcom/android/mms/ui/MessageUtils$5;->val$status:I

    invoke-static {v2, v3, v4}, Lcom/android/mms/transaction/MmsMessageSender;->sendReadRec(Landroid/content/Context;Ljava/util/Map;I)V

    .line 2139
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/MessageUtils$5;->val$callback:Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    .line 2140
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/android/mms/ui/MessageUtils$5$1;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/MessageUtils$5$1;-><init>(Lcom/android/mms/ui/MessageUtils$5;)V

    iget-boolean v2, p0, Lcom/android/mms/ui/MessageUtils$5;->val$needDelay:Z

    if-eqz v2, :cond_3

    const-wide/16 v2, 0x7d0

    :goto_1
    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2148
    :cond_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2149
    return-void

    .line 2140
    :cond_3
    const-wide/16 v2, 0x0

    goto :goto_1
.end method
