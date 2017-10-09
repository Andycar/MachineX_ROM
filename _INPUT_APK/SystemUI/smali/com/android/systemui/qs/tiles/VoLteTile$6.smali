.class Lcom/android/systemui/qs/tiles/VoLteTile$6;
.super Ljava/lang/Object;
.source "VoLteTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/VoLteTile;->isSimReady()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/VoLteTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/VoLteTile;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/VoLteTile$6;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "unused"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v1, 0x2

    .line 323
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile$6;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$6;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$1500(Lcom/android/systemui/qs/tiles/VoLteTile;)Lcom/android/systemui/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$1600(Lcom/android/systemui/qs/tiles/VoLteTile;Ljava/lang/Object;)V

    .line 325
    return-void

    .line 323
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
