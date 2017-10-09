.class Lcom/android/systemui/qs/tiles/LocationTile$8;
.super Ljava/lang/Object;
.source "LocationTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/LocationTile;->showConfirmPopup(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/LocationTile;

.field final synthetic val$value:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/LocationTile;Z)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/LocationTile$8;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    iput-boolean p2, p0, Lcom/android/systemui/qs/tiles/LocationTile$8;->val$value:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 422
    const-string v1, "STATUSBAR-LocationQuickSettingButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPositiveButton onClick()...value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/LocationTile$8;->val$value:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile$8;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/LocationTile;->access$1100(Lcom/android/systemui/qs/tiles/LocationTile;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/Prefs;->edit(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 424
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "gps_alert_pref"

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LocationTile$8;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/LocationTile;->access$900(Lcom/android/systemui/qs/tiles/LocationTile;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 425
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 426
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile$8;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/LocationTile$8;->val$value:Z

    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/LocationTile;->access$1200(Lcom/android/systemui/qs/tiles/LocationTile;Z)V

    .line 427
    return-void
.end method
