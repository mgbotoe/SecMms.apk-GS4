.class public Lcom/android/mms/ui/ComposeMenu;
.super Ljava/lang/Object;
.source "ComposeMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ComposeMenu$CmasForwardListener;,
        Lcom/android/mms/ui/ComposeMenu$SendNowListener;,
        Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;
    }
.end annotation


# static fields
.field public static final CONTENT_RESTRICTION:I = -0x5

.field public static final IMAGE_TOO_LARGE:I = -0x4

.field private static final MENU_ACTIONBAR_ATTACH_BUTTON:I = 0x421

.field private static final MENU_ACTIONBAR_DELETE_CANCEL_BUTTON:I = 0x423

.field private static final MENU_ACTIONBAR_DELETE_DONE_BUTTON:I = 0x422

.field private static final MENU_ACTIONBAR_RESERVEMSG:I = 0x428

.field private static final MENU_ADD_ADDRESS_TO_CONTACTS:I = 0x403

.field private static final MENU_ADD_ADDRESS_TO_CONTACTS_MULTIPLE:I = 0x406

.field private static final MENU_ADD_NAMECARD:I = 0x42d

.field public static final MENU_ADD_RECIPIENT_MESSAGE:I = 0x43a

.field private static final MENU_ADD_SLIDE:I = 0x41d

.field private static final MENU_ADD_SUBJECT:I = 0x3e8

.field private static final MENU_ADD_TEXT:I = 0x3f1

.field private static final MENU_ATTACHMENT_LIST:I = 0x40b

.field private static final MENU_ATTACH_MENU:I = 0x42f

.field public static final MENU_BLOCK_NUMBER_SETTING:I = 0x427

.field private static final MENU_CALL_RECIPIENT:I = 0x3ee

.field public static final MENU_CALL_RECIPIENT_ICON:I = 0x440

.field private static final MENU_CANCEL_MESSAGE:I = 0x42a

.field private static final MENU_CMAS_FORWARD_MESSAGE:I = 0x44e

.field private static final MENU_CMAS_MORE:I = 0x420

.field private static final MENU_COMBIND_AND_FORWARD_CANCEL:I = 0x44a

.field private static final MENU_COMBIND_AND_FORWARD_OK:I = 0x449

.field private static final MENU_COMBINE_AND_FORWARD:I = 0x448

.field public static final MENU_COMPOSE_NEW:I = 0x43c

.field private static final MENU_CONNECT_URL:I = 0x44d

.field private static final MENU_CONVERSATION_LIST:I = 0x3ef

.field private static final MENU_COPYTOSIM_CANCEL:I = 0x446

.field private static final MENU_COPYTOSIM_OK:I = 0x447

.field private static final MENU_COPY_MESSAGE_TEXT:I = 0x400

.field private static final MENU_COPY_MESSAGE_TO_SIM:I = 0x407

.field private static final MENU_COPY_TO_SDCARD:I = 0x408

.field private static final MENU_DELETE_MESSAGE:I = 0x3fa

.field public static final MENU_DELETE_MESSAGES_ICON:I = 0x436

.field private static final MENU_DELETE_THREAD:I = 0x3ea

.field private static final MENU_DISCARD:I = 0x3ec

.field private static final MENU_DOWNLOAD_FORCELY:I = 0x434

.field private static final MENU_EDIT_MESSAGE:I = 0x3f6

.field private static final MENU_FORWARD_MESSAGE:I = 0x3fd

.field private static final MENU_INSERT_SMILEY:I = 0x402

.field private static final MENU_LAYOUT:I = 0x41c

.field private static final MENU_LOCK_MESSAGE:I = 0x404

.field private static final MENU_MESSAGE_SHARE:I = 0x44b

.field private static final MENU_MOVE_MSG:I = 0x42c

.field private static final MENU_MULTIPLE_COPY_TO_SIM:I = 0x445

.field private static final MENU_MULTI_CANCEL:I = 0x430

.field private static final MENU_MULTI_LOCK_MESSAGE:I = 0x3eb

.field private static final MENU_MULTI_OK:I = 0x431

.field private static final MENU_PAGE_DURATION:I = 0x410

.field public static final MENU_PREFERENCES:I = 0x43e

.field private static final MENU_PREVIEW_SLIDESHOW:I = 0x409

.field private static final MENU_PRIORITY_LEVEL:I = 0x42e

.field private static final MENU_REMOVE_SLIDE:I = 0x41e

.field private static final MENU_REMOVE_SUBJECT:I = 0x3f2

.field private static final MENU_REPLY_TO_ALL:I = 0x425

.field private static final MENU_REPLY_TO_SENDER:I = 0x424

.field public static final MENU_REPORT_AS_SPAM:I = 0x450

.field private static final MENU_RESEND_MESSAGE:I = 0x401

.field private static final MENU_SAVE_ADDRESS_TO_CONTACT:I = 0x42b

.field private static final MENU_SAVE_CONV:I = 0x441

.field public static final MENU_SAVE_DRAFT_MESSAGE:I = 0x44b

.field private static final MENU_SAVE_RESTORE_SDCARD:I = 0x442

.field public static final MENU_SAVE_RINGTONE:I = 0x43b

.field private static final MENU_SEARCH:I = 0x3fb

.field public static final MENU_SEARCH_SPLIT:I = 0x43d

.field public static final MENU_SELECT_TEXT:I = 0x439

.field private static final MENU_SEND:I = 0x3ed

.field private static final MENU_SEND_NOW:I = 0x429

.field public static final MENU_SET_AS_RINGTONE:I = 0x44f

.field private static final MENU_TRANSLATE:I = 0x40c

.field public static final MENU_TRANSLATOR_DIALOG:I = 0x40a

.field public static final MENU_UNBLOCK_NUMBER_SETTING:I = 0x435

.field private static final MENU_UNLOCK_MESSAGE:I = 0x405

.field private static final MENU_VIDEO_CALL_RECIPIENT:I = 0x3f3

.field private static final MENU_VIEW_CONTACT:I = 0x3f4

.field private static final MENU_VIEW_MESSAGE_DETAILS:I = 0x3f9

.field private static final MENU_VIEW_SLIDESHOW:I = 0x44c

.field public static final MESSAGE_SIZE_EXCEEDED:I = -0x2

.field private static final OFFSET:I = 0x3e8

.field public static final PRIORITY_HIGH:I = 0x2

.field public static final PRIORITY_LOW:I = 0x0

.field public static final PRIORITY_NORMAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Mms/ComposerMenu"

.field public static final UNKNOWN_ERROR:I = -0x1

.field public static final UNSUPPORTED_TYPE:I = -0x3

.field private static mIsSearchMode:Z


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

.field protected mDeleteConfirmDialog:Landroid/content/DialogInterface;

.field private mIsDelayForSearch:Z

.field private mIsFromSearchView:Z

.field private mMaximumSlideElementDuration:I

.field private mNumberList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchView:Landroid/widget/SearchView;

.field private mSendNowAddr:Ljava/lang/String;

.field private mSendNowBody:Ljava/lang/String;

.field protected mSendNowConfirmDialog:Landroid/content/DialogInterface;

.field private mSendNowDeliveryReport:Z

.field private mSendNowLocked:Z

.field private mSendNowReadReport:Z

.field private mSendNowSize:J

.field private mSendNowThreadId:J

.field private mSendNowType:Ljava/lang/String;

.field private mSendNowUri:Landroid/net/Uri;

.field private m_lOldMenuTouchTime:J

.field public moveMessageDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/ComposeMenu;->mIsSearchMode:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 4
    .parameter "composeMessageFragment"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    iput-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowType:Ljava/lang/String;

    .line 248
    iput-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowAddr:Ljava/lang/String;

    .line 249
    iput-wide v2, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowThreadId:J

    .line 250
    iput-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowBody:Ljava/lang/String;

    .line 251
    iput-wide v2, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowSize:J

    .line 252
    iput-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowUri:Landroid/net/Uri;

    .line 253
    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowLocked:Z

    .line 254
    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowDeliveryReport:Z

    .line 255
    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowReadReport:Z

    .line 258
    iput-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->moveMessageDialog:Landroid/app/AlertDialog;

    .line 260
    const/16 v0, 0x3e7

    iput v0, p0, Lcom/android/mms/ui/ComposeMenu;->mMaximumSlideElementDuration:I

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mNumberList:Ljava/util/ArrayList;

    .line 278
    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMenu;->mIsDelayForSearch:Z

    .line 283
    iput-wide v2, p0, Lcom/android/mms/ui/ComposeMenu;->m_lOldMenuTouchTime:J

    .line 266
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    .line 267
    return-void
.end method

.method private AddRecipent()V
    .locals 17

    .prologue
    .line 2169
    new-instance v2, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    const-class v14, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v2, v13, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2170
    .local v2, addIntent:Landroid/content/Intent;
    const-string v13, "exit_on_sent"

    const/4 v14, 0x1

    invoke-virtual {v2, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2171
    const-string v13, "add_recipient_message"

    const/4 v14, 0x1

    invoke-virtual {v2, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2173
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 2174
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v13}, Lcom/android/mms/ui/ComposeMessageFragment;->saveMultiDraft()Landroid/net/Uri;

    move-result-object v5

    .line 2175
    .local v5, draftUri:Landroid/net/Uri;
    if-nez v5, :cond_2

    .line 2176
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v13}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    .line 2178
    .local v3, addlist:Lcom/android/mms/data/ContactList;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 2179
    .local v12, szaddr:Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v13

    if-ge v6, v13, :cond_1

    .line 2180
    invoke-virtual {v3, v6}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/mms/data/Contact;

    invoke-virtual {v13}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2181
    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ge v6, v13, :cond_0

    .line 2182
    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2179
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2184
    :cond_1
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2185
    .local v7, mRecipients:Ljava/lang/String;
    const-string v13, "recipients"

    invoke-virtual {v2, v13, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2186
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v13}, Lcom/android/mms/ui/ComposeMessageFragment;->getReservationTime()J

    move-result-wide v8

    .line 2187
    .local v8, mReservationTime:J
    const-string v13, "reservationtime"

    invoke-virtual {v2, v13, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2193
    .end local v3           #addlist:Lcom/android/mms/data/ContactList;
    .end local v6           #i:I
    .end local v7           #mRecipients:Ljava/lang/String;
    .end local v8           #mReservationTime:J
    .end local v12           #szaddr:Ljava/lang/StringBuilder;
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v13}, Lcom/android/mms/ui/ComposeMessageFragment;->resetReservedSettings()V

    .line 2194
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    const-string v14, "com.android.mms.ui.ReplyMessageActivity"

    invoke-virtual {v2, v13, v14}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 2195
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v13, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2213
    .end local v5           #draftUri:Landroid/net/Uri;
    :goto_2
    return-void

    .line 2189
    .restart local v5       #draftUri:Landroid/net/Uri;
    :cond_2
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2190
    const-string v13, "recipients"

    const-string v14, ""

    invoke-virtual {v2, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 2197
    .end local v5           #draftUri:Landroid/net/Uri;
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v13}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v4

    .line 2198
    .local v4, contactList:Lcom/android/mms/data/ContactList;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2200
    .local v1, NumberArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v13, 0x0

    new-array v11, v13, [Ljava/lang/String;

    .line 2202
    .local v11, numList:[Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 2203
    invoke-virtual {v4}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v11

    .line 2206
    :cond_4
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_3
    array-length v13, v11

    if-ge v6, v13, :cond_5

    .line 2207
    aget-object v13, v11, v6

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2206
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 2209
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v13}, Lcom/android/mms/ui/ComposeMessageFragment;->getReservationTime()J

    move-result-wide v8

    .line 2210
    .restart local v8       #mReservationTime:J
    new-instance v10, Lcom/android/mms/ui/MessageOptions;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v15}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v10, v13, v14, v15, v0}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 2211
    .local v10, messageOptions:Lcom/android/mms/ui/MessageOptions;
    const/4 v13, 0x0

    invoke-virtual {v10, v1, v13, v8, v9}, Lcom/android/mms/ui/MessageOptions;->openNewComposer(Ljava/util/ArrayList;ZJ)V

    goto :goto_2
