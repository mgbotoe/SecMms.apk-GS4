.class public Lcom/android/mms/ui/MessageListAdapter;
.super Landroid/widget/CursorAdapter;
.source "MessageListAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;,
        Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;,
        Lcom/android/mms/ui/MessageListAdapter$ArrayData;
    }
.end annotation


# static fields
.field public static final CACHE_SIZE:I = 0x32

.field public static final COLUMN_ID:I = 0x1

.field static final COLUMN_MMS_DATE:I = 0xd

.field static final COLUMN_MMS_DELIVERY_REPORT:I = 0x11

.field static final COLUMN_MMS_ERROR_TYPE:I = 0x13

.field static final COLUMN_MMS_LOCKED:I = 0x14

.field static final COLUMN_MMS_MESSAGE_BOX:I = 0x10

.field static final COLUMN_MMS_MESSAGE_TYPE:I = 0xf

.field static final COLUMN_MMS_PRIORITY:I = 0x20

.field static final COLUMN_MMS_READ:I = 0xe

.field static final COLUMN_MMS_READ_REPORT:I = 0x12

.field static final COLUMN_MMS_RESERVED:I = 0x1e

.field static final COLUMN_MMS_SUBJECT:I = 0xb

.field static final COLUMN_MMS_SUBJECT_CHARSET:I = 0xc

.field static final COLUMN_MMS_TEXT_ONLY:I = 0x24

.field public static final COLUMN_MSG_TYPE:I = 0x0

.field static final COLUMN_SERVICE_CATEGORY:I = 0x23

.field public static final COLUMN_SMS_ADDRESS:I = 0x3

.field public static final COLUMN_SMS_BODY:I = 0x4

.field static final COLUMN_SMS_CALLBACK:I = 0x1c

.field public static final COLUMN_SMS_DATE:I = 0x5

.field static final COLUMN_SMS_ERROR_CODE:I = 0xa

.field static final COLUMN_SMS_GROUP_ID:I = 0x15

.field static final COLUMN_SMS_GROUP_TYPE:I = 0x16

.field static final COLUMN_SMS_LINK_URL:I = 0x22

.field static final COLUMN_SMS_LOCKED:I = 0x9

.field static final COLUMN_SMS_PRIORITY:I = 0x1f

.field public static final COLUMN_SMS_READ:I = 0x6

.field static final COLUMN_SMS_RESERVED:I = 0x1d

.field public static final COLUMN_SMS_STATUS:I = 0x8

.field static final COLUMN_SMS_SVC_CMD:I = 0x25

.field static final COLUMN_SMS_SVC_CMD_CONTENT:I = 0x26

.field static final COLUMN_SMS_TELESERVICE_ID:I = 0x21

.field public static final COLUMN_SMS_TYPE:I = 0x7

.field public static final COLUMN_THREAD_ID:I = 0x2

.field static final COLUMN_WPM_ACTION:I = 0x1b

.field static final COLUMN_WPM_CREATED:I = 0x19

.field static final COLUMN_WPM_DATE:I = 0x5

.field static final COLUMN_WPM_HREF:I = 0x17

.field static final COLUMN_WPM_LOCKED:I = 0x9

.field static final COLUMN_WPM_PUSH_TYPE:I = 0x7

.field static final COLUMN_WPM_READ:I = 0x6

.field static final COLUMN_WPM_SI_EXPIRES:I = 0x1a

.field static final COLUMN_WPM_SI_ID:I = 0x18

.field static final COLUMN_WPM_TEXT:I = 0x4

.field private static final GROUP_ID:Ljava/lang/String; = "group_id"

.field private static final GROUP_TYPE:Ljava/lang/String; = "group_type"

.field public static final INCOMING_ITEM_TYPE:I = 0x0

.field private static final NO_POSITION:I = -0x1

.field public static final OUTGOING_ITEM_TYPE:I = 0x1

.field static final PROJECTION:[Ljava/lang/String; = null

.field static final PROJECTION_CMAS:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "Mms/MessageListAdapter"

.field private static final Y_OFFSET:I = -0x2710


# instance fields
.field public animationIdx:I

.field mAnimation:Landroid/view/animation/Animation;

.field private mCanDisableSelection:Z

.field private mCheckedMmsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedSmsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedWpmList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected final mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

.field private mContext:Landroid/content/Context;

.field private mDateSeperatorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/MessageListAdapter$ArrayData;",
            ">;"
        }
    .end annotation
.end field

.field private mDummyCheckedMmsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mDummyCheckedSmsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mDummyCheckedWpmList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mHighlight:Ljava/util/regex/Pattern;

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mIsCopyToSimMode:Z

