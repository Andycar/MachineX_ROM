.class public Landroid/animation/StateListAnimator$Tuple;
.super Ljava/lang/Object;
.source "StateListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/StateListAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tuple"
.end annotation


# instance fields
.field final mAnimator:Landroid/animation/Animator;

.field final mSpecs:[I


# direct methods
.method private constructor <init>([ILandroid/animation/Animator;)V
    .registers 3
    .param p1, "specs"    # [I
    .param p2, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p1, p0, Landroid/animation/StateListAnimator$Tuple;->mSpecs:[I

    .line 195
    iput-object p2, p0, Landroid/animation/StateListAnimator$Tuple;->mAnimator:Landroid/animation/Animator;

    .line 196
    return-void
.end method

.method synthetic constructor <init>([ILandroid/animation/Animator;Landroid/animation/StateListAnimator$1;)V
    .registers 4
    .param p1, "x0"    # [I
    .param p2, "x1"    # Landroid/animation/Animator;
    .param p3, "x2"    # Landroid/animation/StateListAnimator$1;

    .prologue
    .line 187
    invoke-direct {p0, p1, p2}, Landroid/animation/StateListAnimator$Tuple;-><init>([ILandroid/animation/Animator;)V

    return-void
.end method


# virtual methods
.method public getAnimator()Landroid/animation/Animator;
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, Landroid/animation/StateListAnimator$Tuple;->mAnimator:Landroid/animation/Animator;

    return-object v0
.end method

.method public getSpecs()[I
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, Landroid/animation/StateListAnimator$Tuple;->mSpecs:[I

    return-object v0
.end method
