.class public Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;
.super Landroid/widget/FrameLayout;
.source "ChargingView.java"

# interfaces
.implements Lcom/android/keyguard/sec/KeyguardEffectViewBase;


# static fields
.field private static final BASE_SCREEN_HEIGHT:I = 0x280

.field private static final BASE_SCREEN_WIDTH:I = 0x168


# instance fields
.field private bStopFlag:Z

.field private baseImageView:Landroid/widget/ImageView;

.field private chargingImageID:[I

.field private chargingImageViewList:[Landroid/widget/ImageView;

.field private final coefficientX:F

.field private final coefficientY:F

.field private final floatParticleNum:I

.field private final floatParticleRepeatMode:I

.field private fullCharging:Z

.field private heartList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private isFirsrStart:Z

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private myContext:Landroid/content/Context;

.field private final myScreenHeight:F

.field private final myScreenWidth:F

.field private mySetParticle:[Landroid/animation/AnimatorSet;

.field private mySetRotateBase:Landroid/animation/AnimatorSet;

.field private mySetRotateCharging:[Landroid/animation/AnimatorSet;

.field private newCharging:I

.field private particleImageID:[I

.field private particleImageView:[Landroid/widget/ImageView;

.field private particleImageViewID:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/16 v4, 0xc

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v3, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->fullCharging:Z

    iput-boolean v5, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->isFirsrStart:Z

    iput v3, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->newCharging:I

    iput-boolean v5, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->bStopFlag:Z

    iput v4, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->floatParticleNum:I

    iput v3, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->floatParticleRepeatMode:I

    new-array v0, v4, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->particleImageView:[Landroid/widget/ImageView;

    new-array v0, v6, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->chargingImageViewList:[Landroid/widget/ImageView;

    new-array v0, v4, [Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->mySetParticle:[Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->mySetRotateBase:Landroid/animation/AnimatorSet;

    new-array v0, v6, [Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->mySetRotateCharging:[Landroid/animation/AnimatorSet;

    new-array v0, v4, [I

    sget v1, Lcom/android/keyguard/R$drawable;->winter_particle_01:I

    aput v1, v0, v3

    sget v1, Lcom/android/keyguard/R$drawable;->winter_particle_01:I

    aput v1, v0, v5

    sget v1, Lcom/android/keyguard/R$drawable;->winter_particle_01:I

    aput v1, v0, v7

    const/4 v1, 0x3

    sget v2, Lcom/android/keyguard/R$drawable;->winter_particle_02:I

    aput v2, v0, v1

    sget v1, Lcom/android/keyguard/R$drawable;->winter_particle_02:I

    aput v1, v0, v6

    const/4 v1, 0x5

    sget v2, Lcom/android/keyguard/R$drawable;->winter_particle_02:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/android/keyguard/R$drawable;->winter_particle_03:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/android/keyguard/R$drawable;->winter_particle_03:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lcom/android/keyguard/R$drawable;->winter_particle_03:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Lcom/android/keyguard/R$drawable;->winter_particle_03:I

    aput v2, v0, v1

    const/16 v1, 0xa

    sget v2, Lcom/android/keyguard/R$drawable;->winter_particle_03:I

    aput v2, v0, v1

    const/16 v1, 0xb

    sget v2, Lcom/android/keyguard/R$drawable;->winter_particle_04:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->particleImageID:[I

    new-array v0, v4, [I

    iput-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->particleImageViewID:[I

    new-array v0, v6, [I

    sget v1, Lcom/android/keyguard/R$drawable;->winter_charging_25p:I

    aput v1, v0, v3

    sget v1, Lcom/android/keyguard/R$drawable;->winter_charging_50p:I

    aput v1, v0, v5

    sget v1, Lcom/android/keyguard/R$drawable;->winter_charging_75p:I

    aput v1, v0, v7

    const/4 v1, 0x3

    sget v2, Lcom/android/keyguard/R$drawable;->winter_charging_100p:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->chargingImageID:[I

    new-instance v0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView$1;-><init>(Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->myContext:Landroid/content/Context;

    const/high16 v0, 0x43b40000    # 360.0f

    iget-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->myContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->myScreenWidth:F

    const/high16 v0, 0x44200000    # 640.0f

    iget-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->myContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->myScreenHeight:F

    iget-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->myContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->coefficientX:F

    iget-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->myContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->coefficientY:F

    iget-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->myContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private animationViewParticle(Landroid/content/Context;)V
    .locals 28

    new-instance v19, Ljava/util/Random;

    invoke-direct/range {v19 .. v19}, Ljava/util/Random;-><init>()V

    const/16 v17, 0x0

    :goto_0
    const/16 v2, 0xc

    move/from16 v0, v17

    if-ge v0, v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->mySetParticle:[Landroid/animation/AnimatorSet;

    aget-object v2, v2, v17

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->end()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->mySetParticle:[Landroid/animation/AnimatorSet;

    aget-object v2, v2, v17

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->mySetParticle:[Landroid/animation/AnimatorSet;

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    aput-object v3, v2, v17

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->newCharging:I

    const/4 v3, 0x4

    if-ge v2, v3, :cond_2

    const/high16 v2, 0x432a0000    # 170.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->coefficientX:F

    mul-float v8, v2, v3

    const-string v2, "startX%f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v21, 0x0

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    aput-object v22, v3, v21

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    const-string v2, "festivaleffect"

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v2, 0x445e0000    # 888.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->coefficientX:F

    mul-float v9, v2, v3

    const/high16 v2, 0x43b40000    # 360.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->coefficientX:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->myScreenWidth:F

    const/high16 v21, 0x40400000    # 3.0f

    mul-float v3, v3, v21

    const/high16 v21, 0x41200000    # 10.0f

    div-float v3, v3, v21

    add-float v6, v2, v3

    const/high16 v2, 0x43a70000    # 334.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->coefficientX:F

    mul-float v7, v2, v3

    :goto_1
    const-wide/16 v4, 0x640

    const-wide/16 v10, 0x640

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->particleImageViewID:[I

    aget v2, v2, v17

    const/4 v3, 0x3

    if-ge v2, v3, :cond_3

    const-wide v2, 0x3fe3333333333333L    # 0.6

    const v21, 0x3f4ccccd    # 0.8f

    invoke-virtual/range {v19 .. v19}, Ljava/util/Random;->nextFloat()F

    move-result v22

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    add-double v2, v2, v22

    double-to-float v15, v2

    :cond_0
    :goto_2
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->particleImageViewID:[I

    aget v2, v2, v17

    const/16 v3, 0xb

    if-ge v2, v3, :cond_1

    const/4 v12, 0x1

    :cond_1
    const-wide/16 v13, 0x3e8

    new-instance v2, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->particleImageView:[Landroid/widget/ImageView;

    aget-object v3, v3, v17

    invoke-direct/range {v2 .. v15}, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;-><init>(Landroid/widget/ImageView;JFFFFJZJF)V

    invoke-virtual {v2}, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->getAnimation()Landroid/animation/AnimatorSet;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->mySetParticle:[Landroid/animation/AnimatorSet;

    aget-object v2, v2, v17

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->mySetParticle:[Landroid/animation/AnimatorSet;

    aget-object v2, v2, v17

    move/from16 v0, v17

    mul-int/lit16 v3, v0, 0x1f4

    int-to-long v0, v3

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    :cond_2
    const/high16 v2, 0x432a0000    # 170.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->coefficientX:F

    mul-float v8, v2, v3

    const-string v2, "startX%f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v21, 0x0

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    aput-object v22, v3, v21

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    const-string v2, "festivaleffect"

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v2, 0x43af0000    # 350.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->coefficientX:F

    mul-float v9, v2, v3

    const/high16 v2, 0x432a0000    # 170.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->coefficientX:F

    mul-float/2addr v2, v3

    float-to-double v2, v2

    const/high16 v21, 0x42e20000    # 113.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->coefficientX:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const/16 v21, 0x167

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v21

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0x400921fb54442d18L    # Math.PI

    mul-double v24, v24, v26

    const-wide v26, 0x4066800000000000L    # 180.0

    div-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    mul-double v22, v22, v24

    add-double v2, v2, v22

    double-to-float v6, v2

    const/high16 v2, 0x43af0000    # 350.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->coefficientX:F

    mul-float/2addr v2, v3

    float-to-double v2, v2

    const/high16 v21, 0x42e20000    # 113.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->coefficientX:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const/16 v21, 0x167

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v21

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0x400921fb54442d18L    # Math.PI

    mul-double v24, v24, v26

    const-wide v26, 0x4066800000000000L    # 180.0

    div-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    mul-double v22, v22, v24

    sub-double v2, v2, v22

    double-to-float v7, v2

    goto/16 :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->particleImageViewID:[I

    aget v2, v2, v17

    const/4 v3, 0x6

    if-ge v2, v3, :cond_4

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    const v21, 0x3f333333    # 0.7f

    invoke-virtual/range {v19 .. v19}, Ljava/util/Random;->nextFloat()F

    move-result v22

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    add-double v2, v2, v22

    double-to-float v15, v2

    goto/16 :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->particleImageViewID:[I

    aget v2, v2, v17

    const/16 v3, 0xb

    if-ge v2, v3, :cond_5

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3fcccccd    # 1.6f

    invoke-virtual/range {v19 .. v19}, Ljava/util/Random;->nextFloat()F

    move-result v21

    mul-float v3, v3, v21

    add-float v15, v2, v3

    goto/16 :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->particleImageViewID:[I

    aget v2, v2, v17

    const/16 v3, 0xc

    if-ge v2, v3, :cond_0

    const/high16 v15, 0x3f800000    # 1.0f

    goto/16 :goto_2

    :cond_6
    return-void
.end method

.method private animationViewRotateBase(Landroid/content/Context;)V
    .locals 15

    new-instance v14, Ljava/util/Random;

    invoke-direct {v14}, Ljava/util/Random;-><init>()V

    iget-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->mySetRotateBase:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    iget-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->mySetRotateBase:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->mySetRotateBase:Landroid/animation/AnimatorSet;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/android/keyguard/sec/KeyguardProperties;->hasCocktailBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x430d0000    # 141.0f

    iget v2, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->coefficientX:F

    mul-float v4, v0, v2

    :goto_0
    const/4 v7, 0x0

    const v0, 0x43858000    # 267.0f

    iget v2, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->coefficientX:F

    mul-float v6, v0, v2

    const-wide/16 v8, 0xce4

    const/4 v7, 0x0

    invoke-static/range {p1 .. p1}, Lcom/android/keyguard/sec/KeyguardProperties;->hasCocktailBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x430d0000    # 141.0f

    iget v2, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->coefficientX:F

    mul-float v3, v0, v2

    :goto_1
    const/high16 v0, 0x43960000    # 300.0f

    iget v2, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->coefficientX:F

    mul-float v5, v0, v2

    const-wide/16 v12, 0xce4

    const-wide/16 v10, 0x4e2a

    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->baseImageView:Landroid/widget/ImageView;

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->rotate(Ljava/util/ArrayList;Landroid/widget/ImageView;FFFFZJJJ)V

    iget-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->mySetRotateBase:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-void

    :cond_0
    const/high16 v0, 0x42f20000    # 121.0f

    iget v2, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->coefficientX:F

    mul-float v4, v0, v2

    goto :goto_0

    :cond_1
    const/high16 v0, 0x42f20000    # 121.0f

    iget v2, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->coefficientX:F

    mul-float v3, v0, v2

    goto :goto_1
.end method

.method private animationViewRotateCharging(Landroid/content/Context;)V
    .locals 18

    new-instance v17, Ljava/util/Random;

    invoke-direct/range {v17 .. v17}, Ljava/util/Random;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/android/keyguard/sec/KeyguardProperties;->hasCocktailBar(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x430d0000    # 141.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->coefficientX:F

    mul-float v6, v2, v4

    :goto_0
    const/4 v9, 0x0

    const/high16 v2, 0x43850000    # 266.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->coefficientX:F

    mul-float v8, v2, v4

    const-wide/16 v10, 0xce4

    const/4 v9, 0x0

    invoke-static/range {p1 .. p1}, Lcom/android/keyguard/sec/KeyguardProperties;->hasCocktailBar(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/high16 v2, 0x430d0000    # 141.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->coefficientX:F

    mul-float v5, v2, v4

    :goto_1
    const/high16 v2, 0x43960000    # 300.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->coefficientX:F

    mul-float v7, v2, v4

    const-wide/16 v14, 0xce4

    const-wide/16 v12, 0x4e2a

    const/16 v16, 0x0

    :goto_2
    const/4 v2, 0x4

    move/from16 v0, v16

    if-ge v0, v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->mySetRotateCharging:[Landroid/animation/AnimatorSet;

    aget-object v2, v2, v16

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->end()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->mySetRotateCharging:[Landroid/animation/AnimatorSet;

    aget-object v2, v2, v16

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->chargingImageViewList:[Landroid/widget/ImageView;

    aget-object v4, v2, v16

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v15}, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->rotate(Ljava/util/ArrayList;Landroid/widget/ImageView;FFFFZJJJ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->mySetRotateCharging:[Landroid/animation/AnimatorSet;

    aget-object v2, v2, v16

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    :cond_0
    const/high16 v2, 0x42f20000    # 121.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->coefficientX:F

    mul-float v6, v2, v4

    goto :goto_0

    :cond_1
    const/high16 v2, 0x42f20000    # 121.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->coefficientX:F

    mul-float v5, v2, v4

    goto :goto_1

    :cond_2
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 6

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->initViewParticle(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->initViewRotateBase(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->initViewRotateCharging(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->myContext:Landroid/content/Context;

    const/4 v3, 0x0

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "level"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->chargingLevel(I)V

    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->myContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->screenTurnedOn()V

    return-void
.end method

.method private initViewParticle(Landroid/content/Context;)V
    .locals 8

    const/16 v7, 0xc

    const/4 v6, -0x2

    const/high16 v5, -0x3cb80000    # -200.0f

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v7, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->mySetParticle:[Landroid/animation/AnimatorSet;

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    aput-object v4, v3, v0

    invoke-virtual {v2, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iget-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->particleImageViewID:[I

    aput v1, v3, v0

    iget-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->particleImageView:[Landroid/widget/ImageView;

    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v4, v3, v0

    iget-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->particleImageView:[Landroid/widget/ImageView;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->particleImageID:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->particleImageView:[Landroid/widget/ImageView;

    aget-object v3, v3, v0

    invoke-virtual {p0, v3, v6, v6}, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->addView(Landroid/view/View;II)V

    iget-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->particleImageView:[Landroid/widget/ImageView;

    aget-object v3, v3, v0

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setX(F)V

    iget-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->particleImageView:[Landroid/widget/ImageView;

    aget-object v3, v3, v0

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setY(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->animationViewParticle(Landroid/content/Context;)V

    return-void
.end method

.method private initViewRotateBase(Landroid/content/Context;)V
    .locals 5

    const/4 v4, -0x2

    const/high16 v3, -0x3cb80000    # -200.0f

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->mySetRotateBase:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->baseImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->baseImageView:Landroid/widget/ImageView;

    sget v2, Lcom/android/keyguard/R$drawable;->winter_charging_base:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->baseImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v4, v4}, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->addView(Landroid/view/View;II)V

    iget-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->baseImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setX(F)V

    iget-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->baseImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setY(F)V

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->animationViewRotateBase(Landroid/content/Context;)V

    return-void
.end method

.method private initViewRotateCharging(Landroid/content/Context;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, -0x2

    const/high16 v5, -0x3cb80000    # -200.0f

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->mySetRotateCharging:[Landroid/animation/AnimatorSet;

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->chargingImageViewList:[Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->chargingImageViewList:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->chargingImageID:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->chargingImageViewList:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1, v6, v6}, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->addView(Landroid/view/View;II)V

    iget-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->chargingImageViewList:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->chargingImageViewList:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setX(F)V

    iget-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->chargingImageViewList:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setY(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->newCharging:I

    if-nez v1, :cond_2

    :cond_1
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->animationViewRotateCharging(Landroid/content/Context;)V

    return-void

    :cond_2
    iget v1, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->newCharging:I

    if-ne v1, v7, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->chargingImageViewList:[Landroid/widget/ImageView;

    aget-object v1, v1, v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->newCharging:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->chargingImageViewList:[Landroid/widget/ImageView;

    aget-object v1, v1, v7

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget v1, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->newCharging:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->chargingImageViewList:[Landroid/widget/ImageView;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_5
    iget v1, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->newCharging:I

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->chargingImageViewList:[Landroid/widget/ImageView;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private rotate(Ljava/util/ArrayList;Landroid/widget/ImageView;FFFFZJJJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/widget/ImageView;",
            "FFFFZJJJ)V"
        }
    .end annotation

    const-string v6, "rotation"

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_0

    invoke-static {p2, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    move-wide/from16 v0, p10

    invoke-virtual {v3, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v6, -0x1

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const-string v6, "x"

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    aput p3, v7, v8

    const/4 v8, 0x1

    aput p4, v7, v8

    invoke-static {p2, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    move-wide/from16 v0, p12

    invoke-virtual {v4, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const-string v6, "y"

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    aput p5, v7, v8

    const/4 v8, 0x1

    aput p6, v7, v8

    invoke-static {p2, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    move-wide/from16 v0, p12

    invoke-virtual {v5, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    move/from16 v0, p7

    if-ne v0, v6, :cond_0

    const-string v6, "alpha"

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_1

    invoke-static {p2, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    move-wide/from16 v0, p8

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v6, -0x1

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    new-instance v6, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x43b38000    # 359.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public chargingLevel(I)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->chargingImageViewList:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x19

    if-lt v1, p1, :cond_5

    iput v2, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->newCharging:I

    :cond_1
    :goto_1
    iget-boolean v1, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->fullCharging:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->newCharging:I

    if-eq v1, v3, :cond_3

    :cond_2
    iget-boolean v1, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->fullCharging:Z

    if-ne v1, v4, :cond_4

    iget v1, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->newCharging:I

    if-eq v1, v3, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->myContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->animationViewParticle(Landroid/content/Context;)V

    iget v1, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->newCharging:I

    if-ne v1, v3, :cond_9

    iput-boolean v4, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->fullCharging:Z

    :cond_4
    :goto_2
    return-void

    :cond_5
    const/16 v1, 0x32

    if-lt v1, p1, :cond_6

    iput v4, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->newCharging:I

    iget-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->chargingImageViewList:[Landroid/widget/ImageView;

    aget-object v1, v1, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_6
    const/16 v1, 0x4b

    if-lt v1, p1, :cond_7

    iput v5, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->newCharging:I

    iget-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->chargingImageViewList:[Landroid/widget/ImageView;

    aget-object v1, v1, v4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_7
    const/16 v1, 0x63

    if-lt v1, p1, :cond_8

    iput v6, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->newCharging:I

    iget-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->chargingImageViewList:[Landroid/widget/ImageView;

    aget-object v1, v1, v5

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_8
    const/16 v1, 0x64

    if-lt v1, p1, :cond_1

    iput v3, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->newCharging:I

    iget-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->chargingImageViewList:[Landroid/widget/ImageView;

    aget-object v1, v1, v6

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_9
    iput-boolean v2, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->fullCharging:Z

    goto :goto_2
.end method

.method public cleanUp()V
    .locals 4

    iget-boolean v2, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->bStopFlag:Z

    if-nez v2, :cond_2

    const-string v2, "winter"

    const-string v3, "winter charge animation clearUp"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->mySetRotateCharging:[Landroid/animation/AnimatorSet;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0xc

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->mySetParticle:[Landroid/animation/AnimatorSet;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->mySetRotateBase:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->bStopFlag:Z

    :cond_2
    return-void
.end method

.method public getUnlockDelay()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->myContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->myContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public playLockSound()V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public screenTurnedOff()V
    .locals 9

    const/16 v8, 0xc

    const/4 v7, 0x4

    const/high16 v6, 0x432a0000    # 170.0f

    const-string v4, "winter"

    const-string v5, "winter charge animation stop"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->bStopFlag:Z

    if-nez v4, :cond_4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v7, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->mySetRotateCharging:[Landroid/animation/AnimatorSet;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v8, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->mySetParticle:[Landroid/animation/AnimatorSet;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->mySetRotateBase:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    iget v4, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->newCharging:I

    if-ge v4, v7, :cond_2

    iget v4, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->coefficientX:F

    mul-float v2, v6, v4

    const/high16 v4, 0x445e0000    # 888.0f

    iget v5, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->coefficientX:F

    mul-float v3, v4, v5

    :goto_2
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v8, :cond_3

    iget-object v4, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->particleImageView:[Landroid/widget/ImageView;

    aget-object v4, v4, v1

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setX(F)V

    iget-object v4, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->particleImageView:[Landroid/widget/ImageView;

    aget-object v4, v4, v1

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setY(F)V

    iget-object v4, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->particleImageView:[Landroid/widget/ImageView;

    aget-object v4, v4, v1

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setAlpha(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    iget v4, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->coefficientX:F

    mul-float v2, v6, v4

    const/high16 v4, 0x43af0000    # 350.0f

    iget v5, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->coefficientX:F

    mul-float v3, v4, v5

    goto :goto_2

    :cond_3
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->bStopFlag:Z

    :cond_4
    return-void
.end method

.method public screenTurnedOn()V
    .locals 4

    const-string v2, "winter"

    const-string v3, "winter charge animation start"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->bStopFlag:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->mySetRotateCharging:[Landroid/animation/AnimatorSet;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0xc

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->mySetParticle:[Landroid/animation/AnimatorSet;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->mySetRotateBase:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->bStopFlag:Z

    :cond_2
    return-void
.end method

.method public setHidden(Z)V
    .locals 0

    return-void
.end method

.method public show()V
    .locals 0

    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public startAnimation()V
    .locals 3

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xc

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->mySetParticle:[Landroid/animation/AnimatorSet;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->mySetRotateBase:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    const/4 v0, 0x0

    :goto_1
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->mySetRotateCharging:[Landroid/animation/AnimatorSet;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public stopAnimation()V
    .locals 3

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xc

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->mySetParticle:[Landroid/animation/AnimatorSet;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->pause()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->mySetRotateBase:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->pause()V

    const/4 v0, 0x0

    :goto_1
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/chargeeffect/winter/ChargingView;->mySetRotateCharging:[Landroid/animation/AnimatorSet;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->pause()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public update()V
    .locals 0

    return-void
.end method
