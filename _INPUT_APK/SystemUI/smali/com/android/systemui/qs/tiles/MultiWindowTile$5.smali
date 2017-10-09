.class Lcom/android/systemui/qs/tiles/MultiWindowTile$5;
.super Ljava/lang/Object;
.source "MultiWindowTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/MultiWindowTile;->showConfirmPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/MultiWindowTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/MultiWindowTile;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MultiWindowTile$5;->this$0:Lcom/android/systemui/qs/tiles/MultiWindowTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MultiWindowTile$5;->this$0:Lcom/android/systemui/qs/tiles/MultiWindowTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MultiWindowTile;->access$300(Lcom/android/systemui/qs/tiles/MultiWindowTile;)Lcom/android/systemui/qs/SystemSetting;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    .line 244
    return-void
.end method
