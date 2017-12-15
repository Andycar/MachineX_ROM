.class Landroid/os/DVFSHelper$ModelKAM;
.super Landroid/os/DVFSHelper$ModelJBP;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelKAM"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .registers 3

    .prologue
    const/16 v0, 0xc8

    .line 1722
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelKAM;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelJBP;-><init>(Landroid/os/DVFSHelper;)V

    .line 1723
    iput v0, p0, Landroid/os/DVFSHelper$ModelKAM;->LAUNCHER_TOUCH_BOOST_TIMEOUT:I

    .line 1724
    iput v0, p0, Landroid/os/DVFSHelper$ModelKAM;->GALLERY_TOUCH_BOOST_TIMEOUT:I

    .line 1725
    const/16 v0, 0x258

    iput v0, p0, Landroid/os/DVFSHelper$ModelKAM;->GALLERY_TOUCH_TAIL_BOOST_TIMEOUT:I

    .line 1726
    const v0, 0x186a00

    iput v0, p0, Landroid/os/DVFSHelper$ModelKAM;->AMS_RESUME_ARM_FREQ:I

    .line 1727
    return-void
.end method
