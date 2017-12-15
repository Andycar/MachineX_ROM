.class Landroid/os/DVFSHelper$ModelKQ;
.super Landroid/os/DVFSHelper$ModelJBP;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelKQ"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .registers 3

    .prologue
    .line 1594
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelKQ;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelJBP;-><init>(Landroid/os/DVFSHelper;)V

    .line 1595
    const v0, 0x1b7740

    iput v0, p0, Landroid/os/DVFSHelper$ModelKQ;->AMS_RESUME_ARM_FREQ:I

    .line 1596
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/DVFSHelper$ModelKQ;->GALLERY_TOUCH_ARM_FREQ:I

    .line 1597
    const v0, 0x1cfde0

    iput v0, p0, Landroid/os/DVFSHelper$ModelKQ;->LAUNCHER_TOUCH_ARM_FREQ:I

    .line 1598
    const/16 v0, 0x64

    iput v0, p0, Landroid/os/DVFSHelper$ModelKQ;->LAUNCHER_TOUCH_BOOST_TIMEOUT:I

    .line 1599
    return-void
.end method
