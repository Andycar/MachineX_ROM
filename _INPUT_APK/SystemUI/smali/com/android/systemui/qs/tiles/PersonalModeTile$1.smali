.class Lcom/android/systemui/qs/tiles/PersonalModeTile$1;
.super Lcom/android/systemui/qs/SystemSetting;
.source "PersonalModeTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/PersonalModeTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/PersonalModeTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/PersonalModeTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/os/Handler;
    .param p4, "x2"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/PersonalModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/PersonalModeTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/SystemSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x1

    .line 64
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/PersonalModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/PersonalModeTile;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/PersonalModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/PersonalModeTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/PersonalModeTile;->access$000(Lcom/android/systemui/qs/tiles/PersonalModeTile;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/tiles/PersonalModeTile;->isAfwProfile(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PersonalModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/PersonalModeTile;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/PersonalModeTile;->access$100(Lcom/android/systemui/qs/tiles/PersonalModeTile;Ljava/lang/Object;)V

    .line 66
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/PersonalModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/PersonalModeTile;

    if-ne p1, v0, :cond_1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/PersonalModeTile;->access$200(Lcom/android/systemui/qs/tiles/PersonalModeTile;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_1
.end method
