.class public Landroid/text/style/TtsSpan$OrdinalBuilder;
.super Landroid/text/style/TtsSpan$SemioticClassBuilder;
.source "TtsSpan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/TtsSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OrdinalBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/text/style/TtsSpan$SemioticClassBuilder",
        "<",
        "Landroid/text/style/TtsSpan$OrdinalBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 729
    const-string v0, "android.type.ordinal"

    invoke-direct {p0, v0}, Landroid/text/style/TtsSpan$SemioticClassBuilder;-><init>(Ljava/lang/String;)V

    .line 730
    return-void
.end method

.method public constructor <init>(J)V
    .registers 4
    .param p1, "number"    # J

    .prologue
    .line 739
    invoke-direct {p0}, Landroid/text/style/TtsSpan$OrdinalBuilder;-><init>()V

    .line 740
    invoke-virtual {p0, p1, p2}, Landroid/text/style/TtsSpan$OrdinalBuilder;->setNumber(J)Landroid/text/style/TtsSpan$OrdinalBuilder;

    .line 741
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 750
    invoke-direct {p0}, Landroid/text/style/TtsSpan$OrdinalBuilder;-><init>()V

    .line 751
    invoke-virtual {p0, p1}, Landroid/text/style/TtsSpan$OrdinalBuilder;->setNumber(Ljava/lang/String;)Landroid/text/style/TtsSpan$OrdinalBuilder;

    .line 752
    return-void
.end method


# virtual methods
.method public setNumber(J)Landroid/text/style/TtsSpan$OrdinalBuilder;
    .registers 4
    .param p1, "number"    # J

    .prologue
    .line 761
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/text/style/TtsSpan$OrdinalBuilder;->setNumber(Ljava/lang/String;)Landroid/text/style/TtsSpan$OrdinalBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setNumber(Ljava/lang/String;)Landroid/text/style/TtsSpan$OrdinalBuilder;
    .registers 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 771
    const-string v0, "android.arg.number"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$OrdinalBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$OrdinalBuilder;

    return-object v0
.end method
