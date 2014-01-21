.class public Lcom/android/mms/spam/SetupSpamNumberList;
.super Landroid/app/Activity;
.source "SetupSpamNumberList.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;,
        Lcom/android/mms/spam/SetupSpamNumberList$SpamMenuClickListener;,
        Lcom/android/mms/spam/SetupSpamNumberList$QueryThread;
    }
.end annotation


# static fields
.field private static final CANCEL_ITEM:I = 0x3

.field private static final CONTACT_IMPORT_INTENT:Landroid/content/Intent; = null

.field private static final CREATE_ITEM:I = 0x1

.field private static final DELETE_ITEM:I = 0x2

.field private static final DELETE_SPAM_ITEM:I = 0x1

.field private static final EDIT_DELETE_DIALOG:I = 0x64

.field private static final EDIT_SPAM_ITEM:I = 0x0

.field public static final MATCH_CRITERIA_RESULT:I = 0x3

.field public static final PICK_CONTACT_NUMBER:I = 0x2

.field public static final PICK_LOGS_NUMBER:I = 0x1

.field private static final STATE_VALUE_BLACKLIST_ID:Ljava/lang/String; = "blacklist_id"

.field private static final TAG:Ljava/lang/String; = "Mms/SetupSpamNumberList"

.field public static final UNKNOWN_MODE:Ljava/lang/String; = "unknown_mode"


# instance fields
.field private final DELETE_SCREEN:I

.field private final NORMAL_SCREEN:I

.field private final QUERY_COMPLETE:I

.field private checked_cnt:I

.field private contactQueryThread:Lcom/android/mms/spam/SetupSpamNumberList$QueryThread;

.field private defaultName:Ljava/lang/String;

.field private edad:Landroid/app/AlertDialog;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mCreate:Landroid/widget/LinearLayout;

.field private mDeleteDialog:Landroid/app/AlertDialog;

.field private mDeleteModeDialog:Landroid/app/AlertDialog;

.field private mEmptySpamKeywordLayout:Landroid/widget/LinearLayout;

.field private mEmptySpamKeywordstring:Landroid/widget/TextView;

.field mHandler:Landroid/os/Handler;

.field private mHeader:Landroid/view/View;

.field private mHeaderViewCount:I

.field private mIsLandscape:Z

.field private mListView:Landroid/widget/ListView;

.field private mMenuDelete:Landroid/view/MenuItem;

.field public mScreenType:I

.field private final mSelectAllOnKeyListener:Landroid/view/View$OnKeyListener;

.field private mSelectedItem:I

.field private mSpamNumberAdapter:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

.field private mSpamNumberItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/spam/SpamFilter$SpamFilterData;",
            ">;"
        }
    .end annotation
.end field

.field private mSpamNumberListContextMenu:Landroid/view/ContextMenu;

.field private final mSpamNumberListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mUpdateScreen:Z

.field private selectAll:Landroid/widget/LinearLayout;

