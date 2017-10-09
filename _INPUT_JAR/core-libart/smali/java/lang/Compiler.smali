.class public final Ljava/lang/Compiler;
.super Ljava/lang/Object;
.source "Compiler.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static command(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "cmd"    # Ljava/lang/Object;

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public static compileClass(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "classToCompile":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    return v0
.end method

.method public static compileClasses(Ljava/lang/String;)Z
    .registers 2
    .param p0, "nameRoot"    # Ljava/lang/String;

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public static disable()V
    .registers 0

    .prologue
    .line 79
    return-void
.end method

.method public static enable()V
    .registers 0

    .prologue
    .line 85
    return-void
.end method
