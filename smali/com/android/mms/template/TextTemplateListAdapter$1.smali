.class Lcom/android/mms/template/TextTemplateListAdapter$1;
.super Ljava/lang/Object;
.source "TextTemplateListAdapter.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/template/TextTemplateListAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/template/TextTemplateListAdapter;


# direct methods
.method constructor <init>(Lcom/android/mms/template/TextTemplateListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/mms/template/TextTemplateListAdapter$1;->this$0:Lcom/android/mms/template/TextTemplateListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListAdapter$1;->this$0:Lcom/android/mms/template/TextTemplateListAdapter;

    #getter for: Lcom/android/mms/template/TextTemplateListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/template/TextTemplateListAdapter;->access$000(Lcom/android/mms/template/TextTemplateListAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/mms/template/TextTemplateListActivity;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListAdapter$1;->this$0:Lcom/android/mms/template/TextTemplateListAdapter;

    #getter for: Lcom/android/mms/template/TextTemplateListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/template/TextTemplateListAdapter;->access$000(Lcom/android/mms/template/TextTemplateListAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/mms/template/TextTemplateListActivity;

    invoke-virtual {v0, p1, p2}, Lcom/android/mms/template/TextTemplateListActivity;->onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V

    .line 104
    :cond_0
    return-void
.end method
