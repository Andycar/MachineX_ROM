.class Lcom/samsung/android/contextaware/ContextAwareManager$1;
.super Ljava/lang/Object;
.source "ContextAwareManager.java"

# interfaces
.implements Lcom/samsung/android/contextaware/manager/ContextAwareListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/ContextAwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/ContextAwareManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/ContextAwareManager;)V
    .registers 2

    .prologue
    .line 1195
    iput-object p1, p0, Lcom/samsung/android/contextaware/ContextAwareManager$1;->this$0:Lcom/samsung/android/contextaware/ContextAwareManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContextChanged(ILandroid/os/Bundle;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "context"    # Landroid/os/Bundle;

    .prologue
    .line 1205
    return-void
.end method
