.class Lcom/android/systemui/qs/tiles/LocationTile$7;
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


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/LocationTile;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/LocationTile$7;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 432
    const-string v0, "STATUSBAR-LocationQuickSettingButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNegativeButton onClick()..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LocationTile$7;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/LocationTile;->access$100(Lcom/android/systemui/qs/tiles/LocationTile;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile$7;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$7;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/LocationTile;->access$100(Lcom/android/systemui/qs/tiles/LocationTile;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/LocationTile;->access$1000(Lcom/android/systemui/qs/tiles/LocationTile;Ljava/lang/Object;)V

    .line 435
    return-void

    .line 433
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method