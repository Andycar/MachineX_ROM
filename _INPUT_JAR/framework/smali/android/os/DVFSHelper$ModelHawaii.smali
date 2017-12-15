.class Landroid/os/DVFSHelper$ModelHawaii;
.super Landroid/os/DVFSHelper$ModelJBP;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelHawaii"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .registers 3

    .prologue
    .line 1753
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelHawaii;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelJBP;-><init>(Landroid/os/DVFSHelper;)V

    .line 1754
    const v0, 0x124f80

    iput v0, p0, Landroid/os/DVFSHelper$ModelHawaii;->LIST_SCROLL_ARM_FREQ:I

    .line 1755
    return-void
.end method
