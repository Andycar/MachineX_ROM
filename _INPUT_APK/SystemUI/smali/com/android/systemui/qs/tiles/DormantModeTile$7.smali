.class Lcom/android/systemui/qs/tiles/DormantModeTile$7;
.super Ljava/lang/Object;
.source "DormantModeTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/DormantModeTile;)V
    .locals 0

    .prologue
    .line 605
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DormantModeTile$7;->this$0:Lcom/android/systemui/qs/tiles/DormantModeTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "unused"    # Landroid/content/DialogInterface;

    .prologue
    .line 608
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DormantModeTile$7;->this$0:Lcom/android/systemui/qs/tiles/DormantModeTile;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile$7;->this$0:Lcom/android/systemui/qs/tiles/DormantModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DormantModeTile;->access$600(Lcom/android/systemui/qs/tiles/DormantModeTile;)Lcom/android/systemui/qs/SystemSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/DormantModeTile;->access$700(Lcom/android/systemui/qs/tiles/DormantModeTile;Ljava/lang/Object;)V

    .line 609
    return-void

    .line 608
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
