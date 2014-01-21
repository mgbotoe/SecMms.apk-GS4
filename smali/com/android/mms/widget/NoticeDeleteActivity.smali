.class public Lcom/android/mms/widget/NoticeDeleteActivity;
.super Landroid/app/Activity;
.source "NoticeDeleteActivity.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;,
        Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;
    }
.end annotation


# static fields
.field private static final CANCEL:I = 0x2

.field private static final SAVE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "mmsnoticewidget/NoticeListEditActivity"


# instance fields
.field private final SPEEDDIAL_DEFAULT_IMAGES:[I

.field private mActionBar:Landroid/app/ActionBar;

.field private mAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mAppWidgetId:I

.field private mCheckedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDbControl:Lcom/android/mms/widget/NoticeDBControl;

.field private mIsLandscape:Z

.field private mListView:Landroid/widget/ListView;

.field private mMenuCancel:Landroid/view/MenuItem;

.field private mMenuDelete:Landroid/view/MenuItem;

.field private mNoticeConversationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;",
            ">;"
        }
    .end annotation
.end field

.field private mNoticeDeleteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;",
            ">;"
        }
    .end annotation
.end field

.field private mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;

.field private mNoticeWidgetList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;",
            ">;"
        }
    .end annotation
.end field

.field private mOnTextTemplateListItemClick:Landroid/widget/AdapterView$OnItemClickListener;

.field private mSeletAllLayout:Landroid/widget/LinearLayout;

.field private selectAllUserUnchecked:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetList:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mCheckedList:Ljava/util/ArrayList;

    .line 74
    iput-object v1, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mMenuDelete:Landroid/view/MenuItem;

    .line 75
    iput-object v1, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mMenuCancel:Landroid/view/MenuItem;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeDeleteList:Ljava/util/ArrayList;

    .line 541
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->SPEEDDIAL_DEFAULT_IMAGES:[I

    .line 550
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->selectAllUserUnchecked:Z

    .line 609
    new-instance v0, Lcom/android/mms/widget/NoticeDeleteActivity$4;

    invoke-direct {v0, p0}, Lcom/android/mms/widget/NoticeDeleteActivity$4;-><init>(Lcom/android/mms/widget/NoticeDeleteActivity;)V

    iput-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mOnTextTemplateListItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    return-void

    .line 541
    :array_0
    .array-data 0x4
        0xfft 0x1t 0x2t 0x7ft
        0x0t 0x2t 0x2t 0x7ft
        0x1t 0x2t 0x2t 0x7ft
        0x2t 0x2t 0x2t 0x7ft
        0x3t 0x2t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/mms/widget/NoticeDeleteActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mCheckedList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/widget/NoticeDeleteActivity;)Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/widget/NoticeDeleteActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeDeleteList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/widget/NoticeDeleteActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeConversationList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/mms/widget/NoticeDeleteActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeConversationList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/mms/widget/NoticeDeleteActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/mms/widget/NoticeDeleteActivity;->updateNoticeList()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/widget/NoticeDeleteActivity;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/mms/widget/NoticeDeleteActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->selectAllUserUnchecked:Z

    return p1
.end method

