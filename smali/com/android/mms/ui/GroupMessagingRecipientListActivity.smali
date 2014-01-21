.class public Lcom/android/mms/ui/GroupMessagingRecipientListActivity;
.super Landroid/app/Activity;
.source "GroupMessagingRecipientListActivity.java"

# interfaces
.implements Lcom/android/mms/data/Contact$UpdateListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/GroupMessagingRecipientListActivity$InvalidRecipientsKeyListener;,
        Lcom/android/mms/ui/GroupMessagingRecipientListActivity$InvalidRecipientsListener;
    }
.end annotation


# static fields
.field private static final ADD_DUPPLICATED_RECIPIENT:I = 0x3

.field private static final ADD_INVALIDE_RECIPIENT:I = 0x4

.field private static final ADD_INVALID_ARGUMENT:I = 0x1

.field private static final ADD_MAX_RECIPIENTS:I = 0x2

.field private static final ADD_SUCCESS:I = 0x0

.field private static final MENU_COMPOSE_GROUP_MESSAGE_ICON:I = 0x0

.field public static final MSG_ADD_RECIPIENT:I = 0x0

.field private static final ONLINE_SEARCH_INTENT_EXTRA_VALUE:Ljava/lang/String; = "onlineSearch"

.field private static final REQUEST_CODE_PICK_CONTACT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Mms/GroupMessagingRecipientListActivity"


# instance fields
.field private GroupMessagingList:Lcom/android/mms/data/ContactList;

.field private ToRecipientNumbers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private list:Landroid/widget/ListView;

.field private mAddRecipientsEditor:Lcom/android/mms/ui/GroupMessagingRecipientsEditor;

.field private mAddRecipientsField:Landroid/widget/LinearLayout;

.field private mComposerPanelBg:I

.field mContext:Landroid/content/Context;

