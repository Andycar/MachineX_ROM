.class public final Landroid/media/TimedText$HyperText;
.super Ljava/lang/Object;
.source "TimedText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/TimedText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HyperText"
.end annotation


# instance fields
.field public final URL:Ljava/lang/String;

.field public final altString:Ljava/lang/String;

.field public final endChar:I

.field public final startChar:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "startChar"    # I
    .param p2, "endChar"    # I
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "alt"    # Ljava/lang/String;

    .prologue
    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    iput p1, p0, Landroid/media/TimedText$HyperText;->startChar:I

    .line 367
    iput p2, p0, Landroid/media/TimedText$HyperText;->endChar:I

    .line 368
    iput-object p3, p0, Landroid/media/TimedText$HyperText;->URL:Ljava/lang/String;

    .line 369
    iput-object p4, p0, Landroid/media/TimedText$HyperText;->altString:Ljava/lang/String;

    .line 370
    return-void
.end method
