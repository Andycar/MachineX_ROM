.class Lcom/android/systemui/qs/tiles/LocationTile$6;
.super Ljava/lang/Object;
.source "LocationTile.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/LocationTile;->showConfirmPopup(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/LocationTile;

.field final synthetic val$mGpsCheckBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/LocationTile;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 407
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/LocationTile$6;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/LocationTile$6;->val$mGpsCheckBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$6;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {v0, p2}, Lcom/android/systemui/qs/tiles/LocationTile;->access$902(Lcom/android/systemui/qs/tiles/LocationTile;Z)Z

    .line 410
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$6;->val$mGpsCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    .line 411
    return-void
.end method
