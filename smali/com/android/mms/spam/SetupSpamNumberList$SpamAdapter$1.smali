.class Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$1;
.super Ljava/lang/Object;
.source "SetupSpamNumberList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->drawNormalScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

.field final synthetic val$item:Lcom/android/mms/spam/SpamFilter$SpamFilterData;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;Lcom/android/mms/spam/SpamFilter$SpamFilterData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 900
    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$1;->this$1:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

    iput-object p2, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$1;->val$item:Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 902
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$1;->this$1:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

    iget-object v3, v3, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    iget v3, v3, Lcom/android/mms/spam/SetupSpamNumberList;->mScreenType:I

    if-nez v3, :cond_1

    .line 903
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$1;->val$item:Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$1;->val$item:Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v4}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getEnable()Z

    move-result v4

    if-ne v4, v2, :cond_0

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {v3, v2}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->setEnable(Z)V

    .line 904
    const v2, 0x7f0b0293

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-object v0, v2

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 906
    .local v0, checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$1;->val$item:Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v2}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getEnable()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 908
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$1;->val$item:Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v2}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getId()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 909
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$1;->this$1:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

    iget-object v2, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    iget-object v2, v2, Lcom/android/mms/spam/SetupSpamNumberList;->spamPreference:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 910
    .local v1, editprefs:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_key_spam_option_unknown_num"

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$1;->val$item:Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v3}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getEnable()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 912
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 918
    .end local v0           #checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .end local v1           #editprefs:Landroid/content/SharedPreferences$Editor;
    :cond_1
    :goto_0
    return-void

    .line 914
    .restart local v0       #checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    :cond_2
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$1;->this$1:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

    iget-object v2, v2, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$1;->val$item:Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v3}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getFilter()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$1;->val$item:Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v4}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getEnable()Z

    move-result v4

    iget-object v5, p0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter$1;->val$item:Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v5}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getId()I

    move-result v5

    #calls: Lcom/android/mms/spam/SetupSpamNumberList;->updateSpamNumber(Ljava/lang/String;ZI)V
    invoke-static {v2, v3, v4, v5}, Lcom/android/mms/spam/SetupSpamNumberList;->access$1700(Lcom/android/mms/spam/SetupSpamNumberList;Ljava/lang/String;ZI)V

    goto :goto_0
.end method
