.class public final Landroid/media/TimedText$Style;
.super Ljava/lang/Object;
.source "TimedText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/TimedText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Style"
.end annotation


# instance fields
.field public final colorRGBA:I

.field public final endChar:I

.field public final fontID:I

.field public final fontSize:I

.field public final isBold:Z

.field public final isItalic:Z

.field public final isUnderlined:Z

.field public final startChar:I


# direct methods
.method public constructor <init>(IIIZZZII)V
    .registers 9
    .param p1, "startChar"    # I
    .param p2, "endChar"    # I
    .param p3, "fontId"    # I
    .param p4, "isBold"    # Z
    .param p5, "isItalic"    # Z
    .param p6, "isUnderlined"    # Z
    .param p7, "fontSize"    # I
    .param p8, "colorRGBA"    # I

    .prologue
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput p1, p0, Landroid/media/TimedText$Style;->startChar:I

    .line 249
    iput p2, p0, Landroid/media/TimedText$Style;->endChar:I

    .line 250
    iput p3, p0, Landroid/media/TimedText$Style;->fontID:I

    .line 251
    iput-boolean p4, p0, Landroid/media/TimedText$Style;->isBold:Z

    .line 252
    iput-boolean p5, p0, Landroid/media/TimedText$Style;->isItalic:Z

    .line 253
    iput-boolean p6, p0, Landroid/media/TimedText$Style;->isUnderlined:Z

    .line 254
    iput p7, p0, Landroid/media/TimedText$Style;->fontSize:I

    .line 255
    iput p8, p0, Landroid/media/TimedText$Style;->colorRGBA:I

    .line 256
    return-void
.end method