.field private mCurrentRecipients:[Ljava/lang/String;

.field private mEditorBg:I

.field private mIntent:Landroid/content/Intent;

.field private mInvalidRecipientsDialog:Landroid/app/AlertDialog;

.field private mListAdapter:Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;

.field private final mOnChildClickListener:Landroid/view/View$OnClickListener;

.field private mRecipientButton:Landroid/widget/ImageView;

.field public final mRecipientsEditorHandler:Landroid/os/Handler;

.field private mTextColor:I

.field private mTextFieldColor:I

.field private mshowDupplicatedRecipientToast:Landroid/widget/Toast;

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

    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->recipientListItems:Ljava/util/ArrayList;

    .line 76
    iput-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mCurrentRecipients:[Ljava/lang/String;

    .line 77
    iput-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->ToRecipientNumbers:Ljava/util/ArrayList;

    .line 78
    iput-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->GroupMessagingList:Lcom/android/mms/data/ContactList;

    .line 80
    iput-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mshowDupplicatedRecipientToast:Landroid/widget/Toast;

    .line 81
    iput-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mInvalidRecipientsDialog:Landroid/app/AlertDialog;

    .line 242
    new-instance v0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity$4;-><init>(Lcom/android/mms/ui/GroupMessagingRecipientListActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mOnChildClickListener:Landroid/view/View$OnClickListener;

    .line 384
    new-instance v0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity$5;-><init>(Lcom/android/mms/ui/GroupMessagingRecipientListActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mRecipientsEditorHandler:Landroid/os/Handler;

    .line 563
    return-void
.end method

.method private AddNumberByRecipientEditor(ZZ)Z
    .locals 14
    .parameter "updateToButtonLayout"
    .parameter "showErrorDialog"

    .prologue
    .line 400
    iget-object v12, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mAddRecipientsEditor:Lcom/android/mms/ui/GroupMessagingRecipientsEditor;

    if-nez v12, :cond_0

    .line 401
    const/4 v12, 0x1

    .line 452
    :goto_0
    return v12

    .line 403
    :cond_0
    iget-object v12, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mAddRecipientsEditor:Lcom/android/mms/ui/GroupMessagingRecipientsEditor;

    invoke-virtual {v12}, Lcom/android/mms/ui/GroupMessagingRecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 404
    .local v10, recipientsText:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 405
    const/4 v12, 0x1

    goto :goto_0

    .line 407
    :cond_1
    const-string v12, "[,;]"

    invoke-virtual {v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 408
    .local v9, recipients:[Ljava/lang/String;
    iget-object v12, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mAddRecipientsEditor:Lcom/android/mms/ui/GroupMessagingRecipientsEditor;

    const-string v13, ""

    invoke-virtual {v12, v13}, Lcom/android/mms/ui/GroupMessagingRecipientsEditor;->setText(Ljava/lang/CharSequence;)V

    .line 409
    new-instance v1, Lcom/android/mms/data/ContactList;

    invoke-direct {v1}, Lcom/android/mms/data/ContactList;-><init>()V

    .line 410
    .local v1, contactList:Lcom/android/mms/data/ContactList;
    const/4 v2, 0x0

    .line 411
    .local v2, count:I
    const/4 v4, 0x0

    .line 412
    .local v4, invalidCount:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 414
    .local v5, invalidRecipients:Ljava/lang/StringBuilder;
    move-object v0, v9

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v6, :cond_2

    aget-object v8, v0, v3

    .line 415
    .local v8, recipient:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/mms/data/Contact;->replaceInvalidPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 417
    .local v7, number:Ljava/lang/String;
    const/4 v12, 0x0

    invoke-direct {p0, v7, v12}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->AddNumberToList(Ljava/lang/String;Z)I

    move-result v11

    .line 419
    .local v11, ret:I
    const/4 v12, 0x2

    if-ne v11, v12, :cond_4

    .line 420
    invoke-direct {p0}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->showMaxRecipientToast()V

    .line 438
    .end local v7           #number:Ljava/lang/String;
    .end local v8           #recipient:Ljava/lang/String;
    .end local v11           #ret:I
    :cond_2
    if-lez v2, :cond_3

    .line 439
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->AddContactFromContact(Lcom/android/mms/data/ContactList;)V

    .line 440
    invoke-direct {p0}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->updateList()V

    .line 444
    :cond_3
    const/16 v12, 0x8

    iget-object v13, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mAddRecipientsField:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v13

    if-eq v12, v13, :cond_a

    .line 445
    if-lez v4, :cond_a

    if-eqz p2, :cond_a

    .line 446
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, p0, v12}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->alertInvalidRecipientsPopup(Landroid/content/Context;Ljava/lang/String;)V

    .line 447
    const/4 v12, 0x0

    goto :goto_0

    .line 422
    .restart local v7       #number:Ljava/lang/String;
    .restart local v8       #recipient:Ljava/lang/String;
    .restart local v11       #ret:I
    :cond_4
    const/4 v12, 0x3

    if-ne v11, v12, :cond_6

    .line 423
    invoke-direct {p0}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->showDupplicatedRecipientToast()V

    .line 414
    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 424
    :cond_6
    const/4 v12, 0x4

    if-eq v11, v12, :cond_7

    const/4 v12, 0x1

    if-ne v11, v12, :cond_9

    .line 426
    :cond_7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-lez v12, :cond_8

    .line 427
    const-string v12, ","

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    :cond_8
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 432
    :cond_9
    if-nez v11, :cond_5

    .line 433
    const/4 v12, 0x0

    invoke-static {v7, v12}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    .line 434
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 452
    .end local v7           #number:Ljava/lang/String;
    .end local v8           #recipient:Ljava/lang/String;
    .end local v11           #ret:I
    :cond_a
    const/4 v12, 0x1

    goto/16 :goto_0
.end method

.method private AddNumberToList(Ljava/lang/String;Z)I
    .locals 9
    .parameter "recipient"
    .parameter "addInvalidRecipient"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 462
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 513
    :goto_0
    return v4

    .line 465
    :cond_0
    const/4 v1, 0x0

    .line 467
    .local v1, hasInvalidRecipient:Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinRecipientLength()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 468
    const/4 v1, 0x1

    .line 471
    :cond_1
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 472
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxRecipientLength()I

    move-result v7

    const/4 v8, -0x1

    if-le v7, v8, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxRecipientLength()I

    move-result v8

    if-le v7, v8, :cond_2

    .line 474
    const/4 v1, 0x1

    .line 479
    :cond_2
    const-string v7, " "

    const-string v8, ""

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 481
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableAddressPlusEdit()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->isLGUUsim()Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x2b

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_3

    .line 482
    const/4 v1, 0x1

    .line 485
    :cond_3
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isValidSmsAddress(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 486
    iget-object v7, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->GroupMessagingList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v7}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 487
    .local v0, c:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v4, v5

    .line 488
    goto :goto_0

    .line 492
    .end local v0           #c:Lcom/android/mms/data/Contact;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_8

    :cond_6
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 493
    iget-object v7, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->GroupMessagingList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v7}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 494
    .restart local v0       #c:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    move v4, v5

    .line 495
    goto/16 :goto_0

    .line 499
    .end local v0           #c:Lcom/android/mms/data/Contact;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_8
    const/4 v1, 0x1

    .line 502
    :cond_9
    if-ne v1, v4, :cond_a

    if-nez p2, :cond_a

    move v4, v6

    .line 503
    goto/16 :goto_0

    .line 506
    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v3

    .line 507
    .local v3, recipientLimit:I
    iget-object v4, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->GroupMessagingList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v4}, Lcom/android/mms/data/ContactList;->size()I

    move-result v4

    if-lt v4, v3, :cond_b

    .line 508
    const/4 v4, 0x2

    goto/16 :goto_0

    .line 510
    :cond_b
    if-eqz v1, :cond_c

    move v4, v6

    .line 511
    goto/16 :goto_0

    .line 513
    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/mms/ui/GroupMessagingRecipientListActivity;)Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mListAdapter:Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/GroupMessagingRecipientListActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->list:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/GroupMessagingRecipientListActivity;)Lcom/android/mms/data/ContactList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->GroupMessagingList:Lcom/android/mms/data/ContactList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/GroupMessagingRecipientListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->updateList()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/GroupMessagingRecipientListActivity;ZZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->AddNumberByRecipientEditor(ZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/GroupMessagingRecipientListActivity;)Lcom/android/mms/ui/GroupMessagingRecipientsEditor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mAddRecipientsEditor:Lcom/android/mms/ui/GroupMessagingRecipientsEditor;

    return-object v0
.end method

.method private getRecipients()Lcom/android/mms/data/ContactList;
    .locals 4

    .prologue
    .line 255
    const-string v2, "Mms/GroupMessagingRecipientListActivity"

    const-string v3, "getRecipients()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    new-instance v0, Lcom/android/mms/data/ContactList;

    invoke-direct {v0}, Lcom/android/mms/data/ContactList;-><init>()V

    .line 258
    .local v0, contactList:Lcom/android/mms/data/ContactList;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mCurrentRecipients:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 259
    iget-object v2, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mCurrentRecipients:[Ljava/lang/String;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    .line 258
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 262
    :cond_0
    return-object v0
.end method

.method private initGroupMessagingRecipientsEditor()V
    .locals 3

    .prologue
    .line 131
    const-string v1, "Mms/GroupMessagingRecipientListActivity"

    const-string v2, "initGroupMessagingRecipientsEditor()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-direct {p0}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->setTextFieldColor()V

    .line 135
    iget-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mAddRecipientsField:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    .line 136
    const v1, 0x7f0b012a

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mAddRecipientsField:Landroid/widget/LinearLayout;

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mAddRecipientsEditor:Lcom/android/mms/ui/GroupMessagingRecipientsEditor;

    if-nez v1, :cond_1

    .line 140
    const v1, 0x7f0b012b

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/GroupMessagingRecipientsEditor;

    iput-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mAddRecipientsEditor:Lcom/android/mms/ui/GroupMessagingRecipientsEditor;

    .line 141
    iget-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mAddRecipientsEditor:Lcom/android/mms/ui/GroupMessagingRecipientsEditor;

    invoke-virtual {v1, p0}, Lcom/android/mms/ui/GroupMessagingRecipientsEditor;->setComposer(Lcom/android/mms/ui/GroupMessagingRecipientListActivity;)V

    .line 142
    iget-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mAddRecipientsEditor:Lcom/android/mms/ui/GroupMessagingRecipientsEditor;

    iget v2, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mEditorBg:I

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/GroupMessagingRecipientsEditor;->setBackgroundResource(I)V

    .line 143
    iget-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mAddRecipientsEditor:Lcom/android/mms/ui/GroupMessagingRecipientsEditor;

    iget v2, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mTextColor:I

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/GroupMessagingRecipientsEditor;->setTextColor(I)V

    .line 145
    new-instance v0, Lcom/android/mms/ui/RecipientsAdapter;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/RecipientsAdapter;-><init>(Landroid/content/Context;)V

    .line 146
    .local v0, addressAdapter:Lcom/android/mms/ui/RecipientsAdapter;
    iget-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mAddRecipientsEditor:Lcom/android/mms/ui/GroupMessagingRecipientsEditor;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/GroupMessagingRecipientsEditor;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 150
    .end local v0           #addressAdapter:Lcom/android/mms/ui/RecipientsAdapter;
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mAddRecipientsEditor:Lcom/android/mms/ui/GroupMessagingRecipientsEditor;

    const v2, 0x7f0c0181

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/GroupMessagingRecipientsEditor;->setHint(I)V

    .line 151
    iget-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mAddRecipientsEditor:Lcom/android/mms/ui/GroupMessagingRecipientsEditor;

    const v2, 0x2000006

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/GroupMessagingRecipientsEditor;->setImeOptions(I)V

    .line 153
    const v1, 0x7f0b012c

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mRecipientButton:Landroid/widget/ImageView;

    .line 154
    iget-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mRecipientButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mRecipientButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/mms/ui/GroupMessagingRecipientListActivity$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity$1;-><init>(Lcom/android/mms/ui/GroupMessagingRecipientListActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 165
    return-void
.end method

.method private setTextFieldColor()V
    .locals 2

    .prologue
    .line 168
    const-string v0, "Mms/GroupMessagingRecipientListActivity"

    const-string v1, "setTextFieldColor()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getTextFieldColor(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mTextFieldColor:I

    .line 170
    const v0, 0x7f02024e

    iput v0, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mEditorBg:I

    .line 171
    invoke-virtual {p0}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mTextColor:I

    .line 172
    return-void
.end method

.method private setupActionBar()V
    .locals 2

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 268
    .local v0, bar:Landroid/app/ActionBar;
    const v1, 0x7f0c01b0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 269
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 270
    return-void
.end method

.method private showDupplicatedRecipientToast()V
    .locals 2

    .prologue
    .line 523
    const v1, 0x7f0c015a

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 525
    .local v0, message:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mshowDupplicatedRecipientToast:Landroid/widget/Toast;

    if-nez v1, :cond_0

    .line 526
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mshowDupplicatedRecipientToast:Landroid/widget/Toast;

    .line 530
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mshowDupplicatedRecipientToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 533
    return-void

    .line 528
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mshowDupplicatedRecipientToast:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showMaxRecipientToast()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 517
    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v1

    .line 518
    .local v1, recipientLimit:I
    const v2, 0x7f0c015b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 519
    .local v0, message:Ljava/lang/String;
    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 520
    return-void
.end method

.method private updateList()V
    .locals 5

    .prologue
    .line 215
    iget-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->GroupMessagingList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->reloadContactList()V

    .line 217
    iget-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->recipientListItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 219
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->GroupMessagingList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 220
    iget-object v2, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->recipientListItems:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/mms/ui/RecipientListItem;

    iget-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->GroupMessagingList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v1, v0}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, p0, v1}, Lcom/android/mms/ui/RecipientListItem;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 223
    :cond_0
    new-instance v1, Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;

    const v2, 0x7f04003d

    iget-object v3, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->recipientListItems:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mOnChildClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mListAdapter:Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;

    .line 224
    const v1, 0x7f0b012d

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->list:Landroid/widget/ListView;

    .line 225
    iget-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mListAdapter:Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 227
    iget-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->list:Landroid/widget/ListView;

    new-instance v2, Lcom/android/mms/ui/GroupMessagingRecipientListActivity$3;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity$3;-><init>(Lcom/android/mms/ui/GroupMessagingRecipientListActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 240
    return-void
.end method


# virtual methods
.method public AddContactFromContact(Lcom/android/mms/data/ContactList;)V
    .locals 8
    .parameter "numbers"

    .prologue
    .line 349
    new-instance v1, Lcom/android/mms/data/ContactList;

    invoke-direct {v1}, Lcom/android/mms/data/ContactList;-><init>()V

    .line 350
    .local v1, existedRecipients:Lcom/android/mms/data/ContactList;
    iget-object v6, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->GroupMessagingList:Lcom/android/mms/data/ContactList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->GroupMessagingList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v6}, Lcom/android/mms/data/ContactList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 351
    :cond_0
    new-instance v6, Lcom/android/mms/data/ContactList;

    invoke-direct {v6}, Lcom/android/mms/data/ContactList;-><init>()V

    iput-object v6, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->GroupMessagingList:Lcom/android/mms/data/ContactList;

    .line 352
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/data/Contact;

    .line 353
    .local v5, number:Lcom/android/mms/data/Contact;
    iget-object v6, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->GroupMessagingList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v6}, Lcom/android/mms/data/ContactList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 354
    invoke-virtual {v1, v5}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    .line 355
    iget-object v6, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->GroupMessagingList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v6, v5}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 357
    :cond_2
    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 358
    .local v0, existedRecipient:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 360
    iget-object v6, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->GroupMessagingList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v6, v5}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 365
    .end local v0           #existedRecipient:Lcom/android/mms/data/Contact;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #number:Lcom/android/mms/data/Contact;
    :cond_4
    iget-object v6, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->GroupMessagingList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v6}, Lcom/android/mms/data/ContactList;->clone()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #existedRecipients:Lcom/android/mms/data/ContactList;
    check-cast v1, Lcom/android/mms/data/ContactList;

    .line 366
    .restart local v1       #existedRecipients:Lcom/android/mms/data/ContactList;
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/data/Contact;

    .line 367
    .restart local v5       #number:Lcom/android/mms/data/Contact;
    const/4 v4, 0x0

    .line 368
    .local v4, isAdded:I
    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 369
    .restart local v0       #existedRecipient:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 370
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 372
    .end local v0           #existedRecipient:Lcom/android/mms/data/Contact;
    :cond_7
    if-nez v4, :cond_5

    .line 373
    iget-object v6, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->GroupMessagingList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v6, v5}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 376
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #isAdded:I
    .end local v5           #number:Lcom/android/mms/data/Contact;
    :cond_8
    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->clear()V

    .line 377
    return-void
