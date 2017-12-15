.class Landroid/os/DVFSHelper$ModelPP;
.super Landroid/os/DVFSHelper$ModelJBP;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelPP"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .registers 3

    .prologue
    .line 1697
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelPP;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelJBP;-><init>(Landroid/os/DVFSHelper;)V

    .line 1698
    const v0, 0x155cc0

    iput v0, p0, Landroid/os/DVFSHelper$ModelPP;->AMS_RESUME_ARM_FREQ:I

    .line 1699
    const v0, 0x13d620

    iput v0, p0, Landroid/os/DVFSHelper$ModelPP;->LAUNCHER_TOUCH_ARM_FREQ:I

    .line 1700
    return-void
.end method
