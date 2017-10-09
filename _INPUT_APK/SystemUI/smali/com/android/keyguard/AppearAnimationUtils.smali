.class public Lcom/android/keyguard/AppearAnimationUtils;
.super Ljava/lang/Object;
.source "AppearAnimationUtils.java"

# interfaces
.implements Lcom/android/keyguard/AppearAnimationCreator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/keyguard/AppearAnimationCreator",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_APPEAR_DURATION:J = 0xdcL


# instance fields
.field private final mDelayScale:F

.field private final mDuration:J

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mProperties:Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;

.field private final mStartTranslation:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 38
    const-wide/16 v2, 0xdc

    const v0, 0x10c000e

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/AppearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "duration"    # J
    .param p4, "translationScaleFactor"    # F
    .param p5, "delayScaleFactor"    # F
    .param p6, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;

    invoke-direct {v0, p0}, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;-><init>(Lcom/android/keyguard/AppearAnimationUtils;)V

    iput-object v0, p0, Lcom/android/keyguard/AppearAnimationUtils;->mProperties:Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;

    .line 45
    iput-object p6, p0, Lcom/android/keyguard/AppearAnimationUtils;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->appear_y_translation_start:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p4

    iput v0, p0, Lcom/android/keyguard/AppearAnimationUtils;->mStartTranslation:F

    .line 48
    iput p5, p0, Lcom/android/keyguard/AppearAnimationUtils;->mDelayScale:F

    .line 49
    iput-wide p2, p0, Lcom/android/keyguard/AppearAnimationUtils;->mDuration:J

    .line 50
    return-void
.end method

