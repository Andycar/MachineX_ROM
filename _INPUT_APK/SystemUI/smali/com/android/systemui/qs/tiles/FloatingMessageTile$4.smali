.class Lcom/android/systemui/qs/tiles/FloatingMessageTile$4;
.super Ljava/lang/Object;
.source "FloatingMessageTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/FloatingMessageTile;->showGuideDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/FloatingMessageTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/FloatingMessageTile;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile$4;->this$0:Lcom/android/systemui/qs/tiles/FloatingMessageTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "unused"    # Landroid/content/DialogInterface;

    .prologue
    .line 257
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile$4;->this$0:Lcom/android/systemui/qs/tiles/FloatingMessageTile;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile$4;->this$0:Lcom/android/systemui/qs/tiles/FloatingMessageTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->access$400(Lcom/android/systemui/qs/tiles/FloatingMessageTile;)Lcom/android/systemui/qs/SystemSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->access$500(Lcom/android/systemui/qs/tiles/FloatingMessageTile;Ljava/lang/Object;)V

    .line 258
    return-void

    .line 257
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
