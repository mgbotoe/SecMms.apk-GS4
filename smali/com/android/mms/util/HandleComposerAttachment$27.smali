.class Lcom/android/mms/util/HandleComposerAttachment$27;
.super Ljava/lang/Object;
.source "HandleComposerAttachment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/HandleComposerAttachment;->HandleSingleAttachMentFromIntent(Landroid/os/Handler;Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/SharedPreferences;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/HandleComposerAttachment;


# direct methods
.method constructor <init>(Lcom/android/mms/util/HandleComposerAttachment;)V
    .locals 0
    .parameter

    .prologue
    .line 2009
    iput-object p1, p0, Lcom/android/mms/util/HandleComposerAttachment$27;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 2011
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2012
    return-void
.end method