.method private calculateDelay(II)J
    .locals 8
    .param p1, "row"    # I
    .param p2, "col"    # I

    .prologue
    const-wide v6, 0x3fd999999999999aL    # 0.4

    .line 150
    mul-int/lit8 v0, p1, 0x28

    int-to-double v0, v0

    int-to-double v2, p2

    int-to-double v4, p1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v4, v6

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget v2, p0, Lcom/android/keyguard/AppearAnimationUtils;->mDelayScale:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method private getDelays([Ljava/lang/Object;)Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;"
        }
    .end annotation

    .prologue
    .local p1, "items":[Ljava/lang/Object;, "[TT;"
    const/4 v6, -0x1

    const/4 v7, 0x0

    .line 111
    const-wide/16 v2, -0x1

    .line 112
    .local v2, "maxDelay":J
    iget-object v5, p0, Lcom/android/keyguard/AppearAnimationUtils;->mProperties:Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;

    iput v6, v5, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    .line 113
    iget-object v5, p0, Lcom/android/keyguard/AppearAnimationUtils;->mProperties:Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;

    iput v6, v5, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    .line 114
    iget-object v5, p0, Lcom/android/keyguard/AppearAnimationUtils;->mProperties:Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;

    array-length v6, p1

    new-array v6, v6, [[J

    iput-object v6, v5, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    .line 115
    const/4 v4, 0x0

    .local v4, "row":I
    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_1

    .line 116
    iget-object v5, p0, Lcom/android/keyguard/AppearAnimationUtils;->mProperties:Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;

    iget-object v5, v5, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    const/4 v6, 0x1

    new-array v6, v6, [J

    aput-object v6, v5, v4

    .line 117
    invoke-direct {p0, v4, v7}, Lcom/android/keyguard/AppearAnimationUtils;->calculateDelay(II)J

    move-result-wide v0

    .line 118
    .local v0, "delay":J
    iget-object v5, p0, Lcom/android/keyguard/AppearAnimationUtils;->mProperties:Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;

    iget-object v5, v5, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    aget-object v5, v5, v4

    aput-wide v0, v5, v7

    .line 119
    aget-object v5, p1, v4

    if-eqz v5, :cond_0

    cmp-long v5, v0, v2

    if-lez v5, :cond_0

    .line 120
    move-wide v2, v0

    .line 121
    iget-object v5, p0, Lcom/android/keyguard/AppearAnimationUtils;->mProperties:Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;

    iput v7, v5, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    .line 122
    iget-object v5, p0, Lcom/android/keyguard/AppearAnimationUtils;->mProperties:Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;

    iput v4, v5, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    .line 115
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 125
    .end local v0    # "delay":J
    :cond_1
    iget-object v5, p0, Lcom/android/keyguard/AppearAnimationUtils;->mProperties:Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;

    return-object v5
.end method

.method private getDelays([[Ljava/lang/Object;)Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([[TT;)",
            "Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;"
        }
    .end annotation

    .prologue
    .local p1, "items":[[Ljava/lang/Object;, "[[TT;"
    const/4 v8, -0x1

    .line 129
    const-wide/16 v4, -0x1

    .line 130
    .local v4, "maxDelay":J
    iget-object v7, p0, Lcom/android/keyguard/AppearAnimationUtils;->mProperties:Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;

    iput v8, v7, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    .line 131
    iget-object v7, p0, Lcom/android/keyguard/AppearAnimationUtils;->mProperties:Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;

    iput v8, v7, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    .line 132
    iget-object v7, p0, Lcom/android/keyguard/AppearAnimationUtils;->mProperties:Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;

    array-length v8, p1

    new-array v8, v8, [[J

    iput-object v8, v7, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    .line 133
    const/4 v6, 0x0

    .local v6, "row":I
    :goto_0
    array-length v7, p1

    if-ge v6, v7, :cond_2

    .line 134
    aget-object v1, p1, v6

    .line 135
    .local v1, "columns":[Ljava/lang/Object;, "[TT;"
    iget-object v7, p0, Lcom/android/keyguard/AppearAnimationUtils;->mProperties:Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;

    iget-object v7, v7, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    array-length v8, v1

    new-array v8, v8, [J

    aput-object v8, v7, v6

    .line 136
    const/4 v0, 0x0

    .local v0, "col":I
    :goto_1
    array-length v7, v1

    if-ge v0, v7, :cond_1

    .line 137
    invoke-direct {p0, v6, v0}, Lcom/android/keyguard/AppearAnimationUtils;->calculateDelay(II)J

    move-result-wide v2

    .line 138
    .local v2, "delay":J
    iget-object v7, p0, Lcom/android/keyguard/AppearAnimationUtils;->mProperties:Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;

    iget-object v7, v7, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    aget-object v7, v7, v6

    aput-wide v2, v7, v0

    .line 139
    aget-object v7, p1, v6

    aget-object v7, v7, v0

    if-eqz v7, :cond_0

    cmp-long v7, v2, v4

    if-lez v7, :cond_0

    .line 140
    move-wide v4, v2

    .line 141
    iget-object v7, p0, Lcom/android/keyguard/AppearAnimationUtils;->mProperties:Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;

    iput v0, v7, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    .line 142
    iget-object v7, p0, Lcom/android/keyguard/AppearAnimationUtils;->mProperties:Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;

    iput v6, v7, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    .line 136
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 133
    .end local v2    # "delay":J
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 146
    .end local v0    # "col":I
    .end local v1    # "columns":[Ljava/lang/Object;, "[TT;"
    :cond_2
    iget-object v7, p0, Lcom/android/keyguard/AppearAnimationUtils;->mProperties:Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;

    return-object v7
.end method

.method private startAnimations(Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/keyguard/AppearAnimationCreator;)V
    .locals 11
    .param p1, "properties"    # Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;
    .param p3, "finishListener"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;",
            "[TT;",
            "Ljava/lang/Runnable;",
            "Lcom/android/keyguard/AppearAnimationCreator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p2, "objects":[Ljava/lang/Object;, "[TT;"
    .local p4, "creator":Lcom/android/keyguard/AppearAnimationCreator;, "Lcom/android/keyguard/AppearAnimationCreator<TT;>;"
    const/4 v1, -0x1

    .line 74
    iget v0, p1, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    if-ne v0, v1, :cond_2

    .line 75
    :cond_0
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 88
    :cond_1
    return-void

    .line 78
    :cond_2
    const/4 v10, 0x0

    .local v10, "row":I
    :goto_0
    iget-object v0, p1, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    array-length v0, v0

    if-ge v10, v0, :cond_1

    .line 79
    iget-object v0, p1, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    aget-object v9, v0, v10

    .line 80
    .local v9, "columns":[J
    const/4 v0, 0x0

    aget-wide v2, v9, v0

    .line 81
    .local v2, "delay":J
    const/4 v8, 0x0

    .line 82
    .local v8, "endRunnable":Ljava/lang/Runnable;
    iget v0, p1, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    if-ne v0, v10, :cond_3

    iget v0, p1, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    if-nez v0, :cond_3

    .line 83
    move-object v8, p3

    .line 85
    :cond_3
    aget-object v1, p2, v10

    iget-wide v4, p0, Lcom/android/keyguard/AppearAnimationUtils;->mDuration:J

    iget v6, p0, Lcom/android/keyguard/AppearAnimationUtils;->mStartTranslation:F

    iget-object v7, p0, Lcom/android/keyguard/AppearAnimationUtils;->mInterpolator:Landroid/view/animation/Interpolator;

    move-object v0, p4

    invoke-interface/range {v0 .. v8}, Lcom/android/keyguard/AppearAnimationCreator;->createAnimation(Ljava/lang/Object;JJFLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 78
    add-int/lit8 v10, v10, 0x1

    goto :goto_0
.end method

.method private startAnimations(Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;[[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/keyguard/AppearAnimationCreator;)V
    .locals 12
    .param p1, "properties"    # Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;
    .param p3, "finishListener"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;",
            "[[TT;",
            "Ljava/lang/Runnable;",
            "Lcom/android/keyguard/AppearAnimationCreator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p2, "objects":[[Ljava/lang/Object;, "[[TT;"
    .local p4, "creator":Lcom/android/keyguard/AppearAnimationCreator;, "Lcom/android/keyguard/AppearAnimationCreator<TT;>;"
    iget v0, p1, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 93
    :cond_0
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 108
    :cond_1
    return-void

    .line 96
    :cond_2
    const/4 v11, 0x0

    .local v11, "row":I
    :goto_0
    iget-object v0, p1, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    array-length v0, v0

    if-ge v11, v0, :cond_1

    .line 97
    iget-object v0, p1, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    aget-object v10, v0, v11

    .line 98
    .local v10, "columns":[J
    const/4 v9, 0x0

    .local v9, "col":I
    :goto_1
    array-length v0, v10

    if-ge v9, v0, :cond_4

    .line 99
    aget-wide v2, v10, v9

    .line 100
    .local v2, "delay":J
    const/4 v8, 0x0

    .line 101
    .local v8, "endRunnable":Ljava/lang/Runnable;
    iget v0, p1, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    if-ne v0, v11, :cond_3

    iget v0, p1, Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    if-ne v0, v9, :cond_3

    .line 102
    move-object v8, p3

    .line 104
    :cond_3
    aget-object v0, p2, v11

    aget-object v1, v0, v9

    iget-wide v4, p0, Lcom/android/keyguard/AppearAnimationUtils;->mDuration:J

    iget v6, p0, Lcom/android/keyguard/AppearAnimationUtils;->mStartTranslation:F

    iget-object v7, p0, Lcom/android/keyguard/AppearAnimationUtils;->mInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v0, p4

    invoke-interface/range {v0 .. v8}, Lcom/android/keyguard/AppearAnimationCreator;->createAnimation(Ljava/lang/Object;JJFLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 98
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 96
    .end local v2    # "delay":J
    .end local v8    # "endRunnable":Ljava/lang/Runnable;
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_0
.end method


# virtual methods
.method public createAnimation(Landroid/view/View;JJFLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "delay"    # J
    .param p4, "duration"    # J
    .param p6, "startTranslationY"    # F
    .param p7, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p8, "endRunnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v2, 0x0

    .line 164
    if-eqz p1, :cond_1

    .line 165
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 166
    invoke-virtual {p1, p6}, Landroid/view/View;->setTranslationY(F)V

    .line 167
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 173
    invoke-virtual {p1}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 176
    :cond_0
    if-eqz p8, :cond_1

    .line 177
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p8}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 180
    :cond_1
    return-void
.end method

.method public bridge synthetic createAnimation(Ljava/lang/Object;JJFLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 10
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # J
    .param p4, "x2"    # J
    .param p6, "x3"    # F
    .param p7, "x4"    # Landroid/view/animation/Interpolator;
    .param p8, "x5"    # Ljava/lang/Runnable;

    .prologue
    .line 27
    move-object v1, p1

    check-cast v1, Landroid/view/View;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/android/keyguard/AppearAnimationUtils;->createAnimation(Landroid/view/View;JJFLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    return-void
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/keyguard/AppearAnimationUtils;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getStartTranslation()F
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/android/keyguard/AppearAnimationUtils;->mStartTranslation:F

    return v0
.end method

.method public startAppearAnimation([Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "objects"    # [Landroid/view/View;
    .param p2, "finishListener"    # Ljava/lang/Runnable;

    .prologue
    .line 57
    invoke-virtual {p0, p1, p2, p0}, Lcom/android/keyguard/AppearAnimationUtils;->startAppearAnimation([Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/keyguard/AppearAnimationCreator;)V

    .line 58
    return-void
.end method

.method public startAppearAnimation([Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/keyguard/AppearAnimationCreator;)V
    .locals 1
    .param p2, "finishListener"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/Runnable;",
            "Lcom/android/keyguard/AppearAnimationCreator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "objects":[Ljava/lang/Object;, "[TT;"
    .local p3, "creator":Lcom/android/keyguard/AppearAnimationCreator;, "Lcom/android/keyguard/AppearAnimationCreator<TT;>;"
    invoke-direct {p0, p1}, Lcom/android/keyguard/AppearAnimationUtils;->getDelays([Ljava/lang/Object;)Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;

    move-result-object v0

    .line 69
    .local v0, "properties":Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/keyguard/AppearAnimationUtils;->startAnimations(Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/keyguard/AppearAnimationCreator;)V

    .line 70
    return-void
.end method

.method public startAppearAnimation([[Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "objects"    # [[Landroid/view/View;
    .param p2, "finishListener"    # Ljava/lang/Runnable;

    .prologue
    .line 53
    invoke-virtual {p0, p1, p2, p0}, Lcom/android/keyguard/AppearAnimationUtils;->startAppearAnimation([[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/keyguard/AppearAnimationCreator;)V

    .line 54
    return-void
.end method

.method public startAppearAnimation([[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/keyguard/AppearAnimationCreator;)V
    .locals 1
    .param p2, "finishListener"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([[TT;",
            "Ljava/lang/Runnable;",
            "Lcom/android/keyguard/AppearAnimationCreator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "objects":[[Ljava/lang/Object;, "[[TT;"
    .local p3, "creator":Lcom/android/keyguard/AppearAnimationCreator;, "Lcom/android/keyguard/AppearAnimationCreator<TT;>;"
    invoke-direct {p0, p1}, Lcom/android/keyguard/AppearAnimationUtils;->getDelays([[Ljava/lang/Object;)Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;

    move-result-object v0

    .line 63
    .local v0, "properties":Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/keyguard/AppearAnimationUtils;->startAnimations(Lcom/android/keyguard/AppearAnimationUtils$AppearAnimationProperties;[[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/keyguard/AppearAnimationCreator;)V

    .line 64
    return-void
.end method