.field private mIsGroupConversation:Z

.field private mIsMultiMode:Z

.field private mIsSelectItemBottom:Z

.field private mIsSelectionMode:Z

.field private final mListView:Landroid/widget/ListView;

.field private final mMessageItemCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/mms/ui/MessageItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mMsgListItemHandler:Landroid/os/Handler;

.field private mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

.field private mSelectPosition:I

.field private mWorkingMessageUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 67
    const/16 v0, 0x27

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "transport_type"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "thread_id"

    aput-object v1, v0, v5

    const-string v1, "address"

    aput-object v1, v0, v6

    const-string v1, "body"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "error_code"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "sub"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "date"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "read"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "m_type"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "msg_box"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "d_rpt"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "rr"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "err_type"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "group_id"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "group_type"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "href"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "si_id"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "created"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "si_expires"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "action"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "callback_number"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "reserved"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "reserved"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "pri"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "pri"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "teleservice_id"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "link_url"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "service_category"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "text_only"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "svc_cmd"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "svc_cmd_content"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    .line 122
    const/16 v0, 0x26

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "transport_type"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "thread_id"

    aput-object v1, v0, v5

    const-string v1, "address"

    aput-object v1, v0, v6

    const-string v1, "body"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "error_code"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "sub"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "date"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "read"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "m_type"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "msg_box"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "d_rpt"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "rr"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "err_type"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "group_id"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "group_type"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "href"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "si_id"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "created"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "si_expires"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "action"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "service_category"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "category"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "response_type"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "severity"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "urgency"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "certainty"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "identifier"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "alert_handling"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "expires"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "language"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION_CMAS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ListView;ZLjava/util/regex/Pattern;)V
    .locals 5
    .parameter "context"
    .parameter "c"
    .parameter "listView"
    .parameter "useDefaultColumnsMap"
    .parameter "highlight"

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    const/4 v4, 0x0

    .line 291
    invoke-direct {p0, p1, p2, v4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 244
    iput-boolean v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mCanDisableSelection:Z

    .line 249
    iput-boolean v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsSelectionMode:Z

    .line 251
    iput-boolean v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsCopyToSimMode:Z

    .line 264
    iput-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mWorkingMessageUri:Landroid/net/Uri;

    .line 362
    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter;->animationIdx:I

    .line 510
    iput-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mAnimation:Landroid/view/animation/Animation;

    .line 1197
    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mSelectPosition:I

    .line 1198
    iput-boolean v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsSelectItemBottom:Z

    .line 292
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    .line 293
    iput-object p5, p0, Lcom/android/mms/ui/MessageListAdapter;->mHighlight:Ljava/util/regex/Pattern;

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    .line 296
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    .line 299
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 300
    iput-object p3, p0, Lcom/android/mms/ui/MessageListAdapter;->mListView:Landroid/widget/ListView;

    .line 301
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 302
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$1;

    const/16 v1, 0x32

    const/high16 v2, 0x3f80

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/mms/ui/MessageListAdapter$1;-><init>(Lcom/android/mms/ui/MessageListAdapter;IFZ)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    .line 313
    if-eqz p4, :cond_1

    .line 314
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v0}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    .line 319
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    iput-boolean v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mCanDisableSelection:Z

    .line 324
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mDateSeperatorList:Ljava/util/ArrayList;

    .line 325
    return-void

    .line 316
    :cond_1
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v0, p2}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ListView;ZLjava/util/regex/Pattern;Z)V
    .locals 4
    .parameter "context"
    .parameter "c"
    .parameter "listView"
    .parameter "useDefaultColumnsMap"
    .parameter "highlight"
    .parameter "disableSelection"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 330
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 244
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCanDisableSelection:Z

    .line 249
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsSelectionMode:Z

    .line 251
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsCopyToSimMode:Z

    .line 264
    iput-object v2, p0, Lcom/android/mms/ui/MessageListAdapter;->mWorkingMessageUri:Landroid/net/Uri;

    .line 362
    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter;->animationIdx:I

    .line 510
    iput-object v2, p0, Lcom/android/mms/ui/MessageListAdapter;->mAnimation:Landroid/view/animation/Animation;

    .line 1197
    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mSelectPosition:I

    .line 1198
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsSelectItemBottom:Z

    .line 331
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    .line 332
    iput-object p5, p0, Lcom/android/mms/ui/MessageListAdapter;->mHighlight:Ljava/util/regex/Pattern;

    .line 334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    .line 335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    .line 336
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    .line 338
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 339
    iput-object p3, p0, Lcom/android/mms/ui/MessageListAdapter;->mListView:Landroid/widget/ListView;

    .line 340
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 341
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$2;

    const/16 v1, 0x32

    const/high16 v2, 0x3f80

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/mms/ui/MessageListAdapter$2;-><init>(Lcom/android/mms/ui/MessageListAdapter;IFZ)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    .line 352
    if-eqz p4, :cond_0

    .line 353
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v0}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    .line 357
    :goto_0
    iput-boolean p6, p0, Lcom/android/mms/ui/MessageListAdapter;->mCanDisableSelection:Z

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mDateSeperatorList:Ljava/util/ArrayList;

    .line 359
    return-void

    .line 355
    :cond_0
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v0, p2}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessageListAdapter;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public static formatDate(J)J
    .locals 6
    .parameter "when"

    .prologue
    .line 1182
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1183
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1184
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 1185
    .local v3, year:I
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    .line 1186
    .local v2, month:I
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1188
    .local v1, day:I
    mul-int/lit16 v4, v3, 0x2710

    mul-int/lit8 v5, v2, 0x64

    add-int/2addr v4, v5

    add-int/2addr v4, v1

    int-to-long v4, v4

    return-wide v4