.end method

.method public ReplyAllMessage(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "recipients"

    .prologue
    const/4 v7, 0x1

    .line 591
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 592
    .local v3, mNumberList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 593
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v5, v0, v1

    .line 594
    .local v5, tempRecipient:Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 597
    .end local v5           #tempRecipient:Ljava/lang/String;
    :cond_0
    new-instance v4, Landroid/content/Intent;

    const-class v6, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v4, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 598
    .local v4, replyallIntent:Landroid/content/Intent;
    const-string v6, "sendto"

    invoke-virtual {v4, v6, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 599
    const/high16 v6, 0x1400

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 600
    const-string v6, "smsto:"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 601
    const-string v6, "replyAll"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 602
    const-string v6, "groupRecipientList"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 603
    invoke-virtual {p1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 604
    return-void
.end method

.method public alertInvalidRecipientsPopup(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "invalidRecipients"

    .prologue
    .line 536
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 539
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c017f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 540
    const v1, 0x7f0c003b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 542
    const v1, 0x104000a

    new-instance v2, Lcom/android/mms/ui/GroupMessagingRecipientListActivity$InvalidRecipientsListener;

    invoke-direct {v2, p0, p2}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity$InvalidRecipientsListener;-><init>(Lcom/android/mms/ui/GroupMessagingRecipientListActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 543
    new-instance v1, Lcom/android/mms/ui/GroupMessagingRecipientListActivity$InvalidRecipientsKeyListener;

    invoke-direct {v1, p0, p2}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity$InvalidRecipientsKeyListener;-><init>(Lcom/android/mms/ui/GroupMessagingRecipientListActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 544
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 545
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v6, 0x1

    .line 314
    const-string v3, "Mms/GroupMessagingRecipientListActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActivityResult: requestCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", resultCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", data="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/mms/Log;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    const/4 v0, 0x1

    .line 319
    .local v0, appendMedia:Z
    packed-switch p1, :pswitch_data_0

    .line 344
    :cond_0
    :goto_0
    const-string v3, "Mms/GroupMessagingRecipientListActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActivityResult(),requestCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",resultCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",data="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    return-void

    .line 322
    :pswitch_0
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 323
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "result"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 325
    .local v2, selectedNumbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 326
    const/4 v1, 0x0

    .line 327
    .local v1, contacts:Lcom/android/mms/data/ContactList;
    const-string v3, "onlineSearch"

    const-string v4, "mode"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 328
    invoke-static {v2, v6}, Lcom/android/mms/data/Contact;->get(Ljava/util/ArrayList;Z)Lcom/android/mms/data/ContactList;

    move-result-object v1

    .line 332
    :goto_1
    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 333
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->AddContactFromContact(Lcom/android/mms/data/ContactList;)V

    goto :goto_0

    .line 330
    :cond_1
    invoke-static {v2, v6}, Lcom/android/mms/data/Contact;->getByIds(Ljava/util/ArrayList;Z)Lcom/android/mms/data/ContactList;

    move-result-object v1

    goto :goto_1

    .line 319
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 292
    iget-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mRecipientButton:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_1

    .line 294
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.INTERACTION_TOPMENU"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 295
    .local v0, phonebookIntent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 296
    :cond_0
    const-string v1, "additional"

    const-string v2, "email-phone-multi"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    :goto_0
    const-string v1, "existingRecipientCount"

    iget-object v2, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mAddRecipientsEditor:Lcom/android/mms/ui/GroupMessagingRecipientsEditor;

    invoke-virtual {v2}, Lcom/android/mms/ui/GroupMessagingRecipientsEditor;->getRecipientCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 302
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePickContactLimit()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 303
    const-string v1, "maxRecipientCount"

    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->getPickContactLimit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 307
    :goto_1
    const-string v1, "FromMMS"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 309
    invoke-virtual {p0, v0, v3}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 311
    .end local v0           #phonebookIntent:Landroid/content/Intent;
    :cond_1
    return-void

    .line 298
    .restart local v0       #phonebookIntent:Landroid/content/Intent;
    :cond_2
    const-string v1, "additional"

    const-string v2, "phone-multi"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 305
    :cond_3
    const-string v1, "maxRecipientCount"

    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 609
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 610
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const v0, 0x7f04003c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->setContentView(I)V

    .line 94
    invoke-direct {p0}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->initGroupMessagingRecipientsEditor()V

    .line 95
    invoke-direct {p0}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->setupActionBar()V

    .line 96
    const-string v0, "Mms/GroupMessagingRecipientListActivity"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iput-object p0, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mContext:Landroid/content/Context;

    .line 98
    invoke-virtual {p0}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mIntent:Landroid/content/Intent;

    .line 99
    iget-object v0, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->GroupMessagingList:Lcom/android/mms/data/ContactList;

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "recipients"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mCurrentRecipients:[Ljava/lang/String;

    .line 101
    invoke-direct {p0}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->GroupMessagingList:Lcom/android/mms/data/ContactList;

    .line 103
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 275
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 276
    iget-object v0, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mListAdapter:Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;

    if-eqz v0, :cond_0

    .line 277
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mListAdapter:Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;

    .line 278
    :cond_0
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 282
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 287
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 284
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->finish()V

    .line 285
    const/4 v0, 0x1

    goto :goto_0

    .line 282
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 109
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 117
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 111
    :pswitch_0
    iget-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->GroupMessagingList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, recipients:[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->ReplyAllMessage(Landroid/content/Context;[Ljava/lang/String;)V

    .line 113
    const/4 v1, 0x1

    goto :goto_0

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 177
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 178
    const-string v0, "Mms/GroupMessagingRecipientListActivity"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-static {p0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 180
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    const/4 v1, 0x0

    .line 123
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 124
    const v0, 0x7f0c0002

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020233

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 127
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 184
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 185
    const-string v0, "Mms/GroupMessagingRecipientListActivity"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 187
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 188
    iget-object v0, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mListAdapter:Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;->notifyDataSetChanged()V

    .line 189
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 207
    const-string v0, "Mms/GroupMessagingRecipientListActivity"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-direct {p0}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->updateList()V

    .line 211
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 212
    return-void
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 2
    .parameter "updated"

    .prologue
    .line 193
    const-string v0, "Mms/GroupMessagingRecipientListActivity"

    const-string v1, "onUpdate()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v0, "ContactResult"

    const-string v1, "Contact onUpdate Called"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    new-instance v0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity$2;-><init>(Lcom/android/mms/ui/GroupMessagingRecipientListActivity;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 202
    return-void
.end method
