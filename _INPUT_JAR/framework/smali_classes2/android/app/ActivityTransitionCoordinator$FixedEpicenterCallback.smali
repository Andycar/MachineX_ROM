.class Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;
.super Landroid/transition/Transition$EpicenterCallback;
.source "ActivityTransitionCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityTransitionCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FixedEpicenterCallback"
.end annotation


# instance fields
.field private mEpicenter:Landroid/graphics/Rect;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 812
    invoke-direct {p0}, Landroid/transition/Transition$EpicenterCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityTransitionCoordinator$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/app/ActivityTransitionCoordinator$1;

    .prologue
    .line 812
    invoke-direct {p0}, Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;
    .registers 3
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 819
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;->mEpicenter:Landroid/graphics/Rect;

    return-object v0
.end method

.method public setEpicenter(Landroid/graphics/Rect;)V
    .registers 2
    .param p1, "epicenter"    # Landroid/graphics/Rect;

    .prologue
    .line 815
    iput-object p1, p0, Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;->mEpicenter:Landroid/graphics/Rect;

    return-void
.end method
