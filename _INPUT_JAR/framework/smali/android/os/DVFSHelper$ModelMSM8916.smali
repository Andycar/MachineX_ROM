.class Landroid/os/DVFSHelper$ModelMSM8916;
.super Landroid/os/DVFSHelper$ModelJBP;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelMSM8916"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .registers 3

    .prologue
    const v0, 0x122a00

    .line 1805
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelMSM8916;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelJBP;-><init>(Landroid/os/DVFSHelper;)V

    .line 1806
    iput v0, p0, Landroid/os/DVFSHelper$ModelMSM8916;->GALLERY_TOUCH_ARM_FREQ:I

    .line 1807
    iput v0, p0, Landroid/os/DVFSHelper$ModelMSM8916;->LAUNCHER_TOUCH_ARM_FREQ:I

    .line 1808
    const/4 v0, 0x4

    iput v0, p0, Landroid/os/DVFSHelper$ModelMSM8916;->LAUNCHER_TOUCH_CPU_CORE:I

    .line 1809
    const/4 v0, 0x3

    iput v0, p0, Landroid/os/DVFSHelper$ModelMSM8916;->AMS_RESUME_CPU_CORE:I

    .line 1810
    return-void
.end method
