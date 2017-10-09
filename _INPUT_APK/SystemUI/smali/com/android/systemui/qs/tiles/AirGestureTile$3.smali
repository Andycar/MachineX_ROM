.class Lcom/android/systemui/qs/tiles/AirGestureTile$3;
.super Ljava/lang/Object;
.source "AirGestureTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/AirGestureTile;->showConfirmPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/AirGestureTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/AirGestureTile;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AirGestureTile$3;->this$0:Lcom/android/systemui/qs/tiles/AirGestureTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 196
    const-string v0, "AirGestureTile"

    const-string v1, "showConfirmPopup() - Positive onClick mode: ok"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirGestureTile$3;->this$0:Lcom/android/systemui/qs/tiles/AirGestureTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirGestureTile;->access$000(Lcom/android/systemui/qs/tiles/AirGestureTile;)Lcom/android/systemui/qs/SystemSetting;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    .line 198
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirGestureTile$3;->this$0:Lcom/android/systemui/qs/tiles/AirGestureTile;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$AirMotionSettingActivity"

    invoke-static {v0, v1, v2}, Lcom/android/systemui/qs/tiles/AirGestureTile;->access$400(Lcom/android/systemui/qs/tiles/AirGestureTile;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return-void
.end method
