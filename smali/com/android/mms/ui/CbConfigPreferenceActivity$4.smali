.class Lcom/android/mms/ui/CbConfigPreferenceActivity$4;
.super Ljava/lang/Object;
.source "CbConfigPreferenceActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/CbConfigPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/CbConfigPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 335
    iput-object p1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$4;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 337
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 338
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    if-eqz v0, :cond_0

    iget v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    iget v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$4;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    #getter for: Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelContainer:Landroid/preference/PreferenceGroup;
    invoke-static {v3}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$200(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/preference/PreferenceGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 339
    iget-object v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$4;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    #getter for: Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelContainer:Landroid/preference/PreferenceGroup;
    invoke-static {v2}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$200(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/preference/PreferenceGroup;

    move-result-object v2

    iget v3, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 341
    .local v1, pref:Landroid/preference/CheckBoxPreference;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "919"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "4370"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 349
    .end local v1           #pref:Landroid/preference/CheckBoxPreference;
    :cond_0
    :goto_0
    return-void

    .line 344
    .restart local v1       #pref:Landroid/preference/CheckBoxPreference;
    :cond_1
    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 345
    const v2, 0x7f0c007b

    invoke-interface {p1, v4, v4, v4, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 346
    const v2, 0x7f0c0052

    invoke-interface {p1, v4, v5, v5, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method
