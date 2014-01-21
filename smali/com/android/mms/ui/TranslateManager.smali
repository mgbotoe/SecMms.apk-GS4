.class public Lcom/android/mms/ui/TranslateManager;
.super Ljava/lang/Object;
.source "TranslateManager.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field public static final MESSAGE_TRANSLATE_OFF:I = 0x0

.field public static final MESSAGE_TRANSLATE_ON:I = 0x1

.field public static final MESSAGE_TRANSLATE_ON_ADD_TEXT:I = 0x3

.field public static final MESSAGE_TRANSLATE_ON_SENDER_OFF:I = 0x2

.field public static final MESSAGE_TRANSLATE_ON_SENDER_OFF_ADD_TEXT:I = 0x4

.field public static final TRANSLATOR_ACTION_TRANSLATE:Ljava/lang/String; = "com.sec.android.app.translator.TRANSLATE"

.field public static final TRANSLATOR_MODE:Ljava/lang/String; = "translate_mode"

.field public static final TRANSLATOR_SOURCE_LANGUAGE:Ljava/lang/String; = "source_language"

.field public static final TRANSLATOR_SOURCE_TEXT:Ljava/lang/String; = "source_text"

.field public static final TRANSLATOR_SUPPORTED_LANGUAGES:Ljava/lang/String; = "supported_languages"

.field public static final TRANSLATOR_TARGET_LANGUAGE:Ljava/lang/String; = "target_language"

.field public static final TRANSLATOR_TARGET_TEXT:Ljava/lang/String; = "target_text"

.field public static mSupportedLanguages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

.field private mContext:Landroid/content/Context;

.field private mIsNotDialogFirst:Z

.field private mSpinnerSrc:Landroid/widget/Spinner;

.field private mSpinnerTarget:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 1
    .parameter "composer"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/TranslateManager;->mIsNotDialogFirst:Z

    .line 71
    iput-object p1, p0, Lcom/android/mms/ui/TranslateManager;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    .line 72
    iget-object v0, p0, Lcom/android/mms/ui/TranslateManager;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/TranslateManager;->mActivity:Landroid/app/Activity;

    .line 73
    iget-object v0, p0, Lcom/android/mms/ui/TranslateManager;->mActivity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/android/mms/ui/TranslateManager;->mContext:Landroid/content/Context;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/TranslateManager;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/mms/ui/TranslateManager;->mSpinnerSrc:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/TranslateManager;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/mms/ui/TranslateManager;->mSpinnerTarget:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/TranslateManager;)Lcom/android/mms/ui/ComposeMessageFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/mms/ui/TranslateManager;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    return-object v0
.end method

