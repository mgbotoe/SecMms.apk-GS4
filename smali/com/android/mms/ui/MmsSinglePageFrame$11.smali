.class Lcom/android/mms/ui/MmsSinglePageFrame$11;
.super Ljava/lang/Object;
.source "MmsSinglePageFrame.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MmsSinglePageFrame;->addAudioInfo(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;Lcom/android/mms/model/AudioModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private audioModel:Lcom/android/mms/model/AudioModel;

.field final synthetic this$0:Lcom/android/mms/ui/MmsSinglePageFrame;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsSinglePageFrame;)V
    .locals 1
    .parameter

    .prologue
    .line 1993
    iput-object p1, p0, Lcom/android/mms/ui/MmsSinglePageFrame$11;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1994
    sget-object v0, Lcom/android/mms/ui/MmsSinglePageFrame;->staticAudioModel:Lcom/android/mms/model/AudioModel;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame$11;->audioModel:Lcom/android/mms/model/AudioModel;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1997
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageFrame$11;->this$0:Lcom/android/mms/ui/MmsSinglePageFrame;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageFrame$11;->audioModel:Lcom/android/mms/model/AudioModel;

    #calls: Lcom/android/mms/ui/MmsSinglePageFrame;->saveAttachFile(Lcom/android/mms/model/MediaModel;)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/MmsSinglePageFrame;->access$700(Lcom/android/mms/ui/MmsSinglePageFrame;Lcom/android/mms/model/MediaModel;)V

    .line 1998
    return-void
.end method
