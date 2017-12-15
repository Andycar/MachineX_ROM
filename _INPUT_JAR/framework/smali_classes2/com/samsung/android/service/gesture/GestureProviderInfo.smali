.class public Lcom/samsung/android/service/gesture/GestureProviderInfo;
.super Ljava/lang/Object;
.source "GestureProviderInfo.java"


# static fields
.field public static final GESTURE_APPROACH:I = 0x6

.field public static final GESTURE_DRAW_CIRCLE:I = 0x5

.field public static final GESTURE_HANDSHAPE:I = 0x8

.field public static final GESTURE_HORIZONTAL_SHAKE:I = 0x3

.field public static final GESTURE_HORIZONTAL_SWEEP:I = 0x1

.field public static final GESTURE_HOVER:I = 0xa

.field public static final GESTURE_TAP:I = 0x7

.field public static final GESTURE_THUMB_POSITION:I = 0x9

.field public static final GESTURE_VERTICAL_SHAKE:I = 0x4

.field public static final GESTURE_VERTICAL_SWEEP:I = 0x2


# instance fields
.field private mName:Ljava/lang/String;

.field private mSupportedGestures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/service/gesture/GestureProviderInfo;->mSupportedGestures:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/samsung/android/service/gesture/GestureProviderInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedGestures()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/samsung/android/service/gesture/GestureProviderInfo;->mSupportedGestures:Ljava/util/List;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/samsung/android/service/gesture/GestureProviderInfo;->mName:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setSupportedGestures(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, "supportedGestures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/samsung/android/service/gesture/GestureProviderInfo;->mSupportedGestures:Ljava/util/List;

    .line 126
    return-void
.end method
