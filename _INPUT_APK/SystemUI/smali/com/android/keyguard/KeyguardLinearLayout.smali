.class public Lcom/android/keyguard/KeyguardLinearLayout;
.super Landroid/widget/LinearLayout;
.source "KeyguardLinearLayout.java"


# instance fields
.field mTopChild:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/KeyguardLinearLayout;->mTopChild:I

    .line 39
    return-void
.end method


# virtual methods
.method public setTopChild(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardLinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 43
    .local v0, "top":I
    iput v0, p0, Lcom/android/keyguard/KeyguardLinearLayout;->mTopChild:I

    .line 44
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardLinearLayout;->invalidate()V

    .line 45
    return-void
.end method
