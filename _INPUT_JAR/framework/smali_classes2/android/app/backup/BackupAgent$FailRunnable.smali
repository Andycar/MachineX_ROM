.class Landroid/app/backup/BackupAgent$FailRunnable;
.super Ljava/lang/Object;
.source "BackupAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/BackupAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FailRunnable"
.end annotation


# instance fields
.field private mMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 765
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 766
    iput-object p1, p0, Landroid/app/backup/BackupAgent$FailRunnable;->mMessage:Ljava/lang/String;

    .line 767
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 771
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Landroid/app/backup/BackupAgent$FailRunnable;->mMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
