.class Lcom/android/systemui/qs/tiles/AirViewTile$6;
.super Ljava/lang/Object;
.source "AirViewTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/AirViewTile;->showConfirmPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/AirViewTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/AirViewTile;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AirViewTile$6;->this$0:Lcom/android/systemui/qs/tiles/AirViewTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x1

    .line 375
    const-string v0, "AirViewTile"

    const-string v1, "showConfirmPopup() - Positive onClick mode: ok"

    invoke-static {v0, v1}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-static {}, Lcom/android/systemui/qs/tiles/AirViewTile;->access$900()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 377
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile$6;->this$0:Lcom/android/systemui/qs/tiles/AirViewTile;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$FingerAirViewSettingActivity"

    invoke-static {v0, v1, v2}, Lcom/android/systemui/qs/tiles/AirViewTile;->access$1000(Lcom/android/systemui/qs/tiles/AirViewTile;Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    invoke-static {}, Lcom/android/systemui/qs/tiles/AirViewTile;->access$900()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 379
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile$6;->this$0:Lcom/android/systemui/qs/tiles/AirViewTile;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$PenAirViewSettingsMenuActivity"

    invoke-static {v0, v1, v2}, Lcom/android/systemui/qs/tiles/AirViewTile;->access$1100(Lcom/android/systemui/qs/tiles/AirViewTile;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 380
    :cond_2
    invoke-static {}, Lcom/android/systemui/qs/tiles/AirViewTile;->access$900()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 381
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile$6;->this$0:Lcom/android/systemui/qs/tiles/AirViewTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirViewTile;->access$100(Lcom/android/systemui/qs/tiles/AirViewTile;)Lcom/android/systemui/qs/SystemSetting;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    .line 382
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile$6;->this$0:Lcom/android/systemui/qs/tiles/AirViewTile;

    invoke-static {v0, v2}, Lcom/android/systemui/qs/tiles/AirViewTile;->access$1200(Lcom/android/systemui/qs/tiles/AirViewTile;I)V

    .line 383
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile$6;->this$0:Lcom/android/systemui/qs/tiles/AirViewTile;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$AirViewSettingActivity"

    invoke-static {v0, v1, v2}, Lcom/android/systemui/qs/tiles/AirViewTile;->access$1300(Lcom/android/systemui/qs/tiles/AirViewTile;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
