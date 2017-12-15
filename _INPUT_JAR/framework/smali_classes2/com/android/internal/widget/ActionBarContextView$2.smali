.class Lcom/android/internal/widget/ActionBarContextView$2;
.super Ljava/lang/Object;
.source "ActionBarContextView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/ActionBarContextView;->initForMode(Landroid/view/ActionMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/ActionBarContextView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/ActionBarContextView;)V
    .registers 2

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContextView$2;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 18
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 246
    const/4 v13, 0x2

    new-array v9, v13, [I

    .line 247
    .local v9, "screenPos":[I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 248
    .local v4, "displayFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 249
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 250
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 251
    .local v3, "context":Landroid/content/Context;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v11

    .line 252
    .local v11, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 253
    .local v5, "height":I
    const/4 v13, 0x1

    aget v13, v9, v13

    div-int/lit8 v14, v5, 0x2

    add-int v7, v13, v14

    .line 254
    .local v7, "midy":I
    const/4 v10, 0x0

    .line 255
    .local v10, "statusBarHeight":I
    const-string/jumbo v13, "window"

    invoke-static {v13}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v12

    .line 257
    .local v12, "wm":Landroid/view/IWindowManager;
    :try_start_31
    invoke-interface {v12}, Landroid/view/IWindowManager;->isStatusBarVisible()Z

    move-result v13

    if-nez v13, :cond_42

    .line 258
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x1050010

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_41} :catch_8b

    move-result v10

    .line 262
    :cond_42
    :goto_42
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v3, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 263
    .local v1, "cheatSheet":Landroid/widget/Toast;
    const/16 v13, 0x33

    const/4 v14, 0x0

    aget v14, v9, v14

    sub-int v15, v5, v10

    invoke-virtual {v1, v13, v14, v15}, Landroid/widget/Toast;->setGravity(III)V

    .line 264
    instance-of v13, v3, Landroid/app/Activity;

    if-eqz v13, :cond_86

    .line 265
    check-cast v3, Landroid/app/Activity;

    .end local v3    # "context":Landroid/content/Context;
    invoke-virtual {v3}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v6

    .line 266
    .local v6, "isSplit":Z
    iget v8, v4, Landroid/graphics/Rect;->top:I

    .line 267
    .local v8, "offsetY":I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 268
    .local v2, "contentFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/ActionBarContextView$2;->this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v13, v2}, Lcom/android/internal/widget/ActionBarContextView;->getWindowVisibleContentFrame(Landroid/graphics/Rect;)V

    .line 269
    if-eqz v6, :cond_86

    sub-int v13, v7, v8

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v14

    if-ge v13, v14, :cond_86

    .line 270
    const/16 v13, 0x33

    const/4 v14, 0x0

    aget v14, v9, v14

    add-int v15, v5, v8

    sub-int/2addr v15, v10

    invoke-virtual {v1, v13, v14, v15}, Landroid/widget/Toast;->setGravity(III)V

    .line 273
    .end local v2    # "contentFrame":Landroid/graphics/Rect;
    .end local v6    # "isSplit":Z
    .end local v8    # "offsetY":I
    :cond_86
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 274
    const/4 v13, 0x1

    return v13

    .line 260
    .end local v1    # "cheatSheet":Landroid/widget/Toast;
    .restart local v3    # "context":Landroid/content/Context;
    :catch_8b
    move-exception v13

    goto :goto_42
.end method