.end method

.method private getIsMultiMode()Z
    .locals 1

    .prologue
    .line 1042
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsMultiMode:Z

    return v0
.end method

.method private static getKey(Ljava/lang/String;J)J
    .locals 1
    .parameter "type"
    .parameter "id"

    .prologue
    .line 670
    const-string v0, "mms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 671
    neg-long p1, p1

    .line 673
    .end local p1
    :cond_0
    return-wide p1
.end method

.method private isCursorValid(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 663
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 664
    :cond_0
    const/4 v0, 0x0

    .line 666
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private shouldMsgBeDisabled(Lcom/android/mms/ui/MessageItem;)Z
    .locals 1
    .parameter "msg"

    .prologue
    .line 538
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSending()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/android/mms/ui/MessageItem;->mIsCbSms:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isWpm()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 540
    :cond_0
    const/4 v0, 0x1

    .line 542
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public backupCheckedList()V
    .locals 1

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mDummyCheckedSmsList:Ljava/util/ArrayList;

    .line 1159
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mDummyCheckedMmsList:Ljava/util/ArrayList;

    .line 1160
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mDummyCheckedWpmList:Ljava/util/ArrayList;

    .line 1162
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListAdapter;->clearCheckedList()V

    .line 1163
    return-void
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 31
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 380
    move-object/from16 v0, p1

    instance-of v5, v0, Lcom/android/mms/ui/MessageListItem;

    if-eqz v5, :cond_6

    .line 381
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v5, v5, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 382
    .local v30, type:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v5, v5, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 384
    .local v24, msgId:J
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-wide/from16 v2, v24

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/mms/ui/MessageListAdapter;->getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v26

    .line 389
    .local v26, msgItem:Lcom/android/mms/ui/MessageItem;
    if-nez v26, :cond_1

    .line 390
    const-string v5, "Mms/MessageListAdapter"

    const-string v6, "bind abort, no data"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    .end local v24           #msgId:J
    .end local v26           #msgItem:Lcom/android/mms/ui/MessageItem;
    .end local v30           #type:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 394
    .restart local v24       #msgId:J
    .restart local v26       #msgItem:Lcom/android/mms/ui/MessageItem;
    .restart local v30       #type:Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 396
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MessageListAdapter;->mWorkingMessageUri:Landroid/net/Uri;

    if-eqz v5, :cond_2

    .line 397
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MessageListAdapter;->mWorkingMessageUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v29

    .line 398
    .local v29, szDraftType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MessageListAdapter;->mWorkingMessageUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v28

    .line 405
    .local v28, szDraftId:Ljava/lang/String;
    if-eqz v29, :cond_2

    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-eqz v5, :cond_2

    .line 407
    :try_start_1
    invoke-static/range {v28 .. v28}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    .line 408
    .local v19, draftId:J
    move-object/from16 v0, v26

    iget-wide v5, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    cmp-long v5, v19, v5

    if-nez v5, :cond_2

    .line 409
    const-string v5, "Mms/MessageListAdapter"

    const-string v6, "MessageListAdapter::bindView()-return: "

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    if-eqz p1, :cond_0

    .line 411
    const/16 v5, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 415
    .end local v19           #draftId:J
    :catch_0
    move-exception v21

    .line 416
    .local v21, exception:Ljava/lang/NumberFormatException;
    :try_start_2
    const-string v5, "Mms/MessageListAdapter"

    const-string v6, "Thread ID must be a Long."

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    .end local v21           #exception:Ljava/lang/NumberFormatException;
    .end local v28           #szDraftId:Ljava/lang/String;
    .end local v29           #szDraftType:Ljava/lang/String;
    :cond_2
    const-string v5, "mms"

    move-object/from16 v0, v26

    iget-object v6, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual/range {v26 .. v26}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    .line 422
    invoke-virtual/range {v26 .. v26}, Lcom/android/mms/ui/MessageItem;->getMessageSize()I

    move-result v5

    if-nez v5, :cond_3

    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-nez v5, :cond_3

    .line 423
    if-eqz p1, :cond_0

    .line 424
    const/16 v5, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 429
    :catch_1
    move-exception v5

    .line 434
    :cond_3
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v22

    .local v22, i:I
    move-object/from16 v23, p1

    .line 435
    check-cast v23, Lcom/android/mms/ui/MessageListItem;

    .line 436
    .local v23, item:Lcom/android/mms/ui/MessageListItem;
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MessageListAdapter;->getIsMultiMode()Z

    move-result v5

    if-nez v5, :cond_4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/mms/ui/MessageListAdapter;->mIsCopyToSimMode:Z

    if-nez v5, :cond_4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCombineAndForwardMenu()Z

    move-result v5

    if-eqz v5, :cond_b

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/mms/ui/MessageListAdapter;->mIsSelectionMode:Z

    if-eqz v5, :cond_b

    .line 439
    :cond_4
    const/16 v18, 0x0

    .line 441
    .local v18, checked:Z
    const-string v5, "sms"

    move-object/from16 v0, v26

    iget-object v6, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 442
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    .line 451
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCombineAndForwardMenu()Z

    move-result v5

    if-eqz v5, :cond_a

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/mms/ui/MessageListAdapter;->mIsSelectionMode:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->notAllowedCombineForward(Lcom/android/mms/ui/MessageItem;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 456
    const-string v5, "Mms/MessageListAdapter"

    const-string v6, "COMBINE_AND_FORWARD_MESSAGE only for mms (phase 1)"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const/4 v5, 0x4

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v5, v1}, Lcom/android/mms/ui/MessageListItem;->setCheckBox(IZ)V

    .line 463
    :goto_2
    if-nez v18, :cond_5

    .line 464
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/android/mms/ui/ConversationComposer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/mms/ui/ConversationComposer;->setMessageSelectAll(Z)V

    .line 469
    .end local v18           #checked:Z
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MessageListAdapter;->mDateSeperatorList:Ljava/util/ArrayList;

    if-eqz v5, :cond_c

    .line 470
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MessageListAdapter;->mDateSeperatorList:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/mms/ui/MessageListAdapter$ArrayData;

    move-object/from16 v0, v26

    iget-wide v7, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    move-object/from16 v0, v26

    iget-object v9, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v7, v8, v9}, Lcom/android/mms/ui/MessageListAdapter$ArrayData;-><init>(Lcom/android/mms/ui/MessageListAdapter;JLjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    move-object/from16 v0, v26

    iput-boolean v5, v0, Lcom/android/mms/ui/MessageItem;->mHasSeperator:Z

    .line 476
    :goto_4
    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageListItem;->bind(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 477
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MessageListAdapter;->mMsgListItemHandler:Landroid/os/Handler;

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lcom/android/mms/ui/MessageListItem;->setMsgListItemHandler(Landroid/os/Handler;)V

    .line 479
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/mms/ui/MessageListAdapter;->animationIdx:I

    move/from16 v0, v22

    if-eq v0, v5, :cond_d

    .line 480
    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/ui/MessageListItem;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_6

    .line 481
    const/4 v5, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lcom/android/mms/ui/MessageListItem;->setVisibility(I)V

    .line 501
    .end local v22           #i:I
    .end local v23           #item:Lcom/android/mms/ui/MessageListItem;
    .end local v24           #msgId:J
    .end local v26           #msgItem:Lcom/android/mms/ui/MessageItem;
    .end local v30           #type:Ljava/lang/String;
    :cond_6
    :goto_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFlickThreadView()Z

    move-result v5

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MessageListAdapter;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v5, :cond_7

    .line 502
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MessageListAdapter;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 507
    :cond_7
    const-string v5, "Mms/MessageListAdapter"

    const-string v6, "bind complete()"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 443
    .restart local v18       #checked:Z
    .restart local v22       #i:I
    .restart local v23       #item:Lcom/android/mms/ui/MessageListItem;
    .restart local v24       #msgId:J
    .restart local v26       #msgItem:Lcom/android/mms/ui/MessageItem;
    .restart local v30       #type:Ljava/lang/String;
    :cond_8
    const-string v5, "wpm"

    move-object/from16 v0, v26

    iget-object v6, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 444
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    goto/16 :goto_1

    .line 446
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    goto/16 :goto_1

    .line 460
    :cond_a
    const/4 v5, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v5, v1}, Lcom/android/mms/ui/MessageListItem;->setCheckBox(IZ)V

    goto/16 :goto_2

    .line 466
    .end local v18           #checked:Z
    :cond_b
    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Lcom/android/mms/ui/MessageListItem;->setCheckBox(IZ)V

    goto/16 :goto_3

    .line 472
    :cond_c
    const-string v5, "Mms/MessageListAdapter"

    const-string v6, "mDateSeperatorList == null"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const/4 v5, 0x0

    move-object/from16 v0, v26

    iput-boolean v5, v0, Lcom/android/mms/ui/MessageItem;->mHasSeperator:Z

    goto/16 :goto_4

    .line 484
    :cond_d
    new-instance v17, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x1

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 486
    .local v17, animSendMsg:Landroid/view/animation/AnimationSet;
    const-wide/16 v5, 0x1f4

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/android/mms/animation/MsgObjectAnimation;->createFadeIn(JLandroid/view/animation/Interpolator;)Landroid/view/animation/AlphaAnimation;

    move-result-object v16

    .line 487
    .local v16, alphaAni:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v5, 0x1f4

    const/4 v7, 0x0

    const v8, 0x3f19999a

    const/high16 v9, 0x3f80

    const v10, 0x3f19999a

    const/high16 v11, 0x3f80

    const/4 v12, 0x1

    const v13, 0x3f333333

    const/4 v14, 0x1

    const/high16 v15, 0x3f00

    invoke-static/range {v5 .. v15}, Lcom/android/mms/animation/MsgObjectAnimation;->createScaleAtCustomType(JLandroid/view/animation/Interpolator;FFFFIFIF)Landroid/view/animation/ScaleAnimation;

    move-result-object v27

    .line 490
    .local v27, scaleAni:Landroid/view/animation/ScaleAnimation;
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 491
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 492
    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 494
    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListItem;->setAnimation(Landroid/view/animation/Animation;)V

    .line 495
    const/4 v5, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lcom/android/mms/ui/MessageListItem;->setVisibility(I)V

    .line 496
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/mms/ui/MessageListAdapter;->animationIdx:I

    goto/16 :goto_5
.end method

.method public canCachedMessageItemBeCombineForwarded(Ljava/lang/String;JLandroid/database/Cursor;)Z
    .locals 11
    .parameter "type"
    .parameter "msgId"
    .parameter "c"

    .prologue
    const/4 v10, 0x0

    .line 646
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    invoke-static {p1, p2, p3}, Lcom/android/mms/ui/MessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/ui/MessageItem;

    .line 647
    .local v9, item:Lcom/android/mms/ui/MessageItem;
    if-nez v9, :cond_1

    if-eqz p4, :cond_1

    invoke-direct {p0, p4}, Lcom/android/mms/ui/MessageListAdapter;->isCursorValid(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 649
    :try_start_0
    new-instance v0, Lcom/android/mms/ui/MessageItem;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget-object v5, p0, Lcom/android/mms/ui/MessageListAdapter;->mHighlight:Ljava/util/regex/Pattern;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;ZZ)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .local v0, item:Lcom/android/mms/ui/MessageItem;
    :try_start_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/MessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 655
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListAdapter;->notAllowedCombineForward(Lcom/android/mms/ui/MessageItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v10

    .line 657
    :goto_1
    return v1

    .line 651
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v9       #item:Lcom/android/mms/ui/MessageItem;
    :catch_0
    move-exception v8

    move-object v0, v9

    .line 652
    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    .local v8, e:Lcom/google/android/mms/MmsException;
    :goto_2
    const-string v1, "Mms/MessageListAdapter"

    invoke-virtual {v8}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 657
    .end local v8           #e:Lcom/google/android/mms/MmsException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    .line 651
    :catch_1
    move-exception v8

    goto :goto_2

    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v9       #item:Lcom/android/mms/ui/MessageItem;
    :cond_1
    move-object v0, v9

    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_0
.end method

.method public canCachedMessageItemBeSelected(Ljava/lang/String;JLandroid/database/Cursor;)Z
    .locals 11
    .parameter "type"
    .parameter "msgId"
    .parameter "c"

    .prologue
    const/4 v10, 0x0

    .line 629
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    invoke-static {p1, p2, p3}, Lcom/android/mms/ui/MessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/ui/MessageItem;

    .line 630
    .local v9, item:Lcom/android/mms/ui/MessageItem;
    if-nez v9, :cond_1

    if-eqz p4, :cond_1

    invoke-direct {p0, p4}, Lcom/android/mms/ui/MessageListAdapter;->isCursorValid(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 632
    :try_start_0
    new-instance v0, Lcom/android/mms/ui/MessageItem;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget-object v5, p0, Lcom/android/mms/ui/MessageListAdapter;->mHighlight:Ljava/util/regex/Pattern;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;ZZ)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .local v0, item:Lcom/android/mms/ui/MessageItem;
    :try_start_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/MessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 638
    :goto_0
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListAdapter;->shouldMsgBeDisabled(Lcom/android/mms/ui/MessageItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v10

    .line 640
    :goto_1
    return v1

    .line 634
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v9       #item:Lcom/android/mms/ui/MessageItem;
    :catch_0
    move-exception v8

    move-object v0, v9

    .line 635
    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    .local v8, e:Lcom/google/android/mms/MmsException;
    :goto_2
    const-string v1, "Mms/MessageListAdapter"

    invoke-virtual {v8}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 640
    .end local v8           #e:Lcom/google/android/mms/MmsException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    .line 634
    :catch_1
    move-exception v8

    goto :goto_2

    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v9       #item:Lcom/android/mms/ui/MessageItem;
    :cond_1
    move-object v0, v9

    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_0
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 13
    .parameter "cursor"

    .prologue
    .line 1228
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1231
    iget v9, p0, Lcom/android/mms/ui/MessageListAdapter;->mSelectPosition:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    .line 1232
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListAdapter;->getListView()Landroid/widget/ListView;

    move-result-object v10

    iget v11, p0, Lcom/android/mms/ui/MessageListAdapter;->mSelectPosition:I

    iget-boolean v9, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsSelectItemBottom:Z

    if-eqz v9, :cond_5

    const/16 v9, -0x2710

    :goto_0
    invoke-virtual {v10, v11, v9}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 1235
    :cond_0
    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-lez v9, :cond_4

    .line 1237
    const-wide/16 v6, 0x0

    .line 1242
    .local v6, prevDay:J
    iget-object v9, p0, Lcom/android/mms/ui/MessageListAdapter;->mDateSeperatorList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 1243
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1245
    :cond_1
    const/4 v9, 0x0

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1246
    .local v8, type:Ljava/lang/String;
    const-string v9, "mms"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1247
    const/16 v9, 0xd

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    mul-long v2, v9, v11

    .line 1251
    .local v2, date:J
    :goto_1
    invoke-static {v2, v3}, Lcom/android/mms/ui/MessageListAdapter;->formatDate(J)J

    move-result-wide v0

    .line 1252
    .local v0, currDay:J
    const-wide/16 v9, 0x0

    cmp-long v9, v6, v9

    if-eqz v9, :cond_2

    cmp-long v9, v6, v0

    if-gez v9, :cond_3

    .line 1253
    :cond_2
    move-wide v6, v0

    .line 1255
    const/4 v9, 0x1

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1256
    .local v4, id:J
    iget-object v9, p0, Lcom/android/mms/ui/MessageListAdapter;->mDateSeperatorList:Ljava/util/ArrayList;

    new-instance v10, Lcom/android/mms/ui/MessageListAdapter$ArrayData;

    invoke-direct {v10, p0, v4, v5, v8}, Lcom/android/mms/ui/MessageListAdapter$ArrayData;-><init>(Lcom/android/mms/ui/MessageListAdapter;JLjava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1258
    .end local v4           #id:J
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1260
    .end local v0           #currDay:J
    .end local v2           #date:J
    .end local v6           #prevDay:J
    .end local v8           #type:Ljava/lang/String;
    :cond_4
    return-void

    .line 1232
    :cond_5
    const/4 v9, 0x0

    goto :goto_0

    .line 1249
    .restart local v6       #prevDay:J
    .restart local v8       #type:Ljava/lang/String;
    :cond_6
    const/4 v9, 0x5

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .restart local v2       #date:J
    goto :goto_1
.end method

.method public cleanDummyCheckedList()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1176
    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mDummyCheckedSmsList:Ljava/util/ArrayList;

    .line 1177
    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mDummyCheckedMmsList:Ljava/util/ArrayList;

    .line 1178
    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mDummyCheckedWpmList:Ljava/util/ArrayList;

    .line 1179
    return-void
.end method

.method public clearCheckedList()V
    .locals 2

    .prologue
    .line 1098
    const-string v0, "Mms/MessageListAdapter"

    const-string v1, "clearCheckedList()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1101
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1102
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1103
    return-void
.end method

.method public getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;
    .locals 11
    .parameter "type"
    .parameter "msgId"
    .parameter "c"

    .prologue
    .line 610
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    invoke-static {p1, p2, p3}, Lcom/android/mms/ui/MessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/mms/ui/MessageItem;

    .line 611
    .local v10, item:Lcom/android/mms/ui/MessageItem;
    if-nez v10, :cond_0

    if-eqz p4, :cond_0

    invoke-direct {p0, p4}, Lcom/android/mms/ui/MessageListAdapter;->isCursorValid(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 613
    :try_start_0
    new-instance v0, Lcom/android/mms/ui/MessageItem;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget-object v5, p0, Lcom/android/mms/ui/MessageListAdapter;->mHighlight:Ljava/util/regex/Pattern;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;ZZ)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 614
    .end local v10           #item:Lcom/android/mms/ui/MessageItem;
    .local v0, item:Lcom/android/mms/ui/MessageItem;
    :try_start_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/MessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    .line 623
    :goto_0
    return-object v0

    .line 615
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v10       #item:Lcom/android/mms/ui/MessageItem;
    :catch_0
    move-exception v8

    move-object v0, v10

    .line 616
    .end local v10           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    .local v8, e:Lcom/google/android/mms/MmsException;
    :goto_1
    const-string v1, "Mms/MessageListAdapter"

    const-string v2, "getCachedMessageItem() : MmsException caught"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 617
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .end local v8           #e:Lcom/google/android/mms/MmsException;
    .restart local v10       #item:Lcom/android/mms/ui/MessageItem;
    :catch_1
    move-exception v9

    move-object v0, v10

    .line 618
    .end local v10           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    .local v9, ex:Ljava/lang/OutOfMemoryError;
    :goto_2
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->writeHprofDataToFile()V

    .line 619
    const-string v1, "Mms/MessageListAdapter"

    const-string v2, "OutOfMemoryError caught @ mMessageItemCache.put and throw"

    invoke-static {v1, v2, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 620
    throw v9

    .line 617
    .end local v9           #ex:Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v9

    goto :goto_2

    .line 615
    :catch_3
    move-exception v8

    goto :goto_1

    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v10       #item:Lcom/android/mms/ui/MessageItem;
    :cond_0
    move-object v0, v10

    .end local v10           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_0
.end method

.method public getCheckedConvList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1135
    .local v0, checkedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1136
    return-object v0
.end method

.method public getCheckedCount()I
    .locals 2

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 1286
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 367
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 374
    :goto_0
    return-object v1

    .line 368
    :catch_0
    move-exception v0

    .line 369
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "Mms/MessageListAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getView() IllegalStateException mDataValid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mDataValid:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " convertView="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " parent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-boolean v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mDataValid:Z

    if-eqz v1, :cond_0

    .line 372
    const/4 v1, 0x0

    invoke-super {p0, v1, p2, p3}, Landroid/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 373
    :cond_0
    const-string v1, "Mms/MessageListAdapter"

    const-string v2, "getView() IllegalStateException return null view cause mDataValid is false"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCheckedListContainsNonSMS()Z
    .locals 1

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1141
    :cond_0
    const/4 v0, 0x1

    .line 1143
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCheckedMessageId(JLjava/lang/String;)Z
    .locals 2
    .parameter "msgId"
    .parameter "msgType"

    .prologue
    .line 1148
    const-string v0, "sms"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1149
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 1153
    :goto_0
    return v0

    .line 1150
    :cond_0
    const-string v0, "wpm"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1151
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 1153
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public msgListItemMmsOnly()Z
    .locals 6

    .prologue
    .line 1265
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1266
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v1, 0x1

    .line 1267
    .local v1, retVal:Z
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 1269
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1271
    :cond_0
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1272
    .local v2, type:Ljava/lang/String;
    const-string v3, "mms"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1277
    :goto_0
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1280
    .end local v2           #type:Ljava/lang/String;
    :cond_1
    const-string v3, "Mms/MessageListAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msgListItemMmsOnly="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    return v1

    .line 1275
    .restart local v2       #type:Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04004f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public notAllowedCombineForward(Lcom/android/mms/ui/MessageItem;)Z
    .locals 1
    .parameter "msg"

    .prologue
    .line 548
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/android/mms/ui/MessageItem;->mIsCbSms:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isWpm()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 557
    :cond_0
    const/4 v0, 0x1

    .line 559
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 585
    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 586
    const-string v0, "Mms/MessageListAdapter"

    const-string v1, "MessageListAdapter.notifyDataSetChanged()."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 589
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;->onDataSetChanged(Lcom/android/mms/ui/MessageListAdapter;)V

    .line 592
    :cond_0
    return-void
.end method

.method protected onContentChanged()V
    .locals 2

    .prologue
    .line 596
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 597
    const-string v0, "Mms/MessageListAdapter"

    const-string v1, "MessageListAdapter.onContentChanged()."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;->onContentChanged(Lcom/android/mms/ui/MessageListAdapter;)V

    .line 602
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    const/4 v2, -0x1

    .line 1214
    add-int v1, p2, p3

    add-int/lit8 v0, v1, -0x1

    .line 1216
    .local v0, lastVisibleItem:I
    iget v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mSelectPosition:I

    if-eq v1, v2, :cond_0

    .line 1217
    if-ne p3, p4, :cond_1

    .line 1218
    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter;->mSelectPosition:I

    .line 1223
    :cond_0
    :goto_0
    return-void

    .line 1219
    :cond_1
    iget v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mSelectPosition:I

    if-gt p2, v1, :cond_0

    iget v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mSelectPosition:I

    if-gt v1, v0, :cond_0

    .line 1220
    iput v2, p0, Lcom/android/mms/ui/MessageListAdapter;->mSelectPosition:I

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 1208
    return-void
.end method

.method public refreshChecked(JLjava/lang/String;)V
    .locals 2
    .parameter "msgId"
    .parameter "msgType"

    .prologue
    .line 1166
    const-string v0, "sms"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mDummyCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1167
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1173
    :cond_0
    :goto_0
    return-void

    .line 1168
    :cond_1
    const-string v0, "wpm"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mDummyCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1169
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1170
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mDummyCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1171
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 1299
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 1300
    return-void
.end method

.method public resetCheckedList()V
    .locals 1

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1074
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1075
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1076
    return-void
.end method

.method public setAnimation(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "ani"

    .prologue
    .line 513
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mAnimation:Landroid/view/animation/Animation;

    .line 515
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/mms/ui/MessageListAdapter$3;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageListAdapter$3;-><init>(Lcom/android/mms/ui/MessageListAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 534
    return-void
.end method

.method public setChecked(JLjava/lang/String;)V
    .locals 2
    .parameter "msgId"
    .parameter "msgType"

    .prologue
    .line 1079
    const-string v0, "sms"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1080
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1095
    :cond_0
    :goto_0
    return-void

    .line 1083
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1084
    :cond_2
    const-string v0, "wpm"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1085
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1088
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1090
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1093
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setCopyToSimMode(Z)V
    .locals 1
    .parameter "isCopyToSimMode"

    .prologue
    .line 1047
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiCopyToSIM()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1057
    :cond_0
    :goto_0
    return-void

    .line 1050
    :cond_1
    iput-boolean p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsCopyToSimMode:Z

    .line 1052
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsCopyToSimMode:Z

    if-eqz v0, :cond_0

    .line 1053
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1054
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1055
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public setForceSelectPosition(IZ)V
    .locals 0
    .parameter "position"
    .parameter "selectBottom"

    .prologue
    .line 1201
    iput p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mSelectPosition:I

    .line 1202
    iput-boolean p2, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsSelectItemBottom:Z

    .line 1203
    return-void
.end method

.method public setIsMultiMode(Z)V
    .locals 1
    .parameter "modeOn"

    .prologue
    .line 1030
    iput-boolean p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsMultiMode:Z

    .line 1032
    if-eqz p1, :cond_0

    .line 1033
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1034
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1035
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1037
    :cond_0
    return-void
.end method

.method public setMsgListItemHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 574
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mMsgListItemHandler:Landroid/os/Handler;

    .line 575
    return-void
.end method

.method public setOnDataSetChangedListener(Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 570
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    .line 571
    return-void
.end method

.method public setSelectionMode(Z)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 1062
    iput-boolean p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsSelectionMode:Z

    .line 1064
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsSelectionMode:Z

    if-eqz v0, :cond_0

    .line 1065
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1066
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1067
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1069
    :cond_0
    return-void
.end method

.method public setWorkingMessageUri(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 1291
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mWorkingMessageUri:Landroid/net/Uri;

    .line 1293
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    if-eqz v0, :cond_0

    .line 1294
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;->onContentChanged(Lcom/android/mms/ui/MessageListAdapter;)V

    .line 1296
    :cond_0
    return-void
.end method

.method public toggleCheckBox(JLjava/lang/String;)Z
    .locals 3
    .parameter "msgId"
    .parameter "msgType"

    .prologue
    const/4 v0, 0x0

    .line 1106
    const-string v1, "sms"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1107
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1108
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1126
    :goto_0
    return v0

    .line 1111
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1126
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1112
    :cond_1
    const-string v1, "wpm"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1113
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1114
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1117
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1119
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1120
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1123
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
