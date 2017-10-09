.class Lcom/android/systemui/qs/tiles/SmartScrollTile$2;
.super Lcom/android/systemui/qs/SystemSetting;
.source "SmartScrollTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/SmartScrollTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/SmartScrollTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/SmartScrollTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/os/Handler;
    .param p4, "x2"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile$2;->this$0:Lcom/android/systemui/qs/tiles/SmartScrollTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/SystemSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x1

    .line 80
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile$2;->this$0:Lcom/android/systemui/qs/tiles/SmartScrollTile;

    if-ne p1, v0, :cond_0

    :goto_0
    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/SmartScrollTile;->access$202(Lcom/android/systemui/qs/tiles/SmartScrollTile;Z)Z

    .line 81
    const-string v0, "SmartScrollTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFaceSmartScrollSettings.onChange() - DB_FACE_SMART_SCROLL = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile$2;->this$0:Lcom/android/systemui/qs/tiles/SmartScrollTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/SmartScrollTile;->access$200(Lcom/android/systemui/qs/tiles/SmartScrollTile;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SmartScrollTile$2;->this$0:Lcom/android/systemui/qs/tiles/SmartScrollTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SmartScrollTile;->access$100(Lcom/android/systemui/qs/tiles/SmartScrollTile;)V

    .line 83
    return-void

    .line 80
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
