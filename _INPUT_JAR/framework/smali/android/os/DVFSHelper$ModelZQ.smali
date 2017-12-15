.class Landroid/os/DVFSHelper$ModelZQ;
.super Landroid/os/DVFSHelper$ModelJBP;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelZQ"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .registers 3

    .prologue
    const/4 v0, -0x1

    .line 1662
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelZQ;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelJBP;-><init>(Landroid/os/DVFSHelper;)V

    .line 1663
    iput v0, p0, Landroid/os/DVFSHelper$ModelZQ;->GALLERY_TOUCH_ARM_FREQ:I

    .line 1664
    iput v0, p0, Landroid/os/DVFSHelper$ModelZQ;->LAUNCHER_TOUCH_ARM_FREQ:I

    .line 1665
    const v0, 0x1bd500

    iput v0, p0, Landroid/os/DVFSHelper$ModelZQ;->AMS_RESUME_ARM_FREQ:I

    .line 1666
    const v0, 0x130b00

    iput v0, p0, Landroid/os/DVFSHelper$ModelZQ;->DEVICE_WAKEUP_ARM_FREQ:I

    .line 1667
    const/16 v0, 0x5dc

    sput v0, Landroid/os/DVFSHelper;->PWM_ROTATION_BOOST_TIMEOUT:I

    .line 1668
    return-void
.end method
