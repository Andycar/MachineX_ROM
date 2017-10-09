.class public Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer;
.super Landroid/widget/FrameLayout;
.source "KeyguardPreviewContainer.java"


# instance fields
.field private mBlackBarDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer;->mBlackBarDrawable:Landroid/graphics/drawable/Drawable;

    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer;->mBlackBarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 63
    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v0

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer;->setPadding(IIII)V

    .line 68
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method
