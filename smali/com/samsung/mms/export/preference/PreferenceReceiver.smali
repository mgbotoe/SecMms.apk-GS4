.class public Lcom/samsung/mms/export/preference/PreferenceReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PreferenceReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/mms/export/preference/PreferenceReceiver$PrefData;
    }
.end annotation


# static fields
.field public static final EXTRA_KEY:Ljava/lang/String; = "key"

.field public static final EXTRA_TYPE:Ljava/lang/String; = "type"

.field public static final EXTRA_VALUE:Ljava/lang/String; = "value"

.field public static final RCS_NOTI_OFF:Ljava/lang/String; = "rcs.dl.interface.Message.NOTI_OFF"

.field public static final RCS_NOTI_ON:Ljava/lang/String; = "rcs.dl.interface.Message.NOTI_ON"

.field public static final RCS_REPORT_Fail:Ljava/lang/String; = "rcs.dl.interface.Message.REPORT_Fail"

.field public static final RCS_REPORT_OK:Ljava/lang/String; = "rcs.dl.interface.Message.REPORT_OK"

.field public static final READ_PREFERENCES:Ljava/lang/String; = "rcs.dl.interface.Message.READ_PREFERENCES"

.field public static final READ_PREFERENCES_REPORT:Ljava/lang/String; = "rcs.dl.interface.Message.READ_PREFERENCES_REPORT"

.field public static final RESULT_FAIL:I = -0x1

.field public static final RESULT_FAIL_ACTION:I = 0x1

.field public static final RESULT_FAIL_MISMATCH_TYPE:I = 0x4

.field public static final RESULT_FAIL_NOT_ALLOW_KEY:I = 0x2

.field public static final RESULT_FAIL_NOT_FOUND_KEY:I = 0x3

.field public static final RESULT_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Mms/PreferenceReceiver"

