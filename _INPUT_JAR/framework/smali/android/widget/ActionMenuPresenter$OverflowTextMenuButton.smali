.class public Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;
.super Landroid/widget/TextView;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/widget/ActionMenuView$ActionMenuChildView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OverflowTextMenuButton"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .registers 8
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 823
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    .line 824
    const v1, 0x10102f6

    invoke-direct {p0, p2, v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 825
    sget-object v1, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p2, v4, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 827
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0xbc

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, p2, v1}, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->setTextAppearance(Landroid/content/Context;I)V

    .line 829
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 830
    invoke-virtual {p0, v3}, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->setClickable(Z)V

    .line 831
    invoke-virtual {p0, v3}, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->setFocusable(Z)V

    .line 832
    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->setVisibility(I)V

    .line 833
    invoke-virtual {p0, v3}, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->setEnabled(Z)V

    .line 834
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104043d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->setText(Ljava/lang/CharSequence;)V

    .line 835
    return-void
.end method


# virtual methods
.method public needsDividerAfter()Z
    .registers 2

    .prologue
    .line 855
    const/4 v0, 0x0

    return v0
.end method

.method public needsDividerBefore()Z
    .registers 2

    .prologue
    .line 850
    const/4 v0, 0x0

    return v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 860
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 861
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCanOpenPopup(Z)V

    .line 862
    return-void
.end method

.method public performClick()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 839
    invoke-super {p0}, Landroid/widget/TextView;->performClick()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 845
    :goto_7
    return v1

    .line 843
    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->playSoundEffect(I)V

    .line 844
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    goto :goto_7
.end method
