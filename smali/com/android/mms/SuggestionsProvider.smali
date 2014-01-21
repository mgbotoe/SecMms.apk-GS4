.class public Lcom/android/mms/SuggestionsProvider;
.super Landroid/content/ContentProvider;
.source "SuggestionsProvider.java"


# static fields
.field static final AUTHORITY:Ljava/lang/String; = "com.android.mms.SuggestionsProvider"

.field static final COLUMN_ADDRESS:I = 0x6

.field static final COLUMN_CL:I = 0x5

.field static final COLUMN_DISPLAY_RECIPIENT_IDS:I = 0xc

.field static final COLUMN_ID:I = 0x1

.field static final COLUMN_LISTORDER:I = 0x9

.field static final COLUMN_NORMALIZED_DATE:I = 0x0

.field static final COLUMN_RECIPIENT_IDS:I = 0x7

.field static final COLUMN_SUBJECT:I = 0x4

.field static final COLUMN_SUBJECT_CS:I = 0xb

.field static final COLUMN_TEXT:I = 0x3

.field static final COLUMN_THREAD_ID:I = 0x8

.field static final COLUMN_TYPE:I = 0xa

.field static final COLUMN_TYPE_DISCRIMINATOR:I = 0x2

.field private static final FINDO_ACTION:Ljava/lang/String; = "android.intent.action.VIEW"

.field private static final FINDO_SUGGEST:I = 0x1

.field static final LISTORDER_ATTACHMENT:I = 0x2

.field static final LISTORDER_MSG:I = 0x1

.field private static final MESSAGE_TYPE_DRAFT:Ljava/lang/String; = "3"

.field private static final MESSAGE_TYPE_FAILED:Ljava/lang/String; = "5"

.field private static final MESSAGE_TYPE_INBOX:Ljava/lang/String; = "1"

.field private static final MESSAGE_TYPE_INBOX_SUB1:Ljava/lang/String; = "7"

.field private static final MESSAGE_TYPE_INBOX_SUB2:Ljava/lang/String; = "8"

.field private static final MESSAGE_TYPE_OUTBOX:Ljava/lang/String; = "4"

.field private static final MESSAGE_TYPE_QUEUED:Ljava/lang/String; = "6"

.field private static final MESSAGE_TYPE_SENT:Ljava/lang/String; = "2"

.field private static final MSG_SUGGEST:I = 0x0

.field static final SEARCH_ALL:I = 0x0

.field static final SEARCH_MESSAGE:I = 0x2

.field static final SEARCH_SENDER:I = 0x1

