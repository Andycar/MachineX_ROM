.class Llibcore/util/ZoneInfo$CheckedArithmeticException;
.super Ljava/lang/Exception;
.source "ZoneInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/util/ZoneInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckedArithmeticException"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 941
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Llibcore/util/ZoneInfo$1;)V
    .registers 2
    .param p1, "x0"    # Llibcore/util/ZoneInfo$1;

    .prologue
    .line 941
    invoke-direct {p0}, Llibcore/util/ZoneInfo$CheckedArithmeticException;-><init>()V

    return-void
.end method
