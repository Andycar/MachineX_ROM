.class final Lcom/android/internal/app/ToolbarActionBar$MenuBuilderCallback;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ToolbarActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MenuBuilderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ToolbarActionBar;


# direct methods
.method private constructor <init>(Lcom/android/internal/app/ToolbarActionBar;)V
    .registers 2

    .prologue
    .line 529
    iput-object p1, p0, Lcom/android/internal/app/ToolbarActionBar$MenuBuilderCallback;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/app/ToolbarActionBar;Lcom/android/internal/app/ToolbarActionBar$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/internal/app/ToolbarActionBar;
    .param p2, "x1"    # Lcom/android/internal/app/ToolbarActionBar$1;

    .prologue
    .line 529
    invoke-direct {p0, p1}, Lcom/android/internal/app/ToolbarActionBar$MenuBuilderCallback;-><init>(Lcom/android/internal/app/ToolbarActionBar;)V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 533
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V
    .registers 6
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    const/16 v3, 0x8

    .line 538
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar$MenuBuilderCallback;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    # getter for: Lcom/android/internal/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;
    invoke-static {v0}, Lcom/android/internal/app/ToolbarActionBar;->access$000(Lcom/android/internal/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 539
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar$MenuBuilderCallback;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    # getter for: Lcom/android/internal/app/ToolbarActionBar;->mToolbar:Landroid/widget/Toolbar;
    invoke-static {v0}, Lcom/android/internal/app/ToolbarActionBar;->access$500(Lcom/android/internal/app/ToolbarActionBar;)Landroid/widget/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toolbar;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 540
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar$MenuBuilderCallback;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    # getter for: Lcom/android/internal/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;
    invoke-static {v0}, Lcom/android/internal/app/ToolbarActionBar;->access$000(Lcom/android/internal/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    move-result-object v0

    invoke-interface {v0, v3, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 546
    :cond_1f
    :goto_1f
    return-void

    .line 541
    :cond_20
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar$MenuBuilderCallback;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    # getter for: Lcom/android/internal/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;
    invoke-static {v0}, Lcom/android/internal/app/ToolbarActionBar;->access$000(Lcom/android/internal/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 543
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar$MenuBuilderCallback;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    # getter for: Lcom/android/internal/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;
    invoke-static {v0}, Lcom/android/internal/app/ToolbarActionBar;->access$000(Lcom/android/internal/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    move-result-object v0

    invoke-interface {v0, v3, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    goto :goto_1f
.end method
