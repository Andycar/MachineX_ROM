.class Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$3;
.super Ljava/lang/Object;
.source "CaCurrentPositionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->enable(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)V
    .registers 2

    .prologue
    .line 299
    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$3;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$3;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    # invokes: Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->registerGpsListener()V
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->access$400(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)V

    .line 303
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$3;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    # invokes: Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->registerWpsListener()V
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->access$500(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)V

    .line 304
    return-void
.end method
