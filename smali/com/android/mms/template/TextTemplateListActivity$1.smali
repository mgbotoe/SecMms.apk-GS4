.class Lcom/android/mms/template/TextTemplateListActivity$1;
.super Ljava/lang/Object;
.source "TextTemplateListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/template/TextTemplateListActivity;->initResource()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/template/TextTemplateListActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/template/TextTemplateListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/mms/template/TextTemplateListActivity$1;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 145
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity$1;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    #getter for: Lcom/android/mms/template/TextTemplateListActivity;->allCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v1}, Lcom/android/mms/template/TextTemplateListActivity;->access$000(Lcom/android/mms/template/TextTemplateListActivity;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    .line 146
    .local v0, checked:Z
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity$1;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    #getter for: Lcom/android/mms/template/TextTemplateListActivity;->allCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v1}, Lcom/android/mms/template/TextTemplateListActivity;->access$000(Lcom/android/mms/template/TextTemplateListActivity;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v3

    if-nez v0, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 147
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity$1;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    #getter for: Lcom/android/mms/template/TextTemplateListActivity;->allCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v1}, Lcom/android/mms/template/TextTemplateListActivity;->access$000(Lcom/android/mms/template/TextTemplateListActivity;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    .line 148
    return-void

    .line 146
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
