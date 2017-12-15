.class final Lcom/samsung/android/multiwindow/MultiWindowStyle$2;
.super Lcom/samsung/android/multiwindow/MultiWindowStyle;
.source "MultiWindowStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multiwindow/MultiWindowStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 995
    invoke-direct {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(I)V

    return-void
.end method


# virtual methods
.method public setOption(II)V
    .registers 4
    .param p1, "option"    # I
    .param p2, "mask"    # I

    .prologue
    .line 1005
    new-instance v0, Ljava/lang/IllegalAccessError;

    invoke-direct {v0}, Ljava/lang/IllegalAccessError;-><init>()V

    throw v0
.end method

.method public setOption(IZ)V
    .registers 4
    .param p1, "option"    # I
    .param p2, "value"    # Z

    .prologue
    .line 1009
    new-instance v0, Ljava/lang/IllegalAccessError;

    invoke-direct {v0}, Ljava/lang/IllegalAccessError;-><init>()V

    throw v0
.end method

.method public setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V
    .registers 4
    .param p1, "other"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p2, "includeUniqueOptions"    # Z

    .prologue
    .line 1013
    new-instance v0, Ljava/lang/IllegalAccessError;

    invoke-direct {v0}, Ljava/lang/IllegalAccessError;-><init>()V

    throw v0
.end method

.method public setType(I)V
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 997
    new-instance v0, Ljava/lang/IllegalAccessError;

    invoke-direct {v0}, Ljava/lang/IllegalAccessError;-><init>()V

    throw v0
.end method

.method public setZone(I)V
    .registers 3
    .param p1, "zone"    # I

    .prologue
    .line 1001
    new-instance v0, Ljava/lang/IllegalAccessError;

    invoke-direct {v0}, Ljava/lang/IllegalAccessError;-><init>()V

    throw v0
.end method
