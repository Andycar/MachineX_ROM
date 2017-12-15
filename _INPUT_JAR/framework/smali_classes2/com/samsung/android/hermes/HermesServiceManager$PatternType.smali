.class public Lcom/samsung/android/hermes/HermesServiceManager$PatternType;
.super Ljava/lang/Object;
.source "HermesServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hermes/HermesServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PatternType"
.end annotation


# static fields
.field public static final ALL:I = 0x1f

.field public static final DATE_TIME:I = 0x1

.field public static final DETAIL_ALL:I = 0x1d

.field public static final EMAIL:I = 0x2

.field public static final LINKIFY_ALL:I = 0x1e

.field public static final MAP:I = 0x10

.field public static final NOT_DETERMINE:I = 0x0

.field public static final PHONE_NUMBER:I = 0x8

.field public static final URL:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