.field private selectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field spamPreference:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 94
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/mms/spam/SetupSpamNumberList;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    .line 95
    sget-object v0, Lcom/android/mms/spam/SetupSpamNumberList;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;

    .line 81
    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberListContextMenu:Landroid/view/ContextMenu;

    .line 98
    iput v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->NORMAL_SCREEN:I

    .line 99
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->DELETE_SCREEN:I

    .line 101
    iput v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mScreenType:I

    .line 109
    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->defaultName:Ljava/lang/String;

    .line 111
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->QUERY_COMPLETE:I

    .line 112
    iput-boolean v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mUpdateScreen:Z

    .line 113
    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 114
    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteModeDialog:Landroid/app/AlertDialog;

    .line 115
    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->edad:Landroid/app/AlertDialog;

    .line 122
    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMenuDelete:Landroid/view/MenuItem;

    .line 126
    iput v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->checked_cnt:I

    .line 128
    new-instance v0, Lcom/android/mms/spam/SetupSpamNumberList$1;

    invoke-direct {v0, p0}, Lcom/android/mms/spam/SetupSpamNumberList$1;-><init>(Lcom/android/mms/spam/SetupSpamNumberList;)V

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mHandler:Landroid/os/Handler;

    .line 138
    new-instance v0, Lcom/android/mms/spam/SetupSpamNumberList$2;

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/spam/SetupSpamNumberList$2;-><init>(Lcom/android/mms/spam/SetupSpamNumberList;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mContentObserver:Landroid/database/ContentObserver;

    .line 322
    new-instance v0, Lcom/android/mms/spam/SetupSpamNumberList$3;

    invoke-direct {v0, p0}, Lcom/android/mms/spam/SetupSpamNumberList$3;-><init>(Lcom/android/mms/spam/SetupSpamNumberList;)V

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSelectAllOnKeyListener:Landroid/view/View$OnKeyListener;

    .line 688
    new-instance v0, Lcom/android/mms/spam/SetupSpamNumberList$10;

    invoke-direct {v0, p0}, Lcom/android/mms/spam/SetupSpamNumberList$10;-><init>(Lcom/android/mms/spam/SetupSpamNumberList;)V

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 823
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/spam/SetupSpamNumberList;)Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberAdapter:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/spam/SetupSpamNumberList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->stopContactQuery()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/mms/spam/SetupSpamNumberList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->updateDeleteScreenItems()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/mms/spam/SetupSpamNumberList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->callMatchCriteriaToEditNum()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/mms/spam/SetupSpamNumberList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/mms/spam/SetupSpamNumberList;->deleteSpamNumber(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/mms/spam/SetupSpamNumberList;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/mms/spam/SetupSpamNumberList;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/mms/spam/SetupSpamNumberList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->makeScreen()V

    return-void
.end method

.method static synthetic access$1502(Lcom/android/mms/spam/SetupSpamNumberList;Landroid/view/ContextMenu;)Landroid/view/ContextMenu;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberListContextMenu:Landroid/view/ContextMenu;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/mms/spam/SetupSpamNumberList;Ljava/lang/String;ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/spam/SetupSpamNumberList;->updateSpamNumber(Ljava/lang/String;ZI)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/mms/spam/SetupSpamNumberList;)Landroid/view/View$OnCreateContextMenuListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/mms/spam/SetupSpamNumberList;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mUpdateScreen:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/mms/spam/SetupSpamNumberList;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/spam/SetupSpamNumberList;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->defaultName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/spam/SetupSpamNumberList;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/spam/SetupSpamNumberList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSelectedItem:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/mms/spam/SetupSpamNumberList;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSelectedItem:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/mms/spam/SetupSpamNumberList;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->selectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/spam/SetupSpamNumberList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mHeaderViewCount:I

    return v0
.end method

.method private callMatchCriteriaToEditNum()V
    .locals 5

    .prologue
    .line 1089
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSelectedItem:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v2}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getId()I

    move-result v1

    .line 1090
    .local v1, update_id:I
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/spam/SetupSpamNumberWriteForm;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1091
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "UPDATE_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1092
    const-string v3, "SELECT_NUMBER"

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSelectedItem:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v2}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getFilter()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1093
    const-string v3, "MATCH_MODE"

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSelectedItem:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v2}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getCriteria()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1094
    const-string v2, "UPDATE_MODE"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1095
    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lcom/android/mms/spam/SetupSpamNumberList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1096
    return-void
.end method

.method private deleteSpamNumber(I)V
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 1058
    sget-object v1, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1059
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1062
    invoke-static {p1}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->delete(I)V

    .line 1063
    return-void
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1107
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1108
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1109
    return-void
.end method

