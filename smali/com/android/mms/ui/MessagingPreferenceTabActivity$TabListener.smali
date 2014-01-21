.class Lcom/android/mms/ui/MessagingPreferenceTabActivity$TabListener;
.super Ljava/lang/Object;
.source "MessagingPreferenceTabActivity.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessagingPreferenceTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TabListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/preference/PreferenceFragment;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/app/ActionBar$TabListener;"
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mFragment:Landroid/app/Fragment;

.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 3
    .parameter "activity"
    .parameter "tag"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p0, this:Lcom/android/mms/ui/MessagingPreferenceTabActivity$TabListener;,"Lcom/android/mms/ui/MessagingPreferenceTabActivity$TabListener<TT;>;"
    .local p3, clz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p1, p0, Lcom/android/mms/ui/MessagingPreferenceTabActivity$TabListener;->mActivity:Landroid/app/Activity;

    .line 147
    iput-object p2, p0, Lcom/android/mms/ui/MessagingPreferenceTabActivity$TabListener;->mTag:Ljava/lang/String;

    .line 148
    iput-object p3, p0, Lcom/android/mms/ui/MessagingPreferenceTabActivity$TabListener;->mClass:Ljava/lang/Class;

    .line 150
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceTabActivity$TabListener;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceTabActivity$TabListener;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceTabActivity$TabListener;->mFragment:Landroid/app/Fragment;

    .line 151
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceTabActivity$TabListener;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceTabActivity$TabListener;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->isDetached()Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceTabActivity$TabListener;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 153
    .local v0, fragmentTransaction:Landroid/app/FragmentTransaction;
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceTabActivity$TabListener;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 154
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 156
    .end local v0           #fragmentTransaction:Landroid/app/FragmentTransaction;
    :cond_0
    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 181
    .local p0, this:Lcom/android/mms/ui/MessagingPreferenceTabActivity$TabListener;,"Lcom/android/mms/ui/MessagingPreferenceTabActivity$TabListener<TT;>;"
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 3
    .parameter "tab"
    .parameter "fragmentTransaction"

    .prologue
    .line 161
    .local p0, this:Lcom/android/mms/ui/MessagingPreferenceTabActivity$TabListener;,"Lcom/android/mms/ui/MessagingPreferenceTabActivity$TabListener<TT;>;"
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceTabActivity$TabListener;->mFragment:Landroid/app/Fragment;

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceTabActivity$TabListener;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceTabActivity$TabListener;->mClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceTabActivity$TabListener;->mFragment:Landroid/app/Fragment;

    .line 163
    const v0, 0x1020002

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceTabActivity$TabListener;->mFragment:Landroid/app/Fragment;

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceTabActivity$TabListener;->mTag:Ljava/lang/String;

    invoke-virtual {p2, v0, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceTabActivity$TabListener;->mFragment:Landroid/app/Fragment;

    invoke-virtual {p2, v0}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 1
    .parameter "tab"
    .parameter "fragmentTransaction"

    .prologue
    .line 172
    .local p0, this:Lcom/android/mms/ui/MessagingPreferenceTabActivity$TabListener;,"Lcom/android/mms/ui/MessagingPreferenceTabActivity$TabListener<TT;>;"
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceTabActivity$TabListener;->mFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceTabActivity$TabListener;->mFragment:Landroid/app/Fragment;

    invoke-virtual {p2, v0}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 175
    :cond_0
    return-void
.end method
