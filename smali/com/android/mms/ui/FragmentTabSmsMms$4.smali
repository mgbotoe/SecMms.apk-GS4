.class Lcom/android/mms/ui/FragmentTabSmsMms$4;
.super Ljava/lang/Object;
.source "FragmentTabSmsMms.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/FragmentTabSmsMms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/FragmentTabSmsMms;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/FragmentTabSmsMms;)V
    .locals 0
    .parameter

    .prologue
    .line 549
    iput-object p1, p0, Lcom/android/mms/ui/FragmentTabSmsMms$4;->this$0:Lcom/android/mms/ui/FragmentTabSmsMms;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 12
    .parameter "pref"
    .parameter "newValue"

    .prologue
    const v11, 0x7f0c00f5

    const/4 v10, 0x1

    .line 551
    move-object v9, p2

    check-cast v9, Ljava/lang/String;

    .line 552
    .local v9, smsc_addr:Ljava/lang/String;
    const-string v0, "Mms/MessagingPreferenceTabActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onPreferenceChange] SmscAddr :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    :try_start_0
    const-string v0, "+"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 556
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 560
    :goto_0
    const-string v0, "-"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 561
    iget-object v0, p0, Lcom/android/mms/ui/FragmentTabSmsMms$4;->this$0:Lcom/android/mms/ui/FragmentTabSmsMms;

    #getter for: Lcom/android/mms/ui/FragmentTabSmsMms;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/FragmentTabSmsMms;->access$000(Lcom/android/mms/ui/FragmentTabSmsMms;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c00f5

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 588
    :cond_0
    :goto_1
    const/4 v0, 0x0

    return v0

    .line 558
    :cond_1
    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 583
    :catch_0
    move-exception v7

    .line 585
    .local v7, e:Ljava/lang/NumberFormatException;
    iget-object v0, p0, Lcom/android/mms/ui/FragmentTabSmsMms$4;->this$0:Lcom/android/mms/ui/FragmentTabSmsMms;

    #getter for: Lcom/android/mms/ui/FragmentTabSmsMms;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/FragmentTabSmsMms;->access$000(Lcom/android/mms/ui/FragmentTabSmsMms;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v11, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 565
    .end local v7           #e:Ljava/lang/NumberFormatException;
    :cond_2
    :try_start_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 566
    .local v3, values:Landroid/content/ContentValues;
    const-string v0, "smsc"

    invoke-virtual {v3, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    iget-object v0, p0, Lcom/android/mms/ui/FragmentTabSmsMms$4;->this$0:Lcom/android/mms/ui/FragmentTabSmsMms;

    #getter for: Lcom/android/mms/ui/FragmentTabSmsMms;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/FragmentTabSmsMms;->access$000(Lcom/android/mms/ui/FragmentTabSmsMms;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/FragmentTabSmsMms$4;->this$0:Lcom/android/mms/ui/FragmentTabSmsMms;

    #getter for: Lcom/android/mms/ui/FragmentTabSmsMms;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/FragmentTabSmsMms;->access$000(Lcom/android/mms/ui/FragmentTabSmsMms;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/ui/MessagingPreferenceActivity;->SMSC_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 571
    .local v6, bResult:I
    if-ne v6, v10, :cond_3

    .line 572
    iget-object v0, p0, Lcom/android/mms/ui/FragmentTabSmsMms$4;->this$0:Lcom/android/mms/ui/FragmentTabSmsMms;

    const-string v1, "pref_key_manage_smsc_address"

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/FragmentTabSmsMms;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/EditTextPreference;

    .line 573
    .local v8, mSmscAddrPref:Landroid/preference/EditTextPreference;
    if-eqz v8, :cond_0

    .line 574
    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 575
    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 578
    .end local v8           #mSmscAddrPref:Landroid/preference/EditTextPreference;
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/FragmentTabSmsMms$4;->this$0:Lcom/android/mms/ui/FragmentTabSmsMms;

    #getter for: Lcom/android/mms/ui/FragmentTabSmsMms;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/FragmentTabSmsMms;->access$000(Lcom/android/mms/ui/FragmentTabSmsMms;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c00f6

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
