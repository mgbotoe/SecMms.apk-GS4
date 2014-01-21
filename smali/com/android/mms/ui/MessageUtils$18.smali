.class final Lcom/android/mms/ui/MessageUtils$18;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageUtils;->createblockNumberSettingDialog(Landroid/content/Context;Lcom/android/mms/data/Contact;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$contact:Lcom/android/mms/data/Contact;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/mms/data/Contact;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5170
    iput-object p1, p0, Lcom/android/mms/ui/MessageUtils$18;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/mms/ui/MessageUtils$18;->val$contact:Lcom/android/mms/data/Contact;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5176
    iget-object v2, p0, Lcom/android/mms/ui/MessageUtils$18;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/util/TelephonyUtils;->isVoiceCallAvailabe(Landroid/content/Context;)Z

    move-result v1

    .line 5177
    .local v1, isVoiceCallAvailabe:Z
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVideoCall()Z

    move-result v0

    .line 5180
    .local v0, isVTCallAvailabe:Z
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->access$100()[Z

    move-result-object v2

    aget-boolean v2, v2, v4

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->access$200()[Z

    move-result-object v2

    aget-boolean v2, v2, v4

    if-eqz v2, :cond_3

    .line 5181
    iget-object v2, p0, Lcom/android/mms/ui/MessageUtils$18;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/MessageUtils$18;->val$contact:Lcom/android/mms/data/Contact;

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/ui/MessageUtils;->registerAsSpamNumber(Landroid/content/Context;Ljava/lang/String;)Z

    .line 5186
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 5188
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->access$100()[Z

    move-result-object v2

    aget-boolean v2, v2, v5

    if-nez v2, :cond_4

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->access$200()[Z

    move-result-object v2

    aget-boolean v2, v2, v5

    if-eqz v2, :cond_4

    .line 5189
    iget-object v2, p0, Lcom/android/mms/ui/MessageUtils$18;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/MessageUtils$18;->val$contact:Lcom/android/mms/data/Contact;

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/MessageUtils;->registerAsCallBlockNumber(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 5194
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 5196
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->access$100()[Z

    move-result-object v2

    aget-boolean v2, v2, v6

    if-nez v2, :cond_5

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->access$200()[Z

    move-result-object v2

    aget-boolean v2, v2, v6

    if-eqz v2, :cond_5

    .line 5197
    iget-object v2, p0, Lcom/android/mms/ui/MessageUtils$18;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/MessageUtils$18;->val$contact:Lcom/android/mms/data/Contact;

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/mms/ui/MessageUtils;->registerAsCallBlockNumber(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 5204
    :cond_2
    :goto_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 5205
    return-void

    .line 5182
    :cond_3
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->access$100()[Z

    move-result-object v2

    aget-boolean v2, v2, v4

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->access$200()[Z

    move-result-object v2

    aget-boolean v2, v2, v4

    if-nez v2, :cond_0

    .line 5183
    iget-object v2, p0, Lcom/android/mms/ui/MessageUtils$18;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/MessageUtils$18;->val$contact:Lcom/android/mms/data/Contact;

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v4, v3}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->changeCheckStatus(Landroid/content/Context;ILjava/lang/String;)Z

    goto :goto_0

    .line 5190
    :cond_4
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->access$100()[Z

    move-result-object v2

    aget-boolean v2, v2, v5

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->access$200()[Z

    move-result-object v2

    aget-boolean v2, v2, v5

    if-nez v2, :cond_1

    .line 5191
    iget-object v2, p0, Lcom/android/mms/ui/MessageUtils$18;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/MessageUtils$18;->val$contact:Lcom/android/mms/data/Contact;

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/MessageUtils;->unregisterAsCallBlockNumber(Landroid/content/Context;Ljava/lang/String;Z)Z

    goto :goto_1

    .line 5198
    :cond_5
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->access$100()[Z

    move-result-object v2

    aget-boolean v2, v2, v6

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->access$200()[Z

    move-result-object v2

    aget-boolean v2, v2, v6

    if-nez v2, :cond_2

    .line 5199
    iget-object v2, p0, Lcom/android/mms/ui/MessageUtils$18;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/MessageUtils$18;->val$contact:Lcom/android/mms/data/Contact;

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/mms/ui/MessageUtils;->unregisterAsCallBlockNumber(Landroid/content/Context;Ljava/lang/String;Z)Z

    goto :goto_2
.end method
