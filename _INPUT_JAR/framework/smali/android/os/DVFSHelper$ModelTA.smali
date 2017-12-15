.class Landroid/os/DVFSHelper$ModelTA;
.super Landroid/os/DVFSHelper$ModelJBP;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelTA"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .registers 3

    .prologue
    .line 1630
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelTA;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelJBP;-><init>(Landroid/os/DVFSHelper;)V

    .line 1631
    const v0, 0x1b7740

    iput v0, p0, Landroid/os/DVFSHelper$ModelTA;->AMS_RESUME_ARM_FREQ:I

    .line 1632
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/DVFSHelper$ModelTA;->GALLERY_TOUCH_ARM_FREQ:I

    .line 1633
    const v0, 0x1cfde0

    iput v0, p0, Landroid/os/DVFSHelper$ModelTA;->LAUNCHER_TOUCH_ARM_FREQ:I

    .line 1634
    const/16 v0, 0x1a4

    iput v0, p0, Landroid/os/DVFSHelper$ModelTA;->LAUNCHER_TOUCH_GPU_FREQ:I

    .line 1635
    const/16 v0, 0x64

    iput v0, p0, Landroid/os/DVFSHelper$ModelTA;->LAUNCHER_TOUCH_BOOST_TIMEOUT:I

    .line 1636
    const v0, 0x124f80

    iput v0, p0, Landroid/os/DVFSHelper$ModelTA;->DEVICE_WAKEUP_ARM_FREQ:I

    .line 1637
    return-void
.end method
