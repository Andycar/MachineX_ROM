.class Lcom/android/systemui/qs/tiles/PowerSavingTile$4;
.super Ljava/lang/Object;
.source "PowerSavingTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/PowerSavingTile;->showConfirmPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/PowerSavingTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/PowerSavingTile;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile$4;->this$0:Lcom/android/systemui/qs/tiles/PowerSavingTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile$4;->this$0:Lcom/android/systemui/qs/tiles/PowerSavingTile;

    const-string v1, "com.android.settings"

    invoke-static {}, Lcom/android/systemui/qs/tiles/PowerSavingTile;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/qs/tiles/PowerSavingTile;->access$300(Lcom/android/systemui/qs/tiles/PowerSavingTile;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    return-void
.end method
