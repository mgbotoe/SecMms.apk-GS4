.class public Lcom/android/mms/widget/NoticeEditActivity;
.super Landroid/app/Activity;
.source "NoticeEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;,
        Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;
    }
.end annotation


# static fields
.field private static final CANCEL:I = 0x2

.field private static final SAVE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "mmsnoticewidget/NoticeListEditActivity"


# instance fields
.field private final SPEEDDIAL_DEFAULT_IMAGES:[I

.field emptyData:Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;

.field isChanged:Z

.field private mActionBar:Landroid/app/ActionBar;

.field private mAppWidgetId:I

.field private mDbControl:Lcom/android/mms/widget/NoticeDBControl;

.field private mIsLandscape:Z

.field private mListView:Lcom/sec/android/touchwiz/widget/TwDndListView;

.field private mMenuCancel:Landroid/view/MenuItem;

.field private mMenuSave:Landroid/view/MenuItem;

.field private mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;

.field private mNoticeWidgetList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;",
            ">;"
        }
    .end annotation
.end field

.field private mNoticeWidgetListClone:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;",
            ">;"
        }
    .end annotation
.end field

.field movedData:Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/widget/NoticeEditActivity;->mNoticeWidgetList:Ljava/util/ArrayList;

    .line 53
    iput-object v1, p0, Lcom/android/mms/widget/NoticeEditActivity;->mNoticeWidgetListClone:Ljava/util/ArrayList;

    .line 63
    iput-object v1, p0, Lcom/android/mms/widget/NoticeEditActivity;->mMenuSave:Landroid/view/MenuItem;

    .line 64
    iput-object v1, p0, Lcom/android/mms/widget/NoticeEditActivity;->mMenuCancel:Landroid/view/MenuItem;

    .line 70
    new-instance v0, Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;

    invoke-direct {v0, p0}, Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;-><init>(Lcom/android/mms/widget/NoticeEditActivity;)V

    iput-object v0, p0, Lcom/android/mms/widget/NoticeEditActivity;->emptyData:Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/widget/NoticeEditActivity;->isChanged:Z

    .line 462
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/mms/widget/NoticeEditActivity;->SPEEDDIAL_DEFAULT_IMAGES:[I

    return-void

    :array_0
    .array-data 0x4
        0xfft 0x1t 0x2t 0x7ft
        0x0t 0x2t 0x2t 0x7ft
        0x1t 0x2t 0x2t 0x7ft
        0x2t 0x2t 0x2t 0x7ft
        0x3t 0x2t 0x2t 0x7ft
    .end array-data
.end method

.method private getNoticeList()Landroid/database/Cursor;
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/mms/widget/NoticeEditActivity;->mDbControl:Lcom/android/mms/widget/NoticeDBControl;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/mms/widget/NoticeDBControl;->idQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private makeScreen()V
    .locals 21

    .prologue
    .line 132
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/widget/NoticeEditActivity;->getNoticeList()Landroid/database/Cursor;

    move-result-object v11

    .line 133
    .local v11, cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/widget/NoticeEditActivity;->mNoticeWidgetList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 134
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/widget/NoticeEditActivity;->mNoticeWidgetList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 135
    const-string v3, "mmsnoticewidget/NoticeListEditActivity"

    const-string v4, "clear mNoticeWidgetList"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    if-eqz v11, :cond_2

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 139
    :cond_1
    const-string v3, "_id"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 140
    .local v5, id:I
    const-string v3, "message_id"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 142
    .local v6, messageId:I
    const-string v3, "contact_id"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 144
    .local v9, contactId:J
    const-string v3, "photo"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 145
    .local v17, photoIndex:I
    const-string v3, "display_name"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 147
    .local v14, itemName:Ljava/lang/String;
    const-string v3, "display_name_primary"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 151
    .local v15, itemNamePrimary:Ljava/lang/String;
    move/from16 v0, v17

    invoke-interface {v11, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_8

    const/4 v13, 0x1

    .line 152
    .local v13, isPhotoAvaiable:Z
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Lcom/android/mms/widget/NoticeEditActivity;->getSpeedDialDefaultImage(J)I

    move-result v12

    .line 153
    .local v12, defaultResourceId:I
    const/4 v7, 0x0

    .line 155
    .local v7, image:[B
    if-eqz v13, :cond_9

    .line 156
    move/from16 v0, v17

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    .line 163
    :goto_1
    const-string v8, ""

    .line 164
    .local v8, contactName:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/widget/NoticeEditActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android.contacts.DISPLAY_ORDER"

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 166
    .local v16, orderOfValue:I
    const/4 v3, 0x2

    move/from16 v0, v16

    if-ne v0, v3, :cond_a

    .line 167
    move-object v8, v14

    .line 172
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/widget/NoticeEditActivity;->mNoticeWidgetList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    new-instance v3, Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;-><init>(Lcom/android/mms/widget/NoticeEditActivity;II[BLjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 177
    .end local v5           #id:I
    .end local v6           #messageId:I
    .end local v7           #image:[B
    .end local v8           #contactName:Ljava/lang/String;
    .end local v9           #contactId:J
    .end local v12           #defaultResourceId:I
    .end local v13           #isPhotoAvaiable:Z
    .end local v14           #itemName:Ljava/lang/String;
    .end local v15           #itemNamePrimary:Ljava/lang/String;
    .end local v16           #orderOfValue:I
    .end local v17           #photoIndex:I
    :cond_2
    if-eqz v11, :cond_3

    .line 178
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 180
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/widget/NoticeEditActivity;->mNoticeWidgetList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mms/widget/NoticeEditActivity;->mNoticeWidgetListClone:Ljava/util/ArrayList;

    .line 181
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/widget/NoticeEditActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/widget/NoticeEditActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/widget/NoticeEditActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;

    #getter for: Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->noticeConversationList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->access$000(Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/widget/NoticeEditActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;

    #getter for: Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->noticeConversationListClone:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->access$100(Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v3, v4, :cond_6

    .line 182
    :cond_4
    new-instance v3, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/widget/NoticeEditActivity;->mNoticeWidgetList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/widget/NoticeEditActivity;->mNoticeWidgetListClone:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v3, v0, v1, v4, v2}, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;-><init>(Lcom/android/mms/widget/NoticeEditActivity;Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mms/widget/NoticeEditActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;

    .line 184
    const-string v3, "mmsnoticewidget/NoticeListEditActivity"

    const-string v4, "refreshed Widget list"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/widget/NoticeEditActivity;->isChanged:Z

    if-eqz v3, :cond_6

    .line 186
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/mms/widget/NoticeEditActivity;->isChanged:Z

    .line 187
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/widget/NoticeEditActivity;->mMenuSave:Landroid/view/MenuItem;

    if-eqz v3, :cond_5

    .line 188
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/widget/NoticeEditActivity;->mMenuSave:Landroid/view/MenuItem;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 190
    :cond_5
    const-string v3, "mmsnoticewidget/NoticeListEditActivity"

    const-string v4, "isChanged is also refreshed"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/widget/NoticeEditActivity;->mListView:Lcom/sec/android/touchwiz/widget/TwDndListView;

    if-eqz v3, :cond_7

    .line 194
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/widget/NoticeEditActivity;->mListView:Lcom/sec/android/touchwiz/widget/TwDndListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/widget/NoticeEditActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/widget/NoticeEditActivity;->mListView:Lcom/sec/android/touchwiz/widget/TwDndListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/widget/NoticeEditActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setDndController(Lcom/sec/android/touchwiz/widget/TwDndController;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/widget/NoticeEditActivity;->mListView:Lcom/sec/android/touchwiz/widget/TwDndListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setCacheColorHint(I)V

    .line 197
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/widget/NoticeEditActivity;->mListView:Lcom/sec/android/touchwiz/widget/TwDndListView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setDndMode(Z)V

    .line 200
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/widget/NoticeEditActivity;->mListView:Lcom/sec/android/touchwiz/widget/TwDndListView;

    const v4, 0x7f02028c

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setDragGrabHandleDrawable(I)V

    .line 201
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/widget/NoticeEditActivity;->mListView:Lcom/sec/android/touchwiz/widget/TwDndListView;

    const/4 v4, 0x0

    const/16 v18, 0x0

    const/16 v19, -0x9

    const/16 v20, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setDragGrabHandlePadding(IIII)V

    .line 203
    :cond_7
    return-void

    .line 151
    .restart local v5       #id:I
    .restart local v6       #messageId:I
    .restart local v9       #contactId:J
    .restart local v14       #itemName:Ljava/lang/String;
    .restart local v15       #itemNamePrimary:Ljava/lang/String;
    .restart local v17       #photoIndex:I
    :cond_8
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 158
    .restart local v7       #image:[B
    .restart local v12       #defaultResourceId:I
    .restart local v13       #isPhotoAvaiable:Z
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/widget/NoticeEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/mms/widget/NoticeEditActivity;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v7

    goto/16 :goto_1

    .line 169
    .restart local v8       #contactName:Ljava/lang/String;
    .restart local v16       #orderOfValue:I
    :cond_a
    move-object v8, v15

    goto/16 :goto_2
.end method

.method private updateNoticeList()V
    .locals 7

    .prologue
    .line 415
    iget-object v5, p0, Lcom/android/mms/widget/NoticeEditActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;

    invoke-virtual {v5}, Lcom/android/mms/widget/NoticeEditActivity$NoticeAdapter;->getNoticeList()Ljava/util/ArrayList;

    move-result-object v3

    .line 417
    .local v3, updateList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 420
    .local v0, mStringBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 421
    const/4 v1, 0x0

    .local v1, position:I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v1, :cond_1

    .line 422
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 423
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "position"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 424
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 425
    iget v5, p0, Lcom/android/mms/widget/NoticeEditActivity;->mAppWidgetId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 426
    const-string v5, "widget_id"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    const-string v5, " = \'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    iget v5, p0, Lcom/android/mms/widget/NoticeEditActivity;->mAppWidgetId:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 429
    const-string v5, "\' AND "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    :cond_0
    const-string v5, "_id"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    const-string v5, " = \'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;

    invoke-virtual {v5}, Lcom/android/mms/widget/NoticeEditActivity$NoticeWidgetData;->getId()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 434
    const-string v5, "\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 437
    .local v2, selectionLocalDb:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/mms/widget/NoticeEditActivity;->mDbControl:Lcom/android/mms/widget/NoticeDBControl;

    invoke-virtual {v5, v4, v2}, Lcom/android/mms/widget/NoticeDBControl;->update(Landroid/content/ContentValues;Ljava/lang/String;)I

    .line 421
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 441
    .end local v1           #position:I
    .end local v2           #selectionLocalDb:Ljava/lang/String;
    .end local v4           #values:Landroid/content/ContentValues;
    :cond_1
    return-void
.end method


# virtual methods
.method public bitmapToByteArray(Landroid/graphics/Bitmap;)[B
    .locals 4
    .parameter "bitmap"

    .prologue
    .line 453
    if-nez p1, :cond_0

    .line 454
    const/4 v0, 0x0

    .line 459
    :goto_0
    return-object v0

    .line 455
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 456
    .local v1, stream:Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 457
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 459
    .local v0, byteArray:[B
    goto :goto_0
.end method

.method public byteArrayToBitmap([B)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "byteArray"

    .prologue
    .line 444
    if-nez p1, :cond_0

    .line 445
    const/4 v0, 0x0

    .line 449
    :goto_0
    return-object v0

    .line 446
    :cond_0
    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {p1, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 449
    .local v0, bitmap:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public getSpeedDialDefaultImage(J)I
    .locals 3
    .parameter "contactId"

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/mms/widget/NoticeEditActivity;->SPEEDDIAL_DEFAULT_IMAGES:[I

    iget-object v1, p0, Lcom/android/mms/widget/NoticeEditActivity;->SPEEDDIAL_DEFAULT_IMAGES:[I

    array-length v1, v1

    int-to-long v1, v1

    rem-long v1, p1, v1

    long-to-int v1, v1

    aget v0, v0, v1

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 249
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 250
    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/widget/NoticeEditActivity;->mIsLandscape:Z

    .line 252
    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeEditActivity;->invalidateOptionsMenu()V

    .line 254
    return-void

    .line 250
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    .line 76
    const-string v0, "mmsnoticewidget/NoticeListEditActivity"

    const-string v2, "onCreate "

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const v0, 0x7f04009c

    invoke-virtual {p0, v0}, Lcom/android/mms/widget/NoticeEditActivity;->setContentView(I)V

    .line 81
    const v0, 0x7f0b02c0

    invoke-virtual {p0, v0}, Lcom/android/mms/widget/NoticeEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwDndListView;

    iput-object v0, p0, Lcom/android/mms/widget/NoticeEditActivity;->mListView:Lcom/sec/android/touchwiz/widget/TwDndListView;

    .line 83
    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "appWidgetId"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/widget/NoticeEditActivity;->mAppWidgetId:I

    .line 85
    new-instance v0, Lcom/android/mms/widget/NoticeDBControl;

    invoke-direct {v0, p0}, Lcom/android/mms/widget/NoticeDBControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/widget/NoticeEditActivity;->mDbControl:Lcom/android/mms/widget/NoticeDBControl;

    .line 87
    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/widget/NoticeEditActivity;->mIsLandscape:Z

    .line 89
    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeEditActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 90
    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeEditActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 91
    return-void

    .line 87
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 96
    iget-object v0, p0, Lcom/android/mms/widget/NoticeEditActivity;->mDbControl:Lcom/android/mms/widget/NoticeDBControl;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/mms/widget/NoticeEditActivity;->mDbControl:Lcom/android/mms/widget/NoticeDBControl;

    invoke-virtual {v0}, Lcom/android/mms/widget/NoticeDBControl;->close()V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/mms/widget/NoticeEditActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_1

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/widget/NoticeEditActivity;->mActionBar:Landroid/app/ActionBar;

    .line 100
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 206
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 217
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 208
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeEditActivity;->finish()V

    goto :goto_0

    .line 211
    :sswitch_1
    invoke-virtual {p0, v2}, Lcom/android/mms/widget/NoticeEditActivity;->processDoneButton(Landroid/view/View;)V

    goto :goto_0

    .line 214
    :sswitch_2
    invoke-virtual {p0, v2}, Lcom/android/mms/widget/NoticeEditActivity;->processCancelButton(Landroid/view/View;)V

    goto :goto_0

    .line 206
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
    .line 116
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 117
    const-string v0, "mmsnoticewidget/NoticeListEditActivity"

    const-string v1, "onPause "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 222
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 224
    const/4 v0, 0x2

    const v1, 0x7f0c017c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/widget/NoticeEditActivity;->mMenuCancel:Landroid/view/MenuItem;

    .line 225
    iget-object v0, p0, Lcom/android/mms/widget/NoticeEditActivity;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 228
    const v0, 0x7f0c0022

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/widget/NoticeEditActivity;->mMenuSave:Landroid/view/MenuItem;

    .line 229
    iget-object v0, p0, Lcom/android/mms/widget/NoticeEditActivity;->mMenuSave:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 233
    iget-boolean v0, p0, Lcom/android/mms/widget/NoticeEditActivity;->mIsLandscape:Z

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/mms/widget/NoticeEditActivity;->mMenuCancel:Landroid/view/MenuItem;

    const v1, 0x7f02022c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 235
    iget-object v0, p0, Lcom/android/mms/widget/NoticeEditActivity;->mMenuSave:Landroid/view/MenuItem;

    const v1, 0x7f02022d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 238
    :cond_0
    iget-boolean v0, p0, Lcom/android/mms/widget/NoticeEditActivity;->isChanged:Z

    if-nez v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/android/mms/widget/NoticeEditActivity;->mMenuSave:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 243
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/android/mms/widget/NoticeEditActivity;->mMenuSave:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 110
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 111
    const-string v0, "mmsnoticewidget/NoticeListEditActivity"

    const-string v1, "onResume "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-direct {p0}, Lcom/android/mms/widget/NoticeEditActivity;->makeScreen()V

    .line 113
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 105
    const-string v0, "mmsnoticewidget/NoticeListEditActivity"

    const-string v1, "onSaveInstanceState "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void
.end method

.method public processCancelButton(Landroid/view/View;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeEditActivity;->finish()V

    .line 129
    return-void
.end method

.method public processDoneButton(Landroid/view/View;)V
    .locals 2
    .parameter "target"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/mms/widget/NoticeEditActivity;->updateNoticeList()V

    .line 123
    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeEditActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;Z)V

    .line 124
    invoke-virtual {p0}, Lcom/android/mms/widget/NoticeEditActivity;->finish()V

    .line 125
    return-void
.end method