.method private getSpam(I)Landroid/database/Cursor;
    .locals 6
    .parameter "nFilterType"

    .prologue
    const/4 v2, 0x0

    .line 1084
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "filter_type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1085
    .local v3, sWhereSQL:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private initLayout()V
    .locals 4

    .prologue
    .line 337
    const v0, 0x7f0b026e

    invoke-virtual {p0, v0}, Lcom/android/mms/spam/SetupSpamNumberList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    .line 340
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040085

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mHeader:Landroid/view/View;

    .line 341
    const v0, 0x7f0b026a

    invoke-virtual {p0, v0}, Lcom/android/mms/spam/SetupSpamNumberList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mCreate:Landroid/widget/LinearLayout;

    .line 342
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mCreate:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/mms/spam/SetupSpamNumberList$4;

    invoke-direct {v1, p0}, Lcom/android/mms/spam/SetupSpamNumberList$4;-><init>(Lcom/android/mms/spam/SetupSpamNumberList;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mHeader:Landroid/view/View;

    const v1, 0x7f0b028d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->selectAll:Landroid/widget/LinearLayout;

    .line 351
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mHeader:Landroid/view/View;

    const v1, 0x7f0b028f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->selectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 355
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->selectAll:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSelectAllOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 358
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->selectAll:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/mms/spam/SetupSpamNumberList$5;

    invoke-direct {v1, p0}, Lcom/android/mms/spam/SetupSpamNumberList$5;-><init>(Lcom/android/mms/spam/SetupSpamNumberList;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 371
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/mms/spam/SetupSpamNumberList$6;

    invoke-direct {v1, p0}, Lcom/android/mms/spam/SetupSpamNumberList$6;-><init>(Lcom/android/mms/spam/SetupSpamNumberList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 424
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mHeader:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 425
    return-void
.end method

.method private makeScreen()V
    .locals 14

    .prologue
    .line 503
    const-string v0, "Mms/SetupSpamNumberList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeScreen : ScreenType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mScreenType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const/4 v13, 0x0

    .line 505
    .local v13, idx:I
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 507
    iget v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mScreenType:I

    if-nez v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->spamPreference:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_spam_option_unknown_num"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 510
    .local v3, unknownMode:Z
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    iget-object v6, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const v4, 0x7f0c02a3

    invoke-virtual {p0, v4}, Lcom/android/mms/spam/SetupSpamNumberList;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;-><init>(IIZLjava/lang/String;I)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    .end local v3           #unknownMode:Z
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/spam/SetupSpamNumberList;->getSpam(I)Landroid/database/Cursor;

    move-result-object v12

    .line 527
    .local v12, cursor:Landroid/database/Cursor;
    if-eqz v12, :cond_1

    .line 528
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v13

    .line 530
    :cond_1
    if-eqz v12, :cond_3

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 532
    :cond_2
    const/4 v0, 0x0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 533
    .local v5, id:I
    const/4 v0, 0x2

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 534
    .local v11, checked:I
    if-eqz v11, :cond_7

    const/4 v7, 0x1

    .line 535
    .local v7, bChecked:Z
    :goto_0
    const/4 v0, 0x3

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 536
    .local v8, num:Ljava/lang/String;
    const/4 v0, 0x4

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 538
    .local v9, matched:I
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    const/4 v6, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;-><init>(IIZLjava/lang/String;I)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 542
    .end local v5           #id:I
    .end local v7           #bChecked:Z
    .end local v8           #num:Ljava/lang/String;
    .end local v9           #matched:I
    .end local v11           #checked:I
    :cond_3
    if-eqz v12, :cond_4

    .line 543
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 545
    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v10

    .line 546
    .local v10, actionBar:Landroid/app/ActionBar;
    iget v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mScreenType:I

    if-nez v0, :cond_9

    .line 547
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mCreate:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 549
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mHeader:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 553
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 554
    const v0, 0x7f0c0281

    invoke-virtual {v10, v0}, Landroid/app/ActionBar;->setTitle(I)V

    .line 576
    :goto_1
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    iput v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mHeaderViewCount:I

    .line 578
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v0

    if-nez v0, :cond_5

    .line 580
    if-gtz v13, :cond_b

    .line 581
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mEmptySpamKeywordLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 582
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 583
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mEmptySpamKeywordstring:Landroid/widget/TextView;

    const v1, 0x7f0c0298

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 590
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberAdapter:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

    if-nez v0, :cond_6

    .line 591
    new-instance v0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p0, v1}, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;-><init>(Lcom/android/mms/spam/SetupSpamNumberList;Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberAdapter:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

    .line 593
    :cond_6
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberAdapter:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 594
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->startContactQuery()V

    .line 596
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->invalidateOptionsMenu()V

    .line 597
    return-void

    .line 534
    .end local v10           #actionBar:Landroid/app/ActionBar;
    .restart local v5       #id:I
    .restart local v11       #checked:I
    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 556
    .end local v5           #id:I
    .end local v11           #checked:I
    .restart local v10       #actionBar:Landroid/app/ActionBar;
    :cond_8
    const v0, 0x7f0c0405

    invoke-virtual {v10, v0}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_1

    .line 558
    :cond_9
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mCreate:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 560
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 562
    iget v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mHeaderViewCount:I

    if-nez v0, :cond_a

    .line 563
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mHeader:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 564
    :cond_a
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberAdapter:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 567
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->selectAll:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 568
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->selectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 569
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    .line 570
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 572
    const-string v0, ""

    invoke-virtual {v10, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 573
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->checked_cnt:I

    goto/16 :goto_1

    .line 585
    :cond_b
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mEmptySpamKeywordLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 586
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_2
.end method

.method private startContactQuery()V
    .locals 4

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->contactQueryThread:Lcom/android/mms/spam/SetupSpamNumberList$QueryThread;

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Lcom/android/mms/spam/SetupSpamNumberList$QueryThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/spam/SetupSpamNumberList$QueryThread;-><init>(Lcom/android/mms/spam/SetupSpamNumberList;Lcom/android/mms/spam/SetupSpamNumberList$1;)V

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->contactQueryThread:Lcom/android/mms/spam/SetupSpamNumberList$QueryThread;

    .line 214
    const-string v0, "Mms/SetupSpamNumberList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID of contactQueryThread = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->contactQueryThread:Lcom/android/mms/spam/SetupSpamNumberList$QueryThread;

    invoke-virtual {v2}, Lcom/android/mms/spam/SetupSpamNumberList$QueryThread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->contactQueryThread:Lcom/android/mms/spam/SetupSpamNumberList$QueryThread;

    invoke-virtual {v0}, Lcom/android/mms/spam/SetupSpamNumberList$QueryThread;->start()V

    .line 217
    :cond_0
    return-void
.end method

.method private stopContactQuery()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->contactQueryThread:Lcom/android/mms/spam/SetupSpamNumberList$QueryThread;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->contactQueryThread:Lcom/android/mms/spam/SetupSpamNumberList$QueryThread;

    invoke-virtual {v0}, Lcom/android/mms/spam/SetupSpamNumberList$QueryThread;->interrupt()V

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->contactQueryThread:Lcom/android/mms/spam/SetupSpamNumberList$QueryThread;

    .line 224
    :cond_0
    return-void
.end method

.method private updateDeleteScreenItems()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1112
    iput v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->checked_cnt:I

    .line 1114
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    iget v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mHeaderViewCount:I

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_1

    .line 1115
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    iget v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mHeaderViewCount:I

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1116
    iget v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->checked_cnt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->checked_cnt:I

    .line 1114
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1119
    :cond_1
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->selectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->checked_cnt:I

    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v3, v4, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {v2, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 1120
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->invalidateOptionsMenu()V

    .line 1121
    return-void
.end method

.method private updateSpamNumber(Ljava/lang/String;ZI)V
    .locals 5
    .parameter "string"
    .parameter "checked"
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 1067
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1068
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "filter"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    const-string v3, "enable"

    if-nez p2, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1075
    sget-object v2, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1076
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1080
    invoke-static {p3, p1, p2}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->update(ILjava/lang/String;Z)V

    .line 1081
    return-void

    .line 1071
    .end local v0           #uri:Landroid/net/Uri;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public autoreject_delete_cancel(Landroid/view/View;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 1103
    const-string v0, "Cancel softkey clicked !!"

    invoke-direct {p0, v0}, Lcom/android/mms/spam/SetupSpamNumberList;->displayToast(Ljava/lang/String;)V

    .line 1104
    return-void
.end method

.method public autoreject_delete_items(Landroid/view/View;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 1099
    const-string v0, "Delete softkey clicked !!"

    invoke-direct {p0, v0}, Lcom/android/mms/spam/SetupSpamNumberList;->displayToast(Ljava/lang/String;)V

    .line 1100
    return-void
.end method

.method public deleteDialog()V
    .locals 4

    .prologue
    .line 728
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 729
    .local v0, DeleteDialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0075

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c017b

    new-instance v3, Lcom/android/mms/spam/SetupSpamNumberList$12;

    invoke-direct {v3, p0}, Lcom/android/mms/spam/SetupSpamNumberList$12;-><init>(Lcom/android/mms/spam/SetupSpamNumberList;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c017c

    new-instance v3, Lcom/android/mms/spam/SetupSpamNumberList$11;

    invoke-direct {v3, p0}, Lcom/android/mms/spam/SetupSpamNumberList$11;-><init>(Lcom/android/mms/spam/SetupSpamNumberList;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 752
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 753
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/mms/spam/SetupSpamNumberList$13;

    invoke-direct {v2, p0}, Lcom/android/mms/spam/SetupSpamNumberList$13;-><init>(Lcom/android/mms/spam/SetupSpamNumberList;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 758
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 759
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "reqCode"
    .parameter "resCode"
    .parameter "data"

    .prologue
    .line 1042
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1043
    packed-switch p1, :pswitch_data_0

    .line 1053
    :cond_0
    :goto_0
    return-void

    .line 1045
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 1043
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 762
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 763
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mIsLandscape:Z

    .line 765
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->invalidateOptionsMenu()V

    .line 766
    return-void

    .line 763
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 228
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 229
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c029e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->defaultName:Ljava/lang/String;

    .line 231
    const v0, 0x7f04007a

    invoke-virtual {p0, v0}, Lcom/android/mms/spam/SetupSpamNumberList;->setContentView(I)V

    .line 233
    const v0, 0x7f0b026f

    invoke-virtual {p0, v0}, Lcom/android/mms/spam/SetupSpamNumberList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mEmptySpamKeywordLayout:Landroid/widget/LinearLayout;

    .line 234
    const v0, 0x7f0b0270

    invoke-virtual {p0, v0}, Lcom/android/mms/spam/SetupSpamNumberList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mEmptySpamKeywordstring:Landroid/widget/TextView;

    .line 236
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mEmptySpamKeywordLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mEmptySpamKeywordstring:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 241
    :cond_0
    if-eqz p1, :cond_1

    .line 242
    const-string v0, "blacklist_id"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSelectedItem:I

    .line 245
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->spamPreference:Landroid/content/SharedPreferences;

    .line 246
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->initLayout()V

    .line 247
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->makeScreen()V

    .line 248
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mIsLandscape:Z

    .line 249
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 253
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 254
    return-void

    :cond_2
    move v0, v2

    .line 248
    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 258
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 259
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 260
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 769
    sparse-switch p1, :sswitch_data_0

    .line 820
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v5

    :goto_1
    return v5

    .line 771
    :sswitch_0
    iget v7, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mScreenType:I

    if-ne v7, v5, :cond_0

    .line 772
    iput v6, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mScreenType:I

    .line 773
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->makeScreen()V

    goto :goto_1

    .line 782
    :sswitch_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 789
    .local v2, currentView:Landroid/widget/ListView;
    if-eqz v2, :cond_0

    .line 790
    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 791
    .local v1, childView:Landroid/widget/LinearLayout;
    if-eqz v1, :cond_0

    .line 792
    const v5, 0x7f0b0293

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 795
    .local v0, checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    if-eqz v0, :cond_1

    .line 796
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->performClick()Z

    goto :goto_0

    .line 784
    .end local v0           #checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .end local v1           #childView:Landroid/widget/LinearLayout;
    .end local v2           #currentView:Landroid/widget/ListView;
    :catch_0
    move-exception v3

    .line 785
    .local v3, e:Ljava/lang/ClassCastException;
    const-string v5, "Mms/SetupSpamNumberList"

    const-string v7, "Unexpected ClassCastException."

    invoke-static {v5, v7, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v5, v6

    .line 786
    goto :goto_1

    .line 798
    .end local v3           #e:Ljava/lang/ClassCastException;
    .restart local v0       #checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .restart local v1       #childView:Landroid/widget/LinearLayout;
    .restart local v2       #currentView:Landroid/widget/ListView;
    :cond_1
    const v5, 0x7f0b011a

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 801
    .local v4, linearLayout:Landroid/widget/LinearLayout;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->isClickable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 803
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->performClick()Z

    goto :goto_0

    .line 805
    :cond_2
    const v5, 0x7f0b028d

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #linearLayout:Landroid/widget/LinearLayout;
    check-cast v4, Landroid/widget/LinearLayout;

    .line 808
    .restart local v4       #linearLayout:Landroid/widget/LinearLayout;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->isClickable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 810
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->performClick()Z

    goto :goto_0

    .line 769
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x17 -> :sswitch_1
        0x42 -> :sswitch_1
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 637
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 685
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 639
    :sswitch_0
    iget v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mScreenType:I

    if-ne v2, v1, :cond_0

    .line 640
    iput v4, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mScreenType:I

    .line 641
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->makeScreen()V

    goto :goto_0

    .line 643
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->finish()V

    goto :goto_0

    .line 648
    :sswitch_1
    iput v4, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSelectedItem:I

    .line 649
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/spam/SetupSpamNumberWriteForm;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 651
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x2400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 653
    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lcom/android/mms/spam/SetupSpamNumberList;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 657
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_2
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->edad:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->edad:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 658
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->edad:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 659
    iput-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->edad:Landroid/app/AlertDialog;

    .line 662
    :cond_1
    iget v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mScreenType:I

    if-nez v2, :cond_2

    .line 663
    iput v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mScreenType:I

    .line 664
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->makeScreen()V

    goto :goto_0

    .line 668
    :cond_2
    iget v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mScreenType:I

    if-ne v2, v1, :cond_4

    .line 669
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteModeDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 670
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 671
    iput-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteModeDialog:Landroid/app/AlertDialog;

    .line 673
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/mms/spam/SetupSpamNumberList;->softkeyLeftRun(Landroid/view/View;)V

    goto :goto_0

    .line 682
    :cond_4
    :sswitch_3
    invoke-virtual {p0, v3}, Lcom/android/mms/spam/SetupSpamNumberList;->softkeyRightRun(Landroid/view/View;)V

    goto :goto_0

    .line 637
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 316
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 317
    const-string v0, "Mms/SetupSpamNumberList"

    const-string v1, "onPause "

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->stopContactQuery()V

    .line 319
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    const v7, 0x7f0c007b

    const/4 v6, 0x6

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 600
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 602
    iget v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mScreenType:I

    if-nez v2, :cond_3

    .line 603
    const/4 v0, 0x0

    .line 604
    .local v0, count:I
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 605
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 607
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDeleteButtonOnActionBar()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 608
    invoke-interface {p1, v4, v5, v4, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMenuDelete:Landroid/view/MenuItem;

    .line 609
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMenuDelete:Landroid/view/MenuItem;

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 611
    const/4 v2, 0x1

    if-gt v0, v2, :cond_1

    .line 612
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMenuDelete:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 633
    .end local v0           #count:I
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    .line 614
    .restart local v0       #count:I
    :cond_2
    if-lez v0, :cond_1

    .line 615
    invoke-interface {p1, v4, v5, v4, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMenuDelete:Landroid/view/MenuItem;

    .line 616
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMenuDelete:Landroid/view/MenuItem;

    const v3, 0x7f020008

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 620
    .end local v0           #count:I
    :cond_3
    const/4 v2, 0x3

    const v3, 0x7f0c017c

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 621
    .local v1, menuCancel:Landroid/view/MenuItem;
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 622
    invoke-interface {p1, v4, v5, v4, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMenuDelete:Landroid/view/MenuItem;

    .line 623
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMenuDelete:Landroid/view/MenuItem;

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 625
    iget-boolean v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mIsLandscape:Z

    if-eqz v2, :cond_4

    .line 626
    const v2, 0x7f02022c

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 627
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMenuDelete:Landroid/view/MenuItem;

    const v3, 0x7f02022d

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 630
    :cond_4
    iget v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->checked_cnt:I

    if-gtz v2, :cond_1

    .line 631
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMenuDelete:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "inState"

    .prologue
    .line 270
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 271
    const-string v0, "Mms/SetupSpamNumberList"

    const-string v1, "onRestoreInstanceState "

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    if-eqz p1, :cond_0

    .line 274
    const-string v0, "blacklist_id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSelectedItem:I

    .line 276
    :cond_0
    const-string v0, "Mms/SetupSpamNumberList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSelectedItem "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSelectedItem:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 281
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 282
    const-string v0, "Mms/SetupSpamNumberList"

    const-string v1, "onResume "

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-boolean v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mUpdateScreen:Z

    if-eqz v0, :cond_2

    .line 285
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/mms/spam/SetupSpamNumberList;->removeDialog(I)V

    .line 287
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 289
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 292
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->makeScreen()V

    .line 293
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setSelected(Z)V

    .line 294
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 296
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 299
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberAdapter:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

    invoke-virtual {v0}, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;->notifyDataSetInvalidated()V

    .line 302
    iput v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mScreenType:I

    .line 304
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->makeScreen()V

    .line 309
    :cond_1
    iput-boolean v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mUpdateScreen:Z

    .line 313
    :goto_0
    return-void

    .line 311
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->startContactQuery()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 264
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 265
    const-string v0, "Mms/SetupSpamNumberList"

    const-string v1, "onSaveInstanceState "

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method public showItemContextMenu(Landroid/view/ContextMenu;Landroid/view/View;I)V
    .locals 4
    .parameter "menu"
    .parameter "v"
    .parameter "position"

    .prologue
    const/4 v3, 0x0

    .line 705
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getFilter()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 706
    new-instance v0, Lcom/android/mms/spam/SetupSpamNumberList$SpamMenuClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/spam/SetupSpamNumberList$SpamMenuClickListener;-><init>(Lcom/android/mms/spam/SetupSpamNumberList;Lcom/android/mms/spam/SetupSpamNumberList$1;)V

    .line 708
    .local v0, l:Lcom/android/mms/spam/SetupSpamNumberList$SpamMenuClickListener;
    const v1, 0x7f0c0052

    invoke-interface {p1, v3, v3, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 709
    const/4 v1, 0x1

    const v2, 0x7f0c007b

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 710
    return-void
.end method

.method public softkeyLeftRun(Landroid/view/View;)V
    .locals 6
    .parameter "target"

    .prologue
    const/4 v5, 0x1

    .line 429
    const/4 v3, 0x0

    .line 430
    .local v3, mCountToDelete:I
    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    .line 432
    .local v1, checkedarray:Landroid/util/SparseBooleanArray;
    if-nez v1, :cond_0

    .line 433
    const-string v4, "Mms/SetupSpamNumberList"

    const-string v5, "checkedarray null"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    :goto_0
    return-void

    .line 437
    :cond_0
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    .local v2, i:I
    :goto_1
    if-lez v2, :cond_2

    .line 438
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v1, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 439
    add-int/lit8 v3, v3, 0x1

    .line 437
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 443
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 444
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0c0075

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 446
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 448
    if-le v3, v5, :cond_3

    .line 449
    const v4, 0x7f0c02a6

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 454
    :goto_2
    const v4, 0x104000a

    new-instance v5, Lcom/android/mms/spam/SetupSpamNumberList$7;

    invoke-direct {v5, p0}, Lcom/android/mms/spam/SetupSpamNumberList$7;-><init>(Lcom/android/mms/spam/SetupSpamNumberList;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 482
    const/high16 v4, 0x104

    new-instance v5, Lcom/android/mms/spam/SetupSpamNumberList$8;

    invoke-direct {v5, p0}, Lcom/android/mms/spam/SetupSpamNumberList$8;-><init>(Lcom/android/mms/spam/SetupSpamNumberList;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 489
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteModeDialog:Landroid/app/AlertDialog;

    .line 490
    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 451
    :cond_3
    const v4, 0x7f0c02a5

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_2
.end method

.method public softkeyRightRun(Landroid/view/View;)V
    .locals 4
    .parameter "target"

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/spam/SetupSpamNumberList$9;

    invoke-direct {v1, p0}, Lcom/android/mms/spam/SetupSpamNumberList$9;-><init>(Lcom/android/mms/spam/SetupSpamNumberList;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 500
    return-void
.end method
