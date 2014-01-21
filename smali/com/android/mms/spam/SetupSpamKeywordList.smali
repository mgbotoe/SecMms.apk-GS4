.class public Lcom/android/mms/spam/SetupSpamKeywordList;
.super Landroid/app/Activity;
.source "SetupSpamKeywordList.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;,
        Lcom/android/mms/spam/SetupSpamKeywordList$SpamMenuClickListener;
    }
.end annotation


# static fields
.field private static final CANCEL_ITEM:I = 0x3

.field private static final CREATE_ITEM:I = 0x1

.field private static final DELETE_ITEM:I = 0x2

.field private static final DELETE_SPAM_ITEM:I = 0x1

.field private static final EDIT_DELETE_DIALOG:I = 0x64

.field private static final EDIT_SPAM_ITEM:I = 0x0

.field public static final MATCH_AUTO_RESULT:I = 0x4

.field public static final MATCH_CRITERIA_RESULT:I = 0x3

.field private static final STATE_VALUE_BLACKLIST_ID:Ljava/lang/String; = "blacklist_id"

.field private static final TAG:Ljava/lang/String; = "Mms/SetupSpamKeywordList"


# instance fields
.field private final DELETE_SCREEN:I

.field private final NORMAL_SCREEN:I

.field private final QUERY_COMPLETE:I

.field private checked_cnt:I

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

.field private mSpamKeywordAdapter:Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;

.field private mSpamKeywordItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/spam/SpamFilter$SpamFilterData;",
            ">;"
        }
    .end annotation
.end field

.field private mSpamKeywordListContextMenu:Landroid/view/ContextMenu;

.field private final mSpamKeywordListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mUpdateScreen:Z

.field private selectAll:Landroid/widget/LinearLayout;

.field private selectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private selectAuto:Landroid/widget/LinearLayout;

.field private selectAutoCheck:Landroid/widget/Switch;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordItemList:Ljava/util/ArrayList;

    .line 79
    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordListContextMenu:Landroid/view/ContextMenu;

    .line 90
    iput v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->NORMAL_SCREEN:I

    .line 91
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->DELETE_SCREEN:I

    .line 93
    iput v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mScreenType:I

    .line 102
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->QUERY_COMPLETE:I

    .line 103
    iput-boolean v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mUpdateScreen:Z

    .line 104
    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 105
    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteModeDialog:Landroid/app/AlertDialog;

    .line 106
    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->edad:Landroid/app/AlertDialog;

    .line 112
    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mMenuDelete:Landroid/view/MenuItem;

    .line 116
    iput v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->checked_cnt:I

    .line 122
    new-instance v0, Lcom/android/mms/spam/SetupSpamKeywordList$1;

    invoke-direct {v0, p0}, Lcom/android/mms/spam/SetupSpamKeywordList$1;-><init>(Lcom/android/mms/spam/SetupSpamKeywordList;)V

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mHandler:Landroid/os/Handler;

    .line 131
    new-instance v0, Lcom/android/mms/spam/SetupSpamKeywordList$2;

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/spam/SetupSpamKeywordList$2;-><init>(Lcom/android/mms/spam/SetupSpamKeywordList;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mContentObserver:Landroid/database/ContentObserver;

    .line 210
    new-instance v0, Lcom/android/mms/spam/SetupSpamKeywordList$3;

    invoke-direct {v0, p0}, Lcom/android/mms/spam/SetupSpamKeywordList$3;-><init>(Lcom/android/mms/spam/SetupSpamKeywordList;)V

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mSelectAllOnKeyListener:Landroid/view/View$OnKeyListener;

    .line 604
    new-instance v0, Lcom/android/mms/spam/SetupSpamKeywordList$12;

    invoke-direct {v0, p0}, Lcom/android/mms/spam/SetupSpamKeywordList$12;-><init>(Lcom/android/mms/spam/SetupSpamKeywordList;)V

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 745
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/spam/SetupSpamKeywordList;)Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordAdapter:Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/spam/SetupSpamKeywordList;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/mms/spam/SetupSpamKeywordList;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/mms/spam/SetupSpamKeywordList;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mUpdateScreen:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/mms/spam/SetupSpamKeywordList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamKeywordList;->makeScreen()V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/mms/spam/SetupSpamKeywordList;Landroid/view/ContextMenu;)Landroid/view/ContextMenu;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordListContextMenu:Landroid/view/ContextMenu;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mEmptySpamKeywordstring:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mEmptySpamKeywordLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/view/View$OnCreateContextMenuListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/mms/spam/SetupSpamKeywordList;Lcom/android/mms/spam/SpamFilter$SpamFilterData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/mms/spam/SetupSpamKeywordList;->updateSpamKeyword(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/spam/SetupSpamKeywordList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mSelectedItem:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/mms/spam/SetupSpamKeywordList;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mSelectedItem:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/mms/spam/SetupSpamKeywordList;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->selectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/spam/SetupSpamKeywordList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mHeaderViewCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/mms/spam/SetupSpamKeywordList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamKeywordList;->updateDeleteScreenItems()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/spam/SetupSpamKeywordList;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/spam/SetupSpamKeywordList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamKeywordList;->callMatchCriteriaToEditNum()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/spam/SetupSpamKeywordList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/mms/spam/SetupSpamKeywordList;->deleteSpamKeyword(I)V

    return-void
.end method

.method private callMatchCriteriaToEditNum()V
    .locals 5

    .prologue
    .line 906
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordItemList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mSelectedItem:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v2}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getId()I

    move-result v1

    .line 907
    .local v1, update_id:I
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 908
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "UPDATE_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 909
    const-string v3, "SpamWord"

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordItemList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mSelectedItem:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v2}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getFilter()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 910
    const-string v2, "UPDATE_MODE"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 911
    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lcom/android/mms/spam/SetupSpamKeywordList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 912
    return-void
