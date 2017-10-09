.class Lcom/android/systemui/qs/tiles/DrivingModeTile$4;
.super Ljava/lang/Object;
.source "DrivingModeTile.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 323
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile$4;->this$0:Lcom/android/systemui/qs/tiles/DrivingModeTile;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile$4;->val$mDrivingModeCheckBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile$4;->val$mDrivingModeCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    .line 326
    return-void
.end method
