.class Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;
.super Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionMenuPopupCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method private constructor <init>(Landroid/widget/ActionMenuPresenter;)V
    .registers 2

    .prologue
    .line 967
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-direct {p0}, Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/widget/ActionMenuPresenter;
    .param p2, "x1"    # Landroid/widget/ActionMenuPresenter$1;

    .prologue
    .line 967
    invoke-direct {p0, p1}, Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;-><init>(Landroid/widget/ActionMenuPresenter;)V

    return-void
.end method


# virtual methods
.method public getPopup()Landroid/widget/ListPopupWindow;
    .registers 2

    .prologue
    .line 970
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;->this$0:Landroid/widget/ActionMenuPresenter;

    # getter for: Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;
    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->access$800(Landroid/widget/ActionMenuPresenter;)Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;->this$0:Landroid/widget/ActionMenuPresenter;

    # getter for: Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;
    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->access$800(Landroid/widget/ActionMenuPresenter;)Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->getPopup()Landroid/widget/ListPopupWindow;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method
