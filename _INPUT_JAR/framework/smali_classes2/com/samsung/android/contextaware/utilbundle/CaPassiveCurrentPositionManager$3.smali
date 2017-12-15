.class Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager$3;
.super Ljava/lang/Object;
.source "CaPassiveCurrentPositionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->enable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;)V
    .registers 2

    .prologue
    .line 222
    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager$3;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager$3;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    # invokes: Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->registerGpsListener()V
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->access$300(Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;)V

    .line 232
    return-void
.end method
