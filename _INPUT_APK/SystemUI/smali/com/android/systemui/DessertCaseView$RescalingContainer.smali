.class public Lcom/android/systemui/DessertCaseView$RescalingContainer;
.super Landroid/widget/FrameLayout;
.source "DessertCaseView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/DessertCaseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RescalingContainer"
.end annotation


# instance fields
.field private mDarkness:F

.field private mView:Lcom/android/systemui/DessertCaseView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 503
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 505
    const/16 v0, 0x1606

    invoke-virtual {p0, v0}, Lcom/android/systemui/DessertCaseView$RescalingContainer;->setSystemUiVisibility(I)V

    .line 512
    return-void
.end method


# virtual methods
.method public getDarkness()F
    .locals 1

    .prologue
    .line 538
    iget v0, p0, Lcom/android/systemui/DessertCaseView$RescalingContainer;->mDarkness:F

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 521
    sub-int v6, p4, p2

    int-to-float v4, v6

    .line 522
    .local v4, "w":F
    sub-int v6, p5, p3

    int-to-float v2, v6

    .line 523
    .local v2, "h":F
    iget-object v6, p0, Lcom/android/systemui/DessertCaseView$RescalingContainer;->mView:Lcom/android/systemui/DessertCaseView;

    const/high16 v6, 0x3e800000    # 0.25f

    div-float v6, v4, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    float-to-int v5, v6

    .line 524
    .local v5, "w2":I
    iget-object v6, p0, Lcom/android/systemui/DessertCaseView$RescalingContainer;->mView:Lcom/android/systemui/DessertCaseView;

    const/high16 v6, 0x3e800000    # 0.25f

    div-float v6, v2, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    float-to-int v3, v6

    .line 525
    .local v3, "h2":I
    int-to-float v6, p2

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    float-to-int v0, v6

    .line 526
    .local v0, "cx":I
    int-to-float v6, p3

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    float-to-int v1, v6

    .line 527
    .local v1, "cy":I
    iget-object v6, p0, Lcom/android/systemui/DessertCaseView$RescalingContainer;->mView:Lcom/android/systemui/DessertCaseView;

    sub-int v7, v0, v5

    sub-int v8, v1, v3

    add-int v9, v0, v5

    add-int v10, v1, v3

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/systemui/DessertCaseView;->layout(IIII)V

    .line 528
    return-void
.end method

.method public setDarkness(F)V
    .locals 3
    .param p1, "p"    # F

    .prologue
    .line 531
    iput p1, p0, Lcom/android/systemui/DessertCaseView$RescalingContainer;->mDarkness:F

    .line 532
    invoke-virtual {p0}, Lcom/android/systemui/DessertCaseView$RescalingContainer;->getDarkness()F

    .line 533
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    float-to-int v0, v1

    .line 534
    .local v0, "x":I
    shl-int/lit8 v1, v0, 0x18

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/android/systemui/DessertCaseView$RescalingContainer;->setBackgroundColor(I)V

    .line 535
    return-void
.end method

.method public setView(Lcom/android/systemui/DessertCaseView;)V
    .locals 0
    .param p1, "v"    # Lcom/android/systemui/DessertCaseView;

    .prologue
    .line 515
    invoke-virtual {p0, p1}, Lcom/android/systemui/DessertCaseView$RescalingContainer;->addView(Landroid/view/View;)V

    .line 516
    iput-object p1, p0, Lcom/android/systemui/DessertCaseView$RescalingContainer;->mView:Lcom/android/systemui/DessertCaseView;

    .line 517
    return-void
.end method
