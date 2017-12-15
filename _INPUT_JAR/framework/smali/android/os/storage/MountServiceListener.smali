.class public abstract Landroid/os/storage/MountServiceListener;
.super Ljava/lang/Object;
.source "MountServiceListener.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method onStorageStateChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "oldState"    # Ljava/lang/String;
    .param p3, "newState"    # Ljava/lang/String;

    .prologue
    .line 43
    return-void
.end method

.method onUsbMassStorageConnectionChanged(Z)V
    .registers 2
    .param p1, "connected"    # Z

    .prologue
    .line 31
    return-void
.end method
