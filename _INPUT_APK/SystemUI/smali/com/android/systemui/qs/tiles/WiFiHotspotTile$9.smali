.class Lcom/android/systemui/qs/tiles/WiFiHotspotTile$9;
.super Ljava/lang/Object;
.source "WiFiHotspotTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->showWarningDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/WiFiHotspotTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)V
    .locals 0

    .prologue
    .line 590
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$9;->this$0:Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "unused"    # Landroid/content/DialogInterface;

    .prologue
    .line 592
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$9;->this$0:Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->access$202(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 593
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$9;->this$0:Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->access$1600(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)V

    .line 594
    return-void
.end method
