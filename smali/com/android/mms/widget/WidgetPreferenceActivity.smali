.class public Lcom/android/mms/widget/WidgetPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "WidgetPreferenceActivity.java"


# static fields
.field private static final CURRENT_WIDGET:Ljava/lang/String; = "current_widget"

.field public static final PREF_KEY_WIDGET_FONT_SIZE:Ljava/lang/String; = "pref_key_widget_font_size"

.field private static final WIDGET_FONT_SIZE:[I = null

.field public static final WIDGET_FONT_SIZE_DEFAULT_INDEX:I = 0x2

.field private static final WIDGET_FONT_SIZE_DEFAULT_VALUE:Ljava/lang/String; = "Normal"

.field private static sEntryValuesWidgetFontSize:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 40
    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/MmsApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0082

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/MmsApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0083

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    const/4 v1, 0x2

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/MmsApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0084

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    const/4 v1, 0x3

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/MmsApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0085

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    sput-object v0, Lcom/android/mms/widget/WidgetPreferenceActivity;->WIDGET_FONT_SIZE:[I

    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/widget/WidgetPreferenceActivity;->sEntryValuesWidgetFontSize:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method public static findIndexOfWidgetFontSize(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    .line 102
    sget-object v3, Lcom/android/mms/widget/WidgetPreferenceActivity;->sEntryValuesWidgetFontSize:[Ljava/lang/String;

    if-nez v3, :cond_0

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08003c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/mms/widget/WidgetPreferenceActivity;->sEntryValuesWidgetFontSize:[Ljava/lang/String;

    .line 106
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 107
    .local v1, pref:Landroid/content/SharedPreferences;
    const-string v3, "pref_key_widget_font_size"

    const-string v4, "Normal"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, value:Ljava/lang/String;
    sget-object v3, Lcom/android/mms/widget/WidgetPreferenceActivity;->sEntryValuesWidgetFontSize:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_2

    .line 110
    sget-object v3, Lcom/android/mms/widget/WidgetPreferenceActivity;->sEntryValuesWidgetFontSize:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 115
    .end local v0           #i:I
    :goto_1
    return v0

    .line 109
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 115
    :cond_2
    const/4 v0, 0x2

    goto :goto_1
.end method

.method protected static getCurrentWidget(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 126
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 127
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "current_widget"

    const-string v2, "MmsWidget"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getWidgetFontSize(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 119
    if-ltz p0, :cond_0

    sget-object v0, Lcom/android/mms/widget/WidgetPreferenceActivity;->WIDGET_FONT_SIZE:[I

    array-length v0, v0

    if-le p0, v0, :cond_1

    .line 120
    :cond_0
    sget-object v0, Lcom/android/mms/widget/WidgetPreferenceActivity;->WIDGET_FONT_SIZE:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    .line 122
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/android/mms/widget/WidgetPreferenceActivity;->WIDGET_FONT_SIZE:[I

    aget v0, v0, p0

    goto :goto_0
.end method

.method private removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V
    .locals 0
    .parameter "pref"
    .parameter "removePref"

    .prologue
    .line 58
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 59
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 61
    :cond_0
    return-void
.end method

.method protected static setCurrentWidget(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "currentWidget"

    .prologue
    .line 131
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NoticeWidget"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 133
    :cond_0
    const-string p1, "MmsWidget"

    .line 135
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 136
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 137
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "current_widget"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 138
    return-void
.end method

.method private setPreferenceSummary()V
    .locals 2

    .prologue
    .line 95
    const-string v1, "pref_key_widget_font_size"

    invoke-virtual {p0, v1}, Lcom/android/mms/widget/WidgetPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/mms/widget/FontSizePreference;

    .line 96
    .local v0, fontSizePreference:Lcom/android/mms/widget/FontSizePreference;
    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Lcom/android/mms/widget/FontSizePreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/widget/FontSizePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 99
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v1, 0x7f06000c

    invoke-virtual {p0, v1}, Lcom/android/mms/widget/WidgetPreferenceActivity;->addPreferencesFromResource(I)V

    .line 52
    invoke-virtual {p0}, Lcom/android/mms/widget/WidgetPreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 53
    .local v0, actionBar:Landroid/app/ActionBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 54
    const v1, 0x7f0c03e8

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 55
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 65
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 70
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 67
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/mms/widget/WidgetPreferenceActivity;->finish()V

    .line 68
    const/4 v0, 0x1

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 75
    const-string v2, "pref_key_widget_delete"

    invoke-virtual {p0, v2}, Lcom/android/mms/widget/WidgetPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 76
    .local v0, widget_delete:Landroid/preference/Preference;
    const-string v2, "pref_key_widget_reorder"

    invoke-virtual {p0, v2}, Lcom/android/mms/widget/WidgetPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 78
    .local v1, widget_reorder:Landroid/preference/Preference;
    const-string v2, "MmsWidget"

    invoke-static {p0}, Lcom/android/mms/widget/WidgetPreferenceActivity;->getCurrentWidget(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    invoke-virtual {p0}, Lcom/android/mms/widget/WidgetPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/android/mms/widget/WidgetPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/mms/widget/WidgetPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/mms/widget/WidgetPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 89
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/widget/WidgetPreferenceActivity;->setPreferenceSummary()V

    .line 91
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 92
    return-void

    .line 81
    :cond_1
    const-string v2, "NoticeWidget"

    invoke-static {p0}, Lcom/android/mms/widget/WidgetPreferenceActivity;->getCurrentWidget(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/android/mms/widget/NoticeSettingManager;->getThreadCount(Landroid/content/Context;I)I

    move-result v2

    if-nez v2, :cond_0

    .line 83
    if-eqz v0, :cond_2

    .line 84
    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 85
    :cond_2
    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method
