.class Lcom/android/mms/util/HandleComposerAttachment$31;
.super Ljava/lang/Object;
.source "HandleComposerAttachment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/HandleComposerAttachment;->HandleMultiAttachmentFromIntent(Landroid/os/Handler;Landroid/content/Intent;Landroid/os/Bundle;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/HandleComposerAttachment;

.field final synthetic val$extras:Landroid/os/Bundle;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$import_count:I

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/os/Handler;Landroid/content/Intent;Landroid/os/Bundle;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2141
    iput-object p1, p0, Lcom/android/mms/util/HandleComposerAttachment$31;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    iput-object p2, p0, Lcom/android/mms/util/HandleComposerAttachment$31;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/mms/util/HandleComposerAttachment$31;->val$intent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/android/mms/util/HandleComposerAttachment$31;->val$extras:Landroid/os/Bundle;

    iput p5, p0, Lcom/android/mms/util/HandleComposerAttachment$31;->val$import_count:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5
    .parameter "arg0"

    .prologue
    .line 2143
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$31;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    const/4 v1, 0x0

    #setter for: Lcom/android/mms/util/HandleComposerAttachment;->mHasSoundShotDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->access$002(Lcom/android/mms/util/HandleComposerAttachment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 2144
    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$31;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment$31;->val$handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment$31;->val$intent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/mms/util/HandleComposerAttachment$31;->val$extras:Landroid/os/Bundle;

    iget v4, p0, Lcom/android/mms/util/HandleComposerAttachment$31;->val$import_count:I

    #calls: Lcom/android/mms/util/HandleComposerAttachment;->multiAttachMent(Landroid/os/Handler;Landroid/content/Intent;Landroid/os/Bundle;I)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/util/HandleComposerAttachment;->access$800(Lcom/android/mms/util/HandleComposerAttachment;Landroid/os/Handler;Landroid/content/Intent;Landroid/os/Bundle;I)V

    .line 2145
    return-void
.end method
