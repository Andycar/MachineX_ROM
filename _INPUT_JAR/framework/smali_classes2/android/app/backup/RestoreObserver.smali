.class public abstract Landroid/app/backup/RestoreObserver;
.super Ljava/lang/Object;
.source "RestoreObserver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(ILjava/lang/String;)V
    .registers 3
    .param p1, "nowBeingRestored"    # I
    .param p2, "currentPackage"    # Ljava/lang/String;

    .prologue
    .line 68
    return-void
.end method

.method public restoreFinished(I)V
    .registers 2
    .param p1, "error"    # I

    .prologue
    .line 78
    return-void
.end method

.method public restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    .registers 2
    .param p1, "result"    # [Landroid/app/backup/RestoreSet;

    .prologue
    .line 43
    return-void
.end method

.method public restoreStarting(I)V
    .registers 2
    .param p1, "numPackages"    # I

    .prologue
    .line 52
    return-void
.end method
