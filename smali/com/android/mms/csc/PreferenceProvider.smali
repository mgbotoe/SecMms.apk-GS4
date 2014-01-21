.class public Lcom/android/mms/csc/PreferenceProvider;
.super Landroid/content/ContentProvider;
.source "PreferenceProvider.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.android.mms.csc.PreferenceProvider"

.field public static final PREFERENCE_ALL_LIST:I = 0x190

.field public static final PREFERENCE_KEY:I = 0x192

.field public static final PREFERENCE_SMSC:I = 0x191

.field private static final PREF_COLUMNS:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "PreferenceProvider"

.field private static final URI_MATCHER:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 52
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/mms/csc/PreferenceProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 60
    sget-object v0, Lcom/android/mms/csc/PreferenceProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.android.mms.csc.PreferenceProvider"

    const-string v2, "listall"

    const/16 v3, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 61
    sget-object v0, Lcom/android/mms/csc/PreferenceProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.android.mms.csc.PreferenceProvider"

    const-string v2, "smsc"

    const/16 v3, 0x191

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    sget-object v0, Lcom/android/mms/csc/PreferenceProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.android.mms.csc.PreferenceProvider"

    const-string v2, "key"

    const/16 v3, 0x192

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 66
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "pref_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "pref_value"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/csc/PreferenceProvider;->PREF_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "key"

    .prologue
    .line 261
    const/4 v0, 0x0

    .line 262
    .local v0, context:Landroid/content/Context;
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v5, Lcom/android/mms/csc/PreferenceProvider;->PREF_COLUMNS:[Ljava/lang/String;

    invoke-direct {v2, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 265
    .local v2, prefCursor:Landroid/database/MatrixCursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/csc/PreferenceProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.android.mms"

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 266
    const-string v5, "com.android.mms_preferences"

    const/4 v6, 0x4

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 267
    .local v3, prefs:Landroid/content/SharedPreferences;
    const/4 v4, 0x0

    .line 269
    .local v4, result:I
    const/4 v5, 0x0

    invoke-interface {v3, p1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 270
    const/4 v4, 0x1

    .line 273
    :cond_0
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v2, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    .end local v2           #prefCursor:Landroid/database/MatrixCursor;
    .end local v3           #prefs:Landroid/content/SharedPreferences;
    .end local v4           #result:I
    :goto_0
    return-object v2

    .line 275
    .restart local v2       #prefCursor:Landroid/database/MatrixCursor;
    :catch_0
    move-exception v1

    .line 276
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    if-eqz v2, :cond_1

    .line 277
    invoke-virtual {v2}, Landroid/database/MatrixCursor;->close()V

    .line 279
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "key"

    .prologue
    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, context:Landroid/content/Context;
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v4, Lcom/android/mms/csc/PreferenceProvider;->PREF_COLUMNS:[Ljava/lang/String;

    invoke-direct {v2, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 227
    .local v2, prefCursor:Landroid/database/MatrixCursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/csc/PreferenceProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.android.mms"

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 228
    const-string v4, "com.android.mms_preferences"

    const/4 v5, 0x4

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 230
    .local v3, prefs:Landroid/content/SharedPreferences;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3, p1, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v2, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    .end local v2           #prefCursor:Landroid/database/MatrixCursor;
    .end local v3           #prefs:Landroid/content/SharedPreferences;
    :goto_0
    return-object v2

    .line 232
    .restart local v2       #prefCursor:Landroid/database/MatrixCursor;
    :catch_0
    move-exception v1

    .line 233
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    if-eqz v2, :cond_0

    .line 234
    invoke-virtual {v2}, Landroid/database/MatrixCursor;->close()V

    .line 236
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "key"

    .prologue
    .line 242
    const/4 v0, 0x0

    .line 243
    .local v0, context:Landroid/content/Context;
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v4, Lcom/android/mms/csc/PreferenceProvider;->PREF_COLUMNS:[Ljava/lang/String;

    invoke-direct {v2, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 246
    .local v2, prefCursor:Landroid/database/MatrixCursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/csc/PreferenceProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.android.mms"

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 247
    const-string v4, "com.android.mms_preferences"

    const/4 v5, 0x4

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 249
    .local v3, prefs:Landroid/content/SharedPreferences;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-interface {v3, p1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v2, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .end local v2           #prefCursor:Landroid/database/MatrixCursor;
    .end local v3           #prefs:Landroid/content/SharedPreferences;
    :goto_0
    return-object v2

    .line 251
    .restart local v2       #prefCursor:Landroid/database/MatrixCursor;
    :catch_0
    move-exception v1

    .line 252
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    if-eqz v2, :cond_0

    .line 253
    invoke-virtual {v2}, Landroid/database/MatrixCursor;->close()V

    .line 255
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "key"

    .prologue
    .line 204
    const/4 v0, 0x0

    .line 205
    .local v0, context:Landroid/content/Context;
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v4, Lcom/android/mms/csc/PreferenceProvider;->PREF_COLUMNS:[Ljava/lang/String;

    invoke-direct {v2, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 208
    .local v2, prefCursor:Landroid/database/MatrixCursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/csc/PreferenceProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.android.mms"

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 209
    const-string v4, "com.android.mms_preferences"

    const/4 v5, 0x4

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 211
    .local v3, prefs:Landroid/content/SharedPreferences;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, ""

    invoke-interface {v3, p1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v2, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .end local v2           #prefCursor:Landroid/database/MatrixCursor;
    .end local v3           #prefs:Landroid/content/SharedPreferences;
    :goto_0
    return-object v2

    .line 213
    .restart local v2       #prefCursor:Landroid/database/MatrixCursor;
    :catch_0
    move-exception v1

    .line 214
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    if-eqz v2, :cond_0

    .line 215
    invoke-virtual {v2}, Landroid/database/MatrixCursor;->close()V

    .line 217
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public loadPreference()Landroid/database/Cursor;
    .locals 9

    .prologue
    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, context:Landroid/content/Context;
    new-instance v4, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/android/mms/csc/PreferenceProvider;->PREF_COLUMNS:[Ljava/lang/String;

    invoke-direct {v4, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 163
    .local v4, prefCursor:Landroid/database/MatrixCursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/csc/PreferenceProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "com.android.mms"

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 164
    const-string v6, "com.android.mms_preferences"

    const/4 v7, 0x4

    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 166
    .local v5, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    .line 168
    .local v3, prefAll:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget-object v6, Lcom/android/mms/csc/CscLoader;->USER_KEY_PRFS:[Ljava/lang/String;

    array-length v6, v6

    if-ge v2, v6, :cond_1

    .line 169
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v8, Lcom/android/mms/csc/CscLoader;->USER_KEY_PRFS:[Ljava/lang/String;

    aget-object v8, v8, v2

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Lcom/android/mms/csc/CscLoader;->USER_KEY_PRFS:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 173
    .end local v2           #i:I
    .end local v3           #prefAll:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v5           #prefs:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v1

    .line 174
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    if-eqz v4, :cond_0

    .line 175
    invoke-virtual {v4}, Landroid/database/MatrixCursor;->close()V

    .line 177
    :cond_0
    const/4 v4, 0x0

    .line 179
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4           #prefCursor:Landroid/database/MatrixCursor;
    :cond_1
    return-object v4
.end method

.method public loadSmsc()Landroid/database/Cursor;
    .locals 8

    .prologue
    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, context:Landroid/content/Context;
    new-instance v3, Landroid/database/MatrixCursor;

    sget-object v5, Lcom/android/mms/csc/PreferenceProvider;->PREF_COLUMNS:[Ljava/lang/String;

    invoke-direct {v3, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 187
    .local v3, prefCursor:Landroid/database/MatrixCursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/csc/PreferenceProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.android.mms"

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 188
    const-string v5, "com.android.mms_preferences"

    const/4 v6, 0x4

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 190
    .local v4, prefs:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/android/mms/csc/PreferenceProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c00f4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 191
    .local v2, not_set:Ljava/lang/String;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "pref_key_manage_smsc_address"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "pref_key_manage_smsc_address"

    invoke-interface {v4, v7, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    .end local v2           #not_set:Ljava/lang/String;
    .end local v3           #prefCursor:Landroid/database/MatrixCursor;
    .end local v4           #prefs:Landroid/content/SharedPreferences;
    :goto_0
    return-object v3

    .line 194
    .restart local v3       #prefCursor:Landroid/database/MatrixCursor;
    :catch_0
    move-exception v1

    .line 195
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    if-eqz v3, :cond_0

    .line 196
    invoke-virtual {v3}, Landroid/database/MatrixCursor;->close()V

    .line 198
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v4, 0x0

    .line 96
    const/4 v0, 0x0

    .line 98
    .local v0, cursor:Landroid/database/Cursor;
    sget-object v1, Lcom/android/mms/csc/PreferenceProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 152
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized URI:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 100
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/mms/csc/PreferenceProvider;->loadPreference()Landroid/database/Cursor;

    move-result-object v0

    .line 155
    :goto_0
    return-object v0

    .line 103
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/mms/csc/PreferenceProvider;->loadSmsc()Landroid/database/Cursor;

    move-result-object v0

    .line 104
    goto :goto_0

    .line 106
    :pswitch_2
    const-string v1, "PreferenceProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selection = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " selectionArgs = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p4, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const-string v1, "STRING"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    aget-object v1, p4, v4

    invoke-virtual {p0, v1}, Lcom/android/mms/csc/PreferenceProvider;->getString(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 109
    :cond_0
    const-string v1, "INT"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    aget-object v1, p4, v4

    invoke-virtual {p0, v1}, Lcom/android/mms/csc/PreferenceProvider;->getInt(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 111
    :cond_1
    const-string v1, "BOOLEAN"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 112
    aget-object v1, p4, v4

    invoke-virtual {p0, v1}, Lcom/android/mms/csc/PreferenceProvider;->getBoolean(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 113
    :cond_2
    const-string v1, "LONG"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 114
    aget-object v1, p4, v4

    invoke-virtual {p0, v1}, Lcom/android/mms/csc/PreferenceProvider;->getLong(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 116
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized Type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 287
    const/4 v0, 0x0

    return v0
.end method
