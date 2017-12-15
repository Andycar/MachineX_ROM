.class public Lcom/samsung/android/cover/CoverManager$CoverStateListener;
.super Ljava/lang/Object;
.source "CoverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cover/CoverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CoverStateListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 668
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 669
    return-void
.end method


# virtual methods
.method public onCoverAttachStateChanged(Z)V
    .registers 2
    .param p1, "attached"    # Z

    .prologue
    .line 687
    return-void
.end method

.method public onCoverSwitchStateChanged(Z)V
    .registers 2
    .param p1, "switchState"    # Z

    .prologue
    .line 678
    return-void
.end method
