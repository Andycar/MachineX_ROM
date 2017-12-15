.class final Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;
.super Landroid/hardware/display/IDisplayManagerCallback$Stub;
.source "DisplayManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayManagerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/display/DisplayManagerGlobal;


# direct methods
.method private constructor <init>(Landroid/hardware/display/DisplayManagerGlobal;)V
    .registers 2

    .prologue
    .line 573
    iput-object p1, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;->this$0:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-direct {p0}, Landroid/hardware/display/IDisplayManagerCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/display/DisplayManagerGlobal;Landroid/hardware/display/DisplayManagerGlobal$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/hardware/display/DisplayManagerGlobal;
    .param p2, "x1"    # Landroid/hardware/display/DisplayManagerGlobal$1;

    .prologue
    .line 573
    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;-><init>(Landroid/hardware/display/DisplayManagerGlobal;)V

    return-void
.end method


# virtual methods
.method public onDisplayEvent(II)V
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "event"    # I

    .prologue
    .line 579
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;->this$0:Landroid/hardware/display/DisplayManagerGlobal;

    # invokes: Landroid/hardware/display/DisplayManagerGlobal;->handleDisplayEvent(II)V
    invoke-static {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->access$100(Landroid/hardware/display/DisplayManagerGlobal;II)V

    .line 580
    return-void
.end method
