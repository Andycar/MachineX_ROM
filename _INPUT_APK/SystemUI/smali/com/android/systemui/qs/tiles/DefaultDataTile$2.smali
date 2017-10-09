.class Lcom/android/systemui/qs/tiles/DefaultDataTile$2;
.super Lcom/android/systemui/qs/GlobalSetting;
.source "DefaultDataTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/DefaultDataTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/DefaultDataTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/os/Handler;
    .param p4, "x2"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$2;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/GlobalSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x1

    .line 95
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$2;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    if-ne p1, v0, :cond_0

    :goto_0
    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$102(Lcom/android/systemui/qs/tiles/DefaultDataTile;Z)Z

    .line 96
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$2;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$200(Lcom/android/systemui/qs/tiles/DefaultDataTile;)V

    .line 97
    return-void

    .line 95
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
