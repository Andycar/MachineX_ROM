.class public final Llibcore/icu/NativeCollation;
.super Ljava/lang/Object;
.source "NativeCollation.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static native closeCollator(J)V
.end method

.method public static native closeElements(J)V
.end method

.method public static native compare(JLjava/lang/String;Ljava/lang/String;)I
.end method

.method public static native getAttribute(JI)I
.end method

.method public static native getCollationElementIterator(JLjava/lang/String;)J
.end method

.method public static native getMaxExpansion(JI)I
.end method

.method public static native getOffset(J)I
.end method

.method public static native getRules(J)Ljava/lang/String;
.end method

.method public static native getSortKey(JLjava/lang/String;)[B
.end method

.method public static native next(J)I
.end method

.method private static native openCollator(Ljava/lang/String;)J
.end method

.method public static openCollator(Ljava/util/Locale;)J
    .registers 3
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 32
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/NativeCollation;->openCollator(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static native openCollatorFromRules(Ljava/lang/String;II)J
.end method

.method public static native previous(J)I
.end method

.method public static native reset(J)V
.end method

.method public static native safeClone(J)J
.end method

.method public static native setAttribute(JII)V
.end method

.method public static native setOffset(JI)V
.end method

.method public static native setText(JLjava/lang/String;)V
.end method
