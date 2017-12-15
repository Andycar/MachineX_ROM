.class Landroid/os/DVFSHelper$ModelA7;
.super Landroid/os/DVFSHelper$ModelMSM8916;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelA7"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .registers 4

    .prologue
    const v1, 0x87f00

    .line 1814
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelA7;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelMSM8916;-><init>(Landroid/os/DVFSHelper;)V

    .line 1815
    const v0, 0x61a80

    iput v0, p0, Landroid/os/DVFSHelper$ModelA7;->LIST_SCROLL_ARM_FREQ:I

    .line 1816
    iput v1, p0, Landroid/os/DVFSHelper$ModelA7;->AMS_RESUME_ARM_FREQ:I

    .line 1817
    const v0, 0x79e00

    iput v0, p0, Landroid/os/DVFSHelper$ModelA7;->DEVICE_WAKEUP_ARM_FREQ:I

    .line 1818
    iput v1, p0, Landroid/os/DVFSHelper$ModelA7;->GALLERY_TOUCH_ARM_FREQ:I

    .line 1819
    iput v1, p0, Landroid/os/DVFSHelper$ModelA7;->LAUNCHER_TOUCH_ARM_FREQ:I

    .line 1820
    const/16 v0, 0x5dc

    sput v0, Landroid/os/DVFSHelper;->PWM_ROTATION_BOOST_TIMEOUT:I

    .line 1821
    return-void
.end method
