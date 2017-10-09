.class Lcom/android/systemui/qs/tiles/DrivingModeTile$5;
.super Ljava/lang/Object;
.source "DrivingModeTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/DrivingModeTile;->onDisplayDrivingModeAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/DrivingModeTile;

.field final synthetic val$mDrivingModeCheckBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/DrivingModeTile;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile$5;->this$0:Lcom/android/systemui/qs/tiles/DrivingModeTile;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile$5;->val$mDrivingModeCheckBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile$5;->val$mDrivingModeCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile$5;->val$mDrivingModeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile$5;->this$0:Lcom/android/systemui/qs/tiles/DrivingModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DrivingModeTile;->access$1000(Lcom/android/systemui/qs/tiles/DrivingModeTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quickpanel_drivingmode_checked"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 338
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 339
    return-void
.end method