.method public static changeToValue(ILandroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "position"
    .parameter "context"

    .prologue
    .line 363
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, value:[Ljava/lang/String;
    aget-object v1, v0, p0

    if-eqz v1, :cond_0

    .line 365
    aget-object v1, v0, p0

    .line 367
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "es-ES"

    goto :goto_0
.end method

.method private getSubjectLabel(I)Ljava/lang/CharSequence;
    .locals 4
    .parameter "mode"

    .prologue
    .line 516
    const-string v0, "Subject: "

    .line 517
    .local v0, result:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/mms/ui/TranslateManager;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getTranslateModeForComposer()Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/TranslateManager;->getTranslateLanguage(I)Ljava/lang/String;

    move-result-object v1

    .line 518
    .local v1, value:Ljava/lang/String;
    :goto_0
    const-string v2, "zh-CN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "\u4e3b\u9898\uff1a"

    .line 528
    :goto_1
    return-object v0

    .line 517
    .end local v1           #value:Ljava/lang/String;
    :cond_0
    const-string v1, "en-US"

    goto :goto_0

    .line 519
    .restart local v1       #value:Ljava/lang/String;
    :cond_1
    const-string v2, "en-GB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "en-US"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/TranslateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0089

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 520
    :cond_3
    const-string v2, "fr-FR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v0, "Objet :"

    goto :goto_1

    .line 521
    :cond_4
    const-string v2, "de-DE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v0, "Betreff:"

    goto :goto_1

    .line 522
    :cond_5
    const-string v2, "it-IT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v0, "Oggetto:"

    goto :goto_1

    .line 523
    :cond_6
    const-string v2, "ja-JP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v0, "\u4ef6\u540d\uff1a"

    goto :goto_1

    .line 524
    :cond_7
    const-string v2, "ko-KR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v0, "\uc81c\ubaa9:"

    goto :goto_1

    .line 525
    :cond_8
    const-string v2, "es-ES"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v0, "Asunto:"

    goto :goto_1

    .line 526
    :cond_9
    const-string v2, "pt-BR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v0, "Assunto:"

    goto :goto_1

    .line 527
    :cond_a
    const-string v0, "Subject: "

    goto :goto_1
.end method

.method private getTargetPosition(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "src"
    .parameter "tar"

    .prologue
    .line 440
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/TranslateManager;->valueToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/TranslateManager;->getSupportedLanguageArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 441
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    .line 442
    .local v2, result:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 443
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p0, p2}, Lcom/android/mms/ui/TranslateManager;->valueToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v0

    .line 442
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 445
    :cond_1
    return v2
.end method

.method public static isTranslatableMms(Lcom/android/mms/ui/MessageItem;)Z
    .locals 6
    .parameter "msgItem"

    .prologue
    .line 532
    const/4 v0, 0x0

    .line 533
    .local v0, hasText:Z
    iget-object v5, p0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-nez v5, :cond_0

    .line 534
    const/4 v5, 0x0

    .line 551
    :goto_0
    return v5

    .line 536
    :cond_0
    iget-object v5, p0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v3

    .line 538
    .local v3, slideCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 539
    iget-object v5, p0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    .line 541
    .local v2, slide:Lcom/android/mms/model/SlideModel;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 542
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v4

    .line 543
    .local v4, tm:Lcom/android/mms/model/TextModel;
    invoke-virtual {v4}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 544
    const/4 v0, 0x1

    .line 538
    .end local v4           #tm:Lcom/android/mms/model/TextModel;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 548
    .end local v2           #slide:Lcom/android/mms/model/SlideModel;
    :cond_2
    iget-object v5, p0, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 549
    const/4 v0, 0x1

    :cond_3
    move v5, v0

    .line 551
    goto :goto_0
.end method

.method public static setTranslateSupportedLanguages(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 323
    .local p0, lists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    sput-object p0, Lcom/android/mms/ui/TranslateManager;->mSupportedLanguages:Ljava/util/ArrayList;

    .line 324
    return-void
.end method


# virtual methods
.method public changeToPosition(Ljava/lang/String;)I
    .locals 4
    .parameter "lang"

    .prologue
    .line 372
    iget-object v2, p0, Lcom/android/mms/ui/TranslateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 373
    .local v1, value:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 374
    aget-object v2, v1, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 378
    .end local v0           #i:I
    :goto_1
    return v0

    .line 373
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 378
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public extractTranslateText(Lcom/android/mms/data/WorkingMessage;Landroid/app/Activity;)Ljava/lang/String;
    .locals 9
    .parameter "workingMsg"
    .parameter "activity"

    .prologue
    const/4 v8, 0x0

    .line 409
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 410
    .local v3, sb:Ljava/lang/StringBuilder;
    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 411
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v5, "pref_key_enable_signature"

    invoke-interface {v2, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 412
    .local v1, isSignatureEnabled:Z
    const-string v5, "pref_key_signature_text"

    const-string v6, ""

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 413
    .local v4, signature:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 414
    const-string v5, "("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v8}, Lcom/android/mms/ui/TranslateManager;->getSubjectLabel(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 417
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->getSlides()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 418
    invoke-virtual {p1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->getSlides()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/model/SlideModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->getSlides()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/model/SlideModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 420
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->getSlides()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/model/SlideModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 421
    invoke-virtual {p1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->getSlides()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/model/SlideModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->getSlides()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/model/SlideModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v5, v7

    invoke-virtual {v6, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 425
    :cond_2
    invoke-virtual {p1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->getSlides()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/model/SlideModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 429
    .end local v0           #i:I
    :cond_3
    invoke-virtual {p1, v8}, Lcom/android/mms/data/WorkingMessage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 430
    if-eqz v1, :cond_5

    invoke-virtual {p1, v8}, Lcom/android/mms/data/WorkingMessage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 431
    invoke-virtual {p1, v8}, Lcom/android/mms/data/WorkingMessage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v8}, Lcom/android/mms/data/WorkingMessage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    :cond_4
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 433
    :cond_5
    invoke-virtual {p1, v8}, Lcom/android/mms/data/WorkingMessage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public extractTranslateText(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 4
    .parameter "msgItem"

    .prologue
    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 393
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 394
    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 395
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v2, :cond_0

    .line 396
    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 397
    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/mms/ui/TranslateManager;->getSubjectLabel(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->getSlides()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 400
    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->getSlides()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/SlideModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 401
    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->getSlides()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/SlideModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getLocaleLanguage()Ljava/lang/String;
    .locals 7

    .prologue
    .line 286
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 287
    .local v2, lc:Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, lang:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 289
    .local v3, locale:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/mms/ui/TranslateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080039

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 290
    .local v4, valueArray:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_2

    .line 291
    const-string v5, "en"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 292
    aget-object v5, v4, v0

    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 293
    aget-object v5, v4, v0

    .line 301
    :goto_1
    return-object v5

    .line 296
    :cond_0
    aget-object v5, v4, v0

    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 297
    aget-object v5, v4, v0

    goto :goto_1

    .line 290
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 301
    :cond_2
    const-string v5, "en-US"

    goto :goto_1
.end method

.method public getSupportedLanguageArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .parameter "source"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 327
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 328
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    sget-object v2, Lcom/android/mms/ui/TranslateManager;->mSupportedLanguages:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 329
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/android/mms/ui/TranslateManager;->mSupportedLanguages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 330
    sget-object v2, Lcom/android/mms/ui/TranslateManager;->mSupportedLanguages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    const-string v3, "source_language"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/TranslateManager;->stringToValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 331
    sget-object v2, Lcom/android/mms/ui/TranslateManager;->mSupportedLanguages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    const-string v3, "target_language"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/TranslateManager;->valueToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 335
    .end local v0           #i:I
    :cond_1
    return-object v1
.end method

.method public getTranslateLanguage(I)Ljava/lang/String;
    .locals 4
    .parameter "index"

    .prologue
    const/4 v3, 0x5

    .line 277
    iget-object v1, p0, Lcom/android/mms/ui/TranslateManager;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->getTranslateModeForComposer()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, language:[Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    aget-object v1, v0, p1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_0

    .line 279
    aget-object v1, v0, p1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    .line 282
    :cond_0
    aget-object v1, v0, p1

    return-object v1
.end method

.method protected hasSamsungAccount()Z
    .locals 3

    .prologue
    .line 495
    iget-object v2, p0, Lcom/android/mms/ui/TranslateManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 496
    .local v0, manager:Landroid/accounts/AccountManager;
    if-eqz v0, :cond_0

    .line 497
    const-string v2, "com.osp.app.signin"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 499
    .local v1, samsungAccnts:[Landroid/accounts/Account;
    array-length v2, v1

    if-lez v2, :cond_0

    .line 500
    const/4 v2, 0x1

    .line 504
    .end local v1           #samsungAccnts:[Landroid/accounts/Account;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x1

    .line 451
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/TranslateManager;->mContext:Landroid/content/Context;

    const v2, 0x1090008

    iget-object v3, p0, Lcom/android/mms/ui/TranslateManager;->mSpinnerSrc:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/TranslateManager;->getSupportedLanguageArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 453
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 454
    iget-object v1, p0, Lcom/android/mms/ui/TranslateManager;->mSpinnerTarget:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 455
    iget-boolean v1, p0, Lcom/android/mms/ui/TranslateManager;->mIsNotDialogFirst:Z

    if-nez v1, :cond_0

    .line 456
    iget-object v1, p0, Lcom/android/mms/ui/TranslateManager;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->getTranslateModeForComposer()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 457
    iget-object v1, p0, Lcom/android/mms/ui/TranslateManager;->mSpinnerTarget:Landroid/widget/Spinner;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/TranslateManager;->getTranslateLanguage(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/TranslateManager;->getTranslateLanguage(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/mms/ui/TranslateManager;->getTargetPosition(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 465
    :goto_0
    iput-boolean v4, p0, Lcom/android/mms/ui/TranslateManager;->mIsNotDialogFirst:Z

    .line 467
    :cond_0
    return-void

    .line 459
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/TranslateManager;->getLocaleLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "en"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 460
    iget-object v1, p0, Lcom/android/mms/ui/TranslateManager;->mSpinnerTarget:Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/android/mms/ui/TranslateManager;->getLocaleLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "es-ES"

    invoke-direct {p0, v2, v3}, Lcom/android/mms/ui/TranslateManager;->getTargetPosition(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 462
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/TranslateManager;->mSpinnerTarget:Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/android/mms/ui/TranslateManager;->getLocaleLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "en-US"

    invoke-direct {p0, v2, v3}, Lcom/android/mms/ui/TranslateManager;->getTargetPosition(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 473
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public runSignInActivity()V
    .locals 5

    .prologue
    .line 508
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 509
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "account_types"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "com.osp.app.signin"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 511
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 512
    iget-object v1, p0, Lcom/android/mms/ui/TranslateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 513
    return-void
.end method

.method public showNoTranslateTextDialog(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 555
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 556
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c03d8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 557
    const v1, 0x7f0c03d9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 558
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 559
    const v1, 0x7f0c017c

    new-instance v2, Lcom/android/mms/ui/TranslateManager$11;

    invoke-direct {v2, p0, p2}, Lcom/android/mms/ui/TranslateManager$11;-><init>(Lcom/android/mms/ui/TranslateManager;Landroid/content/Intent;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 565
    const v1, 0x7f0c017b

    new-instance v2, Lcom/android/mms/ui/TranslateManager$12;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/TranslateManager$12;-><init>(Lcom/android/mms/ui/TranslateManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 571
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 572
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 573
    return-void
.end method

.method public showSignInSamsungAccount(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 476
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 477
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c03fc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 478
    const v1, 0x7f0c03fd

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 479
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 480
    const v1, 0x7f0c017c

    new-instance v2, Lcom/android/mms/ui/TranslateManager$9;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/TranslateManager$9;-><init>(Lcom/android/mms/ui/TranslateManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 485
    const v1, 0x7f0c017b

    new-instance v2, Lcom/android/mms/ui/TranslateManager$10;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/TranslateManager$10;-><init>(Lcom/android/mms/ui/TranslateManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 490
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 491
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 492
    return-void
.end method

.method public showTranslateDialog(Landroid/content/Context;)V
    .locals 20
    .parameter "context"

    .prologue
    .line 77
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/ui/TranslateManager;->mIsNotDialogFirst:Z

    .line 78
    const-string v2, "layout_inflater"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/LayoutInflater;

    .line 79
    .local v14, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f04008f

    const/4 v3, 0x0

    invoke-virtual {v14, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    .line 80
    .local v16, layout:Landroid/view/View;
    new-instance v13, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 81
    .local v13, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f040090

    const/4 v3, 0x0

    invoke-virtual {v14, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    .line 82
    .local v19, titleLayout:Landroid/view/View;
    const v2, 0x7f0b02a3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 83
    .local v5, checkLayout:Landroid/widget/LinearLayout;
    const v2, 0x7f0b02a6

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 84
    .local v7, checkAddTextLayout:Landroid/widget/LinearLayout;
    const v2, 0x7f0b02a4

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 85
    .local v9, incomingTv:Landroid/widget/TextView;
    const v2, 0x7f0b029f

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 86
    .local v11, meTv:Landroid/widget/TextView;
    const v2, 0x7f0b02a1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 87
    .local v10, senderTv:Landroid/widget/TextView;
    const v2, 0x7f0b02a7

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 88
    .local v8, addTextText:Landroid/widget/TextView;
    const v2, 0x7f0b02a9

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Switch;

    .line 89
    .local v17, onoffswitch:Landroid/widget/Switch;
    const v2, 0x7f0b02a5

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 90
    .local v4, checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    const v2, 0x7f0b02a8

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 91
    .local v6, checkAddText:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/TranslateManager;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getTranslateModeForComposer()Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    const/4 v15, 0x1

    .line 93
    .local v15, isChecked:Z
    :goto_0
    const v2, 0x7f0b02a1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 94
    .local v18, sender:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/TranslateManager;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->isNewCompose()Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/TranslateManager;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->recipientCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 95
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/TranslateManager;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/TranslateManager;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getContactHeaderString(Lcom/android/mms/data/ContactList;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    :cond_0
    const v2, 0x7f0b02a0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/TranslateManager;->mSpinnerSrc:Landroid/widget/Spinner;

    .line 98
    const v2, 0x7f0b02a2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/TranslateManager;->mSpinnerTarget:Landroid/widget/Spinner;

    .line 100
    const v2, 0x7f080038

    const v3, 0x1090008

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v12

    .line 101
    .local v12, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v2, 0x1090009

    invoke-virtual {v12, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 102
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/TranslateManager;->mSpinnerSrc:Landroid/widget/Spinner;

    invoke-virtual {v2, v12}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 103
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/TranslateManager;->mSpinnerSrc:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 104
    if-eqz v15, :cond_4

    .line 105
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/TranslateManager;->mSpinnerSrc:Landroid/widget/Spinner;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/TranslateManager;->getTranslateLanguage(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/TranslateManager;->changeToPosition(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 106
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/TranslateManager;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getTranslateModeForComposer()Ljava/lang/String;

    move-result-object v2

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 107
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 108
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 109
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 111
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/TranslateManager;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getTranslateModeForComposer()Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 112
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 113
    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 114
    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    .line 115
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 116
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 129
    :cond_2
    :goto_1
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/widget/Switch;->setChecked(Z)V

    .line 130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/TranslateManager;->mSpinnerSrc:Landroid/widget/Spinner;

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/TranslateManager;->mSpinnerTarget:Landroid/widget/Spinner;

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 133
    new-instance v2, Lcom/android/mms/ui/TranslateManager$1;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v11}, Lcom/android/mms/ui/TranslateManager$1;-><init>(Lcom/android/mms/ui/TranslateManager;Lcom/sec/android/touchwiz/widget/TwCheckBox;Landroid/widget/LinearLayout;Lcom/sec/android/touchwiz/widget/TwCheckBox;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 164
    new-instance v2, Lcom/android/mms/ui/TranslateManager$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v4}, Lcom/android/mms/ui/TranslateManager$2;-><init>(Lcom/android/mms/ui/TranslateManager;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    new-instance v2, Lcom/android/mms/ui/TranslateManager$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v6}, Lcom/android/mms/ui/TranslateManager$3;-><init>(Lcom/android/mms/ui/TranslateManager;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    new-instance v2, Lcom/android/mms/ui/TranslateManager$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v6, v7, v8}, Lcom/android/mms/ui/TranslateManager$4;-><init>(Lcom/android/mms/ui/TranslateManager;Lcom/sec/android/touchwiz/widget/TwCheckBox;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    invoke-virtual {v4, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    .line 203
    new-instance v2, Lcom/android/mms/ui/TranslateManager$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/mms/ui/TranslateManager$5;-><init>(Lcom/android/mms/ui/TranslateManager;)V

    invoke-virtual {v4, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    new-instance v2, Lcom/android/mms/ui/TranslateManager$6;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/mms/ui/TranslateManager$6;-><init>(Lcom/android/mms/ui/TranslateManager;)V

    invoke-virtual {v6, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 218
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 219
    const v2, 0x7f0c017b

    new-instance v3, Lcom/android/mms/ui/TranslateManager$7;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v3, v0, v1, v4, v6}, Lcom/android/mms/ui/TranslateManager$7;-><init>(Lcom/android/mms/ui/TranslateManager;Landroid/widget/Switch;Lcom/sec/android/touchwiz/widget/TwCheckBox;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v13, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 255
    const v2, 0x7f0c017c

    new-instance v3, Lcom/android/mms/ui/TranslateManager$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/mms/ui/TranslateManager$8;-><init>(Lcom/android/mms/ui/TranslateManager;)V

    invoke-virtual {v13, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 260
    sget-object v2, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v13, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 261
    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 262
    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 263
    return-void

    .line 91
    .end local v12           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v15           #isChecked:Z
    .end local v18           #sender:Landroid/widget/TextView;
    :cond_3
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 119
    .restart local v12       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .restart local v15       #isChecked:Z
    .restart local v18       #sender:Landroid/widget/TextView;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/TranslateManager;->mSpinnerSrc:Landroid/widget/Spinner;

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/TranslateManager;->getLocaleLanguage()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/TranslateManager;->changeToPosition(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 120
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    .line 121
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 122
    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    .line 123
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 124
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 125
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 126
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 127
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_1
.end method

.method public stringToPosition(Ljava/lang/String;)I
    .locals 4
    .parameter "str"

    .prologue
    .line 382
    iget-object v2, p0, Lcom/android/mms/ui/TranslateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080038

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, value:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 384
    aget-object v2, v1, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 388
    .end local v0           #i:I
    :goto_1
    return v0

    .line 383
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 388
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public stringToValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "str"

    .prologue
    .line 351
    iget-object v4, p0, Lcom/android/mms/ui/TranslateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080039

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 352
    .local v3, valueArray:[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/mms/ui/TranslateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080038

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 353
    .local v2, strArray:[Ljava/lang/String;
    const-string v1, "es-ES"

    .line 354
    .local v1, result:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 355
    aget-object v4, v3, v0

    if-eqz v4, :cond_0

    aget-object v4, v2, v0

    if-eqz v4, :cond_0

    aget-object v4, v2, v0

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 356
    aget-object v1, v3, v0

    .line 354
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 359
    :cond_1
    return-object v1
.end method

.method public updateTranslateMode(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "threadId"
    .parameter "mode"

    .prologue
    .line 267
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "threads"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 268
    .local v2, translate_mode:Landroid/net/Uri;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 269
    .local v3, values:Landroid/content/ContentValues;
    const-string v0, "translate_mode"

    invoke-virtual {v3, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 272
    return-void
.end method

.method public valueToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "value"

    .prologue
    .line 339
    iget-object v4, p0, Lcom/android/mms/ui/TranslateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080039

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 340
    .local v3, valueArray:[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/mms/ui/TranslateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080038

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 341
    .local v2, strArray:[Ljava/lang/String;
    const-string v1, "Spanish"

    .line 342
    .local v1, result:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 343
    aget-object v4, v3, v0

    if-eqz v4, :cond_0

    aget-object v4, v2, v0

    if-eqz v4, :cond_0

    aget-object v4, v3, v0

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 344
    aget-object v1, v2, v0

    .line 342
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 347
    :cond_1
    return-object v1
.end method

.method public viewTranslate(Ljava/lang/String;Landroid/app/Activity;I)V
    .locals 3
    .parameter "srcText"
    .parameter "activity"
    .parameter "requestCode"

    .prologue
    .line 305
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 306
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.sec.android.app.translator.TRANSLATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    const-string v1, "mode"

    const-string v2, "viewer"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    const-string v1, "source_text"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    iget-object v1, p0, Lcom/android/mms/ui/TranslateManager;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->getTranslateModeForComposer()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 310
    const-string v1, "source_language"

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/TranslateManager;->getTranslateLanguage(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    const-string v1, "target_language"

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/TranslateManager;->getTranslateLanguage(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    :goto_0
    invoke-virtual {p2, v0, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 320
    return-void

    .line 314
    :cond_0
    const-string v1, "source_language"

    const-string v2, "unknown"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    const-string v1, "target_language"

    invoke-virtual {p0}, Lcom/android/mms/ui/TranslateManager;->getLocaleLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
