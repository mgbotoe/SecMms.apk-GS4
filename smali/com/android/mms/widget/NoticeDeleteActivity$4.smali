.class Lcom/android/mms/widget/NoticeDeleteActivity$4;
.super Ljava/lang/Object;
.source "NoticeDeleteActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/widget/NoticeDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/widget/NoticeDeleteActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/widget/NoticeDeleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 609
    iput-object p1, p0, Lcom/android/mms/widget/NoticeDeleteActivity$4;->this$0:Lcom/android/mms/widget/NoticeDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 614
    const-string v2, "mmsnoticewidget/NoticeListEditActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mOnTextTemplateListItemClick(), position="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    const v2, 0x7f0b02bf

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 619
    .local v0, checkBox:Landroid/widget/CheckBox;
    if-eqz v0, :cond_0

    .line 620
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 621
    .local v1, checked:Z
    if-nez v1, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 622
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->sendAccessibilityEvent(I)V

    .line 624
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 625
    iget-object v2, p0, Lcom/android/mms/widget/NoticeDeleteActivity$4;->this$0:Lcom/android/mms/widget/NoticeDeleteActivity;

    #getter for: Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;
    invoke-static {v2}, Lcom/android/mms/widget/NoticeDeleteActivity;->access$100(Lcom/android/mms/widget/NoticeDeleteActivity;)Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;->addCheckedItem(I)V

    .line 628
    iget-object v2, p0, Lcom/android/mms/widget/NoticeDeleteActivity$4;->this$0:Lcom/android/mms/widget/NoticeDeleteActivity;

    #getter for: Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;
    invoke-static {v2}, Lcom/android/mms/widget/NoticeDeleteActivity;->access$100(Lcom/android/mms/widget/NoticeDeleteActivity;)Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;->getCheckedSize()I

    move-result v2

    iget-object v4, p0, Lcom/android/mms/widget/NoticeDeleteActivity$4;->this$0:Lcom/android/mms/widget/NoticeDeleteActivity;

    #getter for: Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;
    invoke-static {v4}, Lcom/android/mms/widget/NoticeDeleteActivity;->access$100(Lcom/android/mms/widget/NoticeDeleteActivity;)Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;->getCount()I

    move-result v4

    if-ne v2, v4, :cond_0

    .line 630
    iget-object v2, p0, Lcom/android/mms/widget/NoticeDeleteActivity$4;->this$0:Lcom/android/mms/widget/NoticeDeleteActivity;

    #getter for: Lcom/android/mms/widget/NoticeDeleteActivity;->mAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v2}, Lcom/android/mms/widget/NoticeDeleteActivity;->access$500(Lcom/android/mms/widget/NoticeDeleteActivity;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 644
    .end local v1           #checked:Z
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/mms/widget/NoticeDeleteActivity$4;->this$0:Lcom/android/mms/widget/NoticeDeleteActivity;

    invoke-virtual {v2}, Lcom/android/mms/widget/NoticeDeleteActivity;->invalidateOptionsMenu()V

    .line 646
    return-void

    .restart local v1       #checked:Z
    :cond_1
    move v2, v4

    .line 621
    goto :goto_0

    .line 632
    :cond_2
    iget-object v2, p0, Lcom/android/mms/widget/NoticeDeleteActivity$4;->this$0:Lcom/android/mms/widget/NoticeDeleteActivity;

    #getter for: Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;
    invoke-static {v2}, Lcom/android/mms/widget/NoticeDeleteActivity;->access$100(Lcom/android/mms/widget/NoticeDeleteActivity;)Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;->removeCheckedItem(I)V

    .line 635
    iget-object v2, p0, Lcom/android/mms/widget/NoticeDeleteActivity$4;->this$0:Lcom/android/mms/widget/NoticeDeleteActivity;

    #getter for: Lcom/android/mms/widget/NoticeDeleteActivity;->mAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v2}, Lcom/android/mms/widget/NoticeDeleteActivity;->access$500(Lcom/android/mms/widget/NoticeDeleteActivity;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 638
    iget-object v2, p0, Lcom/android/mms/widget/NoticeDeleteActivity$4;->this$0:Lcom/android/mms/widget/NoticeDeleteActivity;

    #setter for: Lcom/android/mms/widget/NoticeDeleteActivity;->selectAllUserUnchecked:Z
    invoke-static {v2, v4}, Lcom/android/mms/widget/NoticeDeleteActivity;->access$602(Lcom/android/mms/widget/NoticeDeleteActivity;Z)Z

    .line 639
    iget-object v2, p0, Lcom/android/mms/widget/NoticeDeleteActivity$4;->this$0:Lcom/android/mms/widget/NoticeDeleteActivity;

    #getter for: Lcom/android/mms/widget/NoticeDeleteActivity;->mAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v2}, Lcom/android/mms/widget/NoticeDeleteActivity;->access$500(Lcom/android/mms/widget/NoticeDeleteActivity;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_1
.end method
