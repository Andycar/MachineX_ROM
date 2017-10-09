.class Lcom/android/systemui/qs/tiles/DormantModeTile$4;
.super Ljava/lang/Object;
.source "DormantModeTile.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/DormantModeTile;->onDisplayDormantModeAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/DormantModeTile;

.field final synthetic val$mDormantModeCheckBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/DormantModeTile;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 550
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DormantModeTile$4;->this$0:Lcom/android/systemui/qs/tiles/DormantModeTile;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/DormantModeTile$4;->val$mDormantModeCheckBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 552
    if-eqz p2, :cond_0

    .line 553
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile$4;->this$0:Lcom/android/systemui/qs/tiles/DormantModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DormantModeTile;->access$200(Lcom/android/systemui/qs/tiles/DormantModeTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quickpanel_dormantmode_checked"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 559
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile$4;->val$mDormantModeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    .line 560
    return-void

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile$4;->this$0:Lcom/android/systemui/qs/tiles/DormantModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DormantModeTile;->access$300(Lcom/android/systemui/qs/tiles/DormantModeTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quickpanel_dormantmode_checked"

    invoke-static {v0, v1, v4, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method
