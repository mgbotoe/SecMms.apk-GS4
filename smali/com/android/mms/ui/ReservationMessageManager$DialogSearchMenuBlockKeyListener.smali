.class Lcom/android/mms/ui/ReservationMessageManager$DialogSearchMenuBlockKeyListener;
.super Ljava/lang/Object;
.source "ReservationMessageManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ReservationMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogSearchMenuBlockKeyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ReservationMessageManager;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/ReservationMessageManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1817
    iput-object p1, p0, Lcom/android/mms/ui/ReservationMessageManager$DialogSearchMenuBlockKeyListener;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/ReservationMessageManager;Lcom/android/mms/ui/ReservationMessageManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1817
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ReservationMessageManager$DialogSearchMenuBlockKeyListener;-><init>(Lcom/android/mms/ui/ReservationMessageManager;)V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "arg0"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1820
    const/16 v0, 0x52

    if-eq p2, v0, :cond_0

    const/16 v0, 0x54

    if-ne p2, v0, :cond_1

    .line 1821
    :cond_0
    const/4 v0, 0x1

    .line 1823
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
