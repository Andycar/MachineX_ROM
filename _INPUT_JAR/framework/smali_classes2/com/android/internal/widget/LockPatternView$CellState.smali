.class public Lcom/android/internal/widget/LockPatternView$CellState;
.super Ljava/lang/Object;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CellState"
.end annotation


# instance fields
.field public alpha:F

.field public lineAnimator:Landroid/animation/ValueAnimator;

.field public lineEndX:F

.field public lineEndY:F

.field public scale:F

.field public size:F

.field public translateY:F


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput v2, p0, Lcom/android/internal/widget/LockPatternView$CellState;->scale:F

    .line 188
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/LockPatternView$CellState;->translateY:F

    .line 189
    iput v2, p0, Lcom/android/internal/widget/LockPatternView$CellState;->alpha:F

    .line 191
    iput v1, p0, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndX:F

    .line 192
    iput v1, p0, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndY:F

    return-void
.end method
