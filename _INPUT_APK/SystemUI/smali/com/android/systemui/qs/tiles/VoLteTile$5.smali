.class Lcom/android/systemui/qs/tiles/VoLteTile$5;
.super Ljava/lang/Object;
.source "VoLteTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 309
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/VoLteTile$5;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$5;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$1400(Lcom/android/systemui/qs/tiles/VoLteTile;Ljava/lang/Object;)V

    .line 312
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 313
    return-void
.end method