.end method

.method private InsertOrPickContactAddress(Lcom/android/mms/ui/MessageItem;)V
    .locals 9
    .parameter "msgItem"

    .prologue
    const/4 v8, 0x1

    .line 607
    const/4 v5, 0x2

    new-array v1, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    const v7, 0x7f0c0313

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    const v6, 0x7f0c0314

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v8

    .line 610
    .local v1, dialog_contact:[Ljava/lang/String;
    iget-object v4, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 611
    .local v4, s:Lcom/android/mms/model/SlideshowModel;
    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->getLocationModel()Lcom/samsung/mms/model/LocationVcardModel;

    move-result-object v2

    .line 613
    .local v2, location:Lcom/samsung/mms/model/LocationVcardModel;
    const/4 v3, 0x0

    .line 614
    .local v3, mInsertOrPickContactAddress:Landroid/app/AlertDialog;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 615
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0c0315

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 616
    new-instance v5, Lcom/android/mms/ui/ComposeMenu$1;

    invoke-direct {v5, p0, v2}, Lcom/android/mms/ui/ComposeMenu$1;-><init>(Lcom/android/mms/ui/ComposeMenu;Lcom/samsung/mms/model/LocationVcardModel;)V

    invoke-virtual {v0, v1, v5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 621
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 622
    invoke-virtual {v3, v8}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 623
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 624
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/ComposeMenu;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowSize:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/android/mms/ui/ComposeMenu;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-wide p1, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowSize:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/ComposeMenu;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowLocked:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/mms/ui/ComposeMenu;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowLocked:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/ComposeMenu;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowDeliveryReport:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/mms/ui/ComposeMenu;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowDeliveryReport:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/ComposeMenu;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowReadReport:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/mms/ui/ComposeMenu;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowReadReport:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/android/mms/ui/ComposeMenu;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMenu;->mIsDelayForSearch:Z

    return p1
.end method

.method static synthetic access$1502(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    sput-boolean p0, Lcom/android/mms/ui/ComposeMenu;->mIsSearchMode:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ComposeMenu;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mNumberList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ComposeMenu;Lcom/android/mms/ui/MessageItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMenu;->InsertOrPickContactAddress(Lcom/android/mms/ui/MessageItem;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/ComposeMenu;ILcom/samsung/mms/model/LocationVcardModel;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMenu;->createSaveLocationToContactIntent(ILcom/samsung/mms/model/LocationVcardModel;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/ComposeMenu;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/mms/ui/ComposeMenu;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/mms/ui/ComposeMenu;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/mms/ui/ComposeMenu;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/mms/ui/ComposeMenu;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowAddr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/mms/ui/ComposeMenu;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowAddr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/mms/ui/ComposeMenu;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowThreadId:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/android/mms/ui/ComposeMenu;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-wide p1, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowThreadId:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/android/mms/ui/ComposeMenu;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowBody:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/mms/ui/ComposeMenu;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowBody:Ljava/lang/String;

    return-object p1
.end method

.method private buildAddAddressToContactMenuItem(Landroid/view/Menu;)V
    .locals 10
    .parameter "menu"

    .prologue
    const v9, 0x7f0c004d

    const v8, 0x7f02008b

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1546
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    .line 1547
    .local v1, contactList:Lcom/android/mms/data/ContactList;
    const/4 v4, 0x0

    .line 1548
    .local v4, worthSavingContact:I
    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 1549
    .local v0, c:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->canAddToContacts(Lcom/android/mms/data/Contact;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->isLocalNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1550
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1553
    .end local v0           #c:Lcom/android/mms/data/Contact;
    :cond_2
    if-ne v4, v7, :cond_6

    .line 1554
    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 1555
    .restart local v0       #c:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->canAddToContacts(Lcom/android/mms/data/Contact;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->isLocalNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1556
    :cond_4
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 1557
    .local v3, intent:Landroid/content/Intent;
    const/16 v5, 0x403

    invoke-interface {p1, v6, v5, v6, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1568
    .end local v0           #c:Lcom/android/mms/data/Contact;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_5
    :goto_1
    return-void

    .line 1564
    :cond_6
    if-le v4, v7, :cond_5

    .line 1565
    const/16 v5, 0x406

    invoke-interface {p1, v6, v5, v6, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method private createSaveLocationToContactIntent(ILcom/samsung/mms/model/LocationVcardModel;)Landroid/content/Intent;
    .locals 7
    .parameter "menu"
    .parameter "location"

    .prologue
    const/4 v6, 0x1

    .line 627
    const/4 v1, 0x0

    .line 628
    .local v1, intent:Landroid/content/Intent;
    if-nez p1, :cond_2

    .line 629
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.INSERT"

    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 634
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    .line 635
    const-string v4, "Address"

    invoke-virtual {p2}, Lcom/samsung/mms/model/LocationVcardModel;->getFullName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 636
    const-string v4, "name"

    invoke-virtual {p2}, Lcom/samsung/mms/model/LocationVcardModel;->getFullName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 638
    :cond_1
    const-string v4, "postal_isprimary"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 639
    const-string v4, "postal_type"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 640
    const-string v4, "postal"

    invoke-virtual {p2}, Lcom/samsung/mms/model/LocationVcardModel;->getFormattedAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 641
    invoke-virtual {p2}, Lcom/samsung/mms/model/LocationVcardModel;->getPhoneList()Ljava/util/List;

    move-result-object v2

    .line 643
    .local v2, phoneList:Ljava/util/List;,"Ljava/util/List<Lcom/android/vcard/VCardEntry$PhoneData;>;"
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 645
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/vcard/VCardEntry$PhoneData;

    .line 647
    .local v3, phonedata:Lcom/android/vcard/VCardEntry$PhoneData;
    invoke-virtual {v3}, Lcom/android/vcard/VCardEntry$PhoneData;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 659
    const-string v4, "phone_type"

    const/4 v5, 0x7

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 661
    :goto_2
    const-string v4, "phone"

    invoke-virtual {v3}, Lcom/android/vcard/VCardEntry$PhoneData;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 630
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #phoneList:Ljava/util/List;,"Ljava/util/List<Lcom/android/vcard/VCardEntry$PhoneData;>;"
    .end local v3           #phonedata:Lcom/android/vcard/VCardEntry$PhoneData;
    :cond_2
    if-ne p1, v6, :cond_0

    .line 631
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 632
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v4, "vnd.android.cursor.item/contact"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 650
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v2       #phoneList:Ljava/util/List;,"Ljava/util/List<Lcom/android/vcard/VCardEntry$PhoneData;>;"
    .restart local v3       #phonedata:Lcom/android/vcard/VCardEntry$PhoneData;
    :pswitch_0
    const-string v4, "phone_type"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    .line 653
    :pswitch_1
    const-string v4, "phone_type"

    const/4 v5, 0x2

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    .line 656
    :pswitch_2
    const-string v4, "phone_type"

    const/4 v5, 0x3

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    .line 665
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #phoneList:Ljava/util/List;,"Ljava/util/List<Lcom/android/vcard/VCardEntry$PhoneData;>;"
    .end local v3           #phonedata:Lcom/android/vcard/VCardEntry$PhoneData;
    :cond_3
    return-object v1

    .line 647
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getDrmMimeMenuStringRsrc(J)I
    .locals 1
    .parameter "msgId"

    .prologue
    .line 2255
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Lcom/android/mms/ui/MessageUtils;->isDrmRingtoneWithRights(Landroid/content/Context;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2256
    const v0, 0x7f0c0372

    .line 2258
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSelectedUriFromMessageList(Lcom/android/mms/ui/MessageListItem;)Landroid/net/Uri;
    .locals 11
    .parameter "msgListItem"

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x1

    .line 684
    move-object v2, p1

    .line 685
    .local v2, msglistItem:Lcom/android/mms/ui/MessageListItem;
    if-nez v2, :cond_1

    .line 737
    :cond_0
    :goto_0
    return-object v8

    .line 695
    :cond_1
    const/4 v5, 0x0

    .line 696
    .local v5, text:Ljava/lang/CharSequence;
    const/4 v4, -0x1

    .line 697
    .local v4, selStart:I
    const/4 v3, -0x1

    .line 700
    .local v3, selEnd:I
    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v9

    iget v9, v9, Lcom/android/mms/ui/MessageItem;->mLayoutType:I

    if-ne v9, v10, :cond_4

    .line 702
    const v9, 0x7f0b0196

    invoke-virtual {v2, v9}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 707
    .local v6, textView:Landroid/widget/TextView;
    :goto_1
    if-eqz v6, :cond_2

    .line 708
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 709
    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 710
    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 713
    :cond_2
    const/4 v9, -0x1

    if-ne v4, v9, :cond_3

    .line 715
    const v9, 0x7f0b0082

    invoke-virtual {v2, v9}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #textView:Landroid/widget/TextView;
    check-cast v6, Landroid/widget/TextView;

    .line 716
    .restart local v6       #textView:Landroid/widget/TextView;
    if-eqz v6, :cond_3

    .line 717
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 718
    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 719
    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 725
    :cond_3
    if-eq v4, v3, :cond_0

    .line 726
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 727
    .local v1, min:I
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 729
    .local v0, max:I
    check-cast v5, Landroid/text/Spanned;

    .end local v5           #text:Ljava/lang/CharSequence;
    const-class v9, Landroid/text/style/URLSpan;

    invoke-interface {v5, v1, v0, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/URLSpan;

    .line 731
    .local v7, urls:[Landroid/text/style/URLSpan;
    array-length v9, v7

    if-ne v9, v10, :cond_0

    .line 732
    const/4 v8, 0x0

    aget-object v8, v7, v8

    invoke-virtual {v8}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    goto :goto_0

    .line 704
    .end local v0           #max:I
    .end local v1           #min:I
    .end local v6           #textView:Landroid/widget/TextView;
    .end local v7           #urls:[Landroid/text/style/URLSpan;
    .restart local v5       #text:Ljava/lang/CharSequence;
    :cond_4
    const v9, 0x7f0b01be

    invoke-virtual {v2, v9}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .restart local v6       #textView:Landroid/widget/TextView;
    goto :goto_1
.end method

.method private isAvaliableSelectTextMenu(Lcom/android/mms/ui/MessageItem;)Z
    .locals 2
    .parameter "msgItem"

    .prologue
    const/4 v0, 0x0

    .line 1038
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1046
    :cond_0
    :goto_0
    return v0

    .line 1042
    :cond_1
    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1046
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addUriSpecificMenuItems(Landroid/view/ContextMenu;Landroid/view/View;Lcom/android/mms/ui/MessageListItem;)V
    .locals 10
    .parameter "menu"
    .parameter "v"
    .parameter "msgListItem"

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 671
    invoke-direct {p0, p3}, Lcom/android/mms/ui/ComposeMenu;->getSelectedUriFromMessageList(Lcom/android/mms/ui/MessageListItem;)Landroid/net/Uri;

    move-result-object v9

    .line 673
    .local v9, uri:Landroid/net/Uri;
    if-eqz v9, :cond_0

    .line 674
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 675
    .local v6, intent:Landroid/content/Intent;
    const-string v0, "android.intent.category.SELECTED_ALTERNATIVE"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 676
    new-instance v4, Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {v4, v0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v0, p1

    move v2, v1

    move v3, v1

    move v7, v1

    move-object v8, v5

    invoke-interface/range {v0 .. v8}, Landroid/view/ContextMenu;->addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I

    .line 679
    .end local v6           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public clearMoveMessageDlg()V
    .locals 1

    .prologue
    .line 2313
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->moveMessageDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2314
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->moveMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2316
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->moveMessageDialog:Landroid/app/AlertDialog;

    .line 2317
    return-void
.end method

.method public closeSearchView(Z)V
    .locals 3
    .parameter "invalidate"

    .prologue
    .line 2243
    const-string v0, "Mms/ComposerMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeSearchView invalidate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2245
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMenu;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2246
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/ComposeMenu;->mIsSearchMode:Z

    .line 2247
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mSearchView:Landroid/widget/SearchView;

    .line 2249
    if-eqz p1, :cond_0

    .line 2250
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 2252
    :cond_0
    return-void
.end method

.method public confirmCmasForwardMessage(Landroid/content/Context;Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageItem;)V
    .locals 3
    .parameter "context"
    .parameter "messageOptions"
    .parameter "msgItem"

    .prologue
    .line 2285
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2286
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c0016

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2287
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2288
    const v1, 0x7f0c0419

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2289
    const v1, 0x104000a

    new-instance v2, Lcom/android/mms/ui/ComposeMenu$CmasForwardListener;

    invoke-direct {v2, p0, p2, p3}, Lcom/android/mms/ui/ComposeMenu$CmasForwardListener;-><init>(Lcom/android/mms/ui/ComposeMenu;Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2290
    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2291
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2292
    return-void
.end method

.method public confirmRegisterAsSpamNumber()V
    .locals 3

    .prologue
    .line 2262
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2263
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c0405

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2265
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2266
    const v1, 0x7f0c0407

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2267
    const v1, 0x104000a

    new-instance v2, Lcom/android/mms/ui/ComposeMenu$11;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMenu$11;-><init>(Lcom/android/mms/ui/ComposeMenu;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2278
    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2280
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 2281
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2282
    return-void
.end method

.method public isSearchMode()Z
    .locals 3

    .prologue
    .line 2238
    const-string v0, "Mms/ComposerMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSearchMode() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/mms/ui/ComposeMenu;->mIsSearchMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2239
    sget-boolean v0, Lcom/android/mms/ui/ComposeMenu;->mIsSearchMode:Z

    return v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Lcom/android/mms/ui/MessageItem;)V
    .locals 15
    .parameter "menu"
    .parameter "v"
    .parameter "msgItem"

    .prologue
    .line 742
    if-nez p3, :cond_1

    .line 1033
    :cond_0
    :goto_0
    return-void

    .line 747
    :cond_1
    const v11, 0x7f0c0021

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 748
    new-instance v5, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-direct {v5, p0, v0, v1}, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;-><init>(Lcom/android/mms/ui/ComposeMenu;Lcom/android/mms/ui/MessageItem;Landroid/view/View;)V

    .line 750
    .local v5, l:Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 751
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isDraftMessage()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 752
    const/4 v11, 0x0

    const/16 v12, 0x3fa

    const/4 v13, 0x0

    const v14, 0x7f0c043b

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0

    .line 758
    :cond_2
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/data/Conversation;->isCbSms()Z

    move-result v11

    if-nez v11, :cond_3

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/data/Conversation;->isWapPushMessage()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 759
    :cond_3
    const/4 v11, 0x0

    const/16 v12, 0x3fa

    const/4 v13, 0x0

    const v14, 0x7f0c043b

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 761
    const/4 v11, 0x0

    const/16 v12, 0x400

    const/4 v13, 0x0

    const v14, 0x7f0c043c

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 763
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/data/Conversation;->isWapPushMessage()Z

    move-result v11

    if-nez v11, :cond_0

    .line 764
    const/4 v11, 0x0

    const/16 v12, 0x3fd

    const/4 v13, 0x0

    const v14, 0x7f0c0016

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 771
    :cond_4
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/data/Conversation;->isCmasMsg()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_6

    .line 772
    const/4 v11, 0x0

    const/16 v12, 0x3fa

    const/4 v13, 0x0

    const v14, 0x7f0c043b

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 774
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v11

    const/4 v12, 0x2

    if-eq v11, v12, :cond_5

    .line 775
    const/4 v11, 0x0

    const/16 v12, 0x3f9

    const/4 v13, 0x0

    const v14, 0x7f0c000e

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 778
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->isKORCMASFeatureEnabled()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 779
    const/4 v11, 0x0

    const/16 v12, 0x44e

    const/4 v13, 0x0

    const v14, 0x7f0c0016

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 786
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v11

    if-eqz v11, :cond_2a

    .line 787
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v11

    if-nez v11, :cond_7

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isFailed()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 788
    :cond_7
    const/4 v11, 0x0

    const/16 v12, 0x401

    const/4 v13, 0x0

    const v14, 0x7f0c0091

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 791
    :cond_8
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/data/ContactList;->size()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_9

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_9

    .line 792
    const/4 v11, 0x0

    const/16 v12, 0x424

    const/4 v13, 0x0

    const v14, 0x7f0c02c8

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 801
    :cond_9
    :goto_1
    move-object/from16 v0, p3

    iget-wide v11, v0, Lcom/android/mms/ui/MessageItem;->mReserved:J

    const-wide/16 v13, 0x1

    cmp-long v11, v11, v13

    if-nez v11, :cond_a

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 802
    const/4 v11, 0x0

    const/16 v12, 0x429

    const/4 v13, 0x0

    const v14, 0x7f0c02d0

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 803
    const/4 v11, 0x0

    const/16 v12, 0x42a

    const/4 v13, 0x0

    const v14, 0x7f0c02d1

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 806
    :cond_a
    move-object/from16 v0, p3

    iget-wide v11, v0, Lcom/android/mms/ui/MessageItem;->mReserved:J

    const-wide/16 v13, 0x1

    cmp-long v11, v11, v13

    if-eqz v11, :cond_b

    .line 807
    const/4 v11, 0x0

    const/16 v12, 0x3fa

    const/4 v13, 0x0

    const v14, 0x7f0c043b

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 810
    :cond_b
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 811
    const/4 v4, 0x0

    .line 812
    .local v4, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v11

    if-eqz v11, :cond_2b

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v11, :cond_2b

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v11}, Lcom/android/mms/model/SlideshowModel;->hasLocation()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2b

    .line 813
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v11}, Lcom/android/mms/model/SlideshowModel;->getLocationModel()Lcom/samsung/mms/model/LocationVcardModel;

    move-result-object v6

    .line 814
    .local v6, locModel:Lcom/samsung/mms/model/LocationVcardModel;
    if-eqz v6, :cond_c

    .line 816
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    const-class v12, Lcom/samsung/mms/location/LocationMapActivity;

    invoke-direct {v4, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 817
    .restart local v4       #intent:Landroid/content/Intent;
    const-string v11, "extra_startup_flag"

    const/4 v12, 0x4

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 818
    const-string v11, "extra_map_url"

    invoke-virtual {v6}, Lcom/samsung/mms/model/LocationVcardModel;->getUrl()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 819
    const-string v11, "extra_selected_place"

    invoke-virtual {v6}, Lcom/samsung/mms/model/LocationVcardModel;->getPlaceBytes()[B

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 828
    .end local v6           #locModel:Lcom/samsung/mms/model/LocationVcardModel;
    :cond_c
    :goto_2
    const/4 v11, 0x0

    const/16 v12, 0x44c

    const/4 v13, 0x0

    const v14, 0x7f0c03c0

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v4}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 834
    .end local v4           #intent:Landroid/content/Intent;
    :cond_d
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableMmsAllPageBubble()Z

    move-result v11

    if-eqz v11, :cond_2c

    .line 835
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->getBody()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_f

    .line 836
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v11

    if-nez v11, :cond_e

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v11

    if-eqz v11, :cond_f

    .line 837
    :cond_e
    const/4 v11, 0x0

    const/16 v12, 0x400

    const/4 v13, 0x0

    const v14, 0x7f0c043c

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 847
    :cond_f
    :goto_3
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v11

    if-eqz v11, :cond_11

    .line 848
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRilSmsTidMessage()Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-static/range {p3 .. p3}, Lcom/android/mms/util/TelephonyUtils;->isEnableSpecificTidService(Lcom/android/mms/ui/MessageItem;)Z

    move-result v11

    if-nez v11, :cond_11

    .line 850
    :cond_10
    const/4 v11, 0x0

    const/16 v12, 0x3fd

    const/4 v13, 0x0

    const v14, 0x7f0c0016

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 854
    :cond_11
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v11

    if-nez v11, :cond_12

    .line 855
    move-object/from16 v0, p3

    iget-boolean v11, v0, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    if-eqz v11, :cond_2d

    .line 856
    const/4 v11, 0x0

    const/16 v12, 0x405

    const/4 v13, 0x0

    const v14, 0x7f0c043e

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 865
    :cond_12
    :goto_4
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/data/ContactList;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_14

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v11

    if-nez v11, :cond_13

    move-object/from16 v0, p3

    iget-wide v11, v0, Lcom/android/mms/ui/MessageItem;->mReserved:J

    const-wide/16 v13, 0x1

    cmp-long v11, v11, v13

    if-nez v11, :cond_14

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v11

    if-eqz v11, :cond_14

    :cond_13
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v11

    if-nez v11, :cond_14

    .line 867
    const/4 v11, 0x0

    const/16 v12, 0x3f6

    const/4 v13, 0x0

    const v14, 0x7f0c0090

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 870
    :cond_14
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v11

    if-eqz v11, :cond_16

    .line 872
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableReplyAll()Z

    move-result v11

    if-eqz v11, :cond_15

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v11

    if-eqz v11, :cond_15

    .line 873
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    iget-object v12, p0, Lcom/android/mms/ui/ComposeMenu;->mNumberList:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    invoke-static {v11, v0, v12}, Lcom/android/mms/ui/MessageUtils;->getReplyAllCount(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;Ljava/util/ArrayList;)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 874
    const/4 v11, 0x0

    const/16 v12, 0x425

    const/4 v13, 0x0

    const v14, 0x7f0c019e

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 880
    :cond_15
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v11, :cond_2e

    .line 884
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v11

    if-nez v11, :cond_16

    .line 885
    const/4 v11, 0x0

    const/16 v12, 0x40b

    const/4 v13, 0x0

    const v14, 0x7f0c011d

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 905
    :cond_16
    :goto_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v11

    if-eqz v11, :cond_17

    .line 906
    move-object/from16 v0, p3

    iget v11, v0, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    const/16 v12, 0xa

    if-ne v11, v12, :cond_17

    .line 907
    const/4 v11, 0x0

    const/16 v12, 0x42b

    const/4 v13, 0x0

    const v14, 0x7f0c030b

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 911
    :cond_17
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMessageShare()Z

    move-result v11

    if-eqz v11, :cond_19

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v11

    if-nez v11, :cond_18

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v11

    if-eqz v11, :cond_19

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v11

    if-eqz v11, :cond_19

    .line 912
    :cond_18
    const/4 v11, 0x0

    const/16 v12, 0x44b

    const/4 v13, 0x0

    const v14, 0x7f0c0127

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 915
    :cond_19
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAllContextMenuInMsgViewer()Z

    move-result v11

    if-eqz v11, :cond_1a

    .line 916
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v11

    invoke-static {v11}, Lcom/android/mms/ui/MessageUtils;->isAliasAddress(Lcom/android/mms/data/ContactList;)Z

    move-result v11

    if-nez v11, :cond_1a

    .line 917
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientCallable()Z

    move-result v11

    if-eqz v11, :cond_1a

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v11

    if-nez v11, :cond_1a

    .line 926
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVideoCall()Z

    move-result v11

    if-eqz v11, :cond_1a

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v11

    if-nez v11, :cond_1a

    .line 927
    const/4 v11, 0x0

    const/16 v12, 0x3f3

    const/4 v13, 0x0

    const v14, 0x7f0c022b

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 933
    :cond_1a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRilSmsTidMessage()Z

    move-result v11

    if-eqz v11, :cond_1b

    .line 934
    invoke-static/range {p3 .. p3}, Lcom/android/mms/util/TelephonyUtils;->isEnableLinkUrlService(Lcom/android/mms/ui/MessageItem;)Z

    move-result v11

    if-eqz v11, :cond_1b

    .line 935
    const/4 v11, 0x0

    const/16 v12, 0x44d

    const/4 v13, 0x0

    const v14, 0x7f0c0197

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 941
    :cond_1b
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v11

    if-eqz v11, :cond_1f

    .line 942
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "airplane_mode_on"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 944
    .local v2, airplane:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCopyToSim()Z

    move-result v11

    if-eqz v11, :cond_1e

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v11

    if-eqz v11, :cond_1e

    move-object/from16 v0, p3

    iget-wide v11, v0, Lcom/android/mms/ui/MessageItem;->mReserved:J

    const-wide/16 v13, 0x1

    cmp-long v11, v11, v13

    if-eqz v11, :cond_1e

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v11

    const/4 v12, 0x5

    if-ne v11, v12, :cond_1e

    invoke-static/range {p3 .. p3}, Lcom/android/mms/ui/MessageOptions;->isSingleSms(Lcom/android/mms/ui/MessageItem;)Z

    move-result v11

    if-eqz v11, :cond_1e

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_1c

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_1e

    :cond_1c
    if-nez v2, :cond_1e

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v11

    if-nez v11, :cond_1e

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRilSmsTidMessage()Z

    move-result v11

    if-eqz v11, :cond_1d

    invoke-static/range {p3 .. p3}, Lcom/android/mms/util/TelephonyUtils;->isEnableSpecificTidService(Lcom/android/mms/ui/MessageItem;)Z

    move-result v11

    if-nez v11, :cond_1e

    .line 954
    :cond_1d
    const/4 v11, 0x0

    const/16 v12, 0x407

    const/4 v13, 0x0

    const v14, 0x7f0c001d

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 957
    :cond_1e
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v11

    if-eqz v11, :cond_1f

    .line 958
    const/4 v11, 0x0

    const/16 v12, 0x441

    const/4 v13, 0x0

    const v14, 0x7f0c03a4

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 964
    .end local v2           #airplane:I
    :cond_1f
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveVMessage()Z

    move-result v11

    if-eqz v11, :cond_21

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v11

    if-nez v11, :cond_21

    .line 965
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v11

    if-eqz v11, :cond_21

    .line 966
    invoke-static/range {p3 .. p3}, Lcom/android/mms/ui/MessageOptions;->isSingleSms(Lcom/android/mms/ui/MessageItem;)Z

    move-result v11

    if-eqz v11, :cond_21

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isExternalSdCardMounted()Z

    move-result v11

    if-eqz v11, :cond_21

    move-object/from16 v0, p3

    iget-wide v11, v0, Lcom/android/mms/ui/MessageItem;->mReserved:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-nez v11, :cond_21

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_20

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_21

    .line 969
    :cond_20
    const/4 v11, 0x0

    const/16 v12, 0x408

    const/4 v13, 0x0

    const v14, 0x7f0c0264

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 976
    :cond_21
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackList()Z

    move-result v11

    if-eqz v11, :cond_22

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v11

    if-eqz v11, :cond_22

    .line 977
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v7

    .line 978
    .local v7, recipients:Lcom/android/mms/data/ContactList;
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v11

    if-lez v11, :cond_22

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v11

    if-nez v11, :cond_22

    invoke-virtual {v7}, Lcom/android/mms/data/ContactList;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_22

    .line 979
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/mms/data/Contact;

    invoke-virtual {v11}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_22

    .line 980
    const/4 v11, 0x0

    const/16 v12, 0x427

    const/4 v13, 0x0

    const v14, 0x7f0c02a4

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 985
    .end local v7           #recipients:Lcom/android/mms/data/ContactList;
    :cond_22
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v11

    if-nez v11, :cond_23

    .line 986
    const/4 v11, 0x0

    const/16 v12, 0x3f9

    const/4 v13, 0x0

    const v14, 0x7f0c000e

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 989
    :cond_23
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableReportAsSpam()Z

    move-result v11

    if-eqz v11, :cond_24

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v11

    if-eqz v11, :cond_24

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v11

    if-eqz v11, :cond_24

    .line 990
    const/4 v11, 0x0

    const/16 v12, 0x450

    const/4 v13, 0x0

    const v14, 0x7f0c044b

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 994
    :cond_24
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAllContextMenuInMsgViewer()Z

    move-result v11

    if-eqz v11, :cond_25

    .line 995
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v11

    if-nez v11, :cond_25

    .line 996
    const/4 v11, 0x0

    const/16 v12, 0x434

    const/4 v13, 0x0

    const v14, 0x7f0c0017

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1001
    :cond_25
    invoke-static {}, Lcom/android/mms/MmsConfig;->isDisableSaveRingtone()Z

    move-result v11

    if-eqz v11, :cond_26

    .line 1002
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v11

    if-eqz v11, :cond_26

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v11

    if-eqz v11, :cond_26

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p3

    iget-wide v12, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v11, v12, v13}, Lcom/android/mms/ui/MessageUtils;->isDrmRingtoneWithRights(Landroid/content/Context;J)Z

    move-result v11

    if-eqz v11, :cond_26

    .line 1004
    move-object/from16 v0, p3

    iget-wide v11, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-direct {p0, v11, v12}, Lcom/android/mms/ui/ComposeMenu;->getDrmMimeMenuStringRsrc(J)I

    move-result v9

    .line 1005
    .local v9, strResID:I
    if-lez v9, :cond_26

    .line 1006
    const/4 v11, 0x0

    const/16 v12, 0x43b

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v9}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1011
    .end local v9           #strResID:I
    :cond_26
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableTranslatorMenu()Z

    move-result v11

    if-eqz v11, :cond_29

    .line 1012
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v11

    if-eqz v11, :cond_27

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_28

    :cond_27
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v11

    if-eqz v11, :cond_29

    invoke-static/range {p3 .. p3}, Lcom/android/mms/ui/TranslateManager;->isTranslatableMms(Lcom/android/mms/ui/MessageItem;)Z

    move-result v11

    if-eqz v11, :cond_29

    :cond_28
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v11

    if-nez v11, :cond_29

    .line 1015
    const/4 v11, 0x0

    const/16 v12, 0x40c

    const/4 v13, 0x0

    const v14, 0x7f0c0179

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1017
    sget-object v11, Lcom/android/mms/ui/TranslateManager;->mSupportedLanguages:Ljava/util/ArrayList;

    if-nez v11, :cond_29

    .line 1018
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 1019
    .local v10, transIntent:Landroid/content/Intent;
    const-string v11, "com.sec.android.app.translator.GET_SUPPORTED_LANGUAGES"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1020
    const-string v11, "caller"

    const-string v12, "msg"

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1021
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11, v10}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1022
    const/16 v11, 0x40c

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1028
    .end local v10           #transIntent:Landroid/content/Intent;
    :cond_29
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMenuSetAsRingtone()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1029
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v11

    if-eqz v11, :cond_0

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v11}, Lcom/android/mms/model/SlideshowModel;->hasAudioInSlideshow()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1030
    const/4 v11, 0x0

    const/16 v12, 0x44f

    const/4 v13, 0x0

    const v14, 0x7f0c0436

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 796
    :cond_2a
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 797
    const/4 v11, 0x0

    const/16 v12, 0x401

    const/4 v13, 0x0

    const v14, 0x7f0c0091

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 822
    .restart local v4       #intent:Landroid/content/Intent;
    :cond_2b
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    const-class v12, Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {v4, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 823
    .restart local v4       #intent:Landroid/content/Intent;
    const/high16 v11, 0x2000

    invoke-virtual {v4, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 824
    const-string v11, "msgId"

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v12

    invoke-virtual {v4, v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 825
    const-string v11, "thread_id"

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v12

    invoke-virtual {v4, v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto/16 :goto_2

    .line 841
    .end local v4           #intent:Landroid/content/Intent;
    :cond_2c
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->getBodyAll()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_f

    .line 842
    const/4 v11, 0x0

    const/16 v12, 0x400

    const/4 v13, 0x0

    const v14, 0x7f0c043c

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 858
    :cond_2d
    const/4 v11, 0x0

    const/16 v12, 0x404

    const/4 v13, 0x0

    const v14, 0x7f0c043d

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 888
    :cond_2e
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v11

    if-eqz v11, :cond_16

    .line 890
    :try_start_0
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    sget-object v12, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p3

    iget-wide v13, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v12, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/mms/model/SlideshowModel;

    move-result-object v8

    .line 894
    .local v8, slideshow:Lcom/android/mms/model/SlideshowModel;
    if-eqz v8, :cond_16

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v11

    if-nez v11, :cond_16

    .line 895
    const/4 v11, 0x0

    const/16 v12, 0x40b

    const/4 v13, 0x0

    const v14, 0x7f0c011d

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v12, v13, v14}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    .line 898
    .end local v8           #slideshow:Lcom/android/mms/model/SlideshowModel;
    :catch_0
    move-exception v3

    .line 899
    .local v3, e:Lcom/google/android/mms/MmsException;
    const-string v11, "Mms/ComposerMenu"

    invoke-virtual {v3}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 32
    .parameter "item"

    .prologue
    .line 1571
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->closeOptionsMenu()V

    .line 1572
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 2088
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 1575
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->disableMultiMode(Z)Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isCopyToSimMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1576
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isCopyToSimMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1577
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x0

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->setCopyToSimModeLayout(ZZ)V

    .line 1593
    :cond_1
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 1579
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-boolean v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mIsHardKeyboardOpen:Z

    if-eqz v3, :cond_3

    .line 1580
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSipWithHardKeypad()V

    .line 1585
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    check-cast v3, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationComposer;->getNextSplitMode()I

    move-result v27

    .line 1587
    .local v27, splitMode:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x2

    move/from16 v0, v27

    if-ne v0, v3, :cond_4

    .line 1588
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->requestClose()V

    goto :goto_1

    .line 1582
    .end local v27           #splitMode:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    goto :goto_2

    .line 1590
    .restart local v27       #splitMode:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->close()V

    goto :goto_1

    .line 1596
    .end local v27           #splitMode:I
    :sswitch_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1597
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->hasLocationAttachment()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1598
    new-instance v13, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-direct {v13, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1600
    .local v13, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0c030f

    invoke-virtual {v13, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1601
    const v3, 0x7f0c031d

    invoke-virtual {v13, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1602
    const v3, 0x7f0c00ea

    new-instance v4, Lcom/android/mms/ui/ComposeMenu$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/mms/ui/ComposeMenu$2;-><init>(Lcom/android/mms/ui/ComposeMenu;)V

    invoke-virtual {v13, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1611
    const v3, 0x7f0c00eb

    new-instance v4, Lcom/android/mms/ui/ComposeMenu$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/mms/ui/ComposeMenu$3;-><init>(Lcom/android/mms/ui/ComposeMenu;)V

    invoke-virtual {v13, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1616
    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1623
    .end local v13           #builder:Landroid/app/AlertDialog$Builder;
    :goto_3
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1618
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x0

    const/16 v7, 0xd

    invoke-virtual {v3, v4, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->showAddAttachmentDialog(ZI)V

    goto :goto_3

    .line 1621
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x0

    const/16 v7, 0xd

    invoke-virtual {v3, v4, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->showAddAttachmentDialog(ZI)V

    goto :goto_3

    .line 1625
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->onMultiModeCancel()V

    .line 1626
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1628
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->onMultiModeOk()V

    .line 1629
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1631
    :sswitch_4
    const-string v3, "Mms/ComposerMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MENU_COPYTOSIM_CANCEL : getMenuCancel() = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->getMenuCancel()Landroid/view/MenuItem;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1633
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getMenuCancel()Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 1634
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getMenuCancel()Landroid/view/MenuItem;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1636
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isCopyToSimMode()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1637
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x0

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->setCopyToSimModeLayout(ZZ)V

    .line 1639
    :cond_8
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1641
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isCopyToSimMode()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1642
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getMultiCopyToSimMessage()Lcom/android/mms/ui/ComposeMultiCopyToSim;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMultiCopyToSim;->copySelectedMessages()V

    .line 1644
    :cond_9
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1649
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getMenuCombineFwdCancel()Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 1650
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getMenuCombineFwdCancel()Landroid/view/MenuItem;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1655
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectionMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_b

    .line 1656
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, -0x1

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->setSelectionModeLayout(IZ)V

    .line 1659
    :cond_b
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1661
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectionMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_c

    .line 1665
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->combineAndForwardMessage()V

    .line 1667
    :cond_c
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1670
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->previewSlideshow()V

    .line 1671
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1674
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    .line 1675
    .local v14, config:Landroid/content/res/Configuration;
    invoke-static {}, Lcom/android/mms/ui/SipHandler;->isSipVisible()Z

    move-result v3

    if-eqz v3, :cond_d

    iget v3, v14, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_d

    .line 1676
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    invoke-virtual {v3}, Lcom/android/mms/ui/SipHandler;->hideSip()V

    .line 1678
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->showSubjectEditor(Z)V

    .line 1679
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getSubjectEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 1681
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v30

    .line 1682
    .local v30, workingMesasge:Lcom/android/mms/data/WorkingMessage;
    if-eqz v30, :cond_f

    .line 1683
    const-string v3, ""

    const/4 v4, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v4}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 1685
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1686
    const/16 v23, 0x0

    .line 1687
    .local v23, messageUri:Landroid/net/Uri;
    const/4 v3, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    move-result-object v23

    .line 1688
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v24

    .line 1689
    .local v24, msgListAdpater:Lcom/android/mms/ui/MessageListAdapter;
    if-eqz v24, :cond_e

    .line 1690
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->setWorkingMessageUri(Landroid/net/Uri;)V

    .line 1695
    .end local v23           #messageUri:Landroid/net/Uri;
    .end local v24           #msgListAdpater:Lcom/android/mms/ui/MessageListAdapter;
    :cond_e
    :goto_4
    sget-boolean v3, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v3, :cond_f

    .line 1696
    const/4 v3, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    .line 1701
    :cond_f
    invoke-static {}, Lcom/android/mms/ui/SipHandler;->isSipVisible()Z

    move-result v3

    if-nez v3, :cond_10

    .line 1704
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    if-eqz v3, :cond_10

    .line 1705
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    invoke-interface {v3}, Lcom/android/mms/ui/OnEventListener;->onEvent()V

    .line 1707
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getTextOnRichContainer()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->showSizeString(Ljava/lang/CharSequence;[I)V

    .line 1709
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/mms/ui/ComposeMenu$4;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/mms/ui/ComposeMenu$4;-><init>(Lcom/android/mms/ui/ComposeMenu;)V

    const-wide/16 v7, 0x64

    invoke-virtual {v3, v4, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1719
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1693
    :cond_11
    const/4 v3, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    goto :goto_4

    .line 1722
    .end local v14           #config:Landroid/content/res/Configuration;
    .end local v30           #workingMesasge:Lcom/android/mms/data/WorkingMessage;
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v18

    .line 1723
    .local v18, index:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->showSubjectEditor(Z)V

    .line 1724
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v7}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 1725
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    .line 1727
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getTextOnRichContainer()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->showSizeString(Ljava/lang/CharSequence;[I)V

    .line 1729
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1730
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getReplyAllIndividualMsgBttn()Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_12

    .line 1731
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getReplyAllIndividualMsgBttn()Landroid/widget/TextView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1733
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getReplyAllGroupMsgBttn()Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 1734
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getReplyAllGroupMsgBttn()Landroid/widget/TextView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1736
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getReplyAllInfoButton()Landroid/widget/ImageButton;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 1737
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getReplyAllInfoButton()Landroid/widget/ImageButton;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1742
    :cond_14
    if-lez v18, :cond_15

    .line 1743
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(I)V

    .line 1746
    :cond_15
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1749
    .end local v18           #index:I
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getHandleComposerAttachment()Lcom/android/mms/util/HandleComposerAttachment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/util/HandleComposerAttachment;->addnamecard()V

    .line 1750
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1754
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v3

    if-eqz v3, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    if-eqz v3, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-lez v3, :cond_16

    .line 1756
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/mms/data/Contact;

    .line 1757
    .local v12, blockContact:Lcom/android/mms/data/Contact;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1758
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v12}, Lcom/android/mms/ui/MessageUtils;->createblockNumberSettingDialog(Landroid/content/Context;Lcom/android/mms/data/Contact;)V

    .line 1762
    .end local v12           #blockContact:Lcom/android/mms/data/Contact;
    :cond_16
    :goto_5
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1760
    .restart local v12       #blockContact:Lcom/android/mms/data/Contact;
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMenu;->confirmRegisterAsSpamNumber()V

    goto :goto_5

    .line 1765
    .end local v12           #blockContact:Lcom/android/mms/data/Contact;
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/mms/data/Contact;

    .line 1766
    .local v29, unblockContact:Lcom/android/mms/data/Contact;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual/range {v29 .. v29}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/ui/MessageUtils;->unregisterSpamNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1767
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0c0409

    const/4 v7, 0x0

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1768
    :cond_18
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1770
    .end local v29           #unblockContact:Lcom/android/mms/data/Contact;
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->discard()V

    .line 1771
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    .line 1773
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    check-cast v3, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationComposer;->getNextSplitMode()I

    move-result v27

    .line 1774
    .restart local v27       #splitMode:I
    const/4 v3, 0x2

    move/from16 v0, v27

    if-ne v0, v3, :cond_19

    .line 1775
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/mms/ui/ConversationComposer;->setFromSplitDiscard(Z)V

    .line 1778
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->requestClose()V

    .line 1779
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1781
    .end local v27           #splitMode:I
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isPreparedForSending()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1782
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->confirmSendMessageIfNeeded()V

    .line 1784
    :cond_1a
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1786
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->onSearchRequested()Z

    .line 1787
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1790
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1c

    .line 1794
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->removeAnimationForSingleMsg()V

    .line 1796
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v3

    if-nez v3, :cond_1b

    .line 1797
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1798
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    .line 1800
    .local v28, threadId:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getBackgroundQueryHandler()Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;

    move-result-object v3

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const/16 v4, 0x2538

    invoke-static {v3, v7, v8, v4}, Lcom/android/mms/data/Conversation;->startQueryHaveLockedMessages(Landroid/content/AsyncQueryHandler;JI)V

    .line 1813
    .end local v28           #threadId:Ljava/lang/Long;
    :goto_6
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1805
    :cond_1c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1808
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->saveDraftAndReset(Z)Z

    .line 1809
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->showAttachListPanel()V

    .line 1811
    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x1

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->enableMultiMode(IZ)Z

    goto :goto_6

    .line 1815
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x4

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->enableMultiMode(IZ)Z

    .line 1816
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1819
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->startQueryMultiLockedMessages()V

    .line 1820
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x2

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->enableMultiMode(IZ)Z

    .line 1821
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1823
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    new-instance v4, Lcom/android/mms/ui/ComposeMenu$5;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/mms/ui/ComposeMenu$5;-><init>(Lcom/android/mms/ui/ComposeMenu;)V

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->exitComposeMessageActivity(Ljava/lang/Runnable;)V

    .line 1828
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1831
    :sswitch_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    .line 1832
    .local v25, noticeTime:J
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/mms/ui/ComposeMenu;->m_lOldMenuTouchTime:J

    sub-long v3, v25, v3

    const-wide/16 v7, 0x3e8

    cmp-long v3, v3, v7

    if-lez v3, :cond_1e

    .line 1833
    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/ComposeMenu;->m_lOldMenuTouchTime:J

    .line 1834
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    invoke-virtual {v3}, Lcom/android/mms/ui/SipHandler;->hideSip()V

    .line 1835
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->dialRecipient()V

    .line 1837
    :cond_1e
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1840
    .end local v25           #noticeTime:J
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    invoke-virtual {v3}, Lcom/android/mms/ui/SipHandler;->hideSip()V

    .line 1841
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->videoCallRecipient()V

    .line 1842
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1844
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->showSmileyDialog()V

    .line 1845
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1848
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v21

    .line 1849
    .local v21, list:Lcom/android/mms/data/ContactList;
    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_20

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/data/Contact;

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 1850
    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/data/Contact;

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v16

    .line 1851
    .local v16, contactUri:Landroid/net/Uri;
    new-instance v19, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1852
    .local v19, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getContactReplacePackageAs()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.jcontacts"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1853
    const-string v3, "com.android.jcontacts"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1855
    :cond_1f
    const/high16 v3, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1856
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Lcom/android/mms/util/PackageInfo;->startActivity(Landroid/app/Fragment;Landroid/content/Intent;)Z

    .line 1858
    .end local v16           #contactUri:Landroid/net/Uri;
    .end local v19           #intent:Landroid/content/Intent;
    :cond_20
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1863
    .end local v21           #list:Lcom/android/mms/data/ContactList;
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->showAddtextDialog()V

    .line 1864
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1867
    :sswitch_1a
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v15

    .line 1868
    .local v15, contackIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3, v15}, Lcom/android/mms/ui/ComposeMessageFragment;->setContactIntent(Landroid/content/Intent;)V

    .line 1869
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/16 v4, 0x1d

    invoke-virtual {v3, v15, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1870
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    .line 1871
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1875
    .end local v15           #contackIntent:Landroid/content/Intent;
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->showChooseContactDialog()V

    .line 1876
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1879
    :sswitch_1c
    const/4 v6, 0x0

    .line 1880
    .local v6, second:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    .line 1881
    const/4 v10, 0x0

    .line 1882
    .local v10, title:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    const v7, 0x7f0c0211

    invoke-virtual {v4, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/MmsRichContainer;->getTotalPageCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1886
    new-instance v5, Lcom/android/mms/ui/ComposeMenu$6;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/mms/ui/ComposeMenu$6;-><init>(Lcom/android/mms/ui/ComposeMenu;)V

    .line 1895
    .local v5, numberSetListener:Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->getDuration()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 1901
    const/4 v3, 0x0

    div-int/lit16 v4, v6, 0x3e8

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1903
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result v3

    if-ge v6, v3, :cond_22

    .line 1904
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result v6

    .line 1909
    :cond_21
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v31, v0

    new-instance v3, Lcom/android/mms/ui/MessagePickerDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/mms/ui/ComposeMenu;->mMaximumSlideElementDuration:I

    const/4 v9, -0x1

    const/4 v11, 0x0

    invoke-direct/range {v3 .. v11}, Lcom/android/mms/ui/MessagePickerDialog;-><init>(Landroid/content/Context;Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;IIIILjava/lang/String;I)V

    move-object/from16 v0, v31

    iput-object v3, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    .line 1911
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    sget-object v4, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/MessagePickerDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1913
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/mms/ui/ComposeMenu$7;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/mms/ui/ComposeMenu$7;-><init>(Lcom/android/mms/ui/ComposeMenu;)V

    const-wide/16 v7, 0xc8

    invoke-virtual {v3, v4, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1923
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1897
    :catch_0
    move-exception v17

    .line 1898
    .local v17, e:Ljava/lang/NullPointerException;
    const-string v3, "Mms/ComposerMenu"

    const-string v4, "NullPointerException !!!"

    move-object/from16 v0, v17

    invoke-static {v3, v4, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1899
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1905
    .end local v17           #e:Ljava/lang/NullPointerException;
    :cond_22
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/ui/ComposeMenu;->mMaximumSlideElementDuration:I

    if-le v6, v3, :cond_21

    .line 1906
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/mms/ui/ComposeMenu;->mMaximumSlideElementDuration:I

    goto :goto_7

    .line 1927
    .end local v5           #numberSetListener:Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;
    .end local v6           #second:I
    .end local v10           #title:Ljava/lang/String;
    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->showLayoutSelectorDialog()V

    .line 1928
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1931
    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v3

    add-int/lit8 v22, v3, 0x1

    .line 1932
    .local v22, location:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/android/mms/data/WorkingMessage;->addSlide(I)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 1933
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    const/16 v7, 0x21

    invoke-virtual {v3, v4, v7}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    .line 1935
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v3

    const/4 v4, 0x0

    move/from16 v0, v22

    invoke-virtual {v3, v0, v4}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    .line 1938
    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    if-eqz v3, :cond_24

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 1939
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 1940
    sget-boolean v3, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v3, :cond_24

    .line 1941
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    .line 1945
    :cond_24
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1946
    const/16 v23, 0x0

    .line 1947
    .restart local v23       #messageUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->getMessageUri()Landroid/net/Uri;

    move-result-object v23

    .line 1949
    if-nez v23, :cond_25

    .line 1950
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    move-result-object v23

    .line 1951
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v24

    .line 1952
    .restart local v24       #msgListAdpater:Lcom/android/mms/ui/MessageListAdapter;
    if-eqz v24, :cond_25

    .line 1953
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->setWorkingMessageUri(Landroid/net/Uri;)V

    .line 1958
    .end local v23           #messageUri:Landroid/net/Uri;
    .end local v24           #msgListAdpater:Lcom/android/mms/ui/MessageListAdapter;
    :cond_25
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 1959
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->refreshSignatureInEditor(Ljava/lang/String;)V

    .line 1961
    :cond_26
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V

    .line 1962
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1967
    .end local v22           #location:I
    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    if-eqz v3, :cond_27

    .line 1968
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v22

    .line 1969
    .restart local v22       #location:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/android/mms/data/WorkingMessage;->removeSlide(I)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 1970
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/android/mms/ui/MmsRichContainer;->removePage(I)V

    .line 1971
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getTextOnRichContainer()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->showSizeString(Ljava/lang/CharSequence;[I)V

    .line 1972
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    const/16 v7, 0x23

    invoke-virtual {v3, v4, v7}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    .line 1973
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V

    .line 1976
    .end local v22           #location:I
    :cond_27
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1981
    :sswitch_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->copytoSIM()V

    .line 1982
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1985
    :sswitch_21
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 1986
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->startMessageTransmitSettingsActivity(Z)V

    .line 1990
    :goto_8
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1988
    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->startMessageReservedSettingActivity(Z)V

    goto :goto_8

    .line 1993
    :sswitch_22
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x3

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->enableMultiMode(IZ)Z

    .line 1994
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2001
    :sswitch_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x1

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->setSelectionModeLayout(IZ)V

    .line 2002
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2007
    :sswitch_24
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->showPriorityLevel()V

    .line 2008
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2013
    :sswitch_25
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMenu;->AddRecipent()V

    .line 2014
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2018
    :sswitch_26
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isWorthSaving()Z

    move-result v3

    if-nez v3, :cond_29

    .line 2019
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0c03fe

    const/4 v7, 0x0

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 2020
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2023
    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 2024
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isValidRecipientEdier()Z

    move-result v3

    if-nez v3, :cond_2a

    .line 2025
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2028
    :cond_2a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->noRecipientsInEditor()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 2029
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipientEditText()Landroid/widget/EditText;

    move-result-object v3

    if-eqz v3, :cond_2b

    .line 2030
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipientEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 2032
    :cond_2b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0c0181

    const/4 v7, 0x0

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 2054
    :goto_9
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2034
    :cond_2c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 2035
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->saveDraftAndReset(Z)Z

    .line 2037
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isExitOnSent()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 2038
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    new-instance v4, Lcom/android/mms/ui/ComposeMenu$8;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/mms/ui/ComposeMenu$8;-><init>(Lcom/android/mms/ui/ComposeMenu;)V

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->exitComposeMessageActivity(Ljava/lang/Runnable;)V

    goto :goto_9

    .line 2044
    :cond_2d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->showAttachListPanel()V

    goto :goto_9

    .line 2047
    :cond_2e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    new-instance v4, Lcom/android/mms/ui/ComposeMenu$9;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/mms/ui/ComposeMenu$9;-><init>(Lcom/android/mms/ui/ComposeMenu;)V

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->exitComposeMessageActivity(Ljava/lang/Runnable;)V

    goto :goto_9

    .line 2060
    :sswitch_27
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->composeNewMessage(Landroid/app/Activity;)V

    .line 2061
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2064
    :sswitch_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->startSearchMenu(Landroid/app/Activity;)V

    .line 2065
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2072
    :sswitch_29
    new-instance v20, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    const-class v4, Lcom/android/mms/ui/MessagingPreferenceActivity;

    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2073
    .local v20, intentForSetting:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivity(Landroid/content/Intent;)V

    .line 2074
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2078
    .end local v20           #intentForSetting:Landroid/content/Intent;
    :sswitch_2a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getTranslateManager()Lcom/android/mms/ui/TranslateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/TranslateManager;->hasSamsungAccount()Z

    move-result v3

    if-nez v3, :cond_2f

    .line 2079
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getTranslateManager()Lcom/android/mms/ui/TranslateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/TranslateManager;->showSignInSamsungAccount(Landroid/content/Context;)V

    .line 2083
    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    invoke-virtual {v3}, Lcom/android/mms/ui/SipHandler;->hideSip()V

    .line 2084
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2081
    :cond_2f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getTranslateManager()Lcom/android/mms/ui/TranslateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/TranslateManager;->showTranslateDialog(Landroid/content/Context;)V

    goto :goto_a

    .line 1572
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_9
        0x3ea -> :sswitch_11
        0x3eb -> :sswitch_13
        0x3ec -> :sswitch_e
        0x3ed -> :sswitch_f
        0x3ee -> :sswitch_15
        0x3ef -> :sswitch_14
        0x3f1 -> :sswitch_19
        0x3f2 -> :sswitch_a
        0x3f3 -> :sswitch_16
        0x3f4 -> :sswitch_18
        0x3fb -> :sswitch_10
        0x402 -> :sswitch_17
        0x403 -> :sswitch_1a
        0x406 -> :sswitch_1b
        0x409 -> :sswitch_8
        0x40a -> :sswitch_2a
        0x410 -> :sswitch_1c
        0x41c -> :sswitch_1d
        0x41d -> :sswitch_1e
        0x41e -> :sswitch_1f
        0x427 -> :sswitch_c
        0x428 -> :sswitch_21
        0x42c -> :sswitch_22
        0x42d -> :sswitch_b
        0x42e -> :sswitch_24
        0x42f -> :sswitch_1
        0x430 -> :sswitch_2
        0x431 -> :sswitch_3
        0x435 -> :sswitch_d
        0x436 -> :sswitch_11
        0x43a -> :sswitch_25
        0x43c -> :sswitch_27
        0x43d -> :sswitch_28
        0x43e -> :sswitch_29
        0x440 -> :sswitch_15
        0x442 -> :sswitch_12
        0x445 -> :sswitch_20
        0x446 -> :sswitch_4
        0x447 -> :sswitch_5
        0x448 -> :sswitch_23
        0x449 -> :sswitch_7
        0x44a -> :sswitch_6
        0x44b -> :sswitch_26
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 25
    .parameter "menu"

    .prologue
    .line 1051
    const-string v20, "Mms/ComposerMenu"

    const-string v21, "onPrepareOptionsMenu()"

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ConversationComposer;->getConversationListFragment()Lcom/android/mms/ui/ConversationListFragment;

    move-result-object v6

    .line 1056
    .local v6, conversationList:Lcom/android/mms/ui/ConversationListFragment;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationListFragment;->isDeleteMode()Z

    move-result v20

    if-nez v20, :cond_0

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationListFragment;->isMoveMode()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 1057
    :cond_0
    const-string v20, "Mms/ComposerMenu"

    const-string v21, "onPrepareOptionsMenu() Already delete or move mode"

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1539
    :cond_1
    :goto_0
    return-void

    .line 1061
    :cond_2
    invoke-interface/range {p1 .. p1}, Landroid/view/Menu;->clear()V

    .line 1063
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getIsMultiMode()Z

    move-result v20

    if-eqz v20, :cond_6

    .line 1064
    const/16 v20, 0x0

    const/16 v21, 0x430

    const/16 v22, 0x0

    const v23, 0x7f0c017c

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    .line 1065
    .local v10, itemCancel:Landroid/view/MenuItem;
    const/16 v20, 0x0

    const/16 v21, 0x431

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/ui/ComposeMessageFragment;->getMultiModeOkStringId()I

    move-result v23

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v11

    .line 1066
    .local v11, itemOk:Landroid/view/MenuItem;
    const/16 v20, 0x6

    move/from16 v0, v20

    invoke-interface {v10, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1067
    const/16 v20, 0x6

    move/from16 v0, v20

    invoke-interface {v11, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1069
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getIsLandscape()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 1070
    const v20, 0x7f02022c

    move/from16 v0, v20

    invoke-interface {v10, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1071
    const v20, 0x7f02022d

    move/from16 v0, v20

    invoke-interface {v11, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1074
    :cond_3
    const/16 v20, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->getMultiMode()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 1075
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-interface {v11, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1084
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lcom/android/mms/ui/ComposeMessageFragment;->setMenuCancel(Landroid/view/MenuItem;)V

    .line 1085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/android/mms/ui/ComposeMessageFragment;->setMenuDone(Landroid/view/MenuItem;)V

    goto/16 :goto_0

    .line 1077
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v20

    if-eqz v20, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/MessageListAdapter;->getCheckedCount()I

    move-result v20

    if-lez v20, :cond_5

    .line 1078
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-interface {v11, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1080
    :cond_5
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v11, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1090
    .end local v10           #itemCancel:Landroid/view/MenuItem;
    .end local v11           #itemOk:Landroid/view/MenuItem;
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCombineAndForwardMenu()Z

    move-result v20

    if-eqz v20, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectionMode:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    .line 1091
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x44a

    const/16 v23, 0x0

    const v24, 0x7f0c017c

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->setMenuCombineFwdCancel(Landroid/view/MenuItem;)V

    .line 1092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getMenuCombineFwdCancel()Landroid/view/MenuItem;

    move-result-object v20

    const/16 v21, 0x6

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x449

    const/16 v23, 0x0

    const v24, 0x7f0c0016

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->setMenuCombineFwdDone(Landroid/view/MenuItem;)V

    .line 1095
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getMenuCombineFwdDone()Landroid/view/MenuItem;

    move-result-object v20

    const/16 v21, 0x6

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getIsLandscape()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 1098
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getMenuCombineFwdCancel()Landroid/view/MenuItem;

    move-result-object v20

    const v21, 0x7f02022c

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1099
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getMenuCombineFwdDone()Landroid/view/MenuItem;

    move-result-object v20

    const v21, 0x7f02022d

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1102
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v20

    if-eqz v20, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/MessageListAdapter;->getCheckedCount()I

    move-result v20

    if-lez v20, :cond_8

    .line 1103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getMenuCombineFwdDone()Landroid/view/MenuItem;

    move-result-object v20

    const/16 v21, 0x1

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 1105
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getMenuCombineFwdDone()Landroid/view/MenuItem;

    move-result-object v20

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 1112
    :cond_9
    const/4 v13, 0x0

    .line 1113
    .local v13, messageCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v20

    if-eqz v20, :cond_a

    .line 1114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v13

    .line 1116
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->isUnknownAddressMessage()Z

    move-result v20

    if-eqz v20, :cond_c

    .line 1117
    invoke-interface/range {p1 .. p1}, Landroid/view/Menu;->clear()V

    .line 1118
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isWVGAModel()Z

    move-result v20

    if-eqz v20, :cond_b

    .line 1119
    const/16 v20, 0x0

    const/16 v21, 0x436

    const/16 v22, 0x0

    const v23, 0x7f0c0093

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v20

    const v21, 0x7f020095

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v20

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_0

    .line 1121
    :cond_b
    const/16 v20, 0x0

    const/16 v21, 0x436

    const/16 v22, 0x0

    const v23, 0x7f0c007b

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v20

    const v21, 0x7f020095

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v20

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMenuItemActionForOrientation()I

    move-result v21

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_0

    .line 1142
    :cond_c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAddSendOptionInComposer()Z

    move-result v20

    if-eqz v20, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->isPreparedForSendingMenu()Z

    move-result v20

    if-eqz v20, :cond_e

    .line 1143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/data/Conversation;->isWapPushMessage()Z

    move-result v20

    if-nez v20, :cond_e

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v20

    if-eqz v20, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/data/WorkingMessage;->hasOnlySignatureText()Z

    move-result v20

    if-nez v20, :cond_e

    .line 1144
    :cond_d
    const/16 v20, 0x0

    const/16 v21, 0x3ed

    const/16 v22, 0x0

    const v23, 0x7f0c002d

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v20

    const v21, 0x7f0200b8

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1149
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v5

    .line 1150
    .local v5, conversation:Lcom/android/mms/data/Conversation;
    invoke-virtual {v5}, Lcom/android/mms/data/Conversation;->isCbSms()Z

    move-result v20

    if-nez v20, :cond_f

    invoke-virtual {v5}, Lcom/android/mms/data/Conversation;->isWapPushMessage()Z

    move-result v20

    if-nez v20, :cond_f

    invoke-virtual {v5}, Lcom/android/mms/data/Conversation;->isCmasMsg()Z

    move-result v20

    if-eqz v20, :cond_14

    .line 1151
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ConversationComposer;->getIsSplitViewMode()Z

    move-result v20

    if-eqz v20, :cond_12

    .line 1152
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v13, v0, :cond_11

    .line 1153
    const/16 v20, 0x0

    const/16 v21, 0x436

    const/16 v22, 0x0

    const v23, 0x7f0c0093

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v20

    const v21, 0x7f020095

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1165
    :goto_2
    const/16 v20, 0x1

    move/from16 v0, v20

    if-le v13, v0, :cond_1

    .line 1167
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiLockMenu()Z

    move-result v20

    if-eqz v20, :cond_10

    .line 1168
    const/16 v20, 0x0

    const/16 v21, 0x3eb

    const/16 v22, 0x0

    const v23, 0x7f0c0098

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v20

    const v21, 0x7f0200a4

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1171
    :cond_10
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 1172
    const/16 v20, 0x0

    const/16 v21, 0x442

    const/16 v22, 0x0

    const v23, 0x7f0c03a3

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v20

    const v21, 0x7f0200b5

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 1155
    :cond_11
    const/16 v20, 0x0

    const/16 v21, 0x436

    const/16 v22, 0x0

    const v23, 0x7f0c0094

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v20

    const v21, 0x7f020095

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_2

    .line 1158
    :cond_12
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isWVGAModel()Z

    move-result v20

    if-eqz v20, :cond_13

    .line 1159
    const/16 v20, 0x0

    const/16 v21, 0x436

    const/16 v22, 0x0

    const v23, 0x7f0c0093

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v20

    const v21, 0x7f020095

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v20

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_2

    .line 1161
    :cond_13
    const/16 v20, 0x0

    const/16 v21, 0x436

    const/16 v22, 0x0

    const v23, 0x7f0c007b

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v20

    const v21, 0x7f020095

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v20

    const/16 v21, 0x6

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_2

    .line 1191
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/MessageUtils;->isAliasAddress(Lcom/android/mms/data/ContactList;)Z

    move-result v20

    if-nez v20, :cond_16

    .line 1192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientCallable()Z

    move-result v20

    if-eqz v20, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v20

    if-nez v20, :cond_16

    .line 1193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/mms/util/TelephonyUtils;->isVoiceCallAvailabe(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_15

    .line 1195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ConversationComposer;->isSearchMode()Z

    move-result v20

    if-nez v20, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ConversationComposer;->getIsSplitViewMode()Z

    move-result v20

    if-nez v20, :cond_34

    .line 1196
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVoLTE()Z

    move-result v20

    if-eqz v20, :cond_33

    .line 1197
    new-instance v12, Lcom/android/mms/VoLTEStateTracker;

    invoke-direct {v12}, Lcom/android/mms/VoLTEStateTracker;-><init>()V

    .line 1198
    .local v12, mVoLTEStateTracker:Lcom/android/mms/VoLTEStateTracker;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lcom/android/mms/VoLTEStateTracker;->isVolteEnabled(Landroid/content/Context;)Z

    move-result v9

    .line 1200
    .local v9, isVoLTEAvailable:Z
    if-eqz v9, :cond_32

    .line 1201
    const/16 v20, 0x0

    const/16 v21, 0x440

    const/16 v22, 0x0

    const v23, 0x7f0c0005

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v20

    const v21, 0x7f020282

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v20

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMenuItemActionForOrientation()I

    move-result v21

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1218
    .end local v9           #isVoLTEAvailable:Z
    .end local v12           #mVoLTEStateTracker:Lcom/android/mms/VoLTEStateTracker;
    :cond_15
    :goto_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVideoCall()Z

    move-result v20

    if-eqz v20, :cond_16

    .line 1219
    const/16 v20, 0x0

    const/16 v21, 0x3f3

    const/16 v22, 0x0

    const v23, 0x7f0c022b

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v20

    const v21, 0x7f0200bd

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1225
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v20

    if-nez v20, :cond_17

    .line 1226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ConversationComposer;->getIsSplitViewMode()Z

    move-result v20

    if-nez v20, :cond_17

    .line 1227
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isWVGAModel()Z

    move-result v20

    if-eqz v20, :cond_35

    .line 1228
    const/16 v20, 0x0

    const/16 v21, 0x436

    const/16 v22, 0x0

    const v23, 0x7f0c0093

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v20

    const v21, 0x7f020095

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v20

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1236
    :cond_17
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->isBottomPanelVisible()Z

    move-result v20

    if-eqz v20, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v20

    if-nez v20, :cond_19

    .line 1237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->hasFocusOnRichContainer()Z

    move-result v20

    if-nez v20, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getSubjectEditText()Landroid/widget/EditText;

    move-result-object v20

    if-eqz v20, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getSubjectEditText()Landroid/widget/EditText;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/EditText;->isFocused()Z

    move-result v20

    if-eqz v20, :cond_19

    .line 1239
    :cond_18
    const/16 v20, 0x0

    const/16 v21, 0x402

    const/16 v22, 0x0

    const v23, 0x7f0c00d1

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v20

    const v21, 0x7f0200a1

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1245
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->isBottomPanelVisible()Z

    move-result v20

    if-eqz v20, :cond_1a

    .line 1246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->hasFocusOnRichContainer()Z

    move-result v20

    if-eqz v20, :cond_1a

    .line 1247
    const/16 v20, 0x0

    const/16 v21, 0x3f1

    const/16 v22, 0x0

    const v23, 0x7f0c011b

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v20

    const v21, 0x7f02008a

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1253
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v20

    if-eqz v20, :cond_1d

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v20

    if-eqz v20, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v20

    if-nez v20, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v20

    if-nez v20, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v20

    if-eqz v20, :cond_1d

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v20

    if-eqz v20, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v20

    if-eqz v20, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->isNewCompose()Z

    move-result v20

    if-eqz v20, :cond_1d

    .line 1257
    :cond_1c
    const/16 v20, 0x0

    const/16 v21, 0x409

    const/16 v22, 0x0

    const v23, 0x7f0c0047

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v20

    const v21, 0x7f0200aa

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1264
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    const-string v21, "com.android.contacts"

    invoke-static/range {v20 .. v21}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    const-string v21, "com.android.jcontacts"

    invoke-static/range {v20 .. v21}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v20

    if-nez v20, :cond_20

    .line 1267
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v14

    .line 1268
    .local v14, recipients:Lcom/android/mms/data/ContactList;
    invoke-virtual {v14}, Lcom/android/mms/data/ContactList;->size()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1f

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/mms/data/Contact;

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v20

    if-eqz v20, :cond_1f

    .line 1269
    const/16 v20, 0x0

    const/16 v21, 0x3f4

    const/16 v22, 0x0

    const v23, 0x7f0c004c

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v20

    const v21, 0x7f020090

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1273
    :cond_1f
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/ui/ComposeMenu;->buildAddAddressToContactMenuItem(Landroid/view/Menu;)V

    .line 1277
    .end local v14           #recipients:Lcom/android/mms/data/ContactList;
    :cond_20
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v20

    if-eqz v20, :cond_39

    .line 1278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->hasFocusOnRichContainer()Z

    move-result v20

    if-eqz v20, :cond_21

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v20

    if-eqz v20, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v20

    if-nez v20, :cond_21

    .line 1279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v20

    if-eqz v20, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/model/SlideshowModel;->hasLocation()Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_36

    .line 1316
    :cond_21
    :goto_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v20

    if-eqz v20, :cond_22

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSubject()Z

    move-result v20

    if-eqz v20, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v20

    if-nez v20, :cond_22

    .line 1318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->isSubjectEditorVisible()Z

    move-result v20

    if-nez v20, :cond_3c

    .line 1319
    const/16 v20, 0x0

    const/16 v21, 0x3e8

    const/16 v22, 0x0

    const v23, 0x7f0c0028

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v20

    const v21, 0x7f020089

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1329
    :cond_22
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v20

    if-eqz v20, :cond_24

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v20

    if-eqz v20, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v20

    if-nez v20, :cond_24

    .line 1330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->hasFocusOnRichContainer()Z

    move-result v20

    if-eqz v20, :cond_24

    .line 1331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v20

    if-eqz v20, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v20

    if-lez v20, :cond_24

    .line 1333
    const/16 v16, 0x0

    .line 1335
    .local v16, second:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->getRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/model/SlideModel;->getDuration()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v16

    .line 1341
    :goto_7
    const/16 v20, 0x0

    move/from16 v0, v16

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 1343
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result v20

    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_23

    .line 1344
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result v16

    .line 1347
    :cond_23
    const/16 v20, 0x1

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_3d

    .line 1348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    const v21, 0x7f0c0048

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 1354
    .local v18, title:Ljava/lang/String;
    :goto_8
    const/16 v20, 0x0

    const/16 v21, 0x410

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v4, v18

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v20

    const v21, 0x7f02009a

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1359
    .end local v16           #second:I
    .end local v18           #title:Ljava/lang/String;
    :cond_24
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v20

    if-eqz v20, :cond_3f

    .line 1360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v20

    if-eqz v20, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->hasFocusOnRichContainer()Z

    move-result v20

    if-eqz v20, :cond_25

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v20

    if-eqz v20, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v20

    if-eqz v20, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/model/SlideshowModel;->hasLocation()Z

    move-result v20

    if-nez v20, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v20

    if-nez v20, :cond_25

    .line 1365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/MmsRichContainer;->getMMSLayout()Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3e

    .line 1366
    const v15, 0x7f0c0049

    .line 1370
    .local v15, resId:I
    :goto_9
    const/16 v20, 0x0

    const/16 v21, 0x41c

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-interface {v0, v1, v2, v3, v15}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v20

    const v21, 0x7f0200a8

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1387
    .end local v15           #resId:I
    :cond_25
    :goto_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAddRecipients()Z

    move-result v20

    if-eqz v20, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->isNewCompose()Z

    move-result v20

    if-nez v20, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v20

    if-nez v20, :cond_26

    .line 1388
    const/16 v20, 0x0

    const/16 v21, 0x43a

    const/16 v22, 0x0

    const v23, 0x7f0c036c

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v20

    const v21, 0x7f020087

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1393
    :cond_26
    invoke-static {}, Lcom/android/mms/MmsConfig;->getmEnableAddContactIn1stDepthComposerOption()Z

    move-result v20

    if-eqz v20, :cond_27

    .line 1394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->hasFocusOnRichContainer()Z

    move-result v20

    if-eqz v20, :cond_27

    .line 1395
    const/16 v20, 0x0

    const/16 v21, 0x42d

    const/16 v22, 0x0

    const v23, 0x7f0c0356

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v20

    const v21, 0x7f02027e

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1400
    :cond_27
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v20

    if-eqz v20, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/data/Conversation;->isWapPushMessage()Z

    move-result v20

    if-nez v20, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/data/Conversation;->isCbSms()Z

    move-result v20

    if-nez v20, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v20

    if-nez v20, :cond_28

    .line 1402
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v20

    if-eqz v20, :cond_41

    .line 1403
    const/16 v20, 0x0

    const/16 v21, 0x428

    const/16 v22, 0x0

    const v23, 0x7f0c040d

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v20

    const v21, 0x7f0200b6

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1412
    :cond_28
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v20

    if-eqz v20, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v20

    if-lez v20, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v20

    if-nez v20, :cond_29

    .line 1414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v7

    .line 1415
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_29

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v20

    if-lez v20, :cond_29

    .line 1416
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_42

    .line 1418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ConversationComposer;->getIsSplitViewMode()Z

    move-result v20

    if-eqz v20, :cond_29

    .line 1419
    const/16 v20, 0x0

    const/16 v21, 0x3ea

    const/16 v22, 0x0

    const v23, 0x7f0c0093

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v20

    const v21, 0x7f020095

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1442
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_29
    :goto_c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiCopyToSIM()Z

    move-result v20

    if-eqz v20, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v20

    if-nez v20, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v20

    if-lez v20, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v20

    if-nez v20, :cond_2a

    .line 1444
    const/16 v20, 0x0

    const/16 v21, 0x445

    const/16 v22, 0x0

    const v23, 0x7f0c001d

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v20

    const v21, 0x7f020094

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1449
    :cond_2a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v20

    if-eqz v20, :cond_2b

    .line 1451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v20

    if-eqz v20, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v20

    if-lez v20, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v20

    if-nez v20, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v20

    if-nez v20, :cond_2b

    .line 1453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v7

    .line 1454
    .restart local v7       #cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2b

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v20

    if-lez v20, :cond_2b

    .line 1455
    const/16 v20, 0x0

    const/16 v21, 0x42c

    const/16 v22, 0x0

    const v23, 0x7f0c0323

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v20

    const v21, 0x7f0200a6

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1463
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_2b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackList()Z

    move-result v20

    if-eqz v20, :cond_2c

    .line 1464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v14

    .line 1465
    .restart local v14       #recipients:Lcom/android/mms/data/ContactList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v20

    if-eqz v20, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v20

    if-lez v20, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v20

    if-nez v20, :cond_2c

    invoke-virtual {v14}, Lcom/android/mms/data/ContactList;->size()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2c

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/mms/data/Contact;

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_2c

    .line 1467
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v20

    if-eqz v20, :cond_45

    .line 1468
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/mms/data/Contact;

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_2c

    .line 1469
    const/16 v20, 0x0

    const/16 v21, 0x427

    const/16 v22, 0x0

    const v23, 0x7f0c02a4

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v20

    const v21, 0x7f02008c

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1483
    .end local v14           #recipients:Lcom/android/mms/data/ContactList;
    :cond_2c
    :goto_d
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v20

    if-eqz v20, :cond_2d

    .line 1484
    const/16 v20, 0x0

    const/16 v21, 0x42e

    const/16 v22, 0x0

    const v23, 0x7f0c0440

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v20

    const v21, 0x7f0200ac

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1488
    :cond_2d
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v20

    if-eqz v20, :cond_2e

    .line 1489
    const/16 v20, 0x0

    const/16 v21, 0x44b

    const/16 v22, 0x0

    const v23, 0x7f0c00e7

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v20

    const v21, 0x7f02027f

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1496
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v20

    if-eqz v20, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v20

    if-eqz v20, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->isNewCompose()Z

    move-result v20

    if-eqz v20, :cond_30

    .line 1498
    :cond_2f
    const/16 v20, 0x0

    const/16 v21, 0x3ec

    const/16 v22, 0x0

    const v23, 0x7f0c0029

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v20

    const v21, 0x7f020096

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1504
    :cond_30
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCombineAndForwardMenu()Z

    move-result v20

    if-eqz v20, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->isNewCompose()Z

    move-result v20

    if-nez v20, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v20

    if-nez v20, :cond_31

    .line 1508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->msgItemMmsOnly()Z

    move-result v20

    if-nez v20, :cond_31

    .line 1509
    const/16 v20, 0x0

    const/16 v21, 0x448

    const/16 v22, 0x0

    const v23, 0x7f0c041b

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v20

    const v21, 0x7f02009e

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1521
    :cond_31
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableTranslatorMenu()Z

    move-result v20

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->isBottomPanelVisible()Z

    move-result v20

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->hasFocusOnRichContainer()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 1529
    const/16 v20, 0x0

    const/16 v21, 0x40a

    const/16 v22, 0x0

    const v23, 0x7f0c0179

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v20

    const v21, 0x7f020254

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1531
    sget-object v20, Lcom/android/mms/ui/TranslateManager;->mSupportedLanguages:Ljava/util/ArrayList;

    if-nez v20, :cond_1

    .line 1532
    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    .line 1533
    .local v19, transIntent:Landroid/content/Intent;
    const-string v20, "com.sec.android.app.translator.GET_SUPPORTED_LANGUAGES"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1534
    const-string v20, "caller"

    const-string v21, "msg"

    invoke-virtual/range {v19 .. v21}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1536
    const/16 v20, 0x40a

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v20

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 1204
    .end local v19           #transIntent:Landroid/content/Intent;
    .restart local v9       #isVoLTEAvailable:Z
    .restart local v12       #mVoLTEStateTracker:Lcom/android/mms/VoLTEStateTracker;
    :cond_32
    const/16 v20, 0x0

    const/16 v21, 0x440

    const/16 v22, 0x0

    const v23, 0x7f0c0005

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v20

    const v21, 0x7f02008d

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v20

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMenuItemActionForOrientation()I

    move-result v21

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_3

    .line 1208
    .end local v9           #isVoLTEAvailable:Z
    .end local v12           #mVoLTEStateTracker:Lcom/android/mms/VoLTEStateTracker;
    :cond_33
    const/16 v20, 0x0

    const/16 v21, 0x440

    const/16 v22, 0x0

    const v23, 0x7f0c0005

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v20

    const v21, 0x7f02008d

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v20

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMenuItemActionForOrientation()I

    move-result v21

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_3

    .line 1212
    :cond_34
    const/16 v20, 0x0

    const/16 v21, 0x3ee

    const/16 v22, 0x0

    const v23, 0x7f0c0005

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v20

    const v21, 0x7f02008d

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 1230
    :cond_35
    const/16 v20, 0x0

    const/16 v21, 0x436

    const/16 v22, 0x0

    const v23, 0x7f0c007b

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v20

    const v21, 0x7f020095

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v20

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMenuItemActionForOrientation()I

    move-result v21

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_4

    .line 1283
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v20

    if-eqz v20, :cond_37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v20

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSlideCount()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_38

    .line 1284
    :cond_37
    const/16 v20, 0x0

    const/16 v21, 0x41d

    const/16 v22, 0x0

    const v23, 0x7f0c0024

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v20

    const v21, 0x7f020088

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1287
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v20

    if-eqz v20, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v20

    if-eqz v20, :cond_21

    .line 1288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v17

    .line 1289
    .local v17, slideCount:I
    const/16 v20, 0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-le v0, v1, :cond_21

    .line 1291
    const/16 v20, 0x0

    const/16 v21, 0x41e

    const/16 v22, 0x0

    const v23, 0x7f0c0023

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v20

    const v21, 0x7f0200af

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_5

    .line 1298
    .end local v17           #slideCount:I
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->hasFocusOnRichContainer()Z

    move-result v20

    if-eqz v20, :cond_21

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v20

    if-eqz v20, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v20

    if-nez v20, :cond_21

    .line 1300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v20

    if-eqz v20, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v20

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSlideCount()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_3b

    .line 1301
    :cond_3a
    const/16 v20, 0x0

    const/16 v21, 0x41d

    const/16 v22, 0x0

    const v23, 0x7f0c0024

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v20

    const v21, 0x7f020088

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1304
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v20

    if-eqz v20, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v20

    if-eqz v20, :cond_21

    .line 1305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v17

    .line 1306
    .restart local v17       #slideCount:I
    const/16 v20, 0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-le v0, v1, :cond_21

    .line 1308
    const/16 v20, 0x0

    const/16 v21, 0x41e

    const/16 v22, 0x0

    const v23, 0x7f0c0023

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v20

    const v21, 0x7f0200af

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_5

    .line 1321
    .end local v17           #slideCount:I
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->isSubjectEditorVisible()Z

    move-result v20

    if-eqz v20, :cond_22

    .line 1322
    const/16 v20, 0x0

    const/16 v21, 0x3f2

    const/16 v22, 0x0

    const v23, 0x7f0c011c

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v20

    const v21, 0x7f0200b0

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_6

    .line 1337
    .restart local v16       #second:I
    :catch_0
    move-exception v8

    .line 1338
    .local v8, e:Ljava/lang/NullPointerException;
    const-string v20, "Mms/ComposerMenu"

    const-string v21, "NullPointerException !!!"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 1351
    .end local v8           #e:Ljava/lang/NullPointerException;
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    const v21, 0x7f0c0135

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .restart local v18       #title:Ljava/lang/String;
    goto/16 :goto_8

    .line 1368
    .end local v16           #second:I
    .end local v18           #title:Ljava/lang/String;
    :cond_3e
    const v15, 0x7f0c004a

    .restart local v15       #resId:I
    goto/16 :goto_9

    .line 1374
    .end local v15           #resId:I
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v20

    if-eqz v20, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->hasFocusOnRichContainer()Z

    move-result v20

    if-eqz v20, :cond_25

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v20

    if-eqz v20, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v20

    if-nez v20, :cond_25

    .line 1377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/MmsRichContainer;->getMMSLayout()Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_40

    .line 1378
    const v15, 0x7f0c0049

    .line 1382
    .restart local v15       #resId:I
    :goto_e
    const/16 v20, 0x0

    const/16 v21, 0x41c

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-interface {v0, v1, v2, v3, v15}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v20

    const v21, 0x7f0200a8

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_a

    .line 1380
    .end local v15           #resId:I
    :cond_40
    const v15, 0x7f0c004a

    .restart local v15       #resId:I
    goto :goto_e

    .line 1406
    .end local v15           #resId:I
    :cond_41
    const/16 v20, 0x0

    const/16 v21, 0x428

    const/16 v22, 0x0

    const v23, 0x7f0c02cb

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v20

    const v21, 0x7f0200b6

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_b

    .line 1423
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ConversationComposer;->getIsSplitViewMode()Z

    move-result v20

    if-eqz v20, :cond_43

    .line 1424
    const/16 v20, 0x0

    const/16 v21, 0x3ea

    const/16 v22, 0x0

    const v23, 0x7f0c0094

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v20

    const v21, 0x7f020095

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1428
    :cond_43
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiLockMenu()Z

    move-result v20

    if-eqz v20, :cond_44

    .line 1429
    const/16 v20, 0x0

    const/16 v21, 0x3eb

    const/16 v22, 0x0

    const v23, 0x7f0c0098

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v20

    const v21, 0x7f0200a4

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1433
    :cond_44
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v20

    if-eqz v20, :cond_29

    .line 1434
    const/16 v20, 0x0

    const/16 v21, 0x442

    const/16 v22, 0x0

    const v23, 0x7f0c03a3

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v20

    const v21, 0x7f0200b5

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_c

    .line 1470
    .end local v7           #cursor:Landroid/database/Cursor;
    .restart local v14       #recipients:Lcom/android/mms/data/ContactList;
    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v20

    if-nez v20, :cond_2c

    .line 1471
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/mms/data/Contact;

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_2c

    .line 1472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v21, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/mms/data/Contact;

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->SpamNumberisAlreadInUse(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_46

    .line 1473
    const/16 v20, 0x0

    const/16 v21, 0x435

    const/16 v22, 0x0

    const v23, 0x7f0c040c

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v20

    const v21, 0x7f0200bc

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_d

    .line 1475
    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/data/Conversation;->isCmasMsg()Z

    move-result v20

    if-nez v20, :cond_2c

    .line 1476
    const/16 v20, 0x0

    const/16 v21, 0x427

    const/16 v22, 0x0

    const v23, 0x7f0c0405

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v20

    const v21, 0x7f0200ae

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_d
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    .line 271
    return-void
.end method

.method public startSearchMenu()V
    .locals 4

    .prologue
    .line 2217
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 2234
    :cond_0
    :goto_0
    return-void

    .line 2220
    :cond_1
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMenu;->mIsDelayForSearch:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/mms/ui/ComposeMenu;->mIsSearchMode:Z

    if-nez v0, :cond_0

    .line 2223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMenu;->mIsDelayForSearch:Z

    .line 2224
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/ui/ComposeMenu$10;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMenu$10;-><init>(Lcom/android/mms/ui/ComposeMenu;)V

    const-wide/16 v2, 0x1c2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
