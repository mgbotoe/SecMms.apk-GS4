.class Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$1;
.super Ljava/lang/Object;
.source "SMultiWindowActivity.java"

# interfaces
.implements Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->setStateChangeListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 362
    iput-object p1, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$1;->this$0:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onModeChanged(Z)V
    .locals 1
    .parameter "isMultiWindow"

    .prologue
    .line 364
    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$1;->this$0:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    #getter for: Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mStateChangeListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;
    invoke-static {v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->access$000(Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;->onModeChanged(Z)V

    .line 365
    return-void
.end method

.method public onSizeChanged(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "rectInfo"

    .prologue
    .line 372
    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$1;->this$0:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    #getter for: Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mStateChangeListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;
    invoke-static {v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->access$000(Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;->onSizeChanged(Landroid/graphics/Rect;)V

    .line 373
    return-void
.end method

.method public onZoneChanged(I)V
    .locals 1
    .parameter "zoneInfo"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$1;->this$0:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    #getter for: Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mStateChangeListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;
    invoke-static {v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->access$000(Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;->onZoneChanged(I)V

    .line 369
    return-void
.end method