.field private static final SUGGEST_COLUMNS:[Ljava/lang/String; = null

.field private static final SUGGEST_COLUMNS_FINDO:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "Mms/SuggestionsProvider"

.field private static final TYPE_ATTACHMENT_RECEIVED:Ljava/lang/String; = "2"

.field private static final TYPE_ATTACHMENT_SENT:Ljava/lang/String; = "3"

.field private static final TYPE_RECEIVED:Ljava/lang/String; = "0"

.field private static final TYPE_SENT:Ljava/lang/String; = "1"

.field private static final TYPE_SENT_FAILED:Ljava/lang/String; = "5"

.field private static final TYPE_SENT_FAILED_ATTACH:Ljava/lang/String; = "6"

.field private static final TYPE_THREAD:Ljava/lang/String; = "4"

.field private static final URI_MATCHER:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 51
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/mms/SuggestionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 57
    sget-object v0, Lcom/android/mms/SuggestionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.android.mms.SuggestionsProvider"

    const-string v2, "search_suggest_query"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 58
    sget-object v0, Lcom/android/mms/SuggestionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.android.mms.SuggestionsProvider"

    const-string v2, "search_suggest_regex_query"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 133
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "suggest_text_1"

    aput-object v1, v0, v4

    const-string v1, "suggest_text_2"

    aput-object v1, v0, v5

    const-string v1, "suggest_intent_data"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/mms/SuggestionsProvider;->SUGGEST_COLUMNS:[Ljava/lang/String;

    .line 141
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "suggest_text_1"

    aput-object v1, v0, v4

    const-string v1, "suggest_text_2"

    aput-object v1, v0, v5

    const-string v1, "suggest_text_3"

    aput-object v1, v0, v6

    const-string v1, "suggest_group"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "suggest_icon_1"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "suggest_intent_data"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "suggest_target_type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "suggest_intent_action"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/SuggestionsProvider;->SUGGEST_COLUMNS_FINDO:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 106
    return-void
.end method

.method private getFindoMessageBySuggestionSearch(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 50
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 372
    const/4 v3, 0x0

    .line 373
    .local v3, u:Landroid/net/Uri;
    const/16 v34, 0x0

    .line 375
    .local v34, messageCursor:Landroid/database/Cursor;
    const/16 v41, 0x0

    .line 376
    .local v41, stime:Ljava/lang/String;
    const/16 v27, 0x0

    .line 377
    .local v27, etime:Ljava/lang/String;
    const/16 v39, 0x0

    .line 378
    .local v39, searchSuggest:Ljava/lang/String;
    const/4 v6, 0x0

    .line 380
    .local v6, args:[Ljava/lang/String;
    new-instance v26, Ljava/util/HashSet;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashSet;-><init>()V

    .line 381
    .local v26, duplication_msg_id:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v25, Ljava/util/HashSet;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashSet;-><init>()V

    .line 383
    .local v25, duplication_attchment:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez p4, :cond_9

    .line 384
    const/4 v6, 0x0

    .line 385
    const-string v39, ""

    .line 392
    :goto_0
    const-string v2, "stime"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 393
    const-string v2, "etime"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 395
    sget-object v2, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "messages/search_suggest_regex_query"

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "pattern"

    move-object/from16 v0, v39

    invoke-virtual {v2, v4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 397
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/SuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object/from16 v5, p3

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v34

    .line 404
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/SuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/android/mms/data/Conversation;->conversationInfoCursorForFindo(Landroid/content/Context;[Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object v45

    .line 406
    .local v45, threadCursor:Landroid/database/MatrixCursor;
    new-instance v47, Landroid/database/MergeCursor;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/database/Cursor;

    const/4 v4, 0x0

    aput-object v45, v2, v4

    const/4 v4, 0x1

    aput-object v34, v2, v4

    move-object/from16 v0, v47

    invoke-direct {v0, v2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 410
    .local v47, totalCursor:Landroid/database/Cursor;
    const/16 v21, 0x0

    .line 411
    .local v21, cursor:Landroid/database/MatrixCursor;
    new-instance v21, Landroid/database/MatrixCursor;

    .end local v21           #cursor:Landroid/database/MatrixCursor;
    sget-object v2, Lcom/android/mms/SuggestionsProvider;->SUGGEST_COLUMNS_FINDO:[Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 414
    .restart local v21       #cursor:Landroid/database/MatrixCursor;
    :try_start_0
    invoke-interface/range {v47 .. v47}, Landroid/database/Cursor;->getCount()I

    move-result v20

    .line 431
    .local v20, count:I
    const/16 v31, 0x0

    .line 432
    .local v31, icon1:Ljava/lang/String;
    const/16 v16, 0x0

    .line 433
    .local v16, avatarMeIcon:Ljava/lang/String;
    const/16 v43, 0x0

    .line 435
    .local v43, suggestTargetType:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 437
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/SuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/data/Contact;->hasAvatarMeForFindo(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 438
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/SuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/data/Contact;->getAvatarMeForFindo(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v17

    .line 439
    .local v17, avatarMeUri:Landroid/net/Uri;
    if-eqz v17, :cond_a

    .line 440
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/photo"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 446
    .end local v17           #avatarMeUri:Landroid/net/Uri;
    :cond_0
    :goto_1
    invoke-interface/range {v47 .. v47}, Landroid/database/Cursor;->moveToFirst()Z

    .line 448
    const/16 v30, 0x0

    .local v30, i:I
    :goto_2
    move/from16 v0, v30

    move/from16 v1, v20

    if-ge v0, v1, :cond_29

    .line 449
    const/4 v2, 0x3

    move-object/from16 v0, v47

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v44

    .line 450
    .local v44, text:Ljava/lang/String;
    const/16 v2, 0x9

    move-object/from16 v0, v47

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    .line 451
    .local v33, listorder:I
    const/16 v2, 0x8

    move-object/from16 v0, v47

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v46

    .line 452
    .local v46, thread_id:I
    const/4 v2, 0x1

    move-object/from16 v0, v47

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v40

    .line 453
    .local v40, select_id:I
    const/4 v2, 0x2

    move-object/from16 v0, v47

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v48

    .line 454
    .local v48, type:Ljava/lang/String;
    const/16 v2, 0xa

    move-object/from16 v0, v47

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 455
    .local v8, Boxtype:Ljava/lang/String;
    const/4 v2, 0x5

    move-object/from16 v0, v47

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 456
    .local v18, cl:Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, v47

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 457
    .local v23, date:Ljava/lang/String;
    const/4 v2, 0x4

    move-object/from16 v0, v47

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v42

    .line 460
    .local v42, subject:Ljava/lang/String;
    const/16 v2, 0xc

    move-object/from16 v0, v47

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    .line 462
    .local v37, recipientIds:Ljava/lang/String;
    invoke-static/range {v37 .. v37}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 463
    const/4 v2, 0x7

    move-object/from16 v0, v47

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    .line 466
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, v37

    invoke-static {v0, v2}, Lcom/android/mms/data/ContactList;->getByIds(Ljava/lang/String;Z)Lcom/android/mms/data/ContactList;

    move-result-object v38

    .line 468
    .local v38, recipients:Lcom/android/mms/data/ContactList;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePhoneNumberFormattingInMsg()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 469
    const-string v2, ", "

    move-object/from16 v0, v38

    invoke-virtual {v0, v2}, Lcom/android/mms/data/ContactList;->formattedNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 474
    .local v15, address:Ljava/lang/String;
    :goto_3
    const/4 v2, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v0, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v35

    .line 475
    .local v35, number:Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v0, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/mms/data/Contact;

    .line 477
    .local v19, contact:Lcom/android/mms/data/Contact;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 478
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 479
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/SuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f0c013b

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 516
    :cond_2
    :goto_4
    sget-object v2, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "search"

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "searchMode"

    const-string v5, "direct"

    invoke-virtual {v2, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "pattern"

    move-object/from16 v0, v39

    invoke-virtual {v2, v4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "message_type"

    move-object/from16 v0, v48

    invoke-virtual {v2, v4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "thread_id"

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "select_id"

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v49

    .line 525
    .local v49, uriBuilder:Landroid/net/Uri$Builder;
    if-nez v44, :cond_3

    .line 526
    const-string v44, ""

    .line 528
    :cond_3
    move-object/from16 v22, v44

    .line 530
    .local v22, cursorText:Ljava/lang/String;
    const-string v2, "sms"

    move-object/from16 v0, v48

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 531
    const-string v2, "1"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "7"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "8"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 532
    :cond_4
    const-string v43, "0"

    .line 578
    :goto_5
    const-string v2, "1"

    move-object/from16 v0, v43

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "3"

    move-object/from16 v0, v43

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "5"

    move-object/from16 v0, v43

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "6"

    move-object/from16 v0, v43

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 580
    :cond_5
    if-eqz v16, :cond_25

    .line 581
    move-object/from16 v31, v16

    .line 588
    :cond_6
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/SuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v24

    .line 589
    .local v24, df:Ljava/text/DateFormat;
    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    .line 591
    .local v28, format_date:Ljava/lang/String;
    const-string v2, "thread"

    move-object/from16 v0, v48

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 592
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/SuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f0c0439

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 593
    .local v29, group_string:Ljava/lang/String;
    const-string v43, "4"

    .line 598
    :goto_7
    const/4 v2, 0x2

    move/from16 v0, v33

    if-ne v0, v2, :cond_27

    if-eqz v18, :cond_27

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_7

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_27

    .line 620
    :cond_7
    :goto_8
    const-string v2, "mms"

    move-object/from16 v0, v48

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v18, :cond_8

    .line 621
    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 624
    :cond_8
    invoke-interface/range {v47 .. v47}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_2

    .line 387
    .end local v8           #Boxtype:Ljava/lang/String;
    .end local v15           #address:Ljava/lang/String;
    .end local v16           #avatarMeIcon:Ljava/lang/String;
    .end local v18           #cl:Ljava/lang/String;
    .end local v19           #contact:Lcom/android/mms/data/Contact;
    .end local v20           #count:I
    .end local v21           #cursor:Landroid/database/MatrixCursor;
    .end local v22           #cursorText:Ljava/lang/String;
    .end local v23           #date:Ljava/lang/String;
    .end local v24           #df:Ljava/text/DateFormat;
    .end local v28           #format_date:Ljava/lang/String;
    .end local v29           #group_string:Ljava/lang/String;
    .end local v30           #i:I
    .end local v31           #icon1:Ljava/lang/String;
    .end local v33           #listorder:I
    .end local v35           #number:Ljava/lang/String;
    .end local v37           #recipientIds:Ljava/lang/String;
    .end local v38           #recipients:Lcom/android/mms/data/ContactList;
    .end local v40           #select_id:I
    .end local v42           #subject:Ljava/lang/String;
    .end local v43           #suggestTargetType:Ljava/lang/String;
    .end local v44           #text:Ljava/lang/String;
    .end local v45           #threadCursor:Landroid/database/MatrixCursor;
    .end local v46           #thread_id:I
    .end local v47           #totalCursor:Landroid/database/Cursor;
    .end local v48           #type:Ljava/lang/String;
    .end local v49           #uriBuilder:Landroid/net/Uri$Builder;
    :cond_9
    new-instance v36, Lcom/android/mms/ui/MessageQueryParser;

    invoke-direct/range {v36 .. v36}, Lcom/android/mms/ui/MessageQueryParser;-><init>()V

    .line 388
    .local v36, queryParser:Lcom/android/mms/ui/MessageQueryParser;
    const/4 v2, 0x0

    aget-object v2, p4, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageQueryParser;->regexParser(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 389
    const/4 v2, 0x0

    aget-object v39, v6, v2

    goto/16 :goto_0

    .line 442
    .end local v36           #queryParser:Lcom/android/mms/ui/MessageQueryParser;
    .restart local v16       #avatarMeIcon:Ljava/lang/String;
    .restart local v17       #avatarMeUri:Landroid/net/Uri;
    .restart local v20       #count:I
    .restart local v21       #cursor:Landroid/database/MatrixCursor;
    .restart local v31       #icon1:Ljava/lang/String;
    .restart local v43       #suggestTargetType:Ljava/lang/String;
    .restart local v45       #threadCursor:Landroid/database/MatrixCursor;
    .restart local v47       #totalCursor:Landroid/database/Cursor;
    :cond_a
    :try_start_1
    const-string v16, ""

    goto/16 :goto_1

    .line 471
    .end local v17           #avatarMeUri:Landroid/net/Uri;
    .restart local v8       #Boxtype:Ljava/lang/String;
    .restart local v18       #cl:Ljava/lang/String;
    .restart local v23       #date:Ljava/lang/String;
    .restart local v30       #i:I
    .restart local v33       #listorder:I
    .restart local v37       #recipientIds:Ljava/lang/String;
    .restart local v38       #recipients:Lcom/android/mms/data/ContactList;
    .restart local v40       #select_id:I
    .restart local v42       #subject:Ljava/lang/String;
    .restart local v44       #text:Ljava/lang/String;
    .restart local v46       #thread_id:I
    .restart local v48       #type:Ljava/lang/String;
    :cond_b
    const-string v2, ", "

    move-object/from16 v0, v38

    invoke-virtual {v0, v2}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .restart local v15       #address:Ljava/lang/String;
    goto/16 :goto_3

    .line 481
    .restart local v19       #contact:Lcom/android/mms/data/Contact;
    .restart local v35       #number:Ljava/lang/String;
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/SuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f0c000b

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_4

    .line 484
    :cond_d
    invoke-virtual/range {v38 .. v38}, Lcom/android/mms/data/ContactList;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_13

    .line 485
    const-string v2, "CBmessages"

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 486
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/SuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f0c00fb

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 487
    const v2, 0x7f0201f8

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v31

    .line 510
    :cond_e
    :goto_9
    const-string v2, "#CMAS#"

    invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 511
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/SuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v15}, Lcom/android/mms/ui/MessageUtils;->getCmasServiceCategoryStringId(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_4

    .line 488
    :cond_f
    const-string v2, "Pushmessage"

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 489
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/SuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f0c0161

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 490
    const v2, 0x7f020206

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v31

    goto :goto_9

    .line 491
    :cond_10
    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 492
    invoke-static/range {v35 .. v35}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 493
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/photo"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 497
    :goto_a
    if-nez v31, :cond_e

    .line 498
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/SuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    move/from16 v0, v46

    invoke-static {v2, v0}, Lcom/android/mms/ui/MessageUtils;->getContactImageId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v32

    .line 499
    .local v32, id:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/SuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v4, "drawable"

    const-string v5, "com.android.mms"

    move-object/from16 v0, v32

    invoke-virtual {v2, v0, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v31

    .line 500
    goto :goto_9

    .line 495
    .end local v32           #id:Ljava/lang/String;
    :cond_11
    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/data/Contact;->getThumnailUri()Ljava/lang/String;

    move-result-object v31

    goto :goto_a

    .line 502
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/SuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    move/from16 v0, v46

    invoke-static {v2, v0}, Lcom/android/mms/ui/MessageUtils;->getContactImageId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v32

    .line 503
    .restart local v32       #id:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/SuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v4, "drawable"

    const-string v5, "com.android.mms"

    move-object/from16 v0, v32

    invoke-virtual {v2, v0, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v31

    .line 504
    goto/16 :goto_9

    .line 506
    .end local v32           #id:Ljava/lang/String;
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/SuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v4, "msg_list_group_img"

    const-string v5, "drawable"

    const-string v7, "com.android.mms"

    invoke-virtual {v2, v4, v5, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v31

    goto/16 :goto_9

    .line 533
    .restart local v22       #cursorText:Ljava/lang/String;
    .restart local v49       #uriBuilder:Landroid/net/Uri$Builder;
    :cond_14
    const-string v2, "5"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 534
    const-string v43, "5"

    goto/16 :goto_5

    .line 536
    :cond_15
    const-string v43, "1"

    goto/16 :goto_5

    .line 538
    :cond_16
    const-string v2, "wpm"

    move-object/from16 v0, v48

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 539
    const-string v43, "0"

    goto/16 :goto_5

    .line 540
    :cond_17
    const-string v2, "mms"

    move-object/from16 v0, v48

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 541
    if-eqz v18, :cond_1b

    .line 542
    const-string v2, "1"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 543
    const-string v43, "2"

    .line 553
    :goto_b
    move-object/from16 v22, v18

    goto/16 :goto_5

    .line 544
    :cond_18
    const-string v2, "4"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 545
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/mms/SuggestionsProvider;->isFailedMms(I)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 546
    const-string v43, "6"

    goto :goto_b

    .line 548
    :cond_19
    const-string v43, "3"

    goto :goto_b

    .line 550
    :cond_1a
    const-string v43, "3"

    goto :goto_b

    .line 556
    :cond_1b
    const-string v2, "1"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 557
    const-string v43, "0"

    .line 567
    :goto_c
    invoke-static/range {v42 .. v42}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 568
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v42

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ">"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v44

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 571
    :cond_1c
    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_5

    .line 627
    .end local v8           #Boxtype:Ljava/lang/String;
    .end local v15           #address:Ljava/lang/String;
    .end local v16           #avatarMeIcon:Ljava/lang/String;
    .end local v18           #cl:Ljava/lang/String;
    .end local v19           #contact:Lcom/android/mms/data/Contact;
    .end local v20           #count:I
    .end local v22           #cursorText:Ljava/lang/String;
    .end local v23           #date:Ljava/lang/String;
    .end local v30           #i:I
    .end local v31           #icon1:Ljava/lang/String;
    .end local v33           #listorder:I
    .end local v35           #number:Ljava/lang/String;
    .end local v37           #recipientIds:Ljava/lang/String;
    .end local v38           #recipients:Lcom/android/mms/data/ContactList;
    .end local v40           #select_id:I
    .end local v42           #subject:Ljava/lang/String;
    .end local v43           #suggestTargetType:Ljava/lang/String;
    .end local v44           #text:Ljava/lang/String;
    .end local v46           #thread_id:I
    .end local v48           #type:Ljava/lang/String;
    .end local v49           #uriBuilder:Landroid/net/Uri$Builder;
    :catchall_0
    move-exception v2

    invoke-interface/range {v47 .. v47}, Landroid/database/Cursor;->close()V

    .line 628
    const/16 v47, 0x0

    .line 630
    if-eqz v45, :cond_1d

    .line 631
    invoke-virtual/range {v45 .. v45}, Landroid/database/MatrixCursor;->close()V

    .line 632
    const/16 v45, 0x0

    .line 634
    :cond_1d
    if-eqz v34, :cond_1e

    .line 635
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->close()V

    .line 636
    const/16 v34, 0x0

    .line 638
    :cond_1e
    invoke-virtual/range {v26 .. v26}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1f

    .line 639
    invoke-virtual/range {v26 .. v26}, Ljava/util/HashSet;->clear()V

    .line 641
    :cond_1f
    invoke-virtual/range {v25 .. v25}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_20

    .line 642
    invoke-virtual/range {v25 .. v25}, Ljava/util/HashSet;->clear()V

    :cond_20
    throw v2

    .line 558
    .restart local v8       #Boxtype:Ljava/lang/String;
    .restart local v15       #address:Ljava/lang/String;
    .restart local v16       #avatarMeIcon:Ljava/lang/String;
    .restart local v18       #cl:Ljava/lang/String;
    .restart local v19       #contact:Lcom/android/mms/data/Contact;
    .restart local v20       #count:I
    .restart local v22       #cursorText:Ljava/lang/String;
    .restart local v23       #date:Ljava/lang/String;
    .restart local v30       #i:I
    .restart local v31       #icon1:Ljava/lang/String;
    .restart local v33       #listorder:I
    .restart local v35       #number:Ljava/lang/String;
    .restart local v37       #recipientIds:Ljava/lang/String;
    .restart local v38       #recipients:Lcom/android/mms/data/ContactList;
    .restart local v40       #select_id:I
    .restart local v42       #subject:Ljava/lang/String;
    .restart local v43       #suggestTargetType:Ljava/lang/String;
    .restart local v44       #text:Ljava/lang/String;
    .restart local v46       #thread_id:I
    .restart local v48       #type:Ljava/lang/String;
    .restart local v49       #uriBuilder:Landroid/net/Uri$Builder;
    :cond_21
    :try_start_2
    const-string v2, "4"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 559
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/mms/SuggestionsProvider;->isFailedMms(I)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 560
    const-string v43, "5"

    goto :goto_c

    .line 562
    :cond_22
    const-string v43, "1"

    goto :goto_c

    .line 564
    :cond_23
    const-string v43, "1"

    goto :goto_c

    .line 575
    :cond_24
    const-string v43, "0"

    goto/16 :goto_5

    .line 583
    :cond_25
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/SuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    move/from16 v0, v46

    invoke-static {v2, v0}, Lcom/android/mms/ui/MessageUtils;->getContactImageId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v32

    .line 584
    .restart local v32       #id:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/SuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v4, "drawable"

    const-string v5, "com.android.mms"

    move-object/from16 v0, v32

    invoke-virtual {v2, v0, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v31

    goto/16 :goto_6

    .line 595
    .end local v32           #id:Ljava/lang/String;
    .restart local v24       #df:Ljava/text/DateFormat;
    .restart local v28       #format_date:Ljava/lang/String;
    :cond_26
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/SuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f0c0438

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    .restart local v29       #group_string:Ljava/lang/String;
    goto/16 :goto_7

    .line 603
    :cond_27
    if-eqz v41, :cond_28

    if-eqz v27, :cond_28

    .line 604
    invoke-static/range {v41 .. v41}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 605
    .local v13, StartTime:J
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 606
    .local v9, EndTime:J
    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 608
    .local v11, SelectedTime:J
    cmp-long v2, v11, v13

    if-ltz v2, :cond_7

    cmp-long v2, v11, v9

    if-gtz v2, :cond_7

    .line 609
    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x1

    aput-object v15, v2, v4

    const/4 v4, 0x2

    aput-object v22, v2, v4

    const/4 v4, 0x3

    aput-object v28, v2, v4

    const/4 v4, 0x4

    aput-object v29, v2, v4

    const/4 v4, 0x5

    aput-object v31, v2, v4

    const/4 v4, 0x6

    invoke-virtual/range {v49 .. v49}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x7

    aput-object v43, v2, v4

    const/16 v4, 0x8

    const-string v5, "android.intent.action.VIEW"

    aput-object v5, v2, v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 614
    .end local v9           #EndTime:J
    .end local v11           #SelectedTime:J
    .end local v13           #StartTime:J
    :cond_28
    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x1

    aput-object v15, v2, v4

    const/4 v4, 0x2

    aput-object v22, v2, v4

    const/4 v4, 0x3

    aput-object v28, v2, v4

    const/4 v4, 0x4

    aput-object v29, v2, v4

    const/4 v4, 0x5

    aput-object v31, v2, v4

    const/4 v4, 0x6

    invoke-virtual/range {v49 .. v49}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x7

    aput-object v43, v2, v4

    const/16 v4, 0x8

    const-string v5, "android.intent.action.VIEW"

    aput-object v5, v2, v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_8

    .line 627
    .end local v8           #Boxtype:Ljava/lang/String;
    .end local v15           #address:Ljava/lang/String;
    .end local v18           #cl:Ljava/lang/String;
    .end local v19           #contact:Lcom/android/mms/data/Contact;
    .end local v22           #cursorText:Ljava/lang/String;
    .end local v23           #date:Ljava/lang/String;
    .end local v24           #df:Ljava/text/DateFormat;
    .end local v28           #format_date:Ljava/lang/String;
    .end local v29           #group_string:Ljava/lang/String;
    .end local v33           #listorder:I
    .end local v35           #number:Ljava/lang/String;
    .end local v37           #recipientIds:Ljava/lang/String;
    .end local v38           #recipients:Lcom/android/mms/data/ContactList;
    .end local v40           #select_id:I
    .end local v42           #subject:Ljava/lang/String;
    .end local v44           #text:Ljava/lang/String;
    .end local v46           #thread_id:I
    .end local v48           #type:Ljava/lang/String;
    .end local v49           #uriBuilder:Landroid/net/Uri$Builder;
    :cond_29
    invoke-interface/range {v47 .. v47}, Landroid/database/Cursor;->close()V

    .line 628
    const/16 v47, 0x0

    .line 630
    if-eqz v45, :cond_2a

    .line 631
    invoke-virtual/range {v45 .. v45}, Landroid/database/MatrixCursor;->close()V

    .line 632
    const/16 v45, 0x0

    .line 634
    :cond_2a
    if-eqz v34, :cond_2b

    .line 635
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->close()V

    .line 636
    const/16 v34, 0x0

    .line 638
    :cond_2b
    invoke-virtual/range {v26 .. v26}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 639
    invoke-virtual/range {v26 .. v26}, Ljava/util/HashSet;->clear()V

    .line 641
    :cond_2c
    invoke-virtual/range {v25 .. v25}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2d

    .line 642
    invoke-virtual/range {v25 .. v25}, Ljava/util/HashSet;->clear()V

    .line 646
    :cond_2d
    const-string v2, "Mms/SuggestionsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFindoMessageBySuggestionSearch(), return cursor, rows="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v21 .. v21}, Landroid/database/MatrixCursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    return-object v21
.end method

.method private getMessageBySuggestionSearch(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 29
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 186
    const/4 v1, 0x0

    aget-object v1, p4, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    const/4 v9, 0x0

    .line 367
    :goto_0
    return-object v9

    .line 189
    :cond_0
    const/4 v2, 0x0

    .line 190
    .local v2, u:Landroid/net/Uri;
    const/4 v14, 0x0

    .line 191
    .local v14, messageCursor:Landroid/database/Cursor;
    const/16 v25, 0x0

    .line 193
    .local v25, totalCursor:Landroid/database/Cursor;
    const/4 v1, 0x0

    aget-object v1, p4, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    .line 194
    .local v18, searchSuggest:Ljava/lang/String;
    const-string v1, "Mms/SuggestionsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query(),searchSuggest="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "messages/suggestsearch"

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "pattern"

    move-object/from16 v0, v18

    invoke-virtual {v1, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 203
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/SuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "thread_id<>?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/mms/data/Conversation;->getTempThreadIdStr()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 214
    invoke-static/range {v18 .. v18}, Lcom/android/mms/data/Conversation;->conversationInfoCursor(Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object v23

    .line 216
    .local v23, threadCursor:Landroid/database/MatrixCursor;
    const/16 v20, 0x0

    .line 218
    .local v20, selectedSearchField:I
    :try_start_0
    invoke-static {}, Lcom/android/mms/ui/ConversationListFragment;->getSpinnerItem()I
    :try_end_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v20

    .line 224
    :goto_1
    if-nez v20, :cond_5

    .line 225
    new-instance v25, Landroid/database/MergeCursor;

    .end local v25           #totalCursor:Landroid/database/Cursor;
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v23, v1, v3

    const/4 v3, 0x1

    aput-object v14, v1, v3

    move-object/from16 v0, v25

    invoke-direct {v0, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 249
    .restart local v25       #totalCursor:Landroid/database/Cursor;
    :cond_1
    :goto_2
    new-instance v9, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/android/mms/SuggestionsProvider;->SUGGEST_COLUMNS:[Ljava/lang/String;

    invoke-direct {v9, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 252
    .local v9, cursor:Landroid/database/MatrixCursor;
    :try_start_1
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 269
    .local v8, count:I
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToFirst()Z

    .line 270
    const/4 v12, 0x0

    .local v12, i:I
    :goto_3
    if-ge v12, v8, :cond_13

    .line 271
    const/4 v1, 0x3

    move-object/from16 v0, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 272
    .local v22, text:Ljava/lang/String;
    const/16 v1, 0x9

    move-object/from16 v0, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 273
    .local v13, listorder:I
    const/16 v1, 0x8

    move-object/from16 v0, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 274
    .local v24, thread_id:I
    const/4 v1, 0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 275
    .local v19, select_id:I
    const/4 v1, 0x2

    move-object/from16 v0, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 276
    .local v26, type:Ljava/lang/String;
    const/4 v1, 0x4

    move-object/from16 v0, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 284
    .local v21, subject:Ljava/lang/String;
    const/16 v1, 0xc

    move-object/from16 v0, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 285
    .local v16, recipientIds:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 286
    const/4 v1, 0x7

    move-object/from16 v0, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 288
    :cond_2
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v1}, Lcom/android/mms/data/ContactList;->getByIds(Ljava/lang/String;Z)Lcom/android/mms/data/ContactList;

    move-result-object v17

    .line 289
    .local v17, recipients:Lcom/android/mms/data/ContactList;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePhoneNumberFormattingInMsg()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 290
    const-string v1, ", "

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->formattedNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 295
    .local v7, address:Ljava/lang/String;
    :goto_4
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 296
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 297
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/SuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0c013b

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 318
    :cond_3
    :goto_5
    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "search"

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "searchMode"

    const-string v4, "direct"

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "pattern"

    move-object/from16 v0, v18

    invoke-virtual {v1, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "message_type"

    move-object/from16 v0, v26

    invoke-virtual {v1, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "thread_id"

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v27

    .line 324
    .local v27, uriBuilder:Landroid/net/Uri$Builder;
    if-nez v13, :cond_e

    if-eqz v7, :cond_e

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 325
    const-string v1, "select_id"

    const-string v3, "-1"

    move-object/from16 v0, v27

    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 332
    :goto_6
    if-nez v22, :cond_4

    .line 333
    const-string v22, ""

    .line 336
    :cond_4
    if-eqz v22, :cond_11

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 337
    move-object/from16 v10, v22

    .line 345
    .local v10, cursorText:Ljava/lang/String;
    :goto_7
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    aput-object v7, v1, v3

    const/4 v3, 0x2

    aput-object v10, v1, v3

    const/4 v3, 0x3

    invoke-virtual/range {v27 .. v27}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v9, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 349
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    .line 219
    .end local v7           #address:Ljava/lang/String;
    .end local v8           #count:I
    .end local v9           #cursor:Landroid/database/MatrixCursor;
    .end local v10           #cursorText:Ljava/lang/String;
    .end local v12           #i:I
    .end local v13           #listorder:I
    .end local v16           #recipientIds:Ljava/lang/String;
    .end local v17           #recipients:Lcom/android/mms/data/ContactList;
    .end local v19           #select_id:I
    .end local v21           #subject:Ljava/lang/String;
    .end local v22           #text:Ljava/lang/String;
    .end local v24           #thread_id:I
    .end local v26           #type:Ljava/lang/String;
    .end local v27           #uriBuilder:Landroid/net/Uri$Builder;
    :catch_0
    move-exception v11

    .line 220
    .local v11, e:Ljava/lang/ExceptionInInitializerError;
    const-string v1, "Mms/SuggestionsProvider"

    const-string v3, "ExceptionInInitializerError occurred. So, set default searchfield as SEARCH_ALL"

    invoke-static {v1, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 228
    .end local v11           #e:Ljava/lang/ExceptionInInitializerError;
    :cond_5
    const/4 v1, 0x1

    move/from16 v0, v20

    if-ne v0, v1, :cond_7

    .line 229
    if-eqz v14, :cond_6

    .line 230
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 232
    :cond_6
    const/4 v14, 0x0

    .line 233
    new-instance v25, Landroid/database/MergeCursor;

    .end local v25           #totalCursor:Landroid/database/Cursor;
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v23, v1, v3

    const/4 v3, 0x1

    aput-object v14, v1, v3

    move-object/from16 v0, v25

    invoke-direct {v0, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .restart local v25       #totalCursor:Landroid/database/Cursor;
    goto/16 :goto_2

    .line 236
    :cond_7
    const/4 v1, 0x2

    move/from16 v0, v20

    if-ne v0, v1, :cond_1

    .line 237
    if-eqz v23, :cond_8

    .line 238
    invoke-virtual/range {v23 .. v23}, Landroid/database/MatrixCursor;->close()V

    .line 240
    :cond_8
    const/16 v23, 0x0

    .line 241
    new-instance v25, Landroid/database/MergeCursor;

    .end local v25           #totalCursor:Landroid/database/Cursor;
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v14, v1, v3

    const/4 v3, 0x1

    aput-object v23, v1, v3

    move-object/from16 v0, v25

    invoke-direct {v0, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .restart local v25       #totalCursor:Landroid/database/Cursor;
    goto/16 :goto_2

    .line 292
    .restart local v8       #count:I
    .restart local v9       #cursor:Landroid/database/MatrixCursor;
    .restart local v12       #i:I
    .restart local v13       #listorder:I
    .restart local v16       #recipientIds:Ljava/lang/String;
    .restart local v17       #recipients:Lcom/android/mms/data/ContactList;
    .restart local v19       #select_id:I
    .restart local v21       #subject:Ljava/lang/String;
    .restart local v22       #text:Ljava/lang/String;
    .restart local v24       #thread_id:I
    .restart local v26       #type:Ljava/lang/String;
    :cond_9
    :try_start_2
    const-string v1, ", "

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #address:Ljava/lang/String;
    goto/16 :goto_4

    .line 299
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/SuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0c000b

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_5

    .line 301
    :cond_b
    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/data/ContactList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_c

    .line 302
    const/4 v1, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v15

    .line 304
    .local v15, number:Ljava/lang/String;
    const-string v1, "CBmessages"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 305
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/SuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0c00fb

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 311
    .end local v15           #number:Ljava/lang/String;
    :cond_c
    :goto_8
    const-string v1, "#CMAS#"

    invoke-virtual {v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 312
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/SuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v7}, Lcom/android/mms/ui/MessageUtils;->getCmasServiceCategoryStringId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_5

    .line 306
    .restart local v15       #number:Ljava/lang/String;
    :cond_d
    const-string v1, "Pushmessage"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 307
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/SuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0c0161

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_8

    .line 327
    .end local v15           #number:Ljava/lang/String;
    .restart local v27       #uriBuilder:Landroid/net/Uri$Builder;
    :cond_e
    const-string v1, "select_id"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_6

    .line 352
    .end local v7           #address:Ljava/lang/String;
    .end local v8           #count:I
    .end local v12           #i:I
    .end local v13           #listorder:I
    .end local v16           #recipientIds:Ljava/lang/String;
    .end local v17           #recipients:Lcom/android/mms/data/ContactList;
    .end local v19           #select_id:I
    .end local v21           #subject:Ljava/lang/String;
    .end local v22           #text:Ljava/lang/String;
    .end local v24           #thread_id:I
    .end local v26           #type:Ljava/lang/String;
    .end local v27           #uriBuilder:Landroid/net/Uri$Builder;
    :catchall_0
    move-exception v1

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 353
    const/16 v25, 0x0

    .line 355
    if-eqz v23, :cond_f

    .line 356
    invoke-virtual/range {v23 .. v23}, Landroid/database/MatrixCursor;->close()V

    .line 357
    const/16 v23, 0x0

    .line 360
    :cond_f
    if-eqz v14, :cond_10

    .line 361
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 362
    const/4 v14, 0x0

    :cond_10
    throw v1

    .line 338
    .restart local v7       #address:Ljava/lang/String;
    .restart local v8       #count:I
    .restart local v12       #i:I
    .restart local v13       #listorder:I
    .restart local v16       #recipientIds:Ljava/lang/String;
    .restart local v17       #recipients:Lcom/android/mms/data/ContactList;
    .restart local v19       #select_id:I
    .restart local v21       #subject:Ljava/lang/String;
    .restart local v22       #text:Ljava/lang/String;
    .restart local v24       #thread_id:I
    .restart local v26       #type:Ljava/lang/String;
    .restart local v27       #uriBuilder:Landroid/net/Uri$Builder;
    :cond_11
    if-eqz v21, :cond_12

    :try_start_3
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    if-eqz v1, :cond_12

    .line 339
    move-object/from16 v10, v21

    .restart local v10       #cursorText:Ljava/lang/String;
    goto/16 :goto_7

    .line 341
    .end local v10           #cursorText:Ljava/lang/String;
    :cond_12
    move-object/from16 v10, v22

    .restart local v10       #cursorText:Ljava/lang/String;
    goto/16 :goto_7

    .line 352
    .end local v7           #address:Ljava/lang/String;
    .end local v10           #cursorText:Ljava/lang/String;
    .end local v13           #listorder:I
    .end local v16           #recipientIds:Ljava/lang/String;
    .end local v17           #recipients:Lcom/android/mms/data/ContactList;
    .end local v19           #select_id:I
    .end local v21           #subject:Ljava/lang/String;
    .end local v22           #text:Ljava/lang/String;
    .end local v24           #thread_id:I
    .end local v26           #type:Ljava/lang/String;
    .end local v27           #uriBuilder:Landroid/net/Uri$Builder;
    :cond_13
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 353
    const/16 v25, 0x0

    .line 355
    if-eqz v23, :cond_14

    .line 356
    invoke-virtual/range {v23 .. v23}, Landroid/database/MatrixCursor;->close()V

    .line 357
    const/16 v23, 0x0

    .line 360
    :cond_14
    if-eqz v14, :cond_15

    .line 361
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 362
    const/4 v14, 0x0

    .line 366
    :cond_15
    const-string v1, "Mms/SuggestionsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMessageBySuggestionSearch(),return cursor, rows="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Landroid/database/MatrixCursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private isFailedMms(I)Z
    .locals 10
    .parameter "mMsgId"

    .prologue
    const/4 v3, 0x0

    .line 651
    const/4 v8, 0x0

    .line 652
    .local v8, err_type:I
    const/4 v9, 0x0

    .line 654
    .local v9, isFailMms:Z
    invoke-virtual {p0}, Lcom/android/mms/SuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/SuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msg_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 657
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 658
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 659
    const-string v0, "err_type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 662
    :cond_0
    if-eqz v7, :cond_1

    .line 663
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 667
    :cond_1
    const/16 v0, 0xa

    if-lt v8, v0, :cond_3

    const/4 v9, 0x1

    .line 669
    :goto_0
    return v9

    .line 662
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 663
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 667
    :cond_3
    const/4 v9, 0x0

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 156
    const/4 v0, 0x0

    .line 158
    .local v0, cursor:Landroid/database/Cursor;
    invoke-static {}, Lcom/android/mms/TimeChecker;->sStart()V

    .line 159
    sget-object v4, Lcom/android/mms/SuggestionsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 160
    .local v3, uriMatch:I
    const-string v4, "Mms/SuggestionsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "query,matched:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    packed-switch v3, :pswitch_data_0

    .line 177
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized URI:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 164
    :pswitch_0
    invoke-direct/range {p0 .. p5}, Lcom/android/mms/SuggestionsProvider;->getMessageBySuggestionSearch(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 180
    :goto_0
    const-string v4, "Mms/SuggestionsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SuggestionsProvider , match "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/mms/TimeChecker;->sEnd()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-object v0

    .line 168
    :pswitch_1
    const/4 v1, 0x0

    .line 169
    .local v1, sleepCount:I
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/MmsApp;->IsCreated()Z

    move-result v4

    if-nez v4, :cond_1

    add-int/lit8 v2, v1, 0x1

    .end local v1           #sleepCount:I
    .local v2, sleepCount:I
    const/4 v4, 0x5

    if-ge v1, v4, :cond_0

    .line 170
    const-string v4, "Mms/SuggestionsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "waiting Mms creation, sleepCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-wide/16 v4, 0x64

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    move v1, v2

    .end local v2           #sleepCount:I
    .restart local v1       #sleepCount:I
    goto :goto_1

    .end local v1           #sleepCount:I
    .restart local v2       #sleepCount:I
    :cond_0
    move v1, v2

    .line 173
    .end local v2           #sleepCount:I
    .restart local v1       #sleepCount:I
    :cond_1
    invoke-direct/range {p0 .. p5}, Lcom/android/mms/SuggestionsProvider;->getFindoMessageBySuggestionSearch(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 174
    goto :goto_0

    .line 162
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method
