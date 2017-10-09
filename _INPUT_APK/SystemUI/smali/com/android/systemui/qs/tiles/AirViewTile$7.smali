.class Lcom/android/systemui/qs/tiles/AirViewTile$7;
.super Ljava/lang/Object;
.source "AirViewTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/AirViewTile;->showTalkBackDisablePopup(II)V
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
    .line 438
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AirViewTile$7;->this$0:Lcom/android/systemui/qs/tiles/AirViewTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirViewTile$7;->this$0:Lcom/android/systemui/qs/tiles/AirViewTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/AirViewTile;->doPrevious()V

    .line 442
    return-void
.end method
