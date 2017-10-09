.class Lcom/android/systemui/qs/tiles/DormantModeTile$9;
.super Ljava/lang/Object;
.source "DormantModeTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/DormantModeTile;->showConfirmPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/DormantModeTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/DormantModeTile;)V
    .locals 0

    .prologue
    .line 644
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DormantModeTile$9;->this$0:Lcom/android/systemui/qs/tiles/DormantModeTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 648
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile$9;->this$0:Lcom/android/systemui/qs/tiles/DormantModeTile;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$DormantmodeSettingsActivity"

    invoke-static {v0, v1, v2}, Lcom/android/systemui/qs/tiles/DormantModeTile;->access$800(Lcom/android/systemui/qs/tiles/DormantModeTile;Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    return-void
.end method
