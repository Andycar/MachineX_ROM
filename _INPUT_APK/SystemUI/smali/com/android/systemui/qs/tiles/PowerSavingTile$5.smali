.class Lcom/android/systemui/qs/tiles/PowerSavingTile$5;
.super Landroid/database/ContentObserver;
.source "PowerSavingTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/PowerSavingTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/PowerSavingTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/PowerSavingTile;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 364
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile$5;->this$0:Lcom/android/systemui/qs/tiles/PowerSavingTile;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 366
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile$5;->this$0:Lcom/android/systemui/qs/tiles/PowerSavingTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/PowerSavingTile;->access$400(Lcom/android/systemui/qs/tiles/PowerSavingTile;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "low_power"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 367
    .local v0, "powerSaving":I
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile$5;->this$0:Lcom/android/systemui/qs/tiles/PowerSavingTile;

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v3, v1}, Lcom/android/systemui/qs/tiles/PowerSavingTile;->access$502(Lcom/android/systemui/qs/tiles/PowerSavingTile;Z)Z

    .line 368
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile$5;->this$0:Lcom/android/systemui/qs/tiles/PowerSavingTile;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile$5;->this$0:Lcom/android/systemui/qs/tiles/PowerSavingTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/PowerSavingTile;->access$500(Lcom/android/systemui/qs/tiles/PowerSavingTile;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/PowerSavingTile;->access$600(Lcom/android/systemui/qs/tiles/PowerSavingTile;Ljava/lang/Object;)V

    .line 369
    return-void

    .line 368
    :cond_1
    const/4 v2, 0x2

    goto :goto_0
.end method
