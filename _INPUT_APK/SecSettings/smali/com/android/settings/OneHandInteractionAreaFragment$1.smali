.class Lcom/android/settings/OneHandInteractionAreaFragment$1;
.super Landroid/database/ContentObserver;
.source "OneHandInteractionAreaFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/OneHandInteractionAreaFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/OneHandInteractionAreaFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/OneHandInteractionAreaFragment;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/settings/OneHandInteractionAreaFragment$1;->this$0:Lcom/android/settings/OneHandInteractionAreaFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 65
    const-string v0, "OneHandInteractionAreaFragment"

    const-string v1, "onChange() INTERACTIONAREA_SWITCH_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void
.end method
