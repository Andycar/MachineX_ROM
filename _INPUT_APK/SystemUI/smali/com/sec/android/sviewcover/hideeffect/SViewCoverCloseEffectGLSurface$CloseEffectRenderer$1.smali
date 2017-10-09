.class Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer$1;
.super Ljava/lang/Object;
.source "SViewCoverCloseEffectGLSurface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;


# direct methods
.method constructor <init>(Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer$1;->this$1:Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer$1;->this$1:Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;

    iget-object v0, v0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->this$0:Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;

    invoke-virtual {v0}, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;->bringToFront()V

    .line 179
    iget-object v0, p0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer$1;->this$1:Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;

    iget-object v0, v0, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$CloseEffectRenderer;->this$0:Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;

    invoke-virtual {v0}, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;->requestLayout()V

    .line 180
    return-void
.end method
