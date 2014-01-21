.class Lcom/android/mms/ui/ConversationListFragment$23;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationListFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1926
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$23;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 21
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 1928
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$23;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$1300(Lcom/android/mms/ui/ConversationListFragment;)Landroid/widget/SearchView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1929
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$23;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$1300(Lcom/android/mms/ui/ConversationListFragment;)Landroid/widget/SearchView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SearchView;->clearFocus()V

    :cond_0
    move-object/from16 v14, p3

    .line 1931
    check-cast v14, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;

    .line 1935
    .local v14, info:Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;
    if-eqz v14, :cond_1

    .line 1936
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$23;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    iget v3, v14, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;->position:I

    #setter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectedPosition:I
    invoke-static {v2, v3}, Lcom/android/mms/ui/ConversationListFragment;->access$2402(Lcom/android/mms/ui/ConversationListFragment;I)I

    .line 1937
    const-string v2, "Mms/ConversationListFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateContextMenu mSelectedPosition: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ConversationListFragment$23;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectedPosition:I
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$2400(Lcom/android/mms/ui/ConversationListFragment;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1943
    const-string v2, "Mms/ConversationListFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateContextMenu mSelectedPosition: [size], [position] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ConversationListFragment$23;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$2500(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v14, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1944
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$23;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$2500(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget v3, v14, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;->position:I

    if-gt v2, v3, :cond_2

    .line 2071
    :cond_1
    :goto_0
    return-void

    .line 1949
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$23;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$2500(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v2

    iget v3, v14, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v15

    .line 1950
    .local v15, itemObject:Ljava/lang/Object;
    instance-of v2, v15, Landroid/database/Cursor;

    if-eqz v2, :cond_1

    move-object v12, v15

    .line 1952
    check-cast v12, Landroid/database/Cursor;

    .line 1954
    .local v12, cursor:Landroid/database/Cursor;
    if-eqz v12, :cond_1

    invoke-interface {v12}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    if-ltz v2, :cond_1

    .line 1958
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$23;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v12}, Lcom/android/mms/data/Conversation;->from(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/Conversation;

    move-result-object v11

    .line 1959
    .local v11, conv:Lcom/android/mms/data/Conversation;
    invoke-virtual {v11}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v18

    .line 1961
    .local v18, recipients:Lcom/android/mms/data/ContactList;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1962
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$23;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$2600(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    move-result-object v2

    const/16 v3, 0x70e

    sget-object v5, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/mms/data/Conversation;->ALL_SMS_PROJECTION:[Ljava/lang/String;

    const-string v7, "thread_id=?"

    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v11}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v19

    move-wide/from16 v0, v19

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    const-string v9, "date DESC"

    move-object/from16 v4, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1968
    :cond_3
    invoke-virtual {v11}, Lcom/android/mms/data/Conversation;->isCmasMsg()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1969
    const v2, 0x7f0c01ba

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 1988
    :goto_1
    const/4 v2, 0x0

    const/16 v3, 0xc8

    const/4 v4, 0x0

    const v5, 0x7f0c043b

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1989
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1990
    const/4 v2, 0x0

    const/16 v3, 0xce

    const/4 v4, 0x0

    const v5, 0x7f0c03a3

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1994
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$23;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.android.contacts"

    invoke-static {v2, v3}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$23;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.android.jcontacts"

    invoke-static {v2, v3}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/data/ContactList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    invoke-virtual {v11}, Lcom/android/mms/data/Conversation;->isCbSms()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v11}, Lcom/android/mms/data/Conversation;->isCmasMsg()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1998
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1999
    const/4 v2, 0x0

    const/16 v3, 0xca

    const/4 v4, 0x0

    const v5, 0x7f0c004c

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 2006
    :cond_6
    :goto_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackList()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2007
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$23;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$100(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationListAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_7

    if-eqz v18, :cond_7

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/data/ContactList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/data/ContactList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v11}, Lcom/android/mms/data/Conversation;->isCbSms()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v11}, Lcom/android/mms/data/Conversation;->isCmasMsg()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v11}, Lcom/android/mms/data/Conversation;->isWapPushMessage()Z

    move-result v2

    if-nez v2, :cond_7

    .line 2010
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2011
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2012
    const/4 v2, 0x0

    const/16 v3, 0xcc

    const/4 v4, 0x0

    const v5, 0x7f0c02a4

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 2029
    :cond_7
    :goto_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPModeApplication()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_11

    .line 2030
    if-eqz v18, :cond_11

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/data/ContactList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_11

    invoke-virtual {v11}, Lcom/android/mms/data/Conversation;->isCbSms()Z

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual {v11}, Lcom/android/mms/data/Conversation;->isCmasMsg()Z

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual {v11}, Lcom/android/mms/data/Conversation;->isWapPushMessage()Z

    move-result v2

    if-nez v2, :cond_11

    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 2032
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v17

    .line 2034
    .local v17, number:Ljava/lang/String;
    const/16 v2, 0xc

    new-array v10, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\\"

    aput-object v3, v10, v2

    const/4 v2, 0x1

    const-string v3, "/"

    aput-object v3, v10, v2

    const/4 v2, 0x2

    const-string v3, ":"

    aput-object v3, v10, v2

    const/4 v2, 0x3

    const-string v3, "*"

    aput-object v3, v10, v2

    const/4 v2, 0x4

    const-string v3, "?"

    aput-object v3, v10, v2

    const/4 v2, 0x5

    const-string v3, "\""

    aput-object v3, v10, v2

    const/4 v2, 0x6

    const-string v3, "<"

    aput-object v3, v10, v2

    const/4 v2, 0x7

    const-string v3, ">"

    aput-object v3, v10, v2

    const/16 v2, 0x8

    const-string v3, "|"

    aput-object v3, v10, v2

    const/16 v2, 0x9

    const-string v3, ";"

    aput-object v3, v10, v2

    const/16 v2, 0xa

    const-string v3, "\n"

    aput-object v3, v10, v2

    const/16 v2, 0xb

    const-string v3, "#"

    aput-object v3, v10, v2

    .line 2035
    .local v10, INVALID_CHAR:[Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, i:I
    :goto_4
    array-length v2, v10

    if-ge v13, v2, :cond_10

    .line 2036
    aget-object v2, v10, v13

    const-string v3, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    .line 2035
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 1972
    .end local v10           #INVALID_CHAR:[Ljava/lang/String;
    .end local v13           #i:I
    .end local v17           #number:Ljava/lang/String;
    :cond_8
    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/data/ContactList;->size()I

    move-result v2

    if-nez v2, :cond_a

    .line 1973
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1974
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$23;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c013b

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto/16 :goto_1

    .line 1976
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$23;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c000b

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto/16 :goto_1

    .line 1979
    :cond_a
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CBmessages"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1980
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$23;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c00fb

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto/16 :goto_1

    .line 1982
    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Pushmessage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1983
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$23;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0161

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto/16 :goto_1

    .line 1985
    :cond_c
    const-string v2, ","

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto/16 :goto_1

    .line 2000
    :cond_d
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->canAddToContacts(Lcom/android/mms/data/Contact;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2001
    const/4 v2, 0x0

    const/16 v3, 0xcb

    const/4 v4, 0x0

    const v5, 0x7f0c004d

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 2014
    :cond_e
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 2015
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$23;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v3

    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/mms/ui/MessageUtils;->SpamNumberisAlreadInUse(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2016
    const/4 v2, 0x0

    const/16 v3, 0xcd

    const/4 v4, 0x0

    const v5, 0x7f0c040c

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 2018
    :cond_f
    invoke-virtual {v11}, Lcom/android/mms/data/Conversation;->isCmasMsg()Z

    move-result v2

    if-nez v2, :cond_7

    .line 2019
    const/4 v2, 0x0

    const/16 v3, 0xcc

    const/4 v4, 0x0

    const v5, 0x7f0c0405

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 2039
    .restart local v10       #INVALID_CHAR:[Ljava/lang/String;
    .restart local v13       #i:I
    .restart local v17       #number:Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$23;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x3

    move-object/from16 v0, v17

    invoke-static {v2, v0, v3}, Lcom/android/mms/ui/MessageUtils;->existInVIPModeList(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$23;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x4

    move-object/from16 v0, v17

    invoke-static {v2, v0, v3}, Lcom/android/mms/ui/MessageUtils;->existInVIPModeList(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_14

    .line 2041
    const/4 v2, 0x0

    const/16 v3, 0xe9

    const/4 v4, 0x0

    const v5, 0x7f0c0343

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 2046
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$23;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-static {v2, v0, v3}, Lcom/android/mms/ui/MessageUtils;->existInVIPModeList(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$23;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    move-object/from16 v0, v17

    invoke-static {v2, v0, v3}, Lcom/android/mms/ui/MessageUtils;->existInVIPModeList(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_15

    .line 2048
    const/4 v2, 0x0

    const/16 v3, 0xe8

    const/4 v4, 0x0

    const v5, 0x7f0c0342

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 2056
    .end local v10           #INVALID_CHAR:[Ljava/lang/String;
    .end local v13           #i:I
    .end local v17           #number:Ljava/lang/String;
    :cond_11
    :goto_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFingerprintService()Z

    move-result v2

    if-eqz v2, :cond_13

    sget-boolean v2, Lcom/android/mms/ui/SecretModeHandler;->mIsSecretMode:Z

    if-eqz v2, :cond_13

    .line 2058
    invoke-virtual {v11}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->getSecretMode(J)I

    move-result v16

    .line 2060
    .local v16, mSecretMode:I
    if-eqz v16, :cond_12

    const/4 v2, 0x2

    move/from16 v0, v16

    if-ne v0, v2, :cond_16

    .line 2062
    :cond_12
    const/4 v2, 0x0

    const/16 v3, 0xea

    const/4 v4, 0x0

    const v5, 0x7f0c0424

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 2069
    .end local v16           #mSecretMode:I
    :cond_13
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$23;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #setter for: Lcom/android/mms/ui/ConversationListFragment;->mContextMenuSelectedConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v2, v11}, Lcom/android/mms/ui/ConversationListFragment;->access$2702(Lcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/Conversation;

    .line 2070
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$23;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    move-object/from16 v0, p1

    #setter for: Lcom/android/mms/ui/ConversationListFragment;->mContextMenu:Landroid/view/ContextMenu;
    invoke-static {v2, v0}, Lcom/android/mms/ui/ConversationListFragment;->access$2802(Lcom/android/mms/ui/ConversationListFragment;Landroid/view/ContextMenu;)Landroid/view/ContextMenu;

    goto/16 :goto_0

    .line 2043
    .restart local v10       #INVALID_CHAR:[Ljava/lang/String;
    .restart local v13       #i:I
    .restart local v17       #number:Ljava/lang/String;
    :cond_14
    const/4 v2, 0x0

    const/16 v3, 0xe7

    const/4 v4, 0x0

    const v5, 0x7f0c0341

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_5

    .line 2050
    :cond_15
    const/4 v2, 0x0

    const/16 v3, 0xe6

    const/4 v4, 0x0

    const v5, 0x7f0c0340

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_6

    .line 2063
    .end local v10           #INVALID_CHAR:[Ljava/lang/String;
    .end local v13           #i:I
    .end local v17           #number:Ljava/lang/String;
    .restart local v16       #mSecretMode:I
    :cond_16
    const/4 v2, 0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_17

    const/4 v2, 0x3

    move/from16 v0, v16

    if-ne v0, v2, :cond_13

    .line 2065
    :cond_17
    const/4 v2, 0x0

    const/16 v3, 0xeb

    const/4 v4, 0x0

    const v5, 0x7f0c0425

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_7
.end method
