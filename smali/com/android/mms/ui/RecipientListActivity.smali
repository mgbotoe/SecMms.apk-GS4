.class public Lcom/android/mms/ui/RecipientListActivity;
.super Landroid/app/Activity;
.source "RecipientListActivity.java"

# interfaces
.implements Lcom/android/mms/data/Contact$UpdateListener;


# instance fields
.field public mActionbarNormalListLayout:Landroid/widget/LinearLayout;

.field private mActionbarNormalListSeparator:Landroid/widget/ImageView;

.field private mActionbarNormalListTemplateButton:Landroid/widget/TextView;

.field public mActionbarNormalListTitle:Landroid/widget/TextView;

.field private mActionbarNormalListTitleLayout:Landroid/widget/LinearLayout;

.field private mActionbarNormalListTitleNumber:Landroid/widget/TextView;

.field private mIntent:Landroid/content/Intent;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mListAdapter:Lcom/android/mms/ui/RecipientListAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mTestRecipients:[Ljava/lang/String;

.field recipientListItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/RecipientListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->recipientListItems:Ljava/util/ArrayList;

    .line 38
    iput-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    .line 39
    iput-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    .line 40
    iput-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListTitleLayout:Landroid/widget/LinearLayout;

    .line 41
    iput-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    .line 47
    iput-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListTemplateButton:Landroid/widget/TextView;

    .line 48
    iput-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListSeparator:Landroid/widget/ImageView;

    .line 55
    iput-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mTestRecipients:[Ljava/lang/String;

    .line 241
    new-instance v0, Lcom/android/mms/ui/RecipientListActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/RecipientListActivity$3;-><init>(Lcom/android/mms/ui/RecipientListActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/RecipientListActivity;)Lcom/android/mms/ui/RecipientListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mListAdapter:Lcom/android/mms/ui/RecipientListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/RecipientListActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private getRecipients()Lcom/android/mms/data/ContactList;
    .locals 4

    .prologue
    .line 150
    new-instance v0, Lcom/android/mms/data/ContactList;

    invoke-direct {v0}, Lcom/android/mms/data/ContactList;-><init>()V

    .line 151
    .local v0, contactList:Lcom/android/mms/data/ContactList;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/RecipientListActivity;->mTestRecipients:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 152
    iget-object v2, p0, Lcom/android/mms/ui/RecipientListActivity;->mTestRecipients:[Ljava/lang/String;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    :cond_0
    return-object v0
.end method

.method private setupActionBar()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 159
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 160
    .local v0, bar:Landroid/app/ActionBar;
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/high16 v2, 0x7f04

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    .line 161
    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 162
    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0b0008

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    .line 164
    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 179
    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    const v2, 0x7f0c01b0

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/RecipientListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setClickable(Z)V

    .line 185
    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0b0007

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListTitleLayout:Landroid/widget/LinearLayout;

    .line 186
    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 187
    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 188
    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0b0009

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    .line 189
    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 192
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 194
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 195
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v0, 0x7f040067

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RecipientListActivity;->setContentView(I)V

    .line 63
    invoke-direct {p0}, Lcom/android/mms/ui/RecipientListActivity;->setupActionBar()V

    .line 65
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mIntent:Landroid/content/Intent;

    .line 66
    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "recipients"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mTestRecipients:[Ljava/lang/String;

    .line 68
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 200
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 201
    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mListAdapter:Lcom/android/mms/ui/RecipientListAdapter;

    if-eqz v0, :cond_0

    .line 202
    iput-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mListAdapter:Lcom/android/mms/ui/RecipientListAdapter;

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    .line 205
    iput-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 209
    iput-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    .line 229
    :cond_2
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 233
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 238
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 235
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientListActivity;->finish()V

    .line 236
    const/4 v0, 0x1

    goto :goto_0

    .line 233
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 73
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 74
    invoke-static {p0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 75
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 81
    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 82
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 83
    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mListAdapter:Lcom/android/mms/ui/RecipientListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientListAdapter;->notifyDataSetChanged()V

    .line 84
    return-void
.end method

.method protected onStart()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 103
    invoke-direct {p0}, Lcom/android/mms/ui/RecipientListActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    .line 104
    .local v1, recipients:Lcom/android/mms/data/ContactList;
    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->reloadContactList()V

    .line 106
    iget-object v2, p0, Lcom/android/mms/ui/RecipientListActivity;->recipientListItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 108
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/RecipientListActivity;->mTestRecipients:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 109
    iget-object v2, p0, Lcom/android/mms/ui/RecipientListActivity;->recipientListItems:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/mms/ui/RecipientListItem;

    iget-object v4, p0, Lcom/android/mms/ui/RecipientListActivity;->mTestRecipients:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-direct {v3, p0, v4}, Lcom/android/mms/ui/RecipientListItem;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_0
    new-instance v2, Lcom/android/mms/ui/RecipientListAdapter;

    const v3, 0x7f040068

    iget-object v4, p0, Lcom/android/mms/ui/RecipientListActivity;->recipientListItems:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/mms/ui/RecipientListAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v2, p0, Lcom/android/mms/ui/RecipientListActivity;->mListAdapter:Lcom/android/mms/ui/RecipientListAdapter;

    .line 113
    const v2, 0x7f0b0221

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/RecipientListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/mms/ui/RecipientListActivity;->mListView:Landroid/widget/ListView;

    .line 114
    iget-object v2, p0, Lcom/android/mms/ui/RecipientListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setClickable(Z)V

    .line 115
    iget-object v2, p0, Lcom/android/mms/ui/RecipientListActivity;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/mms/ui/RecipientListActivity;->mListAdapter:Lcom/android/mms/ui/RecipientListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 117
    iget-object v2, p0, Lcom/android/mms/ui/RecipientListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 119
    iget-object v2, p0, Lcom/android/mms/ui/RecipientListActivity;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/mms/ui/RecipientListActivity;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 120
    iget-object v2, p0, Lcom/android/mms/ui/RecipientListActivity;->mListView:Landroid/widget/ListView;

    new-instance v3, Lcom/android/mms/ui/RecipientListActivity$2;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/RecipientListActivity$2;-><init>(Lcom/android/mms/ui/RecipientListActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 146
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 147
    return-void
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 2
    .parameter "updated"

    .prologue
    .line 88
    const-string v0, "ContactResult"

    const-string v1, "Contact onUpdate Called"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    new-instance v0, Lcom/android/mms/ui/RecipientListActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/RecipientListActivity$1;-><init>(Lcom/android/mms/ui/RecipientListActivity;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RecipientListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 97
    return-void
.end method
