.class public interface abstract Landroid/app/im/feature/IScaleView;
.super Ljava/lang/Object;
.source "IScaleView.java"

# interfaces
.implements Landroid/app/im/feature/IInjection;


# static fields
.field public static final ON_SCALE:I = 0x2

.field public static final ON_SCALE_BEGIN:I = 0x4

.field public static final ON_SCALE_END:I = 0x3

.field public static final ON_TOUCH:I = 0x1


# virtual methods
.method public abstract onScale(Landroid/view/ScaleGestureDetector;)V
.end method

.method public abstract onScaleBegin(Landroid/view/ScaleGestureDetector;)V
.end method

.method public abstract onScaleEnd(Landroid/view/ScaleGestureDetector;)V
.end method

.method public abstract onTouch(Landroid/view/MotionEvent;)V
.end method
