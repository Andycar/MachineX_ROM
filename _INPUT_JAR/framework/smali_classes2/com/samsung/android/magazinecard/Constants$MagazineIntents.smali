.class public Lcom/samsung/android/magazinecard/Constants$MagazineIntents;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/magazinecard/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MagazineIntents"
.end annotation


# static fields
.field public static final CARD:Ljava/lang/String; = "card"

.field public static final COMMAND:Ljava/lang/String; = "command"

.field public static final INTENT_NAME:Ljava/lang/String; = "com.system.action.MAGAZINE_CARD"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
