.class public Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListenerImpl;
.super Ljava/lang/Object;
.source "AirButtonImpl.java"

# interfaces
.implements Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/airbutton/AirButtonImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnStateChangedListenerImpl"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 1

    .prologue
    .line 511
    return-void
.end method

.method public onDismiss(Landroid/view/View;)V
    .registers 2
    .param p1, "parentView"    # Landroid/view/View;

    .prologue
    .line 529
    return-void
.end method

.method public onHide()V
    .registers 1

    .prologue
    .line 505
    return-void
.end method

.method public onHide(Landroid/view/View;)V
    .registers 2
    .param p1, "parentView"    # Landroid/view/View;

    .prologue
    .line 523
    return-void
.end method

.method public onShow()V
    .registers 1

    .prologue
    .line 499
    return-void
.end method

.method public onShow(Landroid/view/View;)V
    .registers 2
    .param p1, "parentView"    # Landroid/view/View;

    .prologue
    .line 517
    return-void
.end method
