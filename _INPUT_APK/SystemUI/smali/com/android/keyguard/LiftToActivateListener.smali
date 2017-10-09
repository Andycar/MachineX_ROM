.class Lcom/android/keyguard/LiftToActivateListener;
.super Ljava/lang/Object;
.source "LiftToActivateListener.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mCachedClickableState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/keyguard/LiftToActivateListener;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 37
    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 43
    iget-object v2, p0, Lcom/android/keyguard/LiftToActivateListener;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/LiftToActivateListener;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 68
    :cond_0
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 71
    const/4 v2, 0x1

    return v2

    .line 49
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/keyguard/LiftToActivateListener;->mCachedClickableState:Z

    .line 50
    invoke-virtual {p1, v4}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    .line 53
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 54
    .local v0, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 55
    .local v1, "y":I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    if-le v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    if-le v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_1

    .line 58
    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 59
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 62
    :cond_1
    iget-boolean v2, p0, Lcom/android/keyguard/LiftToActivateListener;->mCachedClickableState:Z

    invoke-virtual {p1, v2}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
