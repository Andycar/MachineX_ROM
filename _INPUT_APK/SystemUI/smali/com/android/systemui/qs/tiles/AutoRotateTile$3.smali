.class Lcom/android/systemui/qs/tiles/AutoRotateTile$3;
.super Lcom/android/systemui/qs/SystemSetting;
.source "AutoRotateTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/AutoRotateTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/AutoRotateTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/AutoRotateTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/os/Handler;
    .param p4, "x2"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile$3;->this$0:Lcom/android/systemui/qs/tiles/AutoRotateTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/SystemSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 94
    const-string v0, "STATUSBAR-AutoRotateQuickSettingButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Settings.System.ACCELEROMETER_ROTATION_SECOND has been changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile$3;->this$0:Lcom/android/systemui/qs/tiles/AutoRotateTile;

    invoke-static {v0, p1}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->access$500(Lcom/android/systemui/qs/tiles/AutoRotateTile;I)V

    .line 96
    return-void
.end method
