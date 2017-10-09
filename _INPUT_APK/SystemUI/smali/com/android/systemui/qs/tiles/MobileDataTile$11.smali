.class Lcom/android/systemui/qs/tiles/MobileDataTile$11;
.super Ljava/lang/Object;
.source "MobileDataTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/MobileDataTile;->onDisplayMobileDataOnAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V
    .locals 0

    .prologue
    .line 496
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$11;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 498
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 499
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$11;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$2600(Lcom/android/systemui/qs/tiles/MobileDataTile;Z)V

    .line 500
    return-void
.end method
