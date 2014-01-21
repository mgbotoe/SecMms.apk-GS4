.class Lcom/samsung/mms/ui/AutoSendingTestActivity$1;
.super Ljava/lang/Object;
.source "AutoSendingTestActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/mms/ui/AutoSendingTestActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/ui/AutoSendingTestActivity;


# direct methods
.method constructor <init>(Lcom/samsung/mms/ui/AutoSendingTestActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity$1;->this$0:Lcom/samsung/mms/ui/AutoSendingTestActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .parameter "v"

    .prologue
    .line 231
    iget-object v2, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity$1;->this$0:Lcom/samsung/mms/ui/AutoSendingTestActivity;

    #calls: Lcom/samsung/mms/ui/AutoSendingTestActivity;->getSharedPreference()Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->access$200(Lcom/samsung/mms/ui/AutoSendingTestActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 232
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 233
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v2, "Address"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 234
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 235
    iget-object v2, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity$1;->this$0:Lcom/samsung/mms/ui/AutoSendingTestActivity;

    #getter for: Lcom/samsung/mms/ui/AutoSendingTestActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->access$300(Lcom/samsung/mms/ui/AutoSendingTestActivity;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "clear Saved Address"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 236
    const/4 v2, 0x1

    return v2
.end method
