.class Lcom/android/systemui/qs/QSDualTileLabel$2;
.super Ljava/lang/Object;
.source "QSDualTileLabel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSDualTileLabel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSDualTileLabel;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSDualTileLabel;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/systemui/qs/QSDualTileLabel$2;->this$0:Lcom/android/systemui/qs/QSDualTileLabel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel$2;->this$0:Lcom/android/systemui/qs/QSDualTileLabel;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDualTileLabel;->access$100(Lcom/android/systemui/qs/QSDualTileLabel;)V

    .line 203
    return-void
.end method
