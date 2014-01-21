.class Lcom/android/mms/template/TextTemplateListActivity$4;
.super Ljava/lang/Object;
.source "TextTemplateListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/template/TextTemplateListActivity;
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
    .line 820
    iput-object p1, p0, Lcom/android/mms/template/TextTemplateListActivity$4;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 823
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v2, "Mms/TextTemplateListActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mOnTextTemplateListItemClick(), position="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity$4;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    #getter for: Lcom/android/mms/template/TextTemplateListActivity;->mMode:I
    invoke-static {v2}, Lcom/android/mms/template/TextTemplateListActivity;->access$200(Lcom/android/mms/template/TextTemplateListActivity;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 826
    const v2, 0x7f0b0276

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 827
    .local v0, checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    if-eqz v0, :cond_0

    .line 828
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    .line 829
    .local v1, checked:Z
    if-nez v1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 834
    .end local v0           #checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .end local v1           #checked:Z
    :cond_0
    :goto_1
    return-void

    .line 829
    .restart local v0       #checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .restart local v1       #checked:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 832
    .end local v0           #checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .end local v1           #checked:Z
    :cond_2
    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity$4;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    invoke-virtual {v2, p3}, Lcom/android/mms/template/TextTemplateListActivity;->onListItemClick(I)V

    goto :goto_1
.end method
