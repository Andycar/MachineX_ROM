.class Landroid/os/DVFSHelper$ModelDegasLTE;
.super Landroid/os/DVFSHelper$ModelKMINI;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelDegasLTE"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .registers 3

    .prologue
    .line 1790
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelDegasLTE;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelKMINI;-><init>(Landroid/os/DVFSHelper;)V

    .line 1791
    const v0, 0x155cc0

    iput v0, p0, Landroid/os/DVFSHelper$ModelDegasLTE;->LAUNCHER_TOUCH_ARM_FREQ:I

    .line 1792
    return-void
.end method
