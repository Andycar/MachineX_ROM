.class Lcom/android/server/wm/AppTransition$2;
.super Ljava/lang/Object;
.source "AppTransition.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/AppTransition;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/AppTransition;


# direct methods
.method constructor <init>(Lcom/android/server/wm/AppTransition;)V
    .registers 2

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/server/wm/AppTransition$2;->this$0:Lcom/android/server/wm/AppTransition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 4
    .param p1, "input"    # F

    .prologue
    const v1, 0x3e99999a    # 0.3f

    .line 228
    cmpg-float v0, p1, v1

    if-gez v0, :cond_a

    .line 229
    div-float v0, p1, v1

    .line 231
    :goto_9
    return v0

    :cond_a
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_9
.end method
