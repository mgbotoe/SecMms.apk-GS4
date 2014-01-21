.class public Lcom/samsung/mms/ui/LinkActionChooserFragment;
.super Landroid/app/DialogFragment;
.source "LinkActionChooserFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/mms/ui/LinkActionChooserFragment$ViewAction;,
        Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;
    }
.end annotation


# static fields
.field static final ACTION_ADD_TO_BOOKMARKS:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action; = null

.field static final ACTION_ADD_TO_CONTACTS:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action; = null

.field static final ACTION_CALL:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action; = null

.field static final ACTION_COPY_TEXT:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action; = null

.field static final ACTION_IP_CALL:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action; = null

.field static final ACTION_OPEN_URL:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action; = null

.field static final ACTION_SEND_EMAIL:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action; = null

.field static final ACTION_SEND_TEXT_MESSAGE:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action; = null

.field static final ACTION_VIDEO_CALL:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action; = null

.field static final ACTION_VIEW_CONTACT:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action; = null

.field private static final EXTRA_TEXT:Ljava/lang/String; = "text"

.field private static final EXTRA_URL:Ljava/lang/String; = "url"

.field private static final TAG:Ljava/lang/String; = "Mms/LinkActionChooserFragment"


# instance fields
.field private mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mText:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private urlcheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 224
    new-instance v0, Lcom/samsung/mms/ui/LinkActionChooserFragment$ViewAction;

    const v1, 0x7f0c019a

    invoke-direct {v0, v1}, Lcom/samsung/mms/ui/LinkActionChooserFragment$ViewAction;-><init>(I)V

    sput-object v0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->ACTION_SEND_EMAIL:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;

    .line 226
    new-instance v0, Lcom/samsung/mms/ui/LinkActionChooserFragment$ViewAction;

    const v1, 0x7f0c0197

    invoke-direct {v0, v1}, Lcom/samsung/mms/ui/LinkActionChooserFragment$ViewAction;-><init>(I)V

    sput-object v0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->ACTION_OPEN_URL:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;

    .line 228
    new-instance v0, Lcom/samsung/mms/ui/LinkActionChooserFragment$2;

    const v1, 0x7f0c0005

    invoke-direct {v0, v1}, Lcom/samsung/mms/ui/LinkActionChooserFragment$2;-><init>(I)V

    sput-object v0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->ACTION_CALL:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;

    .line 237
    new-instance v0, Lcom/samsung/mms/ui/LinkActionChooserFragment$3;

    const v1, 0x7f0c022b

    invoke-direct {v0, v1}, Lcom/samsung/mms/ui/LinkActionChooserFragment$3;-><init>(I)V

    sput-object v0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->ACTION_VIDEO_CALL:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;

    .line 247
    new-instance v0, Lcom/samsung/mms/ui/LinkActionChooserFragment$4;

    const v1, 0x7f0c0006

    invoke-direct {v0, v1}, Lcom/samsung/mms/ui/LinkActionChooserFragment$4;-><init>(I)V

    sput-object v0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->ACTION_IP_CALL:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;

    .line 257
    new-instance v0, Lcom/samsung/mms/ui/LinkActionChooserFragment$5;

    const v1, 0x7f0c0198

    invoke-direct {v0, v1}, Lcom/samsung/mms/ui/LinkActionChooserFragment$5;-><init>(I)V

    sput-object v0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->ACTION_ADD_TO_BOOKMARKS:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;

    .line 270
    new-instance v0, Lcom/samsung/mms/ui/LinkActionChooserFragment$6;

    const v1, 0x7f0c001c

    invoke-direct {v0, v1}, Lcom/samsung/mms/ui/LinkActionChooserFragment$6;-><init>(I)V

    sput-object v0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->ACTION_COPY_TEXT:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;

    .line 280
    new-instance v0, Lcom/samsung/mms/ui/LinkActionChooserFragment$7;

    const v1, 0x7f0c004d

    invoke-direct {v0, v1}, Lcom/samsung/mms/ui/LinkActionChooserFragment$7;-><init>(I)V

    sput-object v0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->ACTION_ADD_TO_CONTACTS:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;

    .line 288
    new-instance v0, Lcom/samsung/mms/ui/LinkActionChooserFragment$8;

    const v1, 0x7f0c004c

    invoke-direct {v0, v1}, Lcom/samsung/mms/ui/LinkActionChooserFragment$8;-><init>(I)V

    sput-object v0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->ACTION_VIEW_CONTACT:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;

    .line 301
    new-instance v0, Lcom/samsung/mms/ui/LinkActionChooserFragment$9;

    const v1, 0x7f0c0199

    invoke-direct {v0, v1}, Lcom/samsung/mms/ui/LinkActionChooserFragment$9;-><init>(I)V

    sput-object v0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->ACTION_SEND_TEXT_MESSAGE:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 212
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/mms/ui/LinkActionChooserFragment;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->urlcheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method public static final newInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DialogFragment;
    .locals 3
    .parameter "url"
    .parameter "text"

    .prologue
    .line 54
    new-instance v1, Lcom/samsung/mms/ui/LinkActionChooserFragment;

    invoke-direct {v1}, Lcom/samsung/mms/ui/LinkActionChooserFragment;-><init>()V

    .line 55
    .local v1, fg:Lcom/samsung/mms/ui/LinkActionChooserFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 56
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "url"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v2, "text"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v1, v0}, Lcom/samsung/mms/ui/LinkActionChooserFragment;->setArguments(Landroid/os/Bundle;)V

    .line 59
    return-object v1
