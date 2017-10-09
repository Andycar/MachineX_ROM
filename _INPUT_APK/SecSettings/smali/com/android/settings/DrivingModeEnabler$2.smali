.class Lcom/android/settings/DrivingModeEnabler$2;
.super Landroid/database/ContentObserver;
.source "DrivingModeEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DrivingModeEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DrivingModeEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/DrivingModeEnabler;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/settings/DrivingModeEnabler$2;->this$0:Lcom/android/settings/DrivingModeEnabler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings/DrivingModeEnabler$2;->this$0:Lcom/android/settings/DrivingModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/DrivingModeEnabler;->updateSwitch()V

    .line 78
    return-void
.end method
