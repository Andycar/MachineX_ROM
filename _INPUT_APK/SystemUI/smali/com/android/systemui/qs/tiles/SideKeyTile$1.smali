.class Lcom/android/systemui/qs/tiles/SideKeyTile$1;
.super Lcom/android/systemui/qs/SystemSetting;
.source "SideKeyTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/SideKeyTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/SideKeyTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/SideKeyTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/os/Handler;
    .param p4, "x2"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SideKeyTile$1;->this$0:Lcom/android/systemui/qs/tiles/SideKeyTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/SystemSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x1

    .line 51
    const-string v1, "SideKeyTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSideKeySettings.handleValueChanged() - DB_SIDESOFTKKEY_SWITCH_ON = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SideKeyTile$1;->this$0:Lcom/android/systemui/qs/tiles/SideKeyTile;

    if-ne p1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/SideKeyTile;->access$000(Lcom/android/systemui/qs/tiles/SideKeyTile;Ljava/lang/Object;)V

    .line 55
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SideKeyTile$1;->this$0:Lcom/android/systemui/qs/tiles/SideKeyTile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/SideKeyTile;->access$102(Lcom/android/systemui/qs/tiles/SideKeyTile;Z)Z

    .line 57
    return-void

    .line 53
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
