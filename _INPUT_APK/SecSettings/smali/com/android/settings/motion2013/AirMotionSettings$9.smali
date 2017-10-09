.class Lcom/android/settings/motion2013/AirMotionSettings$9;
.super Ljava/lang/Object;
.source "AirMotionSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion2013/AirMotionSettings;->showGuideDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2013/AirMotionSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/motion2013/AirMotionSettings;)V
    .locals 0

    .prologue
    .line 598
    iput-object p1, p0, Lcom/android/settings/motion2013/AirMotionSettings$9;->this$0:Lcom/android/settings/motion2013/AirMotionSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings$9;->this$0:Lcom/android/settings/motion2013/AirMotionSettings;

    invoke-static {v0}, Lcom/android/settings/motion2013/AirMotionSettings;->access$1300(Lcom/android/settings/motion2013/AirMotionSettings;)V

    .line 601
    return-void
.end method
