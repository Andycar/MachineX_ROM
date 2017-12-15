.class public abstract Landroid/print/PrintDocumentAdapter$WriteResultCallback;
.super Ljava/lang/Object;
.source "PrintDocumentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintDocumentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "WriteResultCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    return-void
.end method


# virtual methods
.method public onWriteCancelled()V
    .registers 1

    .prologue
    .line 292
    return-void
.end method

.method public onWriteFailed(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "error"    # Ljava/lang/CharSequence;

    .prologue
    .line 285
    return-void
.end method

.method public onWriteFinished([Landroid/print/PageRange;)V
    .registers 2
    .param p1, "pages"    # [Landroid/print/PageRange;

    .prologue
    .line 275
    return-void
.end method