.method private getNoticeList()Landroid/database/Cursor;
    .locals 2

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mDbControl:Lcom/android/mms/widget/NoticeDBControl;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/mms/widget/NoticeDBControl;->idQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private makeScreen()V
    .locals 18

    .prologue
    .line 186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 188
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/widget/NoticeDeleteActivity;->getNoticeList()Landroid/database/Cursor;

    move-result-object v10

    .line 190
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 192
    :cond_0
    const-string v2, "_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 193
    .local v4, id:I
    const-string v2, "message_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 195
    .local v5, messageId:I
    const-string v2, "contact_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 198
    .local v8, contactId:J
    const-string v2, "photo"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 199
    .local v16, photoIndex:I
    const-string v2, "display_name"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 201
    .local v13, itemName:Ljava/lang/String;
    const-string v2, "display_name_primary"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 205
    .local v14, itemNamePrimary:Ljava/lang/String;
    move/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v12, 0x1

    .line 206
    .local v12, isPhotoAvaiable:Z
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/android/mms/widget/NoticeDeleteActivity;->getSpeedDialDefaultImage(J)I

    move-result v11

    .line 207
    .local v11, defaultResourceId:I
    const/4 v6, 0x0

    .line 209
    .local v6, image:[B
    if-eqz v12, :cond_7

    .line 210
    move/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 217
    :goto_1
    const-string v7, ""

    .line 218
    .local v7, contactName:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/widget/NoticeDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android.contacts.DISPLAY_ORDER"

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 220
    .local v15, orderOfValue:I
    const/4 v2, 0x2

    if-ne v15, v2, :cond_8

    .line 221
    move-object v7, v13

    .line 226
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    new-instance v2, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;-><init>(Lcom/android/mms/widget/NoticeDeleteActivity;II[BLjava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 230
    .end local v4           #id:I
    .end local v5           #messageId:I
    .end local v6           #image:[B
    .end local v7           #contactName:Ljava/lang/String;
    .end local v8           #contactId:J
    .end local v11           #defaultResourceId:I
    .end local v12           #isPhotoAvaiable:Z
    .end local v13           #itemName:Ljava/lang/String;
    .end local v14           #itemNamePrimary:Ljava/lang/String;
    .end local v15           #orderOfValue:I
    .end local v16           #photoIndex:I
    :cond_1
    if-eqz v10, :cond_2

    .line 231
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 233
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;

    if-nez v2, :cond_3

    .line 234
    new-instance v2, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v2, v0, v1, v3}, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;-><init>(Lcom/android/mms/widget/NoticeDeleteActivity;Landroid/app/Activity;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;

    .line 235
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/widget/NoticeDeleteActivity;->mListView:Landroid/widget/ListView;

    if-eqz v2, :cond_4

    .line 236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/widget/NoticeDeleteActivity;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/widget/NoticeDeleteActivity;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/widget/NoticeDeleteActivity;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/widget/NoticeDeleteActivity;->mOnTextTemplateListItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 243
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;

    invoke-virtual {v2}, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;->getCheckedSize()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;

    invoke-virtual {v3}, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;->getCount()I

    move-result v3

    if-eq v2, v3, :cond_5

    .line 244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/widget/NoticeDeleteActivity;->mAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 246
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/widget/NoticeDeleteActivity;->mAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    .line 247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/widget/NoticeDeleteActivity;->mSeletAllLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/mms/widget/NoticeDeleteActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/mms/widget/NoticeDeleteActivity$3;-><init>(Lcom/android/mms/widget/NoticeDeleteActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    return-void

    .line 205
    .restart local v4       #id:I
    .restart local v5       #messageId:I
    .restart local v8       #contactId:J
    .restart local v13       #itemName:Ljava/lang/String;
    .restart local v14       #itemNamePrimary:Ljava/lang/String;
    .restart local v16       #photoIndex:I
    :cond_6
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 212
    .restart local v6       #image:[B
    .restart local v11       #defaultResourceId:I
    .restart local v12       #isPhotoAvaiable:Z
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/widget/NoticeDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/widget/NoticeDeleteActivity;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v6

    goto/16 :goto_1

    .line 223
    .restart local v7       #contactName:Ljava/lang/String;
    .restart local v15       #orderOfValue:I
    :cond_8
    move-object v7, v14

    goto/16 :goto_2
.end method

.method private updateNoticeList()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x1

    .line 464
    iget-object v8, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;

    invoke-virtual {v8}, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;->getNoticeList()Ljava/util/ArrayList;

    move-result-object v6

    .line 466
    .local v6, updateList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;>;"
    iget-object v8, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;

    invoke-virtual {v8}, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;->getDeleteList()Ljava/util/ArrayList;

    move-result-object v0

    .line 469
    .local v0, deleteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 471
    .local v3, mStringBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 472
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 473
    iget v8, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mAppWidgetId:I

    if-eq v8, v10, :cond_0

    .line 474
    const-string v8, "widget_id"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    const-string v8, " = \'"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    iget v8, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mAppWidgetId:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 477
    const-string v8, "\' AND "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;

    .line 480
    .local v2, item:Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;
    const-string v8, "_id"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    const-string v8, " = \'"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    invoke-virtual {v2}, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;->getId()I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 483
    const-string v8, "\'"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    const-string v8, " OR "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 486
    .end local v2           #item:Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;
    :cond_1
    const-string v8, " OR "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 490
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 491
    .local v5, selectionLocalDb:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mDbControl:Lcom/android/mms/widget/NoticeDBControl;

    invoke-virtual {v8, v5}, Lcom/android/mms/widget/NoticeDBControl;->delete(Ljava/lang/String;)I

    .line 495
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v5           #selectionLocalDb:Ljava/lang/String;
    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 496
    const/4 v4, 0x0

    .local v4, position:I
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, v4, :cond_4

    .line 497
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 498
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "position"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 499
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 500
    iget v8, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mAppWidgetId:I

    if-eq v8, v10, :cond_3

    .line 501
    const-string v8, "widget_id"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    const-string v8, " = \'"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    iget v8, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mAppWidgetId:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 504
    const-string v8, "\' AND "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    :cond_3
    const-string v8, "_id"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    const-string v8, " = \'"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;

    invoke-virtual {v8}, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;->getId()I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 509
    const-string v8, "\'"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 512
    .restart local v5       #selectionLocalDb:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mDbControl:Lcom/android/mms/widget/NoticeDBControl;

    invoke-virtual {v8, v7, v5}, Lcom/android/mms/widget/NoticeDBControl;->update(Landroid/content/ContentValues;Ljava/lang/String;)I

    .line 496
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 517
    .end local v4           #position:I
    .end local v5           #selectionLocalDb:Ljava/lang/String;
    .end local v7           #values:Landroid/content/ContentValues;
    :cond_4
    iget v8, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mAppWidgetId:I

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {p0, v8, v9}, Lcom/android/mms/widget/NoticeSettingManager;->setThreadCount(Landroid/content/Context;II)V

    .line 520
    return-void
.end method


# virtual methods
.method public bitmapToByteArray(Landroid/graphics/Bitmap;)[B
    .locals 4
    .parameter "bitmap"

    .prologue
    .line 532
    if-nez p1, :cond_0

    .line 533
    const/4 v0, 0x0

    .line 538
    :goto_0
    return-object v0

    .line 534
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 535
    .local v1, stream:Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 536
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 538
    .local v0, byteArray:[B
    goto :goto_0
.end method

.method public byteArrayToBitmap([B)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "byteArray"

    .prologue
    .line 523
    if-nez p1, :cond_0

    .line 524
    const/4 v0, 0x0

    .line 528
    :goto_0
    return-object v0

    .line 525
    :cond_0
    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {p1, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 528
    .local v0, bitmap:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public getSpeedDialDefaultImage(J)I
    .locals 3
    .parameter "contactId"

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->SPEEDDIAL_DEFAULT_IMAGES:[I

    iget-object v1, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->SPEEDDIAL_DEFAULT_IMAGES:[I

    array-length v1, v1

    int-to-long v1, v1

    rem-long v1, p1, v1

    long-to-int v1, v1

    aget v0, v0, v1

    return v0
.end method

.method public onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V
    .locals 5
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 556
    iget-object v1, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;

    if-nez v1, :cond_1

    .line 557
    iget-object v1, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 558
    iget-object v1, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 607
    :cond_0
    :goto_0
    return-void

    .line 562
    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->getId()I

    move-result v1

    const v2, 0x7f0b003d

    if-ne v1, v2, :cond_6

    .line 563
    iget-object v1, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 564
    iget-object v1, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;

    invoke-virtual {v1}, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;->getCheckedSize()I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;

    invoke-virtual {v2}, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;->getCount()I

    move-result v2

    if-eq v1, v2, :cond_4

    .line 566
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;

    invoke-virtual {v1}, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 567
    iget-object v1, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;

    invoke-virtual {v1, v0}, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;->addCheckedItem(I)V

    .line 566
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 571
    .end local v0           #i:I
    :cond_2
    iget-boolean v1, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->selectAllUserUnchecked:Z

    if-eqz v1, :cond_3

    .line 572
    iget-object v1, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;

    invoke-virtual {v1}, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;->clearCheckedList()V

    .line 574
    :cond_3
    iput-boolean v4, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->selectAllUserUnchecked:Z

    .line 577
    :cond_4
    iget-object v1, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;

    invoke-virtual {v1}, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;->notifyDataSetChanged()V

    .line 605
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeDeleteActivity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 581
    :cond_6
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->getId()I

    move-result v1

    const v2, 0x7f0b02bf

    if-ne v1, v2, :cond_5

    .line 583
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 584
    iget-object v2, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;

    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;->addCheckedItem(I)V

    .line 588
    iget-object v1, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;

    invoke-virtual {v1}, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;->getCheckedSize()I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;

    invoke-virtual {v2}, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 590
    iget-object v1, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_2

    .line 592
    :cond_7
    iget-object v2, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;

    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;->removeCheckedItem(I)V

    .line 596
    iget-object v1, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 599
    iput-boolean v3, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->selectAllUserUnchecked:Z

    .line 600
    iget-object v1, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 304
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 305
    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mIsLandscape:Z

    .line 307
    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeDeleteActivity;->invalidateOptionsMenu()V

    .line 309
    return-void

    .line 305
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 84
    const-string v0, "mmsnoticewidget/NoticeListEditActivity"

    const-string v3, "onCreate "

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const v0, 0x7f04009a

    invoke-virtual {p0, v0}, Lcom/android/mms/widget/NoticeDeleteActivity;->setContentView(I)V

    .line 89
    const v0, 0x7f0b02c0

    invoke-virtual {p0, v0}, Lcom/android/mms/widget/NoticeDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mListView:Landroid/widget/ListView;

    .line 90
    const v0, 0x7f0b003b

    invoke-virtual {p0, v0}, Lcom/android/mms/widget/NoticeDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mSeletAllLayout:Landroid/widget/LinearLayout;

    .line 91
    iget-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mSeletAllLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 92
    const v0, 0x7f0b003d

    invoke-virtual {p0, v0}, Lcom/android/mms/widget/NoticeDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 94
    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeDeleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "appWidgetId"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mAppWidgetId:I

    .line 96
    new-instance v0, Lcom/android/mms/widget/NoticeDBControl;

    invoke-direct {v0, p0}, Lcom/android/mms/widget/NoticeDBControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mDbControl:Lcom/android/mms/widget/NoticeDBControl;

    .line 98
    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mIsLandscape:Z

    .line 100
    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeDeleteActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 101
    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeDeleteActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 103
    return-void

    :cond_0
    move v0, v2

    .line 98
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 108
    iget-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mDbControl:Lcom/android/mms/widget/NoticeDBControl;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mDbControl:Lcom/android/mms/widget/NoticeDBControl;

    invoke-virtual {v0}, Lcom/android/mms/widget/NoticeDBControl;->close()V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_1

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mActionBar:Landroid/app/ActionBar;

    .line 112
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 262
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 273
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 264
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeDeleteActivity;->finish()V

    goto :goto_0

    .line 267
    :sswitch_1
    invoke-virtual {p0, v2}, Lcom/android/mms/widget/NoticeDeleteActivity;->processDoneButton(Landroid/view/View;)V

    goto :goto_0

    .line 270
    :sswitch_2
    invoke-virtual {p0, v2}, Lcom/android/mms/widget/NoticeDeleteActivity;->processCancelButton(Landroid/view/View;)V

    goto :goto_0

    .line 262
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 129
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 130
    const-string v0, "mmsnoticewidget/NoticeListEditActivity"

    const-string v1, "onPause "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 279
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 281
    const/4 v0, 0x2

    const v1, 0x7f0c017c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mMenuCancel:Landroid/view/MenuItem;

    .line 282
    iget-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 285
    const v0, 0x7f0c007b

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mMenuDelete:Landroid/view/MenuItem;

    .line 286
    iget-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mMenuDelete:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 290
    iget-boolean v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mIsLandscape:Z

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mMenuCancel:Landroid/view/MenuItem;

    const v1, 0x7f02022c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 292
    iget-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mMenuDelete:Landroid/view/MenuItem;

    const v1, 0x7f02022d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;

    invoke-virtual {v0}, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;->getCheckedSize()I

    move-result v0

    if-lez v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mMenuDelete:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 300
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mMenuDelete:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 122
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 123
    const-string v0, "mmsnoticewidget/NoticeListEditActivity"

    const-string v1, "onResume "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-direct {p0}, Lcom/android/mms/widget/NoticeDeleteActivity;->makeScreen()V

    .line 126
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 117
    const-string v0, "mmsnoticewidget/NoticeListEditActivity"

    const-string v1, "onSaveInstanceState "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-void
.end method

.method public processCancelButton(Landroid/view/View;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeDeleteActivity;->finish()V

    .line 183
    return-void
.end method

.method public processDoneButton(Landroid/view/View;)V
    .locals 3
    .parameter "target"

    .prologue
    .line 136
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 137
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 138
    const v1, 0x7f0c002c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 139
    iget-object v1, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/widget/NoticeDeleteActivity;->mAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    const v1, 0x7f0c037a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 144
    :goto_0
    const v1, 0x104000a

    new-instance v2, Lcom/android/mms/widget/NoticeDeleteActivity$1;

    invoke-direct {v2, p0}, Lcom/android/mms/widget/NoticeDeleteActivity$1;-><init>(Lcom/android/mms/widget/NoticeDeleteActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 171
    const/high16 v1, 0x104

    new-instance v2, Lcom/android/mms/widget/NoticeDeleteActivity$2;

    invoke-direct {v2, p0}, Lcom/android/mms/widget/NoticeDeleteActivity$2;-><init>(Lcom/android/mms/widget/NoticeDeleteActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 177
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 179
    return-void

    .line 142
    :cond_0
    const v1, 0x7f0c0379

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method
