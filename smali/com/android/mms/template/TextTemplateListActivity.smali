.class public Lcom/android/mms/template/TextTemplateListActivity;
.super Landroid/app/Activity;
.source "TextTemplateListActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/template/TextTemplateListActivity$TextTemplateMenuClickListener;
    }
.end annotation


# static fields
.field private static final ACTIVITY_TITLE:Ljava/lang/String; = "activity_title"

.field private static final CREATE_SMS_TEMPLATE:I = 0x2

.field private static final DEBUG:Z = true

.field public static final DELETE_MODE:I = 0x1

.field private static final DELETE_SMS_TEMPLATE:I = 0x3

.field private static final EDIT_SMS_TEMPLATE:I = 0x1

.field private static final MENU_CREATE:I = 0x66

.field private static final MENU_DELETE:I = 0x67

.field private static final MENU_DELETE_CANCEL:I = 0x69

.field private static final MENU_DELETE_DONE:I = 0x68

.field public static final NORMAL_MODE:I = 0x0

.field private static final OFFSET:I = 0x64

.field private static final TAG:Ljava/lang/String; = "Mms/TextTemplateListActivity"

.field private static TemplateEditting:Z

.field private static sOldLocale:Ljava/util/Locale;


# instance fields
.field private SelectAllText:Landroid/widget/TextView;

.field private TextTemplateSelector:I

.field private allCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActionBar:Landroid/app/ActionBar;

.field protected mDeleteConfirmDialog:Landroid/content/DialogInterface;

.field private mEmptyView:Landroid/view/View;

.field private mListAdapter:Lcom/android/mms/template/TextTemplateListAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mMenuCancel:Landroid/view/MenuItem;

.field private mMenuCreate:Landroid/view/MenuItem;

.field private mMenuDelete:Landroid/view/MenuItem;

.field private mMenuDone:Landroid/view/MenuItem;

.field private mMode:I

.field private mOnTextTemplateListItemClick:Landroid/widget/AdapterView$OnItemClickListener;

.field private mTemplateContextMenu:Landroid/view/ContextMenu;

.field private final mTextTemplateListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mTextTemplateProvider:Lcom/android/mms/template/TextTemplateProvider;

.field private selectAllUserUnchecked:Z

.field private seletAllLayout:Landroid/widget/LinearLayout;

.field private sendToComposer:Z

