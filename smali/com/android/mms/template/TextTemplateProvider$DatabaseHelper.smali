.class Lcom/android/mms/template/TextTemplateProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "TextTemplateProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/template/TextTemplateProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatabaseHelper"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/mms/template/TextTemplateProvider;


# direct methods
.method constructor <init>(Lcom/android/mms/template/TextTemplateProvider;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/mms/template/TextTemplateProvider$DatabaseHelper;->this$0:Lcom/android/mms/template/TextTemplateProvider;

    .line 80
    const-string v0, "message.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 81
    iput-object p2, p0, Lcom/android/mms/template/TextTemplateProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 82
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .parameter "db"

    .prologue
    .line 89
    const-string v3, "mms/TemplateDbAdapter"

    const-string v4, "DatabaseHelper/onCreate"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const-string v3, "create table text_template (_id integer primary key autoincrement, body text not null, checked integer default -1 );"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 94
    iget-object v3, p0, Lcom/android/mms/template/TextTemplateProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/MmsConfig;->getTextTemplate(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, texts:[Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmbeddedTextTemplateType()I

    move-result v3

    if-eqz v3, :cond_1

    .line 97
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 98
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 99
    .local v1, initialValues:Landroid/content/ContentValues;
    const-string v3, "_id"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 100
    const-string v3, "body"

    aget-object v4, v2, v0

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmbeddedTextTemplateType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 102
    const-string v3, "checked"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 105
    :cond_0
    const-string v3, "text_template"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    .end local v0           #i:I
    .end local v1           #initialValues:Landroid/content/ContentValues;
    :cond_1
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 113
    const-string v0, "mms/TemplateDbAdapter"

    const-string v1, "DatabaseHelper/onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string v0, "DROP TABLE IF EXISTS text_template"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/mms/template/TextTemplateProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 116
    return-void
.end method
