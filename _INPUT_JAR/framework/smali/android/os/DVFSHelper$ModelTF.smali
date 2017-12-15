.class Landroid/os/DVFSHelper$ModelTF;
.super Landroid/os/DVFSHelper$ModelJBP;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelTF"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .registers 6

    .prologue
    const v3, 0x258000

    const/16 v2, 0x1388

    const/16 v1, 0x210

    .line 1603
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelTF;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelJBP;-><init>(Landroid/os/DVFSHelper;)V

    .line 1604
    const v0, 0x124f80

    iput v0, p0, Landroid/os/DVFSHelper$ModelTF;->LIST_SCROLL_ARM_FREQ:I

    .line 1605
    const v0, 0x1b7740

    iput v0, p0, Landroid/os/DVFSHelper$ModelTF;->AMS_RESUME_ARM_FREQ:I

    .line 1606
    const/4 v0, 0x4

    iput v0, p0, Landroid/os/DVFSHelper$ModelTF;->AMS_RESUME_CPU_CORE:I

    .line 1607
    const/16 v0, 0x1cc

    iput v0, p0, Landroid/os/DVFSHelper$ModelTF;->AMS_RESUME_BUS_FREQ:I

    .line 1608
    const/16 v0, 0x296

    iput v0, p0, Landroid/os/DVFSHelper$ModelTF;->APP_LAUNCH_BUS_FREQ:I

    .line 1609
    iput v2, p0, Landroid/os/DVFSHelper$ModelTF;->GALLERY_TOUCH_BOOST_TIMEOUT:I

    .line 1610
    iput v3, p0, Landroid/os/DVFSHelper$ModelTF;->GALLERY_TOUCH_ARM_FREQ:I

    .line 1611
    iput v1, p0, Landroid/os/DVFSHelper$ModelTF;->GALLERY_TOUCH_BUS_FREQ:I

    .line 1612
    iput v2, p0, Landroid/os/DVFSHelper$ModelTF;->LAUNCHER_TOUCH_BOOST_TIMEOUT:I

    .line 1613
    iput v3, p0, Landroid/os/DVFSHelper$ModelTF;->LAUNCHER_TOUCH_ARM_FREQ:I

    .line 1614
    iput v1, p0, Landroid/os/DVFSHelper$ModelTF;->LAUNCHER_TOUCH_BUS_FREQ:I

    .line 1615
    const/4 v0, 0x2

    sput v0, Landroid/os/DVFSHelper;->LIST_SCROLL_BOOSTER_CORE_NUM:I

    .line 1616
    return-void
.end method