.end method

.method private showUnownURLinkExplainDialog(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    const/4 v4, 0x0

    .line 184
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/mms/ui/LinkActionChooserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 185
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0c0429

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 186
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 187
    const v2, 0x7f0c004f

    invoke-virtual {v0, v2, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 188
    const v2, 0x7f0c0050

    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 189
    invoke-virtual {p0}, Lcom/samsung/mms/ui/LinkActionChooserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f040092

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 190
    .local v1, contents:Landroid/view/View;
    const v2, 0x7f0b0105

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v2, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->urlcheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 191
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 192
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 193
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;

    .line 136
    .local v2, action:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;
    if-nez v2, :cond_0

    .line 180
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isUnknownURLlink()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 142
    sget-object v0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->ACTION_OPEN_URL:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    invoke-virtual {p0}, Lcom/samsung/mms/ui/LinkActionChooserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getURLlinkOption(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 144
    .local v6, result:Ljava/lang/Boolean;
    const-string v0, "Mms/LinkActionChooserFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown URL Link Setting : "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {p0}, Lcom/samsung/mms/ui/LinkActionChooserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->mUrl:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->mText:Ljava/lang/String;

    invoke-virtual {v2, v0, v1, v7}, Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;->execute(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_1
    iget-object v4, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->mUrl:Ljava/lang/String;

    .line 150
    .local v4, m_Url:Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->mText:Ljava/lang/String;

    .line 151
    .local v5, m_Text:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/mms/ui/LinkActionChooserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 153
    .local v3, urlActivity:Landroid/app/Activity;
    new-instance v0, Lcom/samsung/mms/ui/LinkActionChooserFragment$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/mms/ui/LinkActionChooserFragment$1;-><init>(Lcom/samsung/mms/ui/LinkActionChooserFragment;Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/mms/ui/LinkActionChooserFragment;->showUnownURLinkExplainDialog(Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 174
    .end local v3           #urlActivity:Landroid/app/Activity;
    .end local v4           #m_Url:Ljava/lang/String;
    .end local v5           #m_Text:Ljava/lang/String;
    .end local v6           #result:Ljava/lang/Boolean;
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/mms/ui/LinkActionChooserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->mUrl:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->mText:Ljava/lang/String;

    invoke-virtual {v2, v0, v1, v7}, Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;->execute(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/mms/ui/LinkActionChooserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->mUrl:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->mText:Ljava/lang/String;

    invoke-virtual {v2, v0, v1, v7}, Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;->execute(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    .line 64
    invoke-virtual {p0}, Lcom/samsung/mms/ui/LinkActionChooserFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 65
    .local v0, args:Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 66
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 69
    :cond_0
    const-string v3, "url"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->mUrl:Ljava/lang/String;

    .line 70
    const-string v3, "text"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->mText:Ljava/lang/String;

    .line 72
    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/samsung/mms/ui/LinkActionChooserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f040062

    const v6, 0x7f0b0217

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    iput-object v3, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 74
    iget-object v3, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->mUrl:Ljava/lang/String;

    const-string v4, "mailto:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 75
    iget-object v3, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    sget-object v4, Lcom/samsung/mms/ui/LinkActionChooserFragment;->ACTION_SEND_EMAIL:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 76
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 77
    :cond_1
    iget-object v3, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    sget-object v4, Lcom/samsung/mms/ui/LinkActionChooserFragment;->ACTION_SEND_TEXT_MESSAGE:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 80
    :cond_2
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 81
    iget-object v3, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->mText:Ljava/lang/String;

    invoke-static {v3, v7}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    .line 82
    .local v1, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 83
    iget-object v3, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    sget-object v4, Lcom/samsung/mms/ui/LinkActionChooserFragment;->ACTION_VIEW_CONTACT:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 122
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    sget-object v4, Lcom/samsung/mms/ui/LinkActionChooserFragment;->ACTION_COPY_TEXT:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 124
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/mms/ui/LinkActionChooserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->mText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 128
    .local v2, result:Landroid/app/Dialog;
    invoke-virtual {v2, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 129
    sget-object v3, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 130
    return-object v2

    .line 84
    .end local v2           #result:Landroid/app/Dialog;
    .restart local v1       #contact:Lcom/android/mms/data/Contact;
    :cond_4
    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->canAddToContacts(Lcom/android/mms/data/Contact;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 85
    iget-object v3, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    sget-object v4, Lcom/samsung/mms/ui/LinkActionChooserFragment;->ACTION_ADD_TO_CONTACTS:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 87
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    :cond_5
    iget-object v3, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->mUrl:Ljava/lang/String;

    const-string v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 88
    invoke-virtual {p0}, Lcom/samsung/mms/ui/LinkActionChooserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/util/TelephonyUtils;->isVoiceCallAvailabe(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 89
    iget-object v3, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    sget-object v4, Lcom/samsung/mms/ui/LinkActionChooserFragment;->ACTION_CALL:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 92
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVideoCall()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 93
    iget-object v3, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    sget-object v4, Lcom/samsung/mms/ui/LinkActionChooserFragment;->ACTION_VIDEO_CALL:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 96
    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupportIpCall()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 97
    iget-object v3, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    sget-object v4, Lcom/samsung/mms/ui/LinkActionChooserFragment;->ACTION_IP_CALL:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 101
    :cond_8
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 102
    iget-object v3, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->mText:Ljava/lang/String;

    invoke-static {v3, v7}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    .line 103
    .restart local v1       #contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 104
    iget-object v3, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    sget-object v4, Lcom/samsung/mms/ui/LinkActionChooserFragment;->ACTION_VIEW_CONTACT:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 111
    :cond_9
    :goto_1
    iget-object v3, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    sget-object v4, Lcom/samsung/mms/ui/LinkActionChooserFragment;->ACTION_SEND_TEXT_MESSAGE:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 105
    :cond_a
    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->canAddToContacts(Lcom/android/mms/data/Contact;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 106
    iget-object v3, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    sget-object v4, Lcom/samsung/mms/ui/LinkActionChooserFragment;->ACTION_ADD_TO_CONTACTS:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 107
    :cond_b
    iget-object v3, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->mText:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->isNumberCanAddToContact(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 108
    iget-object v3, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    sget-object v4, Lcom/samsung/mms/ui/LinkActionChooserFragment;->ACTION_ADD_TO_CONTACTS:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 113
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    :cond_c
    iget-object v3, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    sget-object v4, Lcom/samsung/mms/ui/LinkActionChooserFragment;->ACTION_OPEN_URL:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 115
    iget-object v3, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->mUrl:Ljava/lang/String;

    const-string v4, "rtsp://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v3

    const-string v4, "com.android.browser"

    invoke-static {v3, v4}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v3

    const-string v4, "com.sec.android.app.sbrowser"

    invoke-static {v3, v4}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 118
    :cond_d
    iget-object v3, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    sget-object v4, Lcom/samsung/mms/ui/LinkActionChooserFragment;->ACTION_ADD_TO_BOOKMARKS:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
