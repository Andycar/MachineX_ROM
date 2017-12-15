.class Landroid/os/DVFSHelper$ModelJF;
.super Landroid/os/DVFSHelper$ModelJBP;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelJF"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .registers 4

    .prologue
    const v1, 0x155cc0

    .line 1531
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelJF;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelJBP;-><init>(Landroid/os/DVFSHelper;)V

    .line 1532
    const/16 v0, 0xc8

    iput v0, p0, Landroid/os/DVFSHelper$ModelJF;->LAUNCHER_TOUCH_BOOST_TIMEOUT:I

    .line 1533
    iput v1, p0, Landroid/os/DVFSHelper$ModelJF;->GALLERY_TOUCH_ARM_FREQ:I

    .line 1534
    iput v1, p0, Landroid/os/DVFSHelper$ModelJF;->LAUNCHER_TOUCH_ARM_FREQ:I

    .line 1535
    const v0, 0x124f80

    iput v0, p0, Landroid/os/DVFSHelper$ModelJF;->GROUP_PLAY_ARM_FREQ:I

    .line 1536
    const v0, 0x16e360

    iput v0, p0, Landroid/os/DVFSHelper$ModelJF;->LIST_SCROLL_ARM_FREQ:I

    .line 1538
    const/4 v0, 0x2

    sput v0, Landroid/os/DVFSHelper;->LIST_SCROLL_BOOSTER_CORE_NUM:I

    .line 1539
    return-void
.end method