.field private templateCursor:Landroid/database/Cursor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/template/TextTemplateListActivity;->sOldLocale:Ljava/util/Locale;

    .line 95
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/template/TextTemplateListActivity;->TemplateEditting:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mTemplateContextMenu:Landroid/view/ContextMenu;

    .line 82
    iput-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMenuCreate:Landroid/view/MenuItem;

    .line 83
    iput-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMenuDelete:Landroid/view/MenuItem;

    .line 84
    iput-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMenuDone:Landroid/view/MenuItem;

    .line 85
    iput-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMenuCancel:Landroid/view/MenuItem;

    .line 94
    iput-boolean v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->sendToComposer:Z

    .line 419
    new-instance v0, Lcom/android/mms/template/TextTemplateListActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/template/TextTemplateListActivity$2;-><init>(Lcom/android/mms/template/TextTemplateListActivity;)V

    iput-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mTextTemplateListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 636
    iput-boolean v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->selectAllUserUnchecked:Z

    .line 820
    new-instance v0, Lcom/android/mms/template/TextTemplateListActivity$4;

    invoke-direct {v0, p0}, Lcom/android/mms/template/TextTemplateListActivity$4;-><init>(Lcom/android/mms/template/TextTemplateListActivity;)V

    iput-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mOnTextTemplateListItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method private UpdateQuery()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 599
    const-string v0, "Mms/TextTemplateListActivity"

    const-string v1, "ListQuery"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mTextTemplateProvider:Lcom/android/mms/template/TextTemplateProvider;

    sget-object v1, Lcom/android/mms/template/TextTemplateProvider;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/android/mms/template/TextTemplateProvider;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;

    .line 606
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/template/TextTemplateListActivity;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->allCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/template/TextTemplateListActivity;)Lcom/android/mms/template/TextTemplateListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListAdapter:Lcom/android/mms/template/TextTemplateListAdapter;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/mms/template/TextTemplateListActivity;Landroid/view/ContextMenu;)Landroid/view/ContextMenu;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mTemplateContextMenu:Landroid/view/ContextMenu;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/mms/template/TextTemplateListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->UpdateQuery()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/template/TextTemplateListActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMode:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/mms/template/TextTemplateListActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/template/TextTemplateListActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->getTextTemplateSelector()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/mms/template/TextTemplateListActivity;)Lcom/android/mms/template/TextTemplateProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mTextTemplateProvider:Lcom/android/mms/template/TextTemplateProvider;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/template/TextTemplateListActivity;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/mms/template/TextTemplateListActivity;->setMode(IZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/template/TextTemplateListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->updateScreen()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/template/TextTemplateListActivity;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/mms/template/TextTemplateListActivity;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private confirmDeleteDialog(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 5
    .parameter "NumberOfSelectedCount"
    .parameter "listener"

    .prologue
    const/4 v4, 0x1

    .line 731
    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v2, :cond_0

    .line 732
    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v2}, Landroid/content/DialogInterface;->dismiss()V

    .line 734
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 735
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0c007b

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 737
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 738
    const v2, 0x7f0c017b

    invoke-virtual {v0, v2, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 739
    const v2, 0x7f0c017c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 740
    if-le p1, v4, :cond_1

    .line 741
    const v2, 0x7f0c0344

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 745
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 746
    .local v1, dlg:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 747
    iput-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    .line 748
    return-void

    .line 743
    .end local v1           #dlg:Landroid/app/AlertDialog;
    :cond_1
    const v2, 0x7f0c0345

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 617
    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v2, :cond_0

    .line 618
    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v2}, Landroid/content/DialogInterface;->dismiss()V

    .line 619
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 620
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0c007b

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 622
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 623
    const v2, 0x7f0c017b

    invoke-virtual {v0, v2, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 624
    const v2, 0x7f0c017c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 625
    const v2, 0x7f0c0345

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 626
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 627
    .local v1, dlg:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 628
    iput-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    .line 629
    return-void
.end method

.method private getTextTemplateSelector()I
    .locals 1

    .prologue
    .line 613
    iget v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->TextTemplateSelector:I

    return v0
.end method

.method private initResource()V
    .locals 3

    .prologue
    const v2, 0x7f0b003b

    const/4 v1, 0x1

    .line 128
    invoke-virtual {p0}, Lcom/android/mms/template/TextTemplateListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mActionBar:Landroid/app/ActionBar;

    .line 130
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 132
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 135
    :cond_0
    const v0, 0x7f0b0272

    invoke-virtual {p0, v0}, Lcom/android/mms/template/TextTemplateListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mEmptyView:Landroid/view/View;

    .line 137
    invoke-virtual {p0, v2}, Lcom/android/mms/template/TextTemplateListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->seletAllLayout:Landroid/widget/LinearLayout;

    .line 138
    const v0, 0x7f0b003c

    invoke-virtual {p0, v0}, Lcom/android/mms/template/TextTemplateListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->SelectAllText:Landroid/widget/TextView;

    .line 139
    const v0, 0x7f0b003d

    invoke-virtual {p0, v0}, Lcom/android/mms/template/TextTemplateListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->allCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 140
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->allCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    .line 141
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->allCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setClickable(Z)V

    .line 143
    invoke-virtual {p0, v2}, Lcom/android/mms/template/TextTemplateListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/mms/template/TextTemplateListActivity$1;

    invoke-direct {v1, p0}, Lcom/android/mms/template/TextTemplateListActivity$1;-><init>(Lcom/android/mms/template/TextTemplateListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->seletAllLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 152
    return-void
.end method

.method private setMode(IZ)V
    .locals 3
    .parameter "mode"
    .parameter "needOnlyQuery"

    .prologue
    const/4 v2, 0x0

    .line 567
    iput p1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMode:I

    .line 569
    iget v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMode:I

    if-nez v0, :cond_1

    .line 570
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->seletAllLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 574
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->seletAllLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 580
    :goto_0
    if-eqz p2, :cond_2

    .line 581
    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->UpdateQuery()V

    .line 592
    :goto_1
    return-void

    .line 576
    :cond_1
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->seletAllLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 577
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->seletAllLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    goto :goto_0

    .line 583
    :cond_2
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListAdapter:Lcom/android/mms/template/TextTemplateListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/template/TextTemplateListAdapter;->clearCheckedList()V

    .line 585
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->allCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->allCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 586
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->allCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 588
    :cond_3
    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->setTitleByMode()V

    .line 589
    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->UpdateQuery()V

    .line 590
    invoke-virtual {p0}, Lcom/android/mms/template/TextTemplateListActivity;->invalidateOptionsMenu()V

    goto :goto_1
.end method

.method private setTextTemplateSelector(I)V
    .locals 0
    .parameter "setValue"

    .prologue
    .line 609
    iput p1, p0, Lcom/android/mms/template/TextTemplateListActivity;->TextTemplateSelector:I

    .line 610
    return-void
.end method

.method private setTitleByMode()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 210
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mActionBar:Landroid/app/ActionBar;

    if-nez v0, :cond_0

    .line 226
    :goto_0
    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 214
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 217
    iget v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMode:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 219
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f0c025b

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0

    .line 223
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mActionBar:Landroid/app/ActionBar;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 217
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateEmptyScreen(I)V
    .locals 3
    .parameter "listCount"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 246
    if-nez p1, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 254
    :goto_0
    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    goto :goto_0
.end method

.method private updateScreen()V
    .locals 2

    .prologue
    .line 229
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/template/TextTemplateListActivity;->setTemplateEditing(Z)V

    .line 231
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListAdapter:Lcom/android/mms/template/TextTemplateListAdapter;

    invoke-virtual {p0}, Lcom/android/mms/template/TextTemplateListActivity;->getMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/template/TextTemplateListAdapter;->setMode(I)V

    .line 232
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListAdapter:Lcom/android/mms/template/TextTemplateListAdapter;

    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/android/mms/template/TextTemplateListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 233
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/template/TextTemplateListActivity;->updateEmptyScreen(I)V

    .line 235
    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Lcom/android/mms/template/TextTemplateListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 237
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/16 v1, 0x20

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 241
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/template/TextTemplateListActivity;->invalidateOptionsMenu()V

    .line 242
    return-void
.end method


# virtual methods
.method public getMode()I
    .locals 1

    .prologue
    .line 595
    iget v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMode:I

    return v0
.end method

.method public getTemplateEditing()Z
    .locals 1

    .prologue
    .line 817
    sget-boolean v0, Lcom/android/mms/template/TextTemplateListActivity;->TemplateEditting:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 528
    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    .line 554
    :cond_0
    :goto_0
    return-void

    .line 532
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 534
    :pswitch_0
    const-string v1, "android.intent.extra.TEMPLATE"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 535
    .local v0, textStr:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mTextTemplateProvider:Lcom/android/mms/template/TextTemplateProvider;

    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;

    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->getTextTemplateSelector()I

    move-result v3

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/android/mms/template/TextTemplateProvider;->updateTemplate(Landroid/database/Cursor;ILjava/lang/String;Z)I

    .line 536
    invoke-direct {p0, v5, v4}, Lcom/android/mms/template/TextTemplateListActivity;->setMode(IZ)V

    .line 537
    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->updateScreen()V

    goto :goto_0

    .line 542
    .end local v0           #textStr:Ljava/lang/String;
    :pswitch_1
    const-string v1, "android.intent.extra.TEMPLATE"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 543
    .restart local v0       #textStr:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mTextTemplateProvider:Lcom/android/mms/template/TextTemplateProvider;

    invoke-virtual {v1, v0}, Lcom/android/mms/template/TextTemplateProvider;->createTemplate(Ljava/lang/String;)Landroid/net/Uri;

    .line 544
    invoke-direct {p0, v5, v4}, Lcom/android/mms/template/TextTemplateListActivity;->setMode(IZ)V

    .line 545
    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->updateScreen()V

    .line 546
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 547
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 532
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V
    .locals 5
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 642
    invoke-virtual {p0}, Lcom/android/mms/template/TextTemplateListActivity;->invalidateOptionsMenu()V

    .line 643
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListAdapter:Lcom/android/mms/template/TextTemplateListAdapter;

    if-nez v1, :cond_1

    .line 644
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->allCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 645
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->allCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 693
    :cond_0
    :goto_0
    return-void

    .line 650
    :cond_1
    if-eqz p1, :cond_5

    .line 651
    invoke-virtual {p1, v4}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->sendAccessibilityEvent(I)V

    .line 653
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->getId()I

    move-result v1

    const v2, 0x7f0b003d

    if-ne v1, v2, :cond_6

    .line 654
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->allCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 655
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListAdapter:Lcom/android/mms/template/TextTemplateListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/template/TextTemplateListAdapter;->getCheckedSize()I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListAdapter:Lcom/android/mms/template/TextTemplateListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/template/TextTemplateListAdapter;->getCount()I

    move-result v2

    if-eq v1, v2, :cond_4

    .line 656
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListAdapter:Lcom/android/mms/template/TextTemplateListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/template/TextTemplateListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 657
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListAdapter:Lcom/android/mms/template/TextTemplateListAdapter;

    invoke-virtual {v1, v0}, Lcom/android/mms/template/TextTemplateListAdapter;->addCheckedItem(I)V

    .line 656
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 661
    .end local v0           #i:I
    :cond_2
    iget-boolean v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->selectAllUserUnchecked:Z

    if-eqz v1, :cond_3

    .line 662
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListAdapter:Lcom/android/mms/template/TextTemplateListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/template/TextTemplateListAdapter;->clearCheckedList()V

    .line 664
    :cond_3
    iput-boolean v4, p0, Lcom/android/mms/template/TextTemplateListActivity;->selectAllUserUnchecked:Z

    .line 667
    :cond_4
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListAdapter:Lcom/android/mms/template/TextTemplateListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/template/TextTemplateListAdapter;->notifyDataSetChanged()V

    .line 692
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->updateScreen()V

    goto :goto_0

    .line 669
    :cond_6
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->getId()I

    move-result v1

    const v2, 0x7f0b0276

    if-ne v1, v2, :cond_5

    .line 671
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 672
    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListAdapter:Lcom/android/mms/template/TextTemplateListAdapter;

    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/mms/template/TextTemplateListAdapter;->addCheckedItem(I)V

    .line 675
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListAdapter:Lcom/android/mms/template/TextTemplateListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/template/TextTemplateListAdapter;->getCheckedSize()I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListAdapter:Lcom/android/mms/template/TextTemplateListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/template/TextTemplateListAdapter;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 676
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->allCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_2

    .line 678
    :cond_7
    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListAdapter:Lcom/android/mms/template/TextTemplateListAdapter;

    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/mms/template/TextTemplateListAdapter;->removeCheckedItem(I)V

    .line 681
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->allCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 683
    iput-boolean v3, p0, Lcom/android/mms/template/TextTemplateListActivity;->selectAllUserUnchecked:Z

    .line 684
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->allCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 809
    const-string v0, "Mms/TextTemplateListActivity"

    const-string v1, "onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    return-void
.end method

.method public onClickDone()V
    .locals 2

    .prologue
    .line 696
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListAdapter:Lcom/android/mms/template/TextTemplateListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/template/TextTemplateListAdapter;->getCheckedSize()I

    move-result v0

    if-lez v0, :cond_0

    .line 697
    iget v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 698
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListAdapter:Lcom/android/mms/template/TextTemplateListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/template/TextTemplateListAdapter;->getCheckedSize()I

    move-result v0

    new-instance v1, Lcom/android/mms/template/TextTemplateListActivity$3;

    invoke-direct {v1, p0}, Lcom/android/mms/template/TextTemplateListActivity$3;-><init>(Lcom/android/mms/template/TextTemplateListActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/android/mms/template/TextTemplateListActivity;->confirmDeleteDialog(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 728
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 194
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 196
    const-string v0, "Mms/TextTemplateListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget-object v1, Lcom/android/mms/template/TextTemplateListActivity;->sOldLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sput-object v0, Lcom/android/mms/template/TextTemplateListActivity;->sOldLocale:Ljava/util/Locale;

    .line 200
    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->UpdateQuery()V

    .line 201
    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->setTitleByMode()V

    .line 202
    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->updateScreen()V

    .line 207
    :goto_0
    return-void

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/template/TextTemplateListActivity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 102
    const-string v1, "Mms/TextTemplateListActivity"

    const-string v4, "onCreate "

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    const v1, 0x7f04007b

    invoke-virtual {p0, v1}, Lcom/android/mms/template/TextTemplateListActivity;->setContentView(I)V

    .line 106
    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->initResource()V

    .line 108
    new-instance v1, Lcom/android/mms/template/TextTemplateProvider;

    invoke-direct {v1, p0}, Lcom/android/mms/template/TextTemplateProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mTextTemplateProvider:Lcom/android/mms/template/TextTemplateProvider;

    .line 109
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mTextTemplateProvider:Lcom/android/mms/template/TextTemplateProvider;

    invoke-virtual {v1}, Lcom/android/mms/template/TextTemplateProvider;->open()Lcom/android/mms/template/TextTemplateProvider;

    .line 111
    new-instance v1, Lcom/android/mms/template/TextTemplateListAdapter;

    iget-object v4, p0, Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/android/mms/template/TextTemplateListActivity;->getMode()I

    move-result v5

    invoke-direct {v1, p0, v4, v5}, Lcom/android/mms/template/TextTemplateListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    iput-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListAdapter:Lcom/android/mms/template/TextTemplateListAdapter;

    .line 112
    const v1, 0x7f0b0271

    invoke-virtual {p0, v1}, Lcom/android/mms/template/TextTemplateListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListView:Landroid/widget/ListView;

    .line 113
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListAdapter:Lcom/android/mms/template/TextTemplateListAdapter;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 115
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/mms/template/TextTemplateListActivity;->mTextTemplateListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 116
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/mms/template/TextTemplateListActivity;->mOnTextTemplateListItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 117
    invoke-static {}, Lcom/android/mms/ui/NullDialog;->getInstance()Lcom/android/mms/ui/NullDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    .line 119
    invoke-direct {p0, v3, v2}, Lcom/android/mms/template/TextTemplateListActivity;->setMode(IZ)V

    .line 121
    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->updateScreen()V

    .line 123
    invoke-virtual {p0}, Lcom/android/mms/template/TextTemplateListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 124
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "callFromSettings"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->sendToComposer:Z

    .line 125
    return-void

    :cond_0
    move v1, v3

    .line 124
    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 343
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 258
    const-string v0, "Mms/TextTemplateListActivity"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 262
    invoke-static {}, Lcom/android/mms/ui/NullDialog;->getInstance()Lcom/android/mms/ui/NullDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->allCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    .line 266
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mTextTemplateProvider:Lcom/android/mms/template/TextTemplateProvider;

    if-eqz v0, :cond_2

    .line 270
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mTextTemplateProvider:Lcom/android/mms/template/TextTemplateProvider;

    invoke-virtual {v0}, Lcom/android/mms/template/TextTemplateProvider;->close()V

    .line 272
    :cond_2
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_3

    .line 273
    iput-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->mActionBar:Landroid/app/ActionBar;

    .line 275
    :cond_3
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 276
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v1, 0x0

    .line 557
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMode:I

    if-eqz v0, :cond_0

    .line 558
    invoke-direct {p0, v1, v1}, Lcom/android/mms/template/TextTemplateListActivity;->setMode(IZ)V

    .line 559
    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->updateScreen()V

    .line 560
    const/4 v0, 0x1

    .line 563
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onListItemClick(I)V
    .locals 9
    .parameter "position"

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x1

    .line 751
    invoke-virtual {p0}, Lcom/android/mms/template/TextTemplateListActivity;->getTemplateEditing()Z

    move-result v5

    if-nez v5, :cond_0

    .line 752
    invoke-virtual {p0, v7}, Lcom/android/mms/template/TextTemplateListActivity;->setTemplateEditing(Z)V

    .line 757
    invoke-direct {p0, p1}, Lcom/android/mms/template/TextTemplateListActivity;->setTextTemplateSelector(I)V

    .line 758
    iget-object v5, p0, Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;

    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->getTextTemplateSelector()I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 762
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->getTextTemplate(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v4

    .line 764
    .local v4, texts:[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 765
    .local v0, checkedIndex:I
    iget-object v5, p0, Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 767
    .local v2, sBody:Ljava/lang/String;
    iget-boolean v5, p0, Lcom/android/mms/template/TextTemplateListActivity;->sendToComposer:Z

    if-ne v5, v7, :cond_3

    .line 768
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 769
    .local v3, sendIntent:Landroid/content/Intent;
    const-string v5, "com.android.mms"

    const-string v6, "com.android.mms.ui.ConversationComposer"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 770
    const/high16 v5, 0x1000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 772
    if-le v0, v8, :cond_2

    .line 773
    if-eqz v4, :cond_1

    .line 776
    const-string v5, "sms_body"

    aget-object v6, v4, v0

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 784
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/mms/template/TextTemplateListActivity;->startActivity(Landroid/content/Intent;)V

    .line 804
    .end local v0           #checkedIndex:I
    .end local v2           #sBody:Ljava/lang/String;
    .end local v3           #sendIntent:Landroid/content/Intent;
    .end local v4           #texts:[Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 779
    .restart local v0       #checkedIndex:I
    .restart local v2       #sBody:Ljava/lang/String;
    .restart local v3       #sendIntent:Landroid/content/Intent;
    .restart local v4       #texts:[Ljava/lang/String;
    :cond_1
    const-string v5, "sms_body"

    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 782
    :cond_2
    const-string v5, "sms_body"

    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 786
    .end local v3           #sendIntent:Landroid/content/Intent;
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/android/mms/template/TextTemplateEditActivity;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 788
    .local v1, intent:Landroid/content/Intent;
    if-le v0, v8, :cond_5

    .line 789
    if-eqz v4, :cond_4

    .line 792
    const-string v5, "android.intent.extra.TEMPLATE"

    aget-object v6, v4, v0

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 801
    :goto_2
    const-string v5, "activity_title"

    const v6, 0x7f0c020f

    invoke-virtual {p0, v6}, Lcom/android/mms/template/TextTemplateListActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 802
    invoke-virtual {p0, v1, v7}, Lcom/android/mms/template/TextTemplateListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 795
    :cond_4
    const-string v5, "android.intent.extra.TEMPLATE"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 798
    :cond_5
    const-string v5, "android.intent.extra.TEMPLATE"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const v4, 0x7f0c020c

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 281
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 337
    :goto_0
    return v1

    .line 283
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/template/TextTemplateEditActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 284
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 285
    const-string v1, "android.intent.extra.TEMPLATE"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    const-string v1, "activity_title"

    const v2, 0x7f0c020b

    invoke-virtual {p0, v2}, Lcom/android/mms/template/TextTemplateListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/template/TextTemplateListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 337
    .end local v0           #intent:Landroid/content/Intent;
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0

    .line 292
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/mms/template/TextTemplateListActivity;->closeContextMenu()V

    .line 294
    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 296
    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->mTemplateContextMenu:Landroid/view/ContextMenu;

    if-eqz v2, :cond_0

    .line 297
    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->mTemplateContextMenu:Landroid/view/ContextMenu;

    invoke-interface {v2}, Landroid/view/ContextMenu;->close()V

    .line 299
    :cond_0
    invoke-direct {p0, v1, v3}, Lcom/android/mms/template/TextTemplateListActivity;->setMode(IZ)V

    .line 300
    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->updateScreen()V

    goto :goto_1

    .line 302
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/mms/template/TextTemplateListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 308
    :sswitch_2
    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 309
    invoke-virtual {p0}, Lcom/android/mms/template/TextTemplateListActivity;->onClickDone()V

    goto :goto_1

    .line 311
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/mms/template/TextTemplateListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 317
    :sswitch_3
    iget v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMode:I

    if-ne v2, v1, :cond_3

    .line 318
    invoke-direct {p0, v3, v3}, Lcom/android/mms/template/TextTemplateListActivity;->setMode(IZ)V

    .line 319
    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->updateScreen()V

    goto :goto_1

    .line 321
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/template/TextTemplateListActivity;->finish()V

    goto :goto_1

    .line 326
    :sswitch_4
    iget v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMode:I

    if-ne v2, v1, :cond_4

    .line 327
    invoke-direct {p0, v3, v3}, Lcom/android/mms/template/TextTemplateListActivity;->setMode(IZ)V

    .line 328
    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->updateScreen()V

    goto :goto_1

    .line 330
    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/template/TextTemplateListActivity;->finish()V

    goto :goto_1

    .line 281
    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_0
        0x67 -> :sswitch_1
        0x68 -> :sswitch_2
        0x69 -> :sswitch_3
        0x102002c -> :sswitch_4
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 174
    const-string v0, "Mms/TextTemplateListActivity"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 176
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 11
    .parameter "menu"

    .prologue
    const v10, 0x7f0c007b

    const/4 v9, 0x6

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 349
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 351
    const/16 v7, 0x66

    const v8, 0x7f0c020d

    invoke-interface {p1, v6, v7, v6, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMenuCreate:Landroid/view/MenuItem;

    .line 352
    iget-object v7, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMenuCreate:Landroid/view/MenuItem;

    if-eqz v7, :cond_0

    .line 353
    iget-object v7, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMenuCreate:Landroid/view/MenuItem;

    const v8, 0x7f020007

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 354
    iget-object v7, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMenuCreate:Landroid/view/MenuItem;

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMenuItemActionForOrientation()I

    move-result v8

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 357
    :cond_0
    const/16 v7, 0x67

    invoke-interface {p1, v6, v7, v6, v10}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMenuDelete:Landroid/view/MenuItem;

    .line 358
    iget-object v7, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMenuDelete:Landroid/view/MenuItem;

    if-eqz v7, :cond_1

    .line 359
    iget-object v7, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMenuDelete:Landroid/view/MenuItem;

    const v8, 0x7f020008

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 360
    iget-object v7, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMenuDelete:Landroid/view/MenuItem;

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMenuItemActionForOrientation()I

    move-result v8

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 363
    iget-object v7, p0, Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-ge v7, v5, :cond_5

    .line 364
    iget-object v7, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMenuDelete:Landroid/view/MenuItem;

    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 370
    :cond_1
    :goto_0
    const/16 v7, 0x69

    const v8, 0x7f0c017c

    invoke-interface {p1, v6, v7, v6, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMenuCancel:Landroid/view/MenuItem;

    .line 371
    iget-object v7, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMenuCancel:Landroid/view/MenuItem;

    if-eqz v7, :cond_2

    .line 372
    iget-object v7, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 375
    :cond_2
    const/16 v7, 0x68

    invoke-interface {p1, v6, v7, v6, v10}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMenuDone:Landroid/view/MenuItem;

    .line 376
    iget-object v7, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMenuDone:Landroid/view/MenuItem;

    if-eqz v7, :cond_3

    .line 377
    iget-object v7, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 378
    iget-object v7, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 381
    :cond_3
    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMenuCreate:Landroid/view/MenuItem;

    .line 382
    .local v2, menuCreate:Landroid/view/MenuItem;
    iget-object v3, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMenuDelete:Landroid/view/MenuItem;

    .line 383
    .local v3, menuDelete:Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMenuCancel:Landroid/view/MenuItem;

    .line 384
    .local v1, menuCancel:Landroid/view/MenuItem;
    iget-object v4, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMenuDone:Landroid/view/MenuItem;

    .line 386
    .local v4, menuDone:Landroid/view/MenuItem;
    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    if-eqz v4, :cond_4

    .line 387
    invoke-virtual {p0}, Lcom/android/mms/template/TextTemplateListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_6

    move v0, v5

    .line 389
    .local v0, isLandscape:Z
    :goto_1
    iget v7, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMode:I

    if-eqz v7, :cond_9

    .line 390
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 391
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 392
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 393
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 395
    iget-object v7, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListAdapter:Lcom/android/mms/template/TextTemplateListAdapter;

    invoke-virtual {v7}, Lcom/android/mms/template/TextTemplateListAdapter;->getCheckedSize()I

    move-result v7

    if-lez v7, :cond_7

    .line 396
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 401
    :goto_2
    if-eqz v0, :cond_8

    .line 402
    const v5, 0x7f02022c

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 403
    const v5, 0x7f02022d

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 416
    .end local v0           #isLandscape:Z
    :cond_4
    :goto_3
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v5

    return v5

    .line 366
    .end local v1           #menuCancel:Landroid/view/MenuItem;
    .end local v2           #menuCreate:Landroid/view/MenuItem;
    .end local v3           #menuDelete:Landroid/view/MenuItem;
    .end local v4           #menuDone:Landroid/view/MenuItem;
    :cond_5
    iget-object v7, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMenuDelete:Landroid/view/MenuItem;

    invoke-interface {v7, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .restart local v1       #menuCancel:Landroid/view/MenuItem;
    .restart local v2       #menuCreate:Landroid/view/MenuItem;
    .restart local v3       #menuDelete:Landroid/view/MenuItem;
    .restart local v4       #menuDone:Landroid/view/MenuItem;
    :cond_6
    move v0, v6

    .line 387
    goto :goto_1

    .line 398
    .restart local v0       #isLandscape:Z
    :cond_7
    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 405
    :cond_8
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 406
    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_3

    .line 409
    :cond_9
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 410
    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 411
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 412
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3
.end method

.method public onRestart()V
    .locals 2

    .prologue
    .line 156
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 157
    const-string v0, "Mms/TextTemplateListActivity"

    const-string v1, "onRestart()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 162
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 163
    const-string v0, "Mms/TextTemplateListActivity"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->setTitleByMode()V

    .line 165
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/template/TextTemplateListActivity;->setTemplateEditing(Z)V

    .line 166
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->SelectAllText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->SelectAllText:Landroid/widget/TextView;

    const v1, 0x7f0c00ec

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/template/TextTemplateListActivity;->invalidateOptionsMenu()V

    .line 170
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 180
    const-string v0, "Mms/TextTemplateListActivity"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 182
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 186
    if-eqz p1, :cond_0

    .line 188
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/mms/template/TextTemplateListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    .line 190
    :cond_0
    return-void
.end method

.method public setTemplateEditing(Z)V
    .locals 0
    .parameter "SetValue"

    .prologue
    .line 813
    sput-boolean p1, Lcom/android/mms/template/TextTemplateListActivity;->TemplateEditting:Z

    .line 814
    return-void
.end method

.method public showItemContextMenu(Landroid/view/ContextMenu;Landroid/view/View;I)V
    .locals 8
    .parameter "menu"
    .parameter "v"
    .parameter "position"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 444
    invoke-direct {p0, p3}, Lcom/android/mms/template/TextTemplateListActivity;->setTextTemplateSelector(I)V

    .line 447
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->getTextTemplate(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    .line 450
    .local v3, texts:[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;

    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->getTextTemplateSelector()I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 452
    iget-object v4, p0, Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 453
    .local v0, checkedIndex:I
    iget-object v4, p0, Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 455
    .local v2, sBody:Ljava/lang/String;
    const/4 v4, -0x1

    if-le v0, v4, :cond_1

    .line 456
    if-eqz v3, :cond_0

    .line 459
    aget-object v4, v3, v0

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 468
    :goto_0
    new-instance v1, Lcom/android/mms/template/TextTemplateListActivity$TextTemplateMenuClickListener;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcom/android/mms/template/TextTemplateListActivity$TextTemplateMenuClickListener;-><init>(Lcom/android/mms/template/TextTemplateListActivity;Lcom/android/mms/template/TextTemplateListActivity$1;)V

    .line 470
    .local v1, l:Lcom/android/mms/template/TextTemplateListActivity$TextTemplateMenuClickListener;
    const v4, 0x7f0c0052

    invoke-interface {p1, v6, v7, v6, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 471
    const/4 v4, 0x3

    const v5, 0x7f0c007b

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 472
    return-void

    .line 462
    .end local v1           #l:Lcom/android/mms/template/TextTemplateListActivity$TextTemplateMenuClickListener;
    :cond_0
    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_0

    .line 465
    :cond_1
    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_0
.end method
