.class Landroid/os/DVFSHelper$ModelMSM8x26;
.super Landroid/os/DVFSHelper$ModelJBP;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelMSM8x26"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .registers 3

    .prologue
    .line 1759
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelMSM8x26;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelJBP;-><init>(Landroid/os/DVFSHelper;)V

    .line 1760
    const v0, 0x10b300

    iput v0, p0, Landroid/os/DVFSHelper$ModelMSM8x26;->LAUNCHER_TOUCH_ARM_FREQ:I

    .line 1761
    const/4 v0, 0x4

    iput v0, p0, Landroid/os/DVFSHelper$ModelMSM8x26;->AMS_RESUME_CPU_CORE:I

    .line 1762
    const/16 v0, 0x3e8

    sput v0, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    .line 1763
    return-void
.end method
