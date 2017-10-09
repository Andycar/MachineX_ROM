.class Lcom/android/settings/DrivingModeSettings$1;
.super Ljava/lang/Object;
.source "DrivingModeSettings.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DrivingModeSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DrivingModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DrivingModeSettings;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/settings/DrivingModeSettings$1;->this$0:Lcom/android/settings/DrivingModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/settings/DrivingModeSettings$1;->this$0:Lcom/android/settings/DrivingModeSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/DrivingModeSettings;->access$002(Lcom/android/settings/DrivingModeSettings;Z)Z

    .line 253
    const/4 v0, 0x0

    return v0
.end method
