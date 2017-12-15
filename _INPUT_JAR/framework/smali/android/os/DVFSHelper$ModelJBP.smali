.class Landroid/os/DVFSHelper$ModelJBP;
.super Landroid/os/DVFSHelper$Model;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelJBP"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .registers 8

    .prologue
    const v5, 0x16e360

    const/16 v4, 0x3e8

    const/16 v3, 0x1f4

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 1478
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelJBP;->this$0:Landroid/os/DVFSHelper;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/DVFSHelper$Model;-><init>(Landroid/os/DVFSHelper;Landroid/os/DVFSHelper$1;)V

    .line 1479
    iput v4, p0, Landroid/os/DVFSHelper$ModelJBP;->BROWSER_TOUCH_BOOST_TIMEOUT:I

    .line 1480
    iput v1, p0, Landroid/os/DVFSHelper$ModelJBP;->BROWSER_TOUCH_ARM_FREQ:I

    .line 1481
    iput v1, p0, Landroid/os/DVFSHelper$ModelJBP;->BROWSER_TOUCH_BUS_FREQ:I

    .line 1482
    iput v3, p0, Landroid/os/DVFSHelper$ModelJBP;->GALLERY_TOUCH_BOOST_TIMEOUT:I

    .line 1483
    iput v3, p0, Landroid/os/DVFSHelper$ModelJBP;->GALLERY_TOUCH_TAIL_BOOST_TIMEOUT:I

    .line 1484
    iput v5, p0, Landroid/os/DVFSHelper$ModelJBP;->GALLERY_TOUCH_ARM_FREQ:I

    .line 1485
    iput v1, p0, Landroid/os/DVFSHelper$ModelJBP;->GALLERY_TOUCH_BUS_FREQ:I

    .line 1486
    iput v4, p0, Landroid/os/DVFSHelper$ModelJBP;->LAUNCHER_TOUCH_BOOST_TIMEOUT:I

    .line 1487
    iput v5, p0, Landroid/os/DVFSHelper$ModelJBP;->LAUNCHER_TOUCH_ARM_FREQ:I

    .line 1488
    iput v1, p0, Landroid/os/DVFSHelper$ModelJBP;->LAUNCHER_TOUCH_BUS_FREQ:I

    .line 1489
    iput v1, p0, Landroid/os/DVFSHelper$ModelJBP;->LAUNCHER_TOUCH_GPU_FREQ:I

    .line 1490
    iput v2, p0, Landroid/os/DVFSHelper$ModelJBP;->LAUNCHER_TOUCH_CPU_CORE:I

    .line 1491
    const v0, 0x124f80

    iput v0, p0, Landroid/os/DVFSHelper$ModelJBP;->GROUP_PLAY_ARM_FREQ:I

    .line 1492
    const v0, 0xc3500

    iput v0, p0, Landroid/os/DVFSHelper$ModelJBP;->LIST_SCROLL_ARM_FREQ:I

    .line 1493
    iput v1, p0, Landroid/os/DVFSHelper$ModelJBP;->LIST_SCROLL_GPU_FREQ:I

    .line 1494
    iput v1, p0, Landroid/os/DVFSHelper$ModelJBP;->LIST_SCROLL_BUS_FREQ:I

    .line 1495
    const/4 v0, 0x2

    sput v0, Landroid/os/DVFSHelper;->LIST_SCROLL_BOOSTER_CORE_NUM:I

    .line 1496
    const v0, 0x118c30

    iput v0, p0, Landroid/os/DVFSHelper$ModelJBP;->AMS_RESUME_ARM_FREQ:I

    .line 1497
    iput v1, p0, Landroid/os/DVFSHelper$ModelJBP;->AMS_RESUME_GPU_FREQ:I

    .line 1498
    iput v1, p0, Landroid/os/DVFSHelper$ModelJBP;->AMS_RESUME_BUS_FREQ:I

    .line 1499
    iput v2, p0, Landroid/os/DVFSHelper$ModelJBP;->AMS_RESUME_CPU_CORE:I

    .line 1500
    const/16 v0, 0x12c

    sput v0, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    .line 1501
    iput v1, p0, Landroid/os/DVFSHelper$ModelJBP;->APP_LAUNCH_GPU_FREQ:I

    .line 1502
    iput v1, p0, Landroid/os/DVFSHelper$ModelJBP;->APP_LAUNCH_BUS_FREQ:I

    .line 1503
    iput v1, p0, Landroid/os/DVFSHelper$ModelJBP;->BROWSER_FLING_ARM_FREQ:I

    .line 1504
    const/16 v0, 0x7d0

    sput v0, Landroid/os/DVFSHelper;->PWM_ROTATION_BOOST_TIMEOUT:I

    .line 1505
    iput v2, p0, Landroid/os/DVFSHelper$ModelJBP;->DEVICE_WAKEUP_ARM_FREQ:I

    .line 1506
    iput v2, p0, Landroid/os/DVFSHelper$ModelJBP;->ROTATION_ARM_FREQ:I

    .line 1507
    return-void
.end method
