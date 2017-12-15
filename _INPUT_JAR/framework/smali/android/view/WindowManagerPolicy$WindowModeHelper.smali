.class public Landroid/view/WindowManagerPolicy$WindowModeHelper;
.super Ljava/lang/Object;
.source "WindowManagerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowManagerPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WindowModeHelper"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mode(I)I
    .registers 2
    .param p0, "params"    # I

    .prologue
    .line 280
    const/high16 v0, -0x1000000

    and-int/2addr v0, p0

    return v0
.end method

.method public static option(I)I
    .registers 2
    .param p0, "params"    # I

    .prologue
    .line 283
    const v0, 0xffffff

    and-int/2addr v0, p0

    return v0
.end method

.method public static setWindowMode(II)I
    .registers 3
    .param p0, "fromWindowMode"    # I
    .param p1, "toWindowMode"    # I

    .prologue
    .line 292
    const/high16 v0, 0x4c0000

    and-int/2addr p1, v0

    .line 293
    const v0, -0x4c0001

    and-int/2addr v0, p0

    or-int/2addr p1, v0

    return p1
.end method

.method public static zone(I)I
    .registers 2
    .param p0, "params"    # I

    .prologue
    .line 286
    and-int/lit8 v0, p0, 0xf

    return v0
.end method

.method public static zonePolicy(I)I
    .registers 2
    .param p0, "params"    # I

    .prologue
    .line 289
    const/high16 v0, 0x30000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x10

    return v0
.end method
