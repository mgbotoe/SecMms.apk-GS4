.class Lcom/android/mms/ui/BackgroundColorPicker$7;
.super Ljava/lang/Object;
.source "BackgroundColorPicker.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/BackgroundColorPicker;->makeBackgourndVertical(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/BackgroundColorPicker;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BackgroundColorPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Lcom/android/mms/ui/BackgroundColorPicker$7;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "view"
    .parameter "keyCode"
    .parameter "keyEvent"

    .prologue
    const/4 v4, 0x1

    .line 302
    const/4 v1, 0x0

    .line 303
    .local v1, grid:Landroid/widget/GridView;
    iget-object v3, p0, Lcom/android/mms/ui/BackgroundColorPicker$7;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget-boolean v3, v3, Lcom/android/mms/ui/MessageBubbleActivity;->mIsLandscape:Z

    if-nez v3, :cond_1

    .line 304
    iget-object v3, p0, Lcom/android/mms/ui/BackgroundColorPicker$7;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget-object v1, v3, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewVertical_BG:Landroid/widget/GridView;

    .line 308
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/BackgroundColorPicker$7;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    invoke-virtual {v3}, Lcom/android/mms/ui/BackgroundColorPicker;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/MmsConfig;->isFolderModel(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_4

    const/16 v3, 0x42

    if-ne p2, v3, :cond_4

    .line 309
    iget-object v3, p0, Lcom/android/mms/ui/BackgroundColorPicker$7;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    #getter for: Lcom/android/mms/ui/BackgroundColorPicker;->mMenuSave:Landroid/view/MenuItem;
    invoke-static {v3}, Lcom/android/mms/ui/BackgroundColorPicker;->access$200(Lcom/android/mms/ui/BackgroundColorPicker;)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/mms/ui/BackgroundColorPicker$7;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    #getter for: Lcom/android/mms/ui/BackgroundColorPicker;->mMenuSave:Landroid/view/MenuItem;
    invoke-static {v3}, Lcom/android/mms/ui/BackgroundColorPicker;->access$200(Lcom/android/mms/ui/BackgroundColorPicker;)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 310
    iget-object v3, p0, Lcom/android/mms/ui/BackgroundColorPicker$7;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    invoke-virtual {v3}, Lcom/android/mms/ui/BackgroundColorPicker;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Landroid/view/View;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 312
    .local v0, focusables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 313
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-eqz v3, :cond_0

    .line 314
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 312
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 306
    .end local v0           #focusables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v2           #i:I
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/BackgroundColorPicker$7;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    iget-object v1, v3, Lcom/android/mms/ui/MessageBubbleActivity;->mGridViewHorizontal_BG:Landroid/widget/GridView;

    goto :goto_0

    .line 317
    .restart local v0       #focusables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v2       #i:I
    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/mms/ui/BackgroundColorPicker$7;->this$0:Lcom/android/mms/ui/BackgroundColorPicker;

    const v6, 0x7f0c00dd

    invoke-virtual {v5, v6}, Lcom/android/mms/ui/BackgroundColorPicker;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 318
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    :cond_3
    move v3, v4

    .line 330
    .end local v0           #focusables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v2           #i:I
    :goto_2
    return v3

    .line 327
    :cond_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_5

    const/16 v3, 0x14

    if-ne p2, v3, :cond_5

    invoke-virtual {v1}, Landroid/widget/GridView;->getSelectedItemPosition()I

    move-result v3

    invoke-virtual {v1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v3, v5, :cond_5

    move v3, v4

    .line 328
    goto :goto_2

    .line 330
    :cond_5
    const/4 v3, 0x0

    goto :goto_2
.end method
