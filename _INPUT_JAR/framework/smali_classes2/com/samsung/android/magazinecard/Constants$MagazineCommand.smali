.class public Lcom/samsung/android/magazinecard/Constants$MagazineCommand;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/magazinecard/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MagazineCommand"
.end annotation


# static fields
.field public static final CARD_ADDED:I = 0x1

.field public static final CARD_REMOVED:I = 0x3

.field public static final CARD_UPDATED:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
