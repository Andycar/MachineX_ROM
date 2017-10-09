.class public Lcom/android/settings/drawable/InsetBoundsDrawable;
.super Lcom/android/settings/drawable/DrawableWrapper;
.source "InsetBoundsDrawable.java"


# instance fields
.field private final mInsetBoundsSides:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "insetBoundsSides"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/settings/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 30
    iput p2, p0, Lcom/android/settings/drawable/InsetBoundsDrawable;->mInsetBoundsSides:I

    .line 31
    return-void
.end method


# virtual methods
.method public setBounds(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 35
    iget v0, p0, Lcom/android/settings/drawable/InsetBoundsDrawable;->mInsetBoundsSides:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/settings/drawable/InsetBoundsDrawable;->mInsetBoundsSides:I

    sub-int v1, p3, v1

    invoke-super {p0, v0, p2, v1, p4}, Lcom/android/settings/drawable/DrawableWrapper;->setBounds(IIII)V

    .line 36
    return-void
.end method