.field public static final WRITE_ALLOW_KEY_LIST:[Ljava/lang/String; = null

.field public static final WRITE_PREFERENCES:Ljava/lang/String; = "rcs.dl.interface.Message.WRITE_PREFERENCES"

.field public static final WRITE_PREFERENCES_REPORT:Ljava/lang/String; = "rcs.dl.interface.Message.WRITE_PREFERENCES_REPORT"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "pref_key_enable_notifications"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "pref_key_enable_preview_message"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "pref_key_mms_auto_retrieval"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "pref_key_mms_retrieval_during_roaming"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "pref_key_spam_option_enable"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "pref_key_spam_filter_unknown_enable"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pref_cmas_settings"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "pref_key_emergency_alert_reminder"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "pref_key_cmas_vibrateWhen_checkbox"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/mms/export/preference/PreferenceReceiver;->WRITE_ALLOW_KEY_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method getPref(Ljava/lang/String;I)I
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 221
    :try_start_0
    iget-object v1, p0, Lcom/samsung/mms/export/preference/PreferenceReceiver;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    return v1

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, e:Ljava/lang/ClassCastException;
    throw v0

    .line 224
    .end local v0           #e:Ljava/lang/ClassCastException;
    :catch_1
    move-exception v0

    .line 225
    .local v0, e:Ljava/lang/NullPointerException;
    throw v0
.end method

.method getPref(Ljava/lang/String;J)J
    .locals 3
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 231
    :try_start_0
    iget-object v1, p0, Lcom/samsung/mms/export/preference/PreferenceReceiver;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v1

    return-wide v1

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, e:Ljava/lang/ClassCastException;
    throw v0

    .line 234
    .end local v0           #e:Ljava/lang/ClassCastException;
    :catch_1
    move-exception v0

    .line 235
    .local v0, e:Ljava/lang/NullPointerException;
    throw v0
.end method

.method getPref(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Lcom/samsung/mms/export/preference/PreferenceReceiver$PrefData;
    .locals 5
    .parameter "key"
    .parameter "type"
    .parameter "intent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            ")",
            "Lcom/samsung/mms/export/preference/PreferenceReceiver$PrefData",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 179
    :try_start_0
    const-string v1, "BOOLEAN"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    new-instance v1, Lcom/samsung/mms/export/preference/PreferenceReceiver$PrefData;

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lcom/samsung/mms/export/preference/PreferenceReceiver;->getPref(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, p0, p1, p2, v3}, Lcom/samsung/mms/export/preference/PreferenceReceiver$PrefData;-><init>(Lcom/samsung/mms/export/preference/PreferenceReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 196
    :goto_0
    return-object v1

    .line 181
    :cond_0
    const-string v1, "STRING"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 182
    new-instance v1, Lcom/samsung/mms/export/preference/PreferenceReceiver$PrefData;

    const-string v3, ""

    invoke-virtual {p0, p1, v3}, Lcom/samsung/mms/export/preference/PreferenceReceiver;->getPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, p1, p2, v3}, Lcom/samsung/mms/export/preference/PreferenceReceiver$PrefData;-><init>(Lcom/samsung/mms/export/preference/PreferenceReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v1, "Mms/PreferenceReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPref : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 193
    goto :goto_0

    .line 183
    .end local v0           #e:Ljava/lang/ClassCastException;
    :cond_1
    :try_start_1
    const-string v1, "INT"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 184
    new-instance v1, Lcom/samsung/mms/export/preference/PreferenceReceiver$PrefData;

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lcom/samsung/mms/export/preference/PreferenceReceiver;->getPref(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, p0, p1, p2, v3}, Lcom/samsung/mms/export/preference/PreferenceReceiver$PrefData;-><init>(Lcom/samsung/mms/export/preference/PreferenceReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 194
    :catch_1
    move-exception v0

    .line 195
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "Mms/PreferenceReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPref : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 196
    goto :goto_0

    .line 185
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_2
    :try_start_2
    const-string v1, "LONG"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 186
    new-instance v1, Lcom/samsung/mms/export/preference/PreferenceReceiver$PrefData;

    const-wide/16 v3, 0x0

    invoke-virtual {p0, p1, v3, v4}, Lcom/samsung/mms/export/preference/PreferenceReceiver;->getPref(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, p0, p1, p2, v3}, Lcom/samsung/mms/export/preference/PreferenceReceiver$PrefData;-><init>(Lcom/samsung/mms/export/preference/PreferenceReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 188
    :cond_3
    const-string v1, "Mms/PreferenceReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized Type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v1, v2

    .line 189
    goto/16 :goto_0
.end method

.method getPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 211
    :try_start_0
    iget-object v1, p0, Lcom/samsung/mms/export/preference/PreferenceReceiver;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, e:Ljava/lang/ClassCastException;
    throw v0

    .line 214
    .end local v0           #e:Ljava/lang/ClassCastException;
    :catch_1
    move-exception v0

    .line 215
    .local v0, e:Ljava/lang/NullPointerException;
    throw v0
.end method

.method getPref(Ljava/lang/String;Z)Z
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 201
    :try_start_0
    iget-object v1, p0, Lcom/samsung/mms/export/preference/PreferenceReceiver;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    return v1

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, e:Ljava/lang/ClassCastException;
    throw v0

    .line 204
    .end local v0           #e:Ljava/lang/ClassCastException;
    :catch_1
    move-exception v0

    .line 205
    .local v0, e:Ljava/lang/NullPointerException;
    throw v0
.end method

.method isWritableKey(Ljava/lang/String;)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 125
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/samsung/mms/export/preference/PreferenceReceiver;->WRITE_ALLOW_KEY_LIST:[Ljava/lang/String;

    array-length v1, v1

    if-le v1, v0, :cond_1

    .line 126
    sget-object v1, Lcom/samsung/mms/export/preference/PreferenceReceiver;->WRITE_ALLOW_KEY_LIST:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    const/4 v1, 0x1

    .line 130
    :goto_1
    return v1

    .line 125
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    .line 72
    iput-object p1, p0, Lcom/samsung/mms/export/preference/PreferenceReceiver;->mContext:Landroid/content/Context;

    .line 73
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, action:Ljava/lang/String;
    const-string v7, "Mms/PreferenceReceiver"

    invoke-static {v7, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v7

    if-ne v7, v6, :cond_0

    .line 78
    const-string v7, "com.android.mms_preferences"

    const/4 v8, 0x4

    invoke-virtual {p1, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/mms/export/preference/PreferenceReceiver;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 79
    const/4 v4, 0x0

    .line 81
    .local v4, resultData:Lcom/samsung/mms/export/preference/PreferenceReceiver$PrefData;,"Lcom/samsung/mms/export/preference/PreferenceReceiver$PrefData<*>;"
    const-string v7, "rcs.dl.interface.Message.WRITE_PREFERENCES"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 82
    const-string v7, "key"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, key:Ljava/lang/String;
    const-string v7, "type"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 85
    .local v5, type:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/samsung/mms/export/preference/PreferenceReceiver;->isWritableKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 86
    const-string v7, "Mms/PreferenceReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "this key is not writable :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v7, "rcs.dl.interface.Message.WRITE_PREFERENCES_REPORT"

    invoke-virtual {p0, v7, v4}, Lcom/samsung/mms/export/preference/PreferenceReceiver;->sendResultPrefReport(Ljava/lang/String;Lcom/samsung/mms/export/preference/PreferenceReceiver$PrefData;)V

    .line 122
    .end local v2           #key:Ljava/lang/String;
    .end local v4           #resultData:Lcom/samsung/mms/export/preference/PreferenceReceiver$PrefData;,"Lcom/samsung/mms/export/preference/PreferenceReceiver$PrefData<*>;"
    .end local v5           #type:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 90
    .restart local v2       #key:Ljava/lang/String;
    .restart local v4       #resultData:Lcom/samsung/mms/export/preference/PreferenceReceiver$PrefData;,"Lcom/samsung/mms/export/preference/PreferenceReceiver$PrefData<*>;"
    .restart local v5       #type:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v2, v5, p2}, Lcom/samsung/mms/export/preference/PreferenceReceiver;->putPref(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Lcom/samsung/mms/export/preference/PreferenceReceiver$PrefData;

    move-result-object v4

    .line 91
    const-string v7, "rcs.dl.interface.Message.WRITE_PREFERENCES_REPORT"

    invoke-virtual {p0, v7, v4}, Lcom/samsung/mms/export/preference/PreferenceReceiver;->sendResultPrefReport(Ljava/lang/String;Lcom/samsung/mms/export/preference/PreferenceReceiver$PrefData;)V

    goto :goto_0

    .line 94
    .end local v2           #key:Ljava/lang/String;
    .end local v5           #type:Ljava/lang/String;
    :cond_2
    const-string v7, "rcs.dl.interface.Message.READ_PREFERENCES"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 95
    const-string v7, "key"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 96
    .restart local v2       #key:Ljava/lang/String;
    const-string v7, "type"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 98
    .restart local v5       #type:Ljava/lang/String;
    invoke-virtual {p0, v2, v5, p2}, Lcom/samsung/mms/export/preference/PreferenceReceiver;->getPref(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Lcom/samsung/mms/export/preference/PreferenceReceiver$PrefData;

    move-result-object v4

    .line 99
    const-string v7, "rcs.dl.interface.Message.READ_PREFERENCES_REPORT"

    invoke-virtual {p0, v7, v4}, Lcom/samsung/mms/export/preference/PreferenceReceiver;->sendResultPrefReport(Ljava/lang/String;Lcom/samsung/mms/export/preference/PreferenceReceiver$PrefData;)V

    goto :goto_0

    .line 102
    .end local v2           #key:Ljava/lang/String;
    .end local v5           #type:Ljava/lang/String;
    :cond_3
    const-string v7, "rcs.dl.interface.Message.NOTI_OFF"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "rcs.dl.interface.Message.NOTI_ON"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 104
    :cond_4
    const/4 v3, 0x0

    .line 105
    .local v3, result:Z
    const-string v7, "rcs.dl.interface.Message.NOTI_ON"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 108
    .local v6, value:Z
    :goto_1
    :try_start_0
    const-string v7, "pref_key_enable_notifications"

    invoke-virtual {p0, v7, v6}, Lcom/samsung/mms/export/preference/PreferenceReceiver;->putPref(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    if-eqz v7, :cond_5

    .line 109
    const/4 v3, 0x1

    .line 118
    :cond_5
    :goto_2
    invoke-virtual {p0, v3}, Lcom/samsung/mms/export/preference/PreferenceReceiver;->sendResult(Z)V

    goto :goto_0

    .line 105
    .end local v6           #value:Z
    :cond_6
    const/4 v6, 0x0

    goto :goto_1

    .line 111
    .restart local v6       #value:Z
    :catch_0
    move-exception v1

    .line 112
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v7, "Mms/PreferenceReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ClassCastException : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const/4 v3, 0x0

    .line 117
    goto :goto_2

    .line 114
    .end local v1           #e:Ljava/lang/ClassCastException;
    :catch_1
    move-exception v1

    .line 115
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v7, "Mms/PreferenceReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NullPointerException : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const/4 v3, 0x0

    goto :goto_2
.end method

.method putPref(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Lcom/samsung/mms/export/preference/PreferenceReceiver$PrefData;
    .locals 5
    .parameter "key"
    .parameter "type"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            ")",
            "Lcom/samsung/mms/export/preference/PreferenceReceiver$PrefData",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 241
    :try_start_0
    const-string v1, "BOOLEAN"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    const-string v1, "value"

    const/4 v3, 0x0

    invoke-virtual {p3, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/samsung/mms/export/preference/PreferenceReceiver;->putPref(Ljava/lang/String;Z)Z

    .line 243
    new-instance v1, Lcom/samsung/mms/export/preference/PreferenceReceiver$PrefData;

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lcom/samsung/mms/export/preference/PreferenceReceiver;->getPref(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, p0, p1, p2, v3}, Lcom/samsung/mms/export/preference/PreferenceReceiver$PrefData;-><init>(Lcom/samsung/mms/export/preference/PreferenceReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 262
    :goto_0
    return-object v1

    .line 244
    :cond_0
    const-string v1, "STRING"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 245
    const-string v1, "value"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/samsung/mms/export/preference/PreferenceReceiver;->putPref(Ljava/lang/String;Ljava/lang/String;)Z

    .line 246
    new-instance v1, Lcom/samsung/mms/export/preference/PreferenceReceiver$PrefData;

    const-string v3, ""

    invoke-virtual {p0, p1, v3}, Lcom/samsung/mms/export/preference/PreferenceReceiver;->getPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, p1, p2, v3}, Lcom/samsung/mms/export/preference/PreferenceReceiver$PrefData;-><init>(Lcom/samsung/mms/export/preference/PreferenceReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v1, "Mms/PreferenceReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "putPref : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 259
    goto :goto_0

    .line 247
    .end local v0           #e:Ljava/lang/ClassCastException;
    :cond_1
    :try_start_1
    const-string v1, "INT"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 248
    const-string v1, "value"

    const/4 v3, 0x0

    invoke-virtual {p3, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/samsung/mms/export/preference/PreferenceReceiver;->putPref(Ljava/lang/String;I)Z

    .line 249
    new-instance v1, Lcom/samsung/mms/export/preference/PreferenceReceiver$PrefData;

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lcom/samsung/mms/export/preference/PreferenceReceiver;->getPref(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, p0, p1, p2, v3}, Lcom/samsung/mms/export/preference/PreferenceReceiver$PrefData;-><init>(Lcom/samsung/mms/export/preference/PreferenceReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 260
    :catch_1
    move-exception v0

    .line 261
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "Mms/PreferenceReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "putPref : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 262
    goto :goto_0

    .line 250
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_2
    :try_start_2
    const-string v1, "LONG"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 251
    const-string v1, "value"

    const-wide/16 v3, 0x0

    invoke-virtual {p3, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-virtual {p0, p1, v3, v4}, Lcom/samsung/mms/export/preference/PreferenceReceiver;->putPref(Ljava/lang/String;J)Z

    .line 252
    new-instance v1, Lcom/samsung/mms/export/preference/PreferenceReceiver$PrefData;

    const-wide/16 v3, 0x0

    invoke-virtual {p0, p1, v3, v4}, Lcom/samsung/mms/export/preference/PreferenceReceiver;->getPref(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, p0, p1, p2, v3}, Lcom/samsung/mms/export/preference/PreferenceReceiver$PrefData;-><init>(Lcom/samsung/mms/export/preference/PreferenceReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 254
    :cond_3
    const-string v1, "Mms/PreferenceReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized Type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v1, v2

    .line 255
    goto/16 :goto_0
.end method

.method putPref(Ljava/lang/String;I)Z
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 288
    :try_start_0
    iget-object v2, p0, Lcom/samsung/mms/export/preference/PreferenceReceiver;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 289
    .local v1, editprefs:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 290
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 291
    .end local v1           #editprefs:Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v0

    .line 292
    .local v0, e:Ljava/lang/NullPointerException;
    throw v0
.end method

.method putPref(Ljava/lang/String;J)Z
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 298
    :try_start_0
    iget-object v2, p0, Lcom/samsung/mms/export/preference/PreferenceReceiver;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 299
    .local v1, editprefs:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 300
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 301
    .end local v1           #editprefs:Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v0

    .line 302
    .local v0, e:Ljava/lang/NullPointerException;
    throw v0
.end method

.method putPref(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 278
    :try_start_0
    iget-object v2, p0, Lcom/samsung/mms/export/preference/PreferenceReceiver;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 279
    .local v1, editprefs:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 280
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 281
    .end local v1           #editprefs:Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v0

    .line 282
    .local v0, e:Ljava/lang/NullPointerException;
    throw v0
.end method

.method putPref(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 268
    :try_start_0
    iget-object v2, p0, Lcom/samsung/mms/export/preference/PreferenceReceiver;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 269
    .local v1, editprefs:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 270
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 271
    .end local v1           #editprefs:Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v0

    .line 272
    .local v0, e:Ljava/lang/NullPointerException;
    throw v0
.end method

.method sendResult(Z)V
    .locals 2
    .parameter "result"

    .prologue
    .line 134
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 136
    .local v0, resultIntent:Landroid/content/Intent;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 137
    const-string v1, "rcs.dl.interface.Message.REPORT_OK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    :goto_0
    iget-object v1, p0, Lcom/samsung/mms/export/preference/PreferenceReceiver;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/samsung/mms/export/preference/PreferenceReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 145
    :cond_0
    return-void

    .line 139
    :cond_1
    const-string v1, "rcs.dl.interface.Message.REPORT_Fail"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method sendResultPrefReport(Ljava/lang/String;Lcom/samsung/mms/export/preference/PreferenceReceiver$PrefData;)V
    .locals 5
    .parameter "resultAction"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/samsung/mms/export/preference/PreferenceReceiver$PrefData",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p2, mResultData:Lcom/samsung/mms/export/preference/PreferenceReceiver$PrefData;,"Lcom/samsung/mms/export/preference/PreferenceReceiver$PrefData<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 149
    .local v0, resultIntent:Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    if-eqz p2, :cond_5

    .line 152
    const-string v3, "key"

    iget-object v4, p2, Lcom/samsung/mms/export/preference/PreferenceReceiver$PrefData;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const-string v3, "type"

    iget-object v4, p2, Lcom/samsung/mms/export/preference/PreferenceReceiver$PrefData;->mType:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    const-string v3, "BOOLEAN"

    iget-object v4, p2, Lcom/samsung/mms/export/preference/PreferenceReceiver$PrefData;->mType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 155
    iget-object v3, p2, Lcom/samsung/mms/export/preference/PreferenceReceiver$PrefData;->mValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 156
    .local v1, value:Z
    const-string v3, "value"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 167
    .end local v1           #value:Z
    :cond_0
    :goto_0
    const-string v3, "result"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 172
    :goto_1
    iget-object v3, p0, Lcom/samsung/mms/export/preference/PreferenceReceiver;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_1

    .line 173
    iget-object v3, p0, Lcom/samsung/mms/export/preference/PreferenceReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 175
    :cond_1
    return-void

    .line 157
    :cond_2
    const-string v3, "STRING"

    iget-object v4, p2, Lcom/samsung/mms/export/preference/PreferenceReceiver$PrefData;->mType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 158
    iget-object v1, p2, Lcom/samsung/mms/export/preference/PreferenceReceiver$PrefData;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 159
    .local v1, value:Ljava/lang/String;
    const-string v3, "value"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 160
    .end local v1           #value:Ljava/lang/String;
    :cond_3
    const-string v3, "INT"

    iget-object v4, p2, Lcom/samsung/mms/export/preference/PreferenceReceiver$PrefData;->mType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 161
    iget-object v3, p2, Lcom/samsung/mms/export/preference/PreferenceReceiver$PrefData;->mValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 162
    .local v1, value:I
    const-string v3, "value"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 163
    .end local v1           #value:I
    :cond_4
    const-string v3, "LONG"

    iget-object v4, p2, Lcom/samsung/mms/export/preference/PreferenceReceiver$PrefData;->mType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 164
    iget-object v3, p2, Lcom/samsung/mms/export/preference/PreferenceReceiver$PrefData;->mValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 165
    .local v1, value:J
    const-string v3, "value"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0

    .line 169
    .end local v1           #value:J
    :cond_5
    const-string v3, "result"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1
.end method