.end method

.method private deleteSpamKeyword(I)V
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 881
    sget-object v1, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 882
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamKeywordList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 883
    invoke-static {p1}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->delete(I)V

    .line 884
    return-void
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 923
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamKeywordList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 924
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 925
    return-void
.end method

.method private getSpam(I)Landroid/database/Cursor;
    .locals 6
    .parameter "nFilterType"

    .prologue
    const/4 v2, 0x0

    .line 901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "filter_type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 902
    .local v3, sWhereSQL:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamKeywordList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private initLayout()V
    .locals 6

    .prologue
    .line 225
    const v2, 0x7f0b026e

    invoke-virtual {p0, v2}, Lcom/android/mms/spam/SetupSpamKeywordList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;

    .line 228
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamKeywordList;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040085

    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mHeader:Landroid/view/View;

    .line 229
    const v2, 0x7f0b026a

    invoke-virtual {p0, v2}, Lcom/android/mms/spam/SetupSpamKeywordList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mCreate:Landroid/widget/LinearLayout;

    .line 230
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mCreate:Landroid/widget/LinearLayout;

    const v3, 0x7f0b026c

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 231
    .local v0, manualBlockLayout:Landroid/widget/LinearLayout;
    new-instance v2, Lcom/android/mms/spam/SetupSpamKeywordList$4;

    invoke-direct {v2, p0}, Lcom/android/mms/spam/SetupSpamKeywordList$4;-><init>(Lcom/android/mms/spam/SetupSpamKeywordList;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 241
    const v2, 0x7f0b0263

    invoke-virtual {p0, v2}, Lcom/android/mms/spam/SetupSpamKeywordList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->selectAuto:Landroid/widget/LinearLayout;

    .line 243
    const v2, 0x7f0b0269

    invoke-virtual {p0, v2}, Lcom/android/mms/spam/SetupSpamKeywordList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->selectAutoCheck:Landroid/widget/Switch;

    .line 245
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->selectAutoCheck:Landroid/widget/Switch;

    new-instance v3, Lcom/android/mms/spam/SetupSpamKeywordList$5;

    invoke-direct {v3, p0}, Lcom/android/mms/spam/SetupSpamKeywordList$5;-><init>(Lcom/android/mms/spam/SetupSpamKeywordList;)V

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 261
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->selectAuto:Landroid/widget/LinearLayout;

    const v3, 0x7f0b0264

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 262
    .local v1, smartBlockLayout:Landroid/widget/LinearLayout;
    new-instance v2, Lcom/android/mms/spam/SetupSpamKeywordList$6;

    invoke-direct {v2, p0}, Lcom/android/mms/spam/SetupSpamKeywordList$6;-><init>(Lcom/android/mms/spam/SetupSpamKeywordList;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    .end local v1           #smartBlockLayout:Landroid/widget/LinearLayout;
    :cond_0
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mHeader:Landroid/view/View;

    const v3, 0x7f0b028d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->selectAll:Landroid/widget/LinearLayout;

    .line 274
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mHeader:Landroid/view/View;

    const v3, 0x7f0b028f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->selectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 278
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->selectAll:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mSelectAllOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 281
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->selectAll:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/mms/spam/SetupSpamKeywordList$7;

    invoke-direct {v3, p0}, Lcom/android/mms/spam/SetupSpamKeywordList$7;-><init>(Lcom/android/mms/spam/SetupSpamKeywordList;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 295
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;

    new-instance v3, Lcom/android/mms/spam/SetupSpamKeywordList$8;

    invoke-direct {v3, p0}, Lcom/android/mms/spam/SetupSpamKeywordList$8;-><init>(Lcom/android/mms/spam/SetupSpamKeywordList;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 335
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mHeader:Landroid/view/View;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 336
    return-void
.end method

.method private makeScreen()V
    .locals 14

    .prologue
    .line 415
    const-string v0, "Mms/SetupSpamKeywordList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "makeScreen : ScreenType = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mScreenType:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const/4 v11, 0x0

    .line 417
    .local v11, idx:I
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 418
    const/4 v7, 0x1

    .line 419
    .local v7, bCheck:Z
    const/4 v10, 0x0

    .line 420
    .local v10, iCheck:I
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->getSpam(I)Landroid/database/Cursor;

    move-result-object v9

    .line 422
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 423
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 425
    :cond_0
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 427
    :cond_1
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 428
    .local v1, id:I
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 429
    .local v8, checked:I
    if-eqz v8, :cond_7

    const/4 v3, 0x1

    .line 430
    .local v3, bChecked:Z
    :goto_0
    const/4 v0, 0x3

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 432
    .local v4, num:Ljava/lang/String;
    iget-object v13, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordItemList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;-><init>(IIZLjava/lang/String;I)V

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 439
    .end local v1           #id:I
    .end local v3           #bChecked:Z
    .end local v4           #num:Ljava/lang/String;
    .end local v8           #checked:I
    :cond_2
    if-eqz v9, :cond_3

    .line 440
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 442
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamKeywordList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    .line 443
    .local v6, actionBar:Landroid/app/ActionBar;
    iget v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mScreenType:I

    if-nez v0, :cond_b

    .line 444
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mCreate:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 445
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mCreate:Landroid/widget/LinearLayout;

    const v2, 0x7f0b026b

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 446
    .local v12, tv:Landroid/widget/TextView;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 447
    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 452
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 453
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->selectAuto:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 454
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamKeywordList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "key_spam_smart"

    const/4 v5, 0x0

    invoke-static {v0, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 455
    const/4 v0, 0x1

    if-ne v10, v0, :cond_9

    .line 456
    const/4 v7, 0x1

    .line 460
    :goto_2
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->selectAutoCheck:Landroid/widget/Switch;

    invoke-virtual {v0, v7}, Landroid/widget/Switch;->setChecked(Z)V

    .line 463
    :cond_4
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mHeader:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 467
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 468
    const v0, 0x7f0c0282

    invoke-virtual {v6, v0}, Landroid/app/ActionBar;->setTitle(I)V

    .line 491
    .end local v12           #tv:Landroid/widget/TextView;
    :goto_3
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    iput v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mHeaderViewCount:I

    .line 493
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v0

    if-nez v0, :cond_5

    .line 495
    if-gtz v11, :cond_d

    .line 496
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mEmptySpamKeywordstring:Landroid/widget/TextView;

    const v2, 0x7f0c0299

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 497
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mEmptySpamKeywordLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 498
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 505
    :cond_5
    :goto_4
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordAdapter:Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;

    if-nez v0, :cond_6

    .line 506
    new-instance v0, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordItemList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p0, v2}, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;-><init>(Lcom/android/mms/spam/SetupSpamKeywordList;Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordAdapter:Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;

    .line 508
    :cond_6
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordAdapter:Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 509
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamKeywordList;->invalidateOptionsMenu()V

    .line 510
    return-void

    .line 429
    .end local v6           #actionBar:Landroid/app/ActionBar;
    .restart local v1       #id:I
    .restart local v8       #checked:I
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 449
    .end local v1           #id:I
    .end local v8           #checked:I
    .restart local v6       #actionBar:Landroid/app/ActionBar;
    .restart local v12       #tv:Landroid/widget/TextView;
    :cond_8
    const/16 v0, 0x8

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 458
    :cond_9
    const/4 v7, 0x0

    goto :goto_2

    .line 470
    :cond_a
    const v0, 0x7f0c0406

    invoke-virtual {v6, v0}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_3

    .line 472
    .end local v12           #tv:Landroid/widget/TextView;
    :cond_b
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mCreate:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 473
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 474
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->selectAuto:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 477
    :cond_c
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 478
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mHeader:Landroid/view/View;

    const/4 v5, 0x0

    const/4 v13, 0x1

    invoke-virtual {v0, v2, v5, v13}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 479
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordAdapter:Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 482
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->selectAll:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 483
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->selectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 484
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    .line 485
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 487
    const-string v0, ""

    invoke-virtual {v6, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 488
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->checked_cnt:I

    goto/16 :goto_3

    .line 500
    :cond_d
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mEmptySpamKeywordLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 501
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    goto/16 :goto_4
.end method

.method private updateDeleteScreenItems()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 928
    iput v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->checked_cnt:I

    .line 930
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    iget v3, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mHeaderViewCount:I

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_1

    .line 931
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;

    iget v3, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mHeaderViewCount:I

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 932
    iget v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->checked_cnt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->checked_cnt:I

    .line 930
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 935
    :cond_1
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->selectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget v3, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->checked_cnt:I

    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v3, v4, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {v2, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 936
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamKeywordList;->invalidateOptionsMenu()V

    .line 937
    return-void
.end method

.method private updateSpamKeyword(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)V
    .locals 5
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 888
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 889
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "filter"

    invoke-virtual {p1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getFilter()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    const-string v3, "enable"

    invoke-virtual {p1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getEnable()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 894
    sget-object v2, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 896
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamKeywordList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 897
    invoke-virtual {p1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getId()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getFilter()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getEnable()Z

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->update(ILjava/lang/String;Z)V

    .line 898
    return-void

    .line 890
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
    .line 919
    const-string v0, "Cancel softkey clicked !!"

    invoke-direct {p0, v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->displayToast(Ljava/lang/String;)V

    .line 920
    return-void
.end method

.method public autoreject_delete_items(Landroid/view/View;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 915
    const-string v0, "Delete softkey clicked !!"

    invoke-direct {p0, v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->displayToast(Ljava/lang/String;)V

    .line 916
    return-void
.end method

.method public deleteDialog()V
    .locals 4

    .prologue
    .line 644
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 645
    .local v0, DeleteDialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamKeywordList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0075

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c017b

    new-instance v3, Lcom/android/mms/spam/SetupSpamKeywordList$14;

    invoke-direct {v3, p0}, Lcom/android/mms/spam/SetupSpamKeywordList$14;-><init>(Lcom/android/mms/spam/SetupSpamKeywordList;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c017c

    new-instance v3, Lcom/android/mms/spam/SetupSpamKeywordList$13;

    invoke-direct {v3, p0}, Lcom/android/mms/spam/SetupSpamKeywordList$13;-><init>(Lcom/android/mms/spam/SetupSpamKeywordList;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 678
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 679
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/mms/spam/SetupSpamKeywordList$15;

    invoke-direct {v2, p0}, Lcom/android/mms/spam/SetupSpamKeywordList$15;-><init>(Lcom/android/mms/spam/SetupSpamKeywordList;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 684
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 685
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "reqCode"
    .parameter "resCode"
    .parameter "data"

    .prologue
    const/4 v0, -0x1

    .line 857
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 858
    packed-switch p1, :pswitch_data_0

    .line 876
    :cond_0
    :goto_0
    return-void

    .line 860
    :pswitch_0
    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 867
    :pswitch_1
    if-eqz p2, :cond_1

    if-ne p2, v0, :cond_0

    .line 868
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mScreenType:I

    .line 869
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamKeywordList;->makeScreen()V

    goto :goto_0

    .line 858
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 688
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 689
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamKeywordList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mIsLandscape:Z

    .line 691
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamKeywordList;->invalidateOptionsMenu()V

    .line 692
    return-void

    .line 689
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 139
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 140
    const v0, 0x7f040079

    invoke-virtual {p0, v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->setContentView(I)V

    .line 141
    const v0, 0x7f0b026f

    invoke-virtual {p0, v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mEmptySpamKeywordLayout:Landroid/widget/LinearLayout;

    .line 142
    const v0, 0x7f0b0270

    invoke-virtual {p0, v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mEmptySpamKeywordstring:Landroid/widget/TextView;

    .line 144
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mEmptySpamKeywordLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mEmptySpamKeywordstring:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    :cond_0
    if-eqz p1, :cond_1

    .line 150
    const-string v0, "blacklist_id"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mSelectedItem:I

    .line 152
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamKeywordList;->initLayout()V

    .line 153
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamKeywordList;->makeScreen()V

    .line 155
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamKeywordList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mIsLandscape:Z

    .line 156
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamKeywordList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 158
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamKeywordList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 159
    return-void

    :cond_2
    move v0, v2

    .line 155
    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 163
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 164
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamKeywordList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 165
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 695
    sparse-switch p1, :sswitch_data_0

    .line 742
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v5

    :goto_1
    return v5

    .line 697
    :sswitch_0
    iget v7, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mScreenType:I

    if-ne v7, v5, :cond_0

    .line 698
    iput v6, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mScreenType:I

    .line 699
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamKeywordList;->makeScreen()V

    goto :goto_1

    .line 708
    :sswitch_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamKeywordList;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 714
    .local v2, currentView:Landroid/widget/ListView;
    if-eqz v2, :cond_0

    .line 715
    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 716
    .local v1, childView:Landroid/widget/LinearLayout;
    if-eqz v1, :cond_0

    .line 717
    const v5, 0x7f0b0293

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 719
    .local v0, checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    if-eqz v0, :cond_1

    .line 720
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->performClick()Z

    goto :goto_0

    .line 709
    .end local v0           #checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .end local v1           #childView:Landroid/widget/LinearLayout;
    .end local v2           #currentView:Landroid/widget/ListView;
    :catch_0
    move-exception v3

    .line 710
    .local v3, e:Ljava/lang/ClassCastException;
    const-string v5, "Mms/SetupSpamKeywordList"

    const-string v7, "Unexpected ClassCastException."

    invoke-static {v5, v7, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v5, v6

    .line 711
    goto :goto_1

    .line 722
    .end local v3           #e:Ljava/lang/ClassCastException;
    .restart local v0       #checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .restart local v1       #childView:Landroid/widget/LinearLayout;
    .restart local v2       #currentView:Landroid/widget/ListView;
    :cond_1
    const v5, 0x7f0b011a

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 724
    .local v4, linearLayout:Landroid/widget/LinearLayout;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->isClickable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 726
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->performClick()Z

    goto :goto_0

    .line 728
    :cond_2
    const v5, 0x7f0b028d

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #linearLayout:Landroid/widget/LinearLayout;
    check-cast v4, Landroid/widget/LinearLayout;

    .line 730
    .restart local v4       #linearLayout:Landroid/widget/LinearLayout;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->isClickable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 732
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->performClick()Z

    goto :goto_0

    .line 695
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

    .line 552
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 601
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 554
    :sswitch_0
    iget v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mScreenType:I

    if-ne v2, v1, :cond_0

    .line 555
    iput v4, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mScreenType:I

    .line 556
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamKeywordList;->makeScreen()V

    goto :goto_0

    .line 558
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamKeywordList;->finish()V

    goto :goto_0

    .line 563
    :sswitch_1
    iput v4, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mSelectedItem:I

    .line 564
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 567
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x2400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 569
    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lcom/android/mms/spam/SetupSpamKeywordList;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 573
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_2
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->edad:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->edad:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 574
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->edad:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 575
    iput-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->edad:Landroid/app/AlertDialog;

    .line 578
    :cond_1
    iget v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mScreenType:I

    if-nez v2, :cond_2

    .line 579
    iput v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mScreenType:I

    .line 580
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamKeywordList;->makeScreen()V

    goto :goto_0

    .line 584
    :cond_2
    iget v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mScreenType:I

    if-ne v2, v1, :cond_4

    .line 585
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteModeDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 586
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 587
    iput-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteModeDialog:Landroid/app/AlertDialog;

    .line 589
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/mms/spam/SetupSpamKeywordList;->softkeyLeftRun(Landroid/view/View;)V

    goto :goto_0

    .line 598
    :cond_4
    :sswitch_3
    invoke-virtual {p0, v3}, Lcom/android/mms/spam/SetupSpamKeywordList;->softkeyRightRun(Landroid/view/View;)V

    goto :goto_0

    .line 552
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 206
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 207
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

    .line 513
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 515
    iget v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mScreenType:I

    if-nez v2, :cond_3

    .line 516
    const/4 v0, 0x0

    .line 517
    .local v0, count:I
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordItemList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 518
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 521
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDeleteButtonOnActionBar()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 522
    invoke-interface {p1, v4, v5, v4, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mMenuDelete:Landroid/view/MenuItem;

    .line 523
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mMenuDelete:Landroid/view/MenuItem;

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 525
    if-gtz v0, :cond_1

    .line 526
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mMenuDelete:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 548
    .end local v0           #count:I
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    .line 528
    .restart local v0       #count:I
    :cond_2
    if-lez v0, :cond_1

    .line 529
    invoke-interface {p1, v4, v5, v4, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mMenuDelete:Landroid/view/MenuItem;

    .line 530
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mMenuDelete:Landroid/view/MenuItem;

    const v3, 0x7f020008

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 534
    .end local v0           #count:I
    :cond_3
    const/4 v2, 0x3

    const v3, 0x7f0c017c

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 535
    .local v1, menuCancel:Landroid/view/MenuItem;
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 537
    invoke-interface {p1, v4, v5, v4, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mMenuDelete:Landroid/view/MenuItem;

    .line 538
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mMenuDelete:Landroid/view/MenuItem;

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 540
    iget-boolean v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mIsLandscape:Z

    if-eqz v2, :cond_4

    .line 541
    const v2, 0x7f02022c

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 542
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mMenuDelete:Landroid/view/MenuItem;

    const v3, 0x7f02022d

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 545
    :cond_4
    iget v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->checked_cnt:I

    if-gtz v2, :cond_1

    .line 546
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mMenuDelete:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "inState"

    .prologue
    .line 175
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 176
    const-string v0, "Mms/SetupSpamKeywordList"

    const-string v1, "onRestoreInstanceState"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    if-eqz p1, :cond_0

    .line 179
    const-string v0, "blacklist_id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mSelectedItem:I

    .line 181
    :cond_0
    const-string v0, "Mms/SetupSpamKeywordList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSelectedItem "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mSelectedItem:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 186
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 187
    const-string v0, "Mms/SetupSpamKeywordList"

    const-string v1, "onResume "

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-boolean v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mUpdateScreen:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mScreenType:I

    if-nez v0, :cond_1

    .line 190
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->removeDialog(I)V

    .line 192
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 197
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamKeywordList;->makeScreen()V

    .line 198
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelected(Z)V

    .line 199
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mUpdateScreen:Z

    .line 202
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 169
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 170
    const-string v0, "blacklist_id"

    iget v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mSelectedItem:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 171
    return-void
.end method

.method public showItemContextMenu(Landroid/view/ContextMenu;Landroid/view/View;I)V
    .locals 4
    .parameter "menu"
    .parameter "v"
    .parameter "position"

    .prologue
    const/4 v3, 0x0

    .line 621
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getFilter()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 622
    new-instance v0, Lcom/android/mms/spam/SetupSpamKeywordList$SpamMenuClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/spam/SetupSpamKeywordList$SpamMenuClickListener;-><init>(Lcom/android/mms/spam/SetupSpamKeywordList;Lcom/android/mms/spam/SetupSpamKeywordList$1;)V

    .line 624
    .local v0, l:Lcom/android/mms/spam/SetupSpamKeywordList$SpamMenuClickListener;
    const v1, 0x7f0c0052

    invoke-interface {p1, v3, v3, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 625
    const/4 v1, 0x1

    const v2, 0x7f0c007b

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 626
    return-void
.end method

.method public softkeyLeftRun(Landroid/view/View;)V
    .locals 6
    .parameter "target"

    .prologue
    const/4 v5, 0x1

    .line 341
    const/4 v3, 0x0

    .line 342
    .local v3, mCountToDelete:I
    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    .line 344
    .local v1, checkedarray:Landroid/util/SparseBooleanArray;
    if-nez v1, :cond_0

    .line 345
    const-string v4, "Mms/SetupSpamKeywordList"

    const-string v5, "checkedarray null"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    :goto_0
    return-void

    .line 349
    :cond_0
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    .local v2, i:I
    :goto_1
    if-lez v2, :cond_2

    .line 350
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v1, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 351
    add-int/lit8 v3, v3, 0x1

    .line 349
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 355
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 356
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0c0075

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 358
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 360
    if-le v3, v5, :cond_3

    .line 361
    const v4, 0x7f0c02a8

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 367
    :goto_2
    const v4, 0x104000a

    new-instance v5, Lcom/android/mms/spam/SetupSpamKeywordList$9;

    invoke-direct {v5, p0}, Lcom/android/mms/spam/SetupSpamKeywordList$9;-><init>(Lcom/android/mms/spam/SetupSpamKeywordList;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 395
    const/high16 v4, 0x104

    new-instance v5, Lcom/android/mms/spam/SetupSpamKeywordList$10;

    invoke-direct {v5, p0}, Lcom/android/mms/spam/SetupSpamKeywordList$10;-><init>(Lcom/android/mms/spam/SetupSpamKeywordList;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 401
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteModeDialog:Landroid/app/AlertDialog;

    .line 402
    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 363
    :cond_3
    const v4, 0x7f0c02a7

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_2
.end method

.method public softkeyRightRun(Landroid/view/View;)V
    .locals 4
    .parameter "target"

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/spam/SetupSpamKeywordList$11;

    invoke-direct {v1, p0}, Lcom/android/mms/spam/SetupSpamKeywordList$11;-><init>(Lcom/android/mms/spam/SetupSpamKeywordList;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 412
    return-void
.end method
